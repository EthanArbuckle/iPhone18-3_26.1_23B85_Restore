void vision::mod::GreedyClustererFacesWithTorso::getAllClustersFromState(vision::mod::GreedyClustererFacesWithTorso *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v3 = *(this + 18);
  v4 = this + 152;
  if (v3 != this + 152)
  {
    do
    {
      v5 = *(v3 + 5);
      v14 = *(v3 + 4);
      v16 = v5;
      v18[2] = &v16;
      v6 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&v17, v5);
      std::vector<long long>::push_back[abi:ne200100]((v6 + 5), &v14);
      v7 = *(v3 + 1);
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
          v8 = *(v3 + 2);
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
    v10 = v17;
    if (v17 != v18)
    {
      do
      {
        v11 = v10[5];
        v14 = v10[4];
        memset(__p, 0, sizeof(__p));
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v11, v10[6], (v10[6] - v11) >> 3);
        std::vector<std::vector<long long>>::push_back[abi:ne200100](a2, __p);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        v12 = v10[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v10[2];
            v9 = *v13 == v10;
            v10 = v13;
          }

          while (!v9);
        }

        v10 = v13;
      }

      while (v13 != v18);
    }
  }

  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v18[0]);
}

void sub_1A5E4D154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(a16);
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void vision::mod::GreedyClustererFacesWithTorso::getClusters(vision::mod::GreedyClustererFacesWithTorso *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v3 = *(this + 18);
  v4 = this + 152;
  if (v3 != this + 152)
  {
    do
    {
      v5 = *(v3 + 5);
      v14 = *(v3 + 4);
      v16 = v5;
      v18[2] = &v16;
      v6 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&v17, v5);
      std::vector<long long>::push_back[abi:ne200100]((v6 + 5), &v14);
      v7 = *(v3 + 1);
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
          v8 = *(v3 + 2);
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
    v10 = v17;
    if (v17 != v18)
    {
      do
      {
        v11 = v10[5];
        v14 = v10[4];
        memset(__p, 0, sizeof(__p));
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v11, v10[6], (v10[6] - v11) >> 3);
        std::vector<std::vector<long long>>::push_back[abi:ne200100](a2, __p);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        v12 = v10[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v10[2];
            v9 = *v13 == v10;
            v10 = v13;
          }

          while (!v9);
        }

        v10 = v13;
      }

      while (v13 != v18);
    }
  }

  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v18[0]);
}

void sub_1A5E4D2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(a16);
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double vision::mod::GreedyClustererFacesWithTorso::getClusteredIds(uint64_t a1, uint64_t a2)
{
  allKeys<long long,unsigned long>(&v5, (a1 + 120));
  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

void allKeys<long long,unsigned long>(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::vector<long long>::push_back[abi:ne200100](a1, v3 + 4);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }
}

void sub_1A5E4D3F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::getMaximumFaceId(vision::mod::GreedyClustererFacesWithTorso *this)
{
  v1 = *(this + 18);
  v2 = this + 152;
  if (v1 == (this + 152))
  {
    return 0;
  }

  result = 0;
  do
  {
    if (result <= v1[4])
    {
      result = v1[4];
    }

    v4 = v1[1];
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
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::getClusterIdForFaceId(vision::mod::GreedyClustererFacesWithTorso *this, uint64_t a2)
{
  if (vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(this, a2))
  {
    return *std::map<long long,long long>::at(*(this + 19), a2);
  }

  else
  {
    return -1;
  }
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::computeClusterMapL1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v3 = (a1 + 152);
  if (v2 != (a1 + 152))
  {
    do
    {
      v10 = *(v2 + 2);
      v11 = &v10 + 8;
      v5 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a2, *(&v10 + 1));
      std::vector<long long>::push_back[abi:ne200100]((v5 + 5), &v10);
      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return 5248;
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::getDistanceBetweenLevel1ClustersContaining(vision::mod::GreedyClustererFacesWithTorso *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(a1, a2))
  {
    std::vector<float>::vector[abi:ne200100](&v8, (*(*(a1 + 9) + 104) + (*(*(a1 + 9) + 104) >> 31)) >> 1);
    vision::mod::GreedyClustererFacesWithTorso::getAverageDescriptorOfClusterContainingFace(a1, a2, a4, v8);
    (*(*a1 + 168))(a1);
    vision::mod::dist_greedy_status_t::dist_greedy_status_t();
  }

  return 5244;
}

void sub_1A5E4D740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  vision::mod::dist_greedy_status_t::~dist_greedy_status_t(&a12);
  v14 = *(v12 - 136);
  if (v14)
  {
    *(v12 - 128) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void vision::mod::dist_greedy_status_t::dist_greedy_status_t()
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = 1;
  __p = 0;
  v1 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
}

void sub_1A5E4D9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(v11);
  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(v10);
  _Unwind_Resume(a1);
}

void sub_1A5E4D9F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A5E4D9F0);
}

void vision::mod::dist_greedy_status_t::~dist_greedy_status_t(vision::mod::dist_greedy_status_t *this)
{
  v2 = (this + 120);
  *(this + 15) = &unk_1F19764A8;
  free(*(this + 29));
  vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(v2);
  *this = &unk_1F19764A8;
  free(*(this + 14));

  vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(this);
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::getDistanceBetweenLevel0ClustersContaining(vision::mod::GreedyClustererFacesWithTorso *this, uint64_t a2, uint64_t a3, float *a4)
{
  if (vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(this, a2) && vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(this, a3))
  {
    v8 = *(this + 9);
    v9 = **(v8 + 88) + *std::map<long long,long long>::at(*(this + 16), a2) * *(**(v8 + 88) + 16);
    v10 = *(this + 9);
    v11 = std::map<long long,long long>::at(*(this + 16), a3);
    v12 = (v9 + 64);
    v13 = (**(v10 + 88) + *v11 * *(**(v10 + 88) + 16) + 64);
    v14 = (*(*this + 168))(this);
    LODWORD(v10) = v14 / 2;
    __C = 0;
    v15 = (v14 + (v14 >> 31)) >> 1;
    vDSP_dotpr(v12, 1, v13, 1, &__C + 1, v15);
    vDSP_dotpr(&v12[v10], 1, &v13[v10], 1, &__C, v15);
    v16 = *(&__C + 1) * -0.5 + 0.5;
    *a4 = v16;
    v17 = &CVML_status_ok;
  }

  else
  {
    v17 = &CVML_status_invalidParameter;
  }

  return (*v17 + 128) | 0x1400;
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::getLevel0FacesToClusterContaining(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(a1, a2))
  {
    v6 = *(a1 + 72);
    v7 = std::map<long long,long long>::at(*(a1 + 128), a2);
    v8 = std::map<unsigned long,std::list<long long>>::at(*(a1 + 104), *(**(v6 + 88) + *v7 * *(**(v6 + 88) + 16) + 24));
    if (v8 != a3)
    {
      std::list<long long>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<long long,void *>,std::__list_const_iterator<long long,void *>>(a3, v8[1], v8);
    }

    v9 = &CVML_status_ok;
  }

  else
  {
    v9 = &CVML_status_invalidParameter;
  }

  return (*v9 + 128) | 0x1400;
}

void *std::map<unsigned long,std::list<long long>>::at(void *a1, unint64_t a2)
{
  if (!a1)
  {
LABEL_7:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = a1[4];
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *std::list<long long>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<long long,void *>,std::__list_const_iterator<long long,void *>>(uint64_t *result, uint64_t a2, uint64_t a3)
{
  for (i = result[1]; a2 != a3 && i != result; i = i[1])
  {
    i[2] = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == result)
  {
    if (a2 != a3)
    {
      operator new();
    }
  }

  else
  {

    return std::list<long long>::erase(result, i, result);
  }

  return result;
}

void sub_1A5E4DE30(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::computeClusterLookupMapL1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v3 = (a1 + 152);
  if (v2 != (a1 + 152))
  {
    do
    {
      v5 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a2, v2[4]);
      std::vector<long long>::push_back[abi:ne200100]((v5 + 5), v2 + 5);
      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return 5248;
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::computeClusterMapL0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = (a1 + 104);
  if (v2 != (a1 + 104))
  {
    do
    {
      for (i = v2[6]; i != v2 + 5; i = i[1])
      {
        v11[0] = v2[4];
        v11[1] = v11;
        v6 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a2, v11[0]);
        std::vector<long long>::push_back[abi:ne200100]((v6 + 5), i + 2);
      }

      v7 = v2[1];
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
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }

  return 5248;
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::computeClusterLookupMapL0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  v3 = (a1 + 128);
  if (v2 != (a1 + 128))
  {
    do
    {
      v5 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a2, v2[4]);
      v6 = v5;
      v7 = v2[5];
      v9 = v5[6];
      v8 = v5[7];
      if (v9 >= v8)
      {
        v11 = v5[5];
        v12 = v9 - v11;
        v13 = (v9 - v11) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v16);
        }

        v17 = (v9 - v11) >> 3;
        v18 = (8 * v13);
        v19 = (8 * v13 - 8 * v17);
        *v18 = v7;
        v10 = v18 + 1;
        memcpy(v19, v11, v12);
        v20 = v6[5];
        v6[5] = v19;
        v6[6] = v10;
        v6[7] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v9 = v7;
        v10 = v9 + 8;
      }

      v6[6] = v10;
      v21 = v2[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v2[2];
          v23 = *v22 == v2;
          v2 = v22;
        }

        while (!v23);
      }

      v2 = v22;
    }

    while (v22 != v3);
  }

  return 5248;
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::anomalyForGroup(vision::mod::GreedyClustererFacesWithTorso *a1, uint64_t **a2, uint64_t a3, _DWORD *a4)
{
  if (!vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(a1, a3))
  {
    return 5244;
  }

  v8 = a2[1];
  v9 = *a2;
  if (v8 == *a2)
  {
    return 5244;
  }

  v10 = (a1 + 152);
  if (!*(a1 + 19))
  {
LABEL_23:
    syslog(5, "FaceId=%lld not present in clustering", a3);
    return 5244;
  }

  do
  {
    v11 = *v9;
    v12 = *(a1 + 19);
    while (1)
    {
      v13 = v12[4];
      if (v11 >= v13)
      {
        break;
      }

LABEL_8:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_23;
      }
    }

    if (v13 < v11)
    {
      ++v12;
      goto LABEL_8;
    }

    ++v9;
  }

  while (v9 != v8);
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  v14 = *(a1 + 18);
  if (v14 != v10)
  {
    do
    {
      *__p = *(v14 + 2);
      __C = &__p[1];
      v15 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&v41, __p[1]);
      std::vector<long long>::push_back[abi:ne200100]((v15 + 5), __p);
      v16 = v14[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v14[2];
          v18 = *v17 == v14;
          v14 = v17;
        }

        while (!v18);
      }

      v14 = v17;
    }

    while (v17 != v10);
  }

  v19 = *(*(a1 + 9) + 104) + (*(*(a1 + 9) + 104) >> 31);
  v20 = malloc_type_malloc(4 * (v19 & 0xFFFFFFFE), 0x100004052888210uLL);
  if (v20)
  {
    vision::mod::GreedyClustererFacesWithTorso::getAverageDescriptorOfClusterContainingFace(a1, a3, &v41, v20);
    std::vector<std::pair<float,unsigned long>>::vector[abi:ne200100](__p, a2[1] - *a2);
    v21 = *a2;
    v22 = a2[1];
    if (*a2 == v22)
    {
      v29 = 0;
      v28 = __p[0];
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = &v20[4 * (v19 >> 1)];
      do
      {
        v26 = *v21;
        vision::mod::GreedyClustererFacesWithTorso::getAverageDescriptorOfClusterContainingFace(a1, *v21, &v41, v25);
        LODWORD(__C) = 0;
        vDSP_dotpr(v20, 1, v25, 1, &__C, 0x80uLL);
        *(__p[0] + v23) = (*&__C * -0.5) + 0.5;
        v27 = (*(*a1 + 200))(a1, v26);
        v28 = __p[0];
        *(__p[0] + v23 + 8) = v27;
        v24 += v27;
        ++v21;
        v23 += 16;
      }

      while (v21 != v22);
      v29 = v24 >> 1;
    }

    v32 = 126 - 2 * __clz((__p[1] - v28) >> 4);
    if (__p[1] == v28)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::anomalyForGroup(std::vector<long long> const&,long long,float &)::$_0 &,std::pair<float,unsigned long> *,false>(v28, __p[1], v33, 1);
    v34 = a2[1];
    v35 = __p[0];
    v36 = v34 - *a2;
    if (v34 == *a2)
    {
      if (__p[0])
      {
        goto LABEL_41;
      }
    }

    else
    {
      v37 = 0;
      v38 = v36 >> 3;
      if (v38 <= 1)
      {
        v38 = 1;
      }

      v39 = __p[0];
      while (1)
      {
        v37 += v39[1];
        if (v37 >= v29)
        {
          break;
        }

        v39 += 2;
        if (!--v38)
        {
          goto LABEL_41;
        }
      }

      *a4 = *v39;
LABEL_41:
      __p[1] = v35;
      operator delete(v35);
    }

    v30 = 5248;
  }

  else
  {
    v30 = 5243;
  }

  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v42[0]);
  return v30;
}

void *std::vector<std::pair<float,unsigned long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1A5E4E4F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::anomalyForGroup(std::vector<long long> const&,long long,float &)::$_0 &,std::pair<float,unsigned long> *,false>(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 16);
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 4;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v97 = *v9;
        if (*v8 >= *v9)
        {
          return result;
        }

        v98 = *(v9 + 8);
        *v9 = *v8;
        *(a2 - 16) = v97;
        *(v9 + 8) = *(a2 - 8);
LABEL_182:
        *(a2 - 8) = v98;
        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v105 = *(v9 + 16);
      v106 = (v9 + 24);
      v107 = *(v9 + 24);
      v108 = *v9;
      v109 = *(v9 + 8);
      v110 = *v9;
      v111 = *(v9 + 32);
      if (v105 >= *v9)
      {
        if (*&v111 < v105)
        {
          v162 = *(v9 + 40);
          *(v9 + 16) = v111;
          *(v9 + 32) = v105;
          *(v9 + 24) = v162;
          *(v9 + 40) = v107;
          if (*&v111 < v110)
          {
            *v9 = v111;
            *(v9 + 16) = v108;
            *(v9 + 8) = v162;
            goto LABEL_185;
          }
        }
      }

      else
      {
        v106 = (v9 + 40);
        if (*&v111 < v105)
        {
          v112 = *(v9 + 40);
          *v9 = v111;
          *(v9 + 32) = v108;
          *(v9 + 8) = v112;
          goto LABEL_185;
        }

        *v9 = v105;
        *(v9 + 16) = v108;
        *(v9 + 8) = v107;
        *(v9 + 24) = v109;
        if (*&v111 < v108)
        {
          v172 = *(v9 + 40);
          *(v9 + 16) = v111;
          *(v9 + 32) = v108;
          *(v9 + 24) = v172;
LABEL_185:
          *v106 = v109;
        }
      }

      v173 = *(v9 + 32);
      if (*v8 < v173)
      {
        v174 = *(v9 + 40);
        v175 = *(a2 - 8);
        *(v9 + 32) = *v8;
        *(a2 - 16) = v173;
        *(v9 + 40) = v175;
        *(a2 - 8) = v174;
        v176 = *(v9 + 32);
        v177 = *(v9 + 16);
        if (v176 < v177)
        {
          v178 = *(v9 + 24);
          v179 = *(v9 + 40);
          *(v9 + 16) = v176;
          *(v9 + 32) = v177;
          *(v9 + 24) = v179;
          *(v9 + 40) = v178;
          v180 = *v9;
          if (v176 < *v9)
          {
            v181 = *(v9 + 8);
            *v9 = v176;
            *(v9 + 16) = v180;
            *(v9 + 8) = v179;
            *(v9 + 24) = v181;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::anomalyForGroup(std::vector<long long> const&,long long,float &)::$_0 &,std::pair<float,unsigned long> *,0>(v9, v9 + 16, (v9 + 32), (v9 + 48), (a2 - 16));
    }

LABEL_10:
    if (v10 <= 23)
    {
      v113 = v9 + 16;
      v115 = v9 == a2 || v113 == a2;
      if (a4)
      {
        if (!v115)
        {
          v116 = 0;
          v117 = v9;
          do
          {
            v118 = v113;
            v119 = *(v117 + 16);
            v120 = *v117;
            if (v119 < *v117)
            {
              v121 = *(v117 + 24);
              v122 = v116;
              while (1)
              {
                v123 = v9 + v122;
                *(v123 + 16) = v120;
                *(v123 + 24) = *(v9 + v122 + 8);
                if (!v122)
                {
                  break;
                }

                v120 = *(v123 - 16);
                v122 -= 16;
                if (v119 >= v120)
                {
                  v124 = v9 + v122 + 16;
                  goto LABEL_132;
                }
              }

              v124 = v9;
LABEL_132:
              *v124 = v119;
              *(v124 + 8) = v121;
            }

            v113 = v118 + 16;
            v116 += 16;
            v117 = v118;
          }

          while (v118 + 16 != a2);
        }
      }

      else if (!v115)
      {
        v163 = (v9 + 24);
        do
        {
          v164 = v113;
          v165 = *(v7 + 16);
          v166 = *v7;
          if (v165 < *v7)
          {
            v167 = *(v7 + 24);
            v168 = v163;
            do
            {
              v169 = v168;
              *(v168 - 2) = v166;
              v170 = *(v168 - 2);
              v168 -= 4;
              *v169 = v170;
              v166 = *(v169 - 10);
            }

            while (v165 < v166);
            *(v168 - 2) = v165;
            *v168 = v167;
          }

          v113 = v164 + 16;
          v163 += 4;
          v7 = v164;
        }

        while (v164 + 16 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v125 = (v10 - 2) >> 1;
        v126 = v125;
        do
        {
          v127 = v126;
          if (v125 >= v126)
          {
            v128 = (2 * v126) | 1;
            v129 = v9 + 16 * v128;
            if (2 * v127 + 2 < v10 && *v129 < *(v129 + 16))
            {
              v129 += 16;
              v128 = 2 * v127 + 2;
            }

            v130 = v9 + 16 * v127;
            v131 = *v130;
            v132 = *v129;
            v133 = *v130;
            if (*v129 >= *v130)
            {
              v134 = *(v130 + 8);
              do
              {
                v135 = v130;
                v130 = v129;
                *v135 = v132;
                *(v135 + 8) = *(v129 + 8);
                if (v125 < v128)
                {
                  break;
                }

                v136 = 2 * v128;
                v128 = (2 * v128) | 1;
                v129 = v9 + 16 * v128;
                v137 = v136 + 2;
                if (v137 < v10 && *v129 < *(v129 + 16))
                {
                  v129 += 16;
                  v128 = v137;
                }

                v132 = *v129;
              }

              while (*v129 >= v133);
              *v130 = v131;
              *(v130 + 8) = v134;
            }
          }

          v126 = v127 - 1;
        }

        while (v127);
        do
        {
          v138 = 0;
          v139 = *v9;
          v140 = *(v9 + 8);
          v141 = v9;
          do
          {
            v142 = v141;
            v143 = v141 + 16 * v138;
            v141 = v143 + 16;
            v144 = 2 * v138;
            v138 = (2 * v138) | 1;
            v145 = v144 + 2;
            if (v145 < v10)
            {
              v147 = *(v143 + 32);
              v146 = v143 + 32;
              if (*(v146 - 16) < v147)
              {
                v141 = v146;
                v138 = v145;
              }
            }

            *v142 = *v141;
            *(v142 + 8) = *(v141 + 8);
          }

          while (v138 <= ((v10 - 2) >> 1));
          if (v141 == a2 - 16)
          {
            *v141 = v139;
            *(v141 + 8) = v140;
          }

          else
          {
            *v141 = *(a2 - 16);
            *(v141 + 8) = *(a2 - 8);
            *(a2 - 16) = v139;
            *(a2 - 8) = v140;
            v148 = (v141 - v9 + 16) >> 4;
            v149 = v148 < 2;
            v150 = v148 - 2;
            if (!v149)
            {
              v151 = v150 >> 1;
              v152 = v9 + 16 * (v150 >> 1);
              v153 = *v141;
              v154 = *v152;
              v155 = *v141;
              if (*v152 < *v141)
              {
                v156 = *(v141 + 8);
                do
                {
                  v157 = v141;
                  v141 = v152;
                  *v157 = v154;
                  *(v157 + 8) = *(v152 + 8);
                  if (!v151)
                  {
                    break;
                  }

                  v151 = (v151 - 1) >> 1;
                  v152 = v9 + 16 * v151;
                  v154 = *v152;
                }

                while (*v152 < v155);
                *v141 = v153;
                *(v141 + 8) = v156;
              }
            }
          }

          a2 -= 16;
          v149 = v10-- <= 2;
        }

        while (!v149);
      }

      return result;
    }

    v11 = v9 + 16 * (v10 >> 1);
    v12 = *v8;
    v13 = *v8;
    if (v10 >= 0x81)
    {
      v14 = *v11;
      v15 = *(v11 + 8);
      v16 = *v9;
      v17 = *v11;
      if (*v11 >= *v9)
      {
        if (v13 < v17)
        {
          v26 = *(a2 - 8);
          *v11 = v12;
          *(a2 - 16) = v14;
          *(v11 + 8) = v26;
          *(a2 - 8) = v15;
          v27 = *v9;
          if (*v11 < *v9)
          {
            v28 = *(v9 + 8);
            v29 = *(v11 + 8);
            *v9 = *v11;
            *v11 = v27;
            *(v9 + 8) = v29;
            *(v11 + 8) = v28;
          }
        }
      }

      else
      {
        v18 = *(v9 + 8);
        if (v13 < v17)
        {
          v19 = *(a2 - 8);
          *v9 = v12;
          *(a2 - 16) = v16;
          *(v9 + 8) = v19;
          goto LABEL_27;
        }

        *v9 = v14;
        *v11 = v16;
        *(v9 + 8) = v15;
        *(v11 + 8) = v18;
        if (*v8 < v16)
        {
          v34 = *(a2 - 8);
          *v11 = *v8;
          *(a2 - 16) = v16;
          *(v11 + 8) = v34;
LABEL_27:
          *(a2 - 8) = v18;
        }
      }

      v35 = (v11 - 16);
      v36 = *(v11 - 16);
      v37 = *(v11 - 8);
      v38 = *(v9 + 16);
      v39 = *(a2 - 32);
      if (v36 >= v38)
      {
        if (v39 < v36)
        {
          v42 = *(a2 - 24);
          *v35 = v39;
          *(a2 - 32) = v36;
          *(v11 - 8) = v42;
          *(a2 - 24) = v37;
          v43 = *(v9 + 16);
          if (*v35 < v43)
          {
            v44 = *(v9 + 24);
            v45 = *(v11 - 8);
            *(v9 + 16) = *v35;
            *v35 = v43;
            *(v9 + 24) = v45;
            *(v11 - 8) = v44;
          }
        }
      }

      else
      {
        v40 = *(v9 + 24);
        if (v39 < v36)
        {
          v41 = *(a2 - 24);
          *(v9 + 16) = v39;
          *(a2 - 32) = v38;
          *(v9 + 24) = v41;
          goto LABEL_39;
        }

        *(v9 + 16) = v36;
        *v35 = v38;
        *(v9 + 24) = v37;
        *(v11 - 8) = v40;
        if (*(a2 - 32) < v38)
        {
          v47 = *(a2 - 24);
          *v35 = *(a2 - 32);
          *(a2 - 32) = v38;
          *(v11 - 8) = v47;
LABEL_39:
          *(a2 - 24) = v40;
        }
      }

      v48 = (v11 + 16);
      v49 = *(v11 + 16);
      v50 = (v11 + 24);
      v51 = *(v11 + 24);
      v52 = *(v9 + 32);
      v53 = *(a2 - 48);
      if (v49 >= v52)
      {
        if (v53 < v49)
        {
          v56 = *(a2 - 40);
          *v48 = v53;
          *(a2 - 48) = v49;
          *(v11 + 24) = v56;
          *(a2 - 40) = v51;
          v57 = *(v9 + 32);
          if (*v48 < v57)
          {
            v58 = *(v9 + 40);
            v59 = *(v11 + 24);
            *(v9 + 32) = *v48;
            *v48 = v57;
            *(v9 + 40) = v59;
            *(v11 + 24) = v58;
          }
        }
      }

      else
      {
        v54 = *(v9 + 40);
        if (v53 < v49)
        {
          v55 = *(a2 - 40);
          *(v9 + 32) = v53;
          *(a2 - 48) = v52;
          *(v9 + 40) = v55;
          goto LABEL_48;
        }

        *(v9 + 32) = v49;
        *v48 = v52;
        *(v9 + 40) = v51;
        *(v11 + 24) = v54;
        if (*(a2 - 48) < v52)
        {
          v60 = *(a2 - 40);
          *v48 = *(a2 - 48);
          *(a2 - 48) = v52;
          *(v11 + 24) = v60;
LABEL_48:
          *(a2 - 40) = v54;
        }
      }

      v61 = *v11;
      v62 = *(v11 + 8);
      v63 = *v35;
      v64 = *(v11 - 8);
      v65 = *v11;
      v66 = *v35;
      v67 = *v48;
      v68 = *v48;
      if (*v11 >= *v35)
      {
        if (v68 < v65)
        {
          result = *(v11 + 24);
          *v11 = v67;
          *v48 = v61;
          *(v11 + 8) = result;
          *(v11 + 24) = v62;
          v65 = v67;
          if (v67 < v66)
          {
            *v35 = v67;
            *v11 = v63;
            v50 = (v11 + 8);
            v62 = v64;
            v65 = v66;
            *(v11 - 8) = result;
            goto LABEL_57;
          }

          v62 = result;
        }
      }

      else
      {
        if (v68 < v65)
        {
          v69 = *(v11 + 24);
          *v35 = v67;
          *v48 = v63;
          *(v11 - 8) = v69;
          goto LABEL_57;
        }

        *v35 = v61;
        *v11 = v63;
        *(v11 - 8) = v62;
        *(v11 + 8) = v64;
        v65 = v63;
        if (v68 >= v63)
        {
          v62 = v64;
        }

        else
        {
          v62 = *(v11 + 24);
          *v11 = v67;
          *v48 = v63;
          *(v11 + 8) = v62;
          v65 = v68;
LABEL_57:
          *v50 = v64;
        }
      }

      v70 = *v9;
      *v9 = v65;
      *v11 = v70;
      v71 = *(v9 + 8);
      *(v9 + 8) = v62;
      *(v11 + 8) = v71;
      goto LABEL_59;
    }

    v20 = *v9;
    v21 = *(v9 + 8);
    v22 = *v11;
    v23 = *v9;
    if (*v9 >= *v11)
    {
      if (v13 < v23)
      {
        v30 = *(a2 - 8);
        *v9 = v12;
        *(a2 - 16) = v20;
        *(v9 + 8) = v30;
        *(a2 - 8) = v21;
        v31 = *v11;
        if (*v9 < *v11)
        {
          v32 = *(v11 + 8);
          v33 = *(v9 + 8);
          *v11 = *v9;
          *v9 = v31;
          *(v11 + 8) = v33;
          *(v9 + 8) = v32;
        }
      }

      goto LABEL_59;
    }

    v24 = *(v11 + 8);
    if (v13 < v23)
    {
      v25 = *(a2 - 8);
      *v11 = v12;
      *(a2 - 16) = v22;
      *(v11 + 8) = v25;
LABEL_36:
      *(a2 - 8) = v24;
      goto LABEL_59;
    }

    *v11 = v20;
    *v9 = v22;
    *(v11 + 8) = v21;
    *(v9 + 8) = v24;
    if (*v8 < v22)
    {
      v46 = *(a2 - 8);
      *v9 = *v8;
      *(a2 - 16) = v22;
      *(v9 + 8) = v46;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v72 = *v9;
      v73 = *(v9 + 8);
      v74 = *v9;
LABEL_62:
      v75 = v9;
      do
      {
        v76 = v75;
        v77 = *(v75 + 16);
        v75 += 16;
        v78 = v77;
      }

      while (v74 > v77);
      v79 = a2;
      if (v76 == v9)
      {
        v79 = a2;
        do
        {
          if (v75 >= v79)
          {
            break;
          }

          v81 = *(v79 - 4);
          v79 -= 4;
        }

        while (v74 <= v81);
      }

      else
      {
        do
        {
          v80 = *(v79 - 4);
          v79 -= 4;
        }

        while (v74 <= v80);
      }

      if (v75 >= v79)
      {
        v9 = v75;
      }

      else
      {
        v82 = *v79;
        v9 = v75;
        v83 = v79;
        do
        {
          *v9 = v82;
          *v83 = v78;
          v84 = *(v9 + 8);
          *(v9 + 8) = *(v83 + 1);
          *(v83 + 1) = v84;
          do
          {
            v85 = *(v9 + 16);
            v9 += 16;
            v78 = v85;
          }

          while (v74 > v85);
          do
          {
            v86 = *(v83 - 4);
            v83 -= 4;
            v82 = v86;
          }

          while (v74 <= v86);
        }

        while (v9 < v83);
      }

      if (v9 - 16 != v7)
      {
        *v7 = *(v9 - 16);
        *(v7 + 8) = *(v9 - 8);
      }

      *(v9 - 16) = v72;
      *(v9 - 8) = v73;
      if (v75 < v79)
      {
        goto LABEL_83;
      }

      v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::anomalyForGroup(std::vector<long long> const&,long long,float &)::$_0 &,std::pair<float,unsigned long> *>(v7, v9 - 16);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::anomalyForGroup(std::vector<long long> const&,long long,float &)::$_0 &,std::pair<float,unsigned long> *>(v9, a2);
      if (result)
      {
        a2 = v9 - 16;
        if (!v87)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v87)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::anomalyForGroup(std::vector<long long> const&,long long,float &)::$_0 &,std::pair<float,unsigned long> *,false>(v7, v9 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v72 = *v9;
      v73 = *(v9 + 8);
      v74 = *v9;
      if (*(v9 - 16) < *v9)
      {
        goto LABEL_62;
      }

      if (v74 >= *v8)
      {
        v89 = v9 + 16;
        do
        {
          v9 = v89;
          if (v89 >= a2)
          {
            break;
          }

          v89 += 16;
        }

        while (v74 >= *v9);
      }

      else
      {
        do
        {
          v88 = *(v9 + 16);
          v9 += 16;
        }

        while (v74 >= v88);
      }

      v90 = a2;
      if (v9 < a2)
      {
        v90 = a2;
        do
        {
          v91 = *(v90 - 16);
          v90 -= 16;
        }

        while (v74 < v91);
      }

      if (v9 < v90)
      {
        v92 = *v9;
        v93 = *v90;
        do
        {
          *v9 = v93;
          *v90 = v92;
          v94 = *(v9 + 8);
          *(v9 + 8) = *(v90 + 8);
          *(v90 + 8) = v94;
          do
          {
            v95 = *(v9 + 16);
            v9 += 16;
            v92 = v95;
          }

          while (v74 >= v95);
          do
          {
            v96 = *(v90 - 16);
            v90 -= 16;
            v93 = v96;
          }

          while (v74 < v96);
        }

        while (v9 < v90);
      }

      if (v9 - 16 != v7)
      {
        *v7 = *(v9 - 16);
        *(v7 + 8) = *(v9 - 8);
      }

      a4 = 0;
      *(v9 - 16) = v72;
      *(v9 - 8) = v73;
    }
  }

  v99 = *(v9 + 16);
  v100 = *(v9 + 24);
  v101 = *v9;
  v102 = *v8;
  v103 = *v8;
  if (v99 < *v9)
  {
    v98 = *(v9 + 8);
    if (v103 >= v99)
    {
      *v9 = v99;
      *(v9 + 16) = v101;
      *(v9 + 8) = v100;
      *(v9 + 24) = v98;
      if (*v8 >= v101)
      {
        return result;
      }

      v171 = *(a2 - 8);
      *(v9 + 16) = *v8;
      *(a2 - 16) = v101;
      *(v9 + 24) = v171;
    }

    else
    {
      v104 = *(a2 - 8);
      *v9 = v102;
      *(a2 - 16) = v101;
      *(v9 + 8) = v104;
    }

    goto LABEL_182;
  }

  if (v103 < v99)
  {
    v158 = *(a2 - 8);
    *(v9 + 16) = v102;
    *(a2 - 16) = v99;
    *(v9 + 24) = v158;
    *(a2 - 8) = v100;
    v159 = *v9;
    if (*(v9 + 16) < *v9)
    {
      v160 = *(v9 + 8);
      v161 = *(v9 + 24);
      *v9 = *(v9 + 16);
      *(v9 + 16) = v159;
      *(v9 + 8) = v161;
      *(v9 + 24) = v160;
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::anomalyForGroup(std::vector<long long> const&,long long,float &)::$_0 &,std::pair<float,unsigned long> *,0>(uint64_t result, uint64_t a2, float *a3, int *a4, int *a5)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *result;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *result)
  {
    if (*&v9 < v8)
    {
      v12 = *(a3 + 1);
      *a2 = v9;
      *a3 = v5;
      *(a2 + 8) = v12;
      *(a3 + 1) = v6;
      v13 = *result;
      if (*a2 < *result)
      {
        v14 = *(result + 8);
        v15 = *(a2 + 8);
        *result = *a2;
        *a2 = v13;
        *(result + 8) = v15;
        *(a2 + 8) = v14;
      }
    }
  }

  else
  {
    v10 = *(result + 8);
    if (*&v9 < v8)
    {
      v11 = *(a3 + 1);
      *result = v9;
      *a3 = v7;
      *(result + 8) = v11;
LABEL_9:
      *(a3 + 1) = v10;
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v7;
    *(result + 8) = v6;
    *(a2 + 8) = v10;
    if (*a3 < v7)
    {
      v16 = *(a3 + 1);
      *a2 = *a3;
      *a3 = v7;
      *(a2 + 8) = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  v17 = *a3;
  if (*a4 < *a3)
  {
    v18 = *(a3 + 1);
    v19 = *(a4 + 1);
    *a3 = *a4;
    *a4 = v17;
    *(a3 + 1) = v19;
    *(a4 + 1) = v18;
    v20 = *a2;
    if (*a3 < *a2)
    {
      v21 = *(a2 + 8);
      v22 = *(a3 + 1);
      *a2 = *a3;
      *a3 = v20;
      *(a2 + 8) = v22;
      *(a3 + 1) = v21;
      v23 = *result;
      if (*a2 < *result)
      {
        v24 = *(result + 8);
        v25 = *(a2 + 8);
        *result = *a2;
        *a2 = v23;
        *(result + 8) = v25;
        *(a2 + 8) = v24;
      }
    }
  }

  v26 = *a4;
  if (*a5 < *a4)
  {
    v27 = *(a4 + 1);
    v28 = *(a5 + 1);
    *a4 = *a5;
    *a5 = v26;
    *(a4 + 1) = v28;
    *(a5 + 1) = v27;
    v29 = *a3;
    if (*a4 < *a3)
    {
      v30 = *(a3 + 1);
      v31 = *(a4 + 1);
      *a3 = *a4;
      *a4 = v29;
      *(a3 + 1) = v31;
      *(a4 + 1) = v30;
      v32 = *a2;
      if (*a3 < *a2)
      {
        v33 = *(a2 + 8);
        v34 = *(a3 + 1);
        *a2 = *a3;
        *a3 = v32;
        *(a2 + 8) = v34;
        *(a3 + 1) = v33;
        v35 = *result;
        if (*a2 < *result)
        {
          v36 = *(result + 8);
          v37 = *(a2 + 8);
          *result = *a2;
          *a2 = v35;
          *(result + 8) = v37;
          *(a2 + 8) = v36;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::anomalyForGroup(std::vector<long long> const&,long long,float &)::$_0 &,std::pair<float,unsigned long> *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
      v7 = *a1;
      v8 = *(a2 - 16);
      if (v5 >= *a1)
      {
        if (*&v8 < v5)
        {
          v27 = *(a2 - 8);
          *(a1 + 16) = v8;
          *(a2 - 16) = v5;
          *(a1 + 24) = v27;
          *(a2 - 8) = v6;
          v28 = *a1;
          if (*(a1 + 16) < *a1)
          {
            v29 = *(a1 + 8);
            v30 = *(a1 + 24);
            *a1 = *(a1 + 16);
            *(a1 + 16) = v28;
            *(a1 + 8) = v30;
            *(a1 + 24) = v29;
          }
        }

        return 1;
      }

      v4 = *(a1 + 8);
      if (*&v8 < v5)
      {
        v9 = *(a2 - 8);
        *a1 = v8;
        *(a2 - 16) = v7;
        *(a1 + 8) = v9;
        goto LABEL_30;
      }

      *a1 = v5;
      *(a1 + 16) = v7;
      *(a1 + 8) = v6;
      *(a1 + 24) = v4;
      if (*(a2 - 16) < v7)
      {
        v33 = *(a2 - 8);
        *(a1 + 16) = *(a2 - 16);
        *(a2 - 16) = v7;
        *(a1 + 24) = v33;
        goto LABEL_30;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::anomalyForGroup(std::vector<long long> const&,long long,float &)::$_0 &,std::pair<float,unsigned long> *,0>(a1, a1 + 16, (a1 + 32), (a1 + 48), (a2 - 16));
        return 1;
      }

      goto LABEL_13;
    }

    v19 = *(a1 + 16);
    v20 = (a1 + 24);
    v21 = *(a1 + 24);
    v22 = *a1;
    v23 = *(a1 + 8);
    v24 = *a1;
    v25 = *(a1 + 32);
    if (v19 >= *a1)
    {
      if (*&v25 < v19)
      {
        v32 = *(a1 + 40);
        *(a1 + 16) = v25;
        *(a1 + 32) = v19;
        *(a1 + 24) = v32;
        *(a1 + 40) = v21;
        if (*&v25 < v24)
        {
          *a1 = v25;
          *(a1 + 16) = v22;
          *(a1 + 8) = v32;
          goto LABEL_47;
        }
      }
    }

    else
    {
      v20 = (a1 + 40);
      if (*&v25 < v19)
      {
        v26 = *(a1 + 40);
        *a1 = v25;
        *(a1 + 32) = v22;
        *(a1 + 8) = v26;
LABEL_47:
        *v20 = v23;
        goto LABEL_48;
      }

      *a1 = v19;
      *(a1 + 16) = v22;
      *(a1 + 8) = v21;
      *(a1 + 24) = v23;
      if (*&v25 < v22)
      {
        v45 = *(a1 + 40);
        *(a1 + 16) = v25;
        *(a1 + 32) = v22;
        *(a1 + 24) = v45;
        goto LABEL_47;
      }
    }

LABEL_48:
    v46 = *(a1 + 32);
    if (*(a2 - 16) < v46)
    {
      v47 = *(a1 + 40);
      v48 = *(a2 - 8);
      *(a1 + 32) = *(a2 - 16);
      *(a2 - 16) = v46;
      *(a1 + 40) = v48;
      *(a2 - 8) = v47;
      v49 = *(a1 + 32);
      v50 = *(a1 + 16);
      if (v49 < v50)
      {
        v51 = *(a1 + 24);
        v52 = *(a1 + 40);
        *(a1 + 16) = v49;
        *(a1 + 32) = v50;
        *(a1 + 24) = v52;
        *(a1 + 40) = v51;
        v53 = *a1;
        if (v49 < *a1)
        {
          v54 = *(a1 + 8);
          *a1 = v49;
          *(a1 + 16) = v53;
          *(a1 + 8) = v52;
          *(a1 + 24) = v54;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *a1;
    if (*(a2 - 16) < *a1)
    {
      v4 = *(a1 + 8);
      *a1 = *(a2 - 16);
      *(a2 - 16) = v3;
      *(a1 + 8) = *(a2 - 8);
LABEL_30:
      *(a2 - 8) = v4;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v10 = (a1 + 32);
  v11 = *(a1 + 32);
  v12 = (a1 + 24);
  v13 = *(a1 + 24);
  v14 = *(a1 + 16);
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *a1;
  if (v14 < *a1)
  {
    v12 = (a1 + 40);
    if (*&v11 >= v14)
    {
      *a1 = v14;
      *(a1 + 16) = v15;
      *(a1 + 8) = v13;
      *(a1 + 24) = v16;
      if (*&v11 >= v15)
      {
        goto LABEL_34;
      }

      v34 = *(a1 + 40);
      *(a1 + 16) = v11;
      *(a1 + 32) = v15;
      *(a1 + 24) = v34;
    }

    else
    {
      v18 = *(a1 + 40);
      *a1 = v11;
      *(a1 + 32) = v15;
      *(a1 + 8) = v18;
    }

    goto LABEL_33;
  }

  if (*&v11 < v14)
  {
    v31 = *(a1 + 40);
    *(a1 + 16) = v11;
    *(a1 + 32) = v14;
    *(a1 + 24) = v31;
    *(a1 + 40) = v13;
    if (*&v11 < v17)
    {
      *a1 = v11;
      *(a1 + 16) = v15;
      *(a1 + 8) = v31;
LABEL_33:
      *v12 = v16;
    }
  }

LABEL_34:
  v35 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v36 = 0;
  v37 = 0;
  while (1)
  {
    v38 = *v35;
    v39 = *v35;
    v40 = *v10;
    if (*v35 < *v10)
    {
      v41 = *(v35 + 8);
      v42 = v36;
      while (1)
      {
        v43 = a1 + v42;
        *(v43 + 48) = v40;
        *(v43 + 56) = *(a1 + v42 + 40);
        if (v42 == -32)
        {
          break;
        }

        v40 = *(v43 + 16);
        v42 -= 16;
        if (v39 >= v40)
        {
          v44 = a1 + v42 + 48;
          goto LABEL_42;
        }
      }

      v44 = a1;
LABEL_42:
      *v44 = v38;
      *(v44 + 8) = v41;
      if (++v37 == 8)
      {
        return v35 + 16 == a2;
      }
    }

    v10 = v35;
    v36 += 16;
    v35 += 16;
    if (v35 == a2)
    {
      return 1;
    }
  }
}

void vision::mod::GreedyClustererFacesWithTorso::serialize(vision::mod::GreedyClustererFacesWithTorso *this)
{
  MEMORY[0x1EEE9AC00](this);
  v2 = v1;
  v4 = v3;
  __p[16375] = *MEMORY[0x1E69E9840];
  VNValidatedLog(1, @"  GreedyClustererFacesWithTorso::serialize - enter", v5, v6, v7, v8, v9, v10, v39);
  v11 = v2[9];
  if (!*(v11 + 72) && !*(v11 + 88))
  {
    operator new();
  }

  vision::mod::GreedyClustererWithTorso::private_t::clusters_t::newMapFilePath(&__s, v11);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_s = &__s;
  }

  else
  {
    p_s = __s.__r_.__value_.__r.__words[0];
  }

  VNValidatedLog(1, @"  GreedyClustererFacesWithTorso::serialize - cachefile: %s", v12, v13, v14, v15, v16, v17, p_s);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__s;
  }

  else
  {
    v19 = __s.__r_.__value_.__r.__words[0];
  }

  v26 = open(v19, 1537, 438);
  if (v26 != -1)
  {
    vision::mod::GreedyClustererWithTorso::serializeStatus((v2 + 1), v26, v20, v21, v22, v23, v24, v25);
    __buf = v2[17];
    write(v26, &__buf, 8uLL);
    v27 = v2[15];
    if (v27 != v2 + 16)
    {
      v28 = 0;
      v29 = __p;
      do
      {
        *v29 = v27[4];
        v29[1] = v27[5];
        if (v28 <= 130968)
        {
          v29 += 2;
          v28 += 16;
        }

        else
        {
          v29 = __p;
          write(v26, __p, (v28 + 16));
          v28 = 0;
        }

        v30 = v27[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v27[2];
            v32 = *v31 == v27;
            v27 = v31;
          }

          while (!v32);
        }

        v27 = v31;
      }

      while (v31 != v2 + 16);
      if (v28 > 0)
      {
        write(v26, __p, v28);
      }
    }

    __buf = v2[20];
    write(v26, &__buf, 8uLL);
    v33 = v2[18];
    if (v33 != v2 + 19)
    {
      v34 = 0;
      v35 = __p;
      do
      {
        *v35 = v33[4];
        v35[1] = v33[5];
        if (v34 <= 130968)
        {
          v35 += 2;
          v34 += 16;
        }

        else
        {
          v35 = __p;
          write(v26, __p, (v34 + 16));
          v34 = 0;
        }

        v36 = v33[1];
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = v33[2];
            v32 = *v37 == v33;
            v33 = v37;
          }

          while (!v32);
        }

        v33 = v37;
      }

      while (v37 != v2 + 19);
      if (v34 > 0)
      {
        write(v26, __p, v34);
      }
    }

    close(v26);
    size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __s.__r_.__value_.__l.__size_;
    }

    __p[0] = (size + 53);
    std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>();
  }

  VNValidatedLog(4, @"  GreedyClustererFacesWithTorso::serialize - error creating new map file for serialization", v20, v21, v22, v23, v24, v25, v40);
  *v4 = 0;
  v4[1] = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1A5E4FBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5E4FCD8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1975380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::getSimilarFacesToClusterContaining(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (*(a1[9] + 104) + (*(a1[9] + 104) >> 31)) >> 1;
  std::vector<float>::vector[abi:ne200100](__A, v5);
  LODWORD(v23) = 0;
  std::vector<float>::vector[abi:ne200100](__B, v5);
  v6 = a1[20];
  if (v6)
  {
    if (!(v6 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v6);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[9];
  if (*(v7 + 112) == 1)
  {
    *(v7 + 112) = 0;
    exception = __cxa_allocate_exception(8uLL);
    *exception = 5219;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  vision::mod::GreedyClustererFacesWithTorso::getAverageDescriptorOfClusterContainingFace(a1, a2, a4, __A[0]);
  v8 = (*(*a1 + 200))(a1, a2);
  v9 = 0.0;
  if (v8 <= 0xA)
  {
    v9 = (((v8 + -1.0) / -10.0) + 1.0) * 0.05;
  }

  v10 = *a4;
  if (*a4 != a4 + 1)
  {
    do
    {
      v11 = v10[5];
      v23 = v10[4];
      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v24, v11, v10[6], (v10[6] - v11) >> 3);
      v12 = v24;
      if (v25 != v24)
      {
        v13 = a1[9];
        if (*(v13 + 112) == 1)
        {
          *(v13 + 112) = 0;
          v18 = __cxa_allocate_exception(8uLL);
          *v18 = 5219;
          __cxa_throw(v18, MEMORY[0x1E69E54B0], 0);
        }

        vision::mod::GreedyClustererFacesWithTorso::getAverageDescriptorOfClusterContainingFace(a1, v23, a4, __B[0]);
        __C[0] = 0.0;
        vDSP_dotpr(__A[0], 1, __B[0], 1, __C, 0x80uLL);
        if (*(a1[5] + 8) * 1.1 > (v9 + ((__C[0] * -0.5) + 0.5)))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(1uLL);
        }
      }

      if (v12)
      {
        v25 = v12;
        operator delete(v12);
      }

      v14 = v10[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v10[2];
          v16 = *v15 == v10;
          v10 = v15;
        }

        while (!v16);
      }

      v10 = v15;
    }

    while (v15 != a4 + 1);
  }

  std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned int,float> *,false>(0, 0, 0, 1);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  return 5248;
}

void sub_1A5E50278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (v22)
  {
    operator delete(v22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned int,float> *,false>(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = (a2 - 8);
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = (a2 - v9) >> 3;
          if (v10 <= 2)
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v96 = *v9;
              v97 = HIDWORD(*v8);
              v98 = HIDWORD(*v9);
              if (COERCE_FLOAT(HIDWORD(*v8)) < COERCE_FLOAT(HIDWORD(*v9)))
              {
                *v9 = *v8;
                *(v9 + 4) = v97;
                *(a2 - 8) = v96;
                *(a2 - 4) = v98;
              }

              return result;
            }

            goto LABEL_10;
          }

          switch(v10)
          {
            case 3:
              v100 = *(v9 + 8);
              v99 = *(v9 + 12);
              v101 = *(v9 + 4);
              v102 = *v8;
              v103 = HIDWORD(*v8);
              LODWORD(v104) = HIDWORD(*v8);
              if (v99 < v101)
              {
                v105 = *v9;
                if (v104 >= v99)
                {
                  *v9 = v100;
                  *(v9 + 4) = v99;
                  *(v9 + 8) = v105;
                  *(v9 + 12) = v101;
                  v168 = *(v9 + 8);
                  v169 = HIDWORD(*v8);
                  if (COERCE_FLOAT(HIDWORD(*v8)) < *(&v168 + 1))
                  {
                    *(v9 + 8) = *v8;
                    *(v9 + 12) = v169;
                    *(a2 - 8) = v168;
                    *(a2 - 4) = v101;
                  }
                }

                else
                {
                  *v9 = v102;
                  *(v9 + 4) = v103;
                  *(a2 - 8) = v105;
                  *(a2 - 4) = v101;
                }

                return result;
              }

              if (v104 >= v99)
              {
                return result;
              }

              *(v9 + 8) = v102;
              *(v9 + 12) = v103;
              *(a2 - 8) = v100;
              *(a2 - 4) = v99;
LABEL_197:
              v175 = *v9;
              v176 = *(v9 + 8);
              v177 = HIDWORD(*v9);
              if (*(&v176 + 1) < COERCE_FLOAT(HIDWORD(*v9)))
              {
                *v9 = v176;
                *(v9 + 8) = v175;
                *(v9 + 12) = v177;
              }

              return result;
            case 4:
              v107 = *(v9 + 8);
              v106 = *(v9 + 12);
              v109 = *v9;
              v108 = *(v9 + 4);
              v110 = *(v9 + 16);
              if (v106 >= v108)
              {
                if (*(&v110 + 1) >= v106)
                {
                  goto LABEL_194;
                }

                *(v9 + 8) = v110;
                v111 = (v9 + 12);
                *(v9 + 16) = v107;
                *(v9 + 20) = v106;
                v159 = *(v9 + 8);
                if (*(&v159 + 1) >= v108)
                {
                  goto LABEL_194;
                }

                *(v9 + 4) = HIDWORD(v159);
                *(v9 + 8) = v109;
                *v9 = v159;
              }

              else if (*(&v110 + 1) >= v106)
              {
                *v9 = v107;
                *(v9 + 4) = v106;
                *(v9 + 8) = v109;
                *(v9 + 12) = v108;
                v170 = *(v9 + 8);
                if (*(&v110 + 1) >= *(&v170 + 1))
                {
                  goto LABEL_194;
                }

                *(v9 + 12) = HIDWORD(v110);
                *(v9 + 16) = v170;
                v111 = (v9 + 20);
                *(v9 + 8) = v110;
              }

              else
              {
                *(v9 + 16) = v109;
                v111 = (v9 + 20);
                *v9 = v110;
              }

              *v111 = v108;
LABEL_194:
              v171 = *(v9 + 16);
              v172 = HIDWORD(*v8);
              if (COERCE_FLOAT(HIDWORD(*v8)) >= *(&v171 + 1))
              {
                return result;
              }

              *(v9 + 16) = *v8;
              *(v9 + 20) = v172;
              *(a2 - 8) = v171;
              v173 = *(v9 + 8);
              v174 = *(v9 + 16);
              if (*(&v174 + 1) >= *(&v173 + 1))
              {
                return result;
              }

              *(v9 + 8) = v174;
              *(v9 + 16) = v173;
              goto LABEL_197;
            case 5:

              return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned int,float> *,0>(v9, (v9 + 8), (v9 + 16), (v9 + 24), a2 - 8);
          }

LABEL_10:
          if (v10 <= 23)
          {
            v112 = v9 + 8;
            v114 = v9 == a2 || v112 == a2;
            if (a4)
            {
              if (!v114)
              {
                v115 = 0;
                v116 = v9;
                do
                {
                  v117 = v112;
                  v118 = *v116;
                  if (*(v116 + 12) < COERCE_FLOAT(HIDWORD(*v116)))
                  {
                    v119 = *(v116 + 8);
                    v120 = *(v116 + 12);
                    v121 = v115;
                    while (1)
                    {
                      v122 = v9 + v121;
                      *(v122 + 8) = v118;
                      *(v122 + 12) = *(v9 + v121 + 4);
                      if (!v121)
                      {
                        break;
                      }

                      v118 = *(v122 - 8);
                      v121 -= 8;
                      if (v120 >= *(&v118 + 1))
                      {
                        v123 = v9 + v121 + 8;
                        goto LABEL_134;
                      }
                    }

                    v123 = v9;
LABEL_134:
                    *v123 = v119;
                    *(v123 + 4) = v120;
                  }

                  v112 = v117 + 8;
                  v115 += 8;
                  v116 = v117;
                }

                while (v117 + 8 != a2);
              }
            }

            else if (!v114)
            {
              v160 = (v9 + 12);
              do
              {
                v161 = v112;
                v162 = *v7;
                if (*(v7 + 12) < COERCE_FLOAT(HIDWORD(*v7)))
                {
                  v163 = *(v7 + 8);
                  v164 = *(v7 + 12);
                  v165 = v160;
                  do
                  {
                    v166 = v165;
                    v167 = *(v165 - 2);
                    v165 -= 2;
                    *(v166 - 1) = v162;
                    *v166 = v167;
                    v162 = *(v166 - 5);
                  }

                  while (v164 < *(&v162 + 1));
                  *(v165 - 1) = v163;
                  *v165 = v164;
                }

                v112 = v161 + 8;
                v160 += 2;
                v7 = v161;
              }

              while (v161 + 8 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v124 = (v10 - 2) >> 1;
              v125 = v124;
              do
              {
                v126 = v125;
                if (v124 >= v125)
                {
                  v127 = (2 * v125) | 1;
                  v128 = (v9 + 8 * v127);
                  if (2 * v126 + 2 < v10)
                  {
                    v129 = vshrn_n_s64(*v128, 0x20uLL);
                    v130 = vcgt_f32(vdup_lane_s32(v129, 1), v129).u8[0];
                    v131 = (v130 & 1) != 0 ? 8 : 0;
                    v128 = (v128 + v131);
                    if (v130)
                    {
                      v127 = 2 * v126 + 2;
                    }
                  }

                  v132 = (v9 + 8 * v126);
                  result = v128->i64[0];
                  v133 = *&v132->i32[1];
                  if (COERCE_FLOAT(HIDWORD(v128->i64[0])) >= v133)
                  {
                    v134 = v132->i32[0];
                    do
                    {
                      v135 = v132;
                      v132 = v128;
                      v135->i32[0] = result;
                      v135->i32[1] = v128->i32[1];
                      if (v124 < v127)
                      {
                        break;
                      }

                      v136 = (2 * v127) | 1;
                      v128 = (v9 + 8 * v136);
                      v137 = 2 * v127 + 2;
                      if (v137 < v10)
                      {
                        v138 = vshrn_n_s64(*v128, 0x20uLL);
                        v139 = vcgt_f32(vdup_lane_s32(v138, 1), v138).u8[0];
                        v140 = (v139 & 1) != 0 ? 8 : 0;
                        v128 = (v128 + v140);
                        if (v139)
                        {
                          v136 = v137;
                        }
                      }

                      result = v128->i64[0];
                      v127 = v136;
                    }

                    while (COERCE_FLOAT(HIDWORD(v128->i64[0])) >= v133);
                    v132->i32[0] = v134;
                    *&v132->i32[1] = v133;
                  }
                }

                v125 = v126 - 1;
              }

              while (v126);
              do
              {
                v141 = 0;
                v142 = *v9;
                v143 = *(v9 + 4);
                v144 = v9;
                do
                {
                  v145 = &v144[2 * v141];
                  v146 = v145 + 2;
                  v147 = (2 * v141) | 1;
                  v141 = 2 * v141 + 2;
                  if (v141 >= v10)
                  {
                    v141 = v147;
                  }

                  else
                  {
                    v148 = vshrn_n_s64(*(v145 + 2), 0x20uLL);
                    v149 = v145 + 4;
                    if (vcgt_f32(vdup_lane_s32(v148, 1), v148).u8[0])
                    {
                      v146 = v149;
                    }

                    else
                    {
                      v141 = v147;
                    }
                  }

                  *v144 = *v146;
                  v144[1] = v146[1];
                  v144 = v146;
                }

                while (v141 <= ((v10 - 2) >> 1));
                if (v146 == (a2 - 8))
                {
                  *v146 = v142;
                  v146[1] = v143;
                }

                else
                {
                  *v146 = *(a2 - 8);
                  v146[1] = *(a2 - 4);
                  *(a2 - 8) = v142;
                  *(a2 - 4) = v143;
                  v150 = (v146 - v9 + 8) >> 3;
                  v151 = v150 < 2;
                  v152 = v150 - 2;
                  if (!v151)
                  {
                    v153 = v152 >> 1;
                    v154 = (v9 + 8 * (v152 >> 1));
                    v155 = *v154;
                    v156 = *(v146 + 1);
                    if (COERCE_FLOAT(HIDWORD(*v154)) < v156)
                    {
                      v157 = *v146;
                      do
                      {
                        v158 = v146;
                        v146 = v154;
                        *v158 = v155;
                        v158[1] = v154[1];
                        if (!v153)
                        {
                          break;
                        }

                        v153 = (v153 - 1) >> 1;
                        v154 = (v9 + 8 * v153);
                        v155 = *v154;
                      }

                      while (COERCE_FLOAT(HIDWORD(*v154)) < v156);
                      *v146 = v157;
                      *(v146 + 1) = v156;
                    }
                  }
                }

                a2 -= 8;
                v151 = v10-- <= 2;
              }

              while (!v151);
            }

            return result;
          }

          v11 = v9 + 8 * (v10 >> 1);
          v12 = v11;
          v13 = *v8;
          v14 = HIDWORD(*v8);
          LODWORD(v15) = HIDWORD(*v8);
          if (v10 >= 0x81)
          {
            v17 = *v11;
            v16 = *(v11 + 4);
            v18 = *(v9 + 4);
            if (v16 >= v18)
            {
              if (v15 < v16)
              {
                *v11 = v13;
                *(v11 + 4) = v14;
                *(a2 - 8) = v17;
                *(a2 - 4) = v16;
                v24 = *v9;
                v25 = HIDWORD(*v11);
                v26 = HIDWORD(*v9);
                if (COERCE_FLOAT(HIDWORD(*v11)) < COERCE_FLOAT(HIDWORD(*v9)))
                {
                  *v9 = *v11;
                  *(v9 + 4) = v25;
                  *v11 = v24;
                  *(v11 + 4) = v26;
                }
              }
            }

            else
            {
              v19 = *v9;
              if (v15 < v16)
              {
                *v9 = v13;
                *(v9 + 4) = v14;
                *(a2 - 8) = v19;
                goto LABEL_27;
              }

              *v9 = v17;
              *(v9 + 4) = v16;
              *v11 = v19;
              *(v11 + 4) = v18;
              v30 = *v11;
              v31 = HIDWORD(*v8);
              if (COERCE_FLOAT(HIDWORD(*v8)) < COERCE_FLOAT(HIDWORD(*v11)))
              {
                *v11 = *v8;
                *(v11 + 4) = v31;
                *(a2 - 8) = v30;
LABEL_27:
                *(a2 - 4) = v18;
              }
            }

            v32 = v11 - 8;
            v33 = *(v11 - 8);
            v34 = *(v9 + 12);
            v35 = *(a2 - 16);
            if (*(&v33 + 1) >= v34)
            {
              if (*(&v35 + 1) < *(&v33 + 1))
              {
                *v32 = v35;
                *(v11 - 4) = HIDWORD(v35);
                *(a2 - 16) = v33;
                v37 = *(v9 + 8);
                v38 = HIDWORD(*v32);
                if (COERCE_FLOAT(HIDWORD(*v32)) < *(&v37 + 1))
                {
                  *(v9 + 8) = *v32;
                  *(v9 + 12) = v38;
                  *v32 = v37;
                  *(v11 - 4) = HIDWORD(v37);
                }
              }
            }

            else
            {
              v36 = *(v9 + 8);
              if (*(&v35 + 1) < *(&v33 + 1))
              {
                *(v9 + 8) = v35;
                *(a2 - 16) = v36;
                goto LABEL_39;
              }

              *(v9 + 8) = v33;
              *v32 = v36;
              *(v11 - 4) = v34;
              v41 = *(a2 - 16);
              v42 = *v32;
              if (*(&v41 + 1) < COERCE_FLOAT(HIDWORD(*v32)))
              {
                *v32 = v41;
                *(v11 - 4) = HIDWORD(v41);
                *(a2 - 16) = v42;
LABEL_39:
                *(a2 - 12) = v34;
              }
            }

            v45 = *(v11 + 8);
            v43 = v11 + 8;
            v44 = v45;
            v46 = *(v9 + 20);
            v47 = HIDWORD(v45);
            v48 = *(&v45 + 1);
            v49 = *(a2 - 24);
            if (*(&v45 + 1) >= v46)
            {
              if (*(&v49 + 1) < v48)
              {
                *v43 = v49;
                *(a2 - 24) = v44;
                *(a2 - 20) = v47;
                v51 = *(v9 + 16);
                v52 = HIDWORD(*v43);
                if (COERCE_FLOAT(HIDWORD(*v43)) < *(&v51 + 1))
                {
                  *(v9 + 16) = *v43;
                  *(v9 + 20) = v52;
                  *v43 = v51;
                }
              }
            }

            else
            {
              v50 = *(v9 + 16);
              if (*(&v49 + 1) < v48)
              {
                *(v9 + 16) = v49;
                *(a2 - 24) = v50;
                goto LABEL_48;
              }

              *(v9 + 16) = v44;
              *(v9 + 20) = v47;
              *v43 = v50;
              *(v43 + 4) = v46;
              v53 = *(a2 - 24);
              v54 = *v43;
              if (*(&v53 + 1) < COERCE_FLOAT(HIDWORD(*v43)))
              {
                *v43 = v53;
                *(a2 - 24) = v54;
LABEL_48:
                *(a2 - 20) = v46;
              }
            }

            v55 = *v12;
            v56 = v12[1];
            v58 = *v32;
            v57 = *(v32 + 4);
            v59 = v56;
            v60 = *v43;
            v61 = HIDWORD(*v43);
            LODWORD(v62) = HIDWORD(*v43);
            if (v56 >= v57)
            {
              if (v62 < v56)
              {
                *(v12 + 1) = v61;
                v63 = v12 + 1;
                *v12 = v60;
                *v43 = v55;
                *(v43 + 4) = v56;
                v59 = *&v61;
                v55 = *&v60;
                if (*&v61 < v57)
                {
                  *v12 = v58;
                  v59 = v57;
                  *v32 = v60;
                  *(v32 + 4) = v61;
                  goto LABEL_57;
                }
              }
            }

            else
            {
              if (v62 < v56)
              {
                *v43 = v58;
                *v32 = v60;
                *(v32 + 4) = v61;
                v58 = v55;
                v63 = (v43 + 4);
                goto LABEL_57;
              }

              *v32 = v55;
              *(v32 + 4) = v56;
              *v12 = v58;
              v12[1] = v57;
              v59 = v57;
              if (v62 < v57)
              {
                *v43 = v58;
                *v12 = v60;
                *(v12 + 1) = v61;
                v58 = *&v60;
                v63 = (v43 + 4);
                v59 = v62;
LABEL_57:
                *v63 = v57;
              }

              v55 = v58;
            }

            v64 = *v9;
            *v9 = v55;
            *v12 = v64;
            v65 = *(v9 + 4);
            *(v9 + 4) = v59;
            *(v12 + 1) = v65;
            goto LABEL_60;
          }

          v21 = *v9;
          v20 = *(v9 + 4);
          v22 = *(v11 + 4);
          if (v20 >= v22)
          {
            if (v15 < v20)
            {
              *v9 = v13;
              *(v9 + 4) = v14;
              *(a2 - 8) = v21;
              *(a2 - 4) = v20;
              v27 = *v12;
              v28 = HIDWORD(*v9);
              v29 = HIDWORD(*v12);
              if (COERCE_FLOAT(HIDWORD(*v9)) < COERCE_FLOAT(HIDWORD(*v12)))
              {
                *v12 = *v9;
                *(v12 + 1) = v28;
                *v9 = v27;
                *(v9 + 4) = v29;
              }
            }
          }

          else
          {
            v23 = *v12;
            if (v15 >= v20)
            {
              *v12 = v21;
              v12[1] = v20;
              *v9 = v23;
              *(v9 + 4) = v22;
              v39 = *v9;
              v40 = HIDWORD(*v8);
              if (COERCE_FLOAT(HIDWORD(*v8)) >= COERCE_FLOAT(HIDWORD(*v9)))
              {
                goto LABEL_60;
              }

              *v9 = *v8;
              *(v9 + 4) = v40;
              *(a2 - 8) = v39;
            }

            else
            {
              *v12 = v13;
              *(v12 + 1) = v14;
              *(a2 - 8) = v23;
            }

            *(a2 - 4) = v22;
          }

LABEL_60:
          --a3;
          if (a4)
          {
            break;
          }

          v66 = *v9;
          v67 = *(v9 + 4);
          v68 = v67;
          if (*(v9 - 4) < v67)
          {
            goto LABEL_63;
          }

          if (v67 >= *(a2 - 4))
          {
            v86 = v9 + 8;
            do
            {
              v9 = v86;
              if (v86 >= a2)
              {
                break;
              }

              v87 = *(v86 + 4);
              v86 += 8;
            }

            while (v67 >= v87);
          }

          else
          {
            v84 = v9;
            do
            {
              v9 = v84 + 8;
              v85 = *(v84 + 12);
              v84 += 8;
            }

            while (v67 >= v85);
          }

          v88 = a2;
          if (v9 < a2)
          {
            v89 = a2;
            do
            {
              v88 = (v89 - 8);
              v90 = *(v89 - 4);
              v89 -= 8;
            }

            while (v67 < v90);
          }

          if (v9 < v88)
          {
            v91 = *v9;
            v92 = *v88;
            do
            {
              *v9 = v92;
              *v88 = v91;
              v93 = *(v9 + 4);
              *(v9 + 4) = v88[1];
              v88[1] = v93;
              do
              {
                v94 = *(v9 + 8);
                v9 += 8;
                v91 = *&v94;
              }

              while (v67 >= *(&v94 + 1));
              do
              {
                v95 = *(v88 - 1);
                v88 -= 2;
                v92 = *&v95;
              }

              while (v67 < *(&v95 + 1));
            }

            while (v9 < v88);
          }

          if (v9 - 8 != v7)
          {
            *v7 = *(v9 - 8);
            *(v7 + 4) = *(v9 - 4);
          }

          a4 = 0;
          *(v9 - 8) = v66;
          *(v9 - 4) = v67;
        }

        v66 = *v9;
        v67 = *(v9 + 4);
        v68 = v67;
LABEL_63:
        v69 = v9;
        do
        {
          v70 = v69;
          v71 = *(v69 + 8);
          v69 += 8;
          v72 = v71;
        }

        while (v68 > *(&v71 + 1));
        v73 = a2;
        if (v70 == v9)
        {
          v76 = a2;
          while (v69 < v76)
          {
            v74 = v76 - 2;
            v77 = *(v76 - 1);
            v76 -= 2;
            if (v68 > v77)
            {
              goto LABEL_73;
            }
          }

          v74 = v76;
        }

        else
        {
          do
          {
            v74 = (v73 - 8);
            v75 = *(v73 - 4);
            v73 -= 8;
          }

          while (v68 <= v75);
        }

LABEL_73:
        if (v69 >= v74)
        {
          v9 = v69;
        }

        else
        {
          v78 = *v74;
          v9 = v69;
          v79 = v74;
          do
          {
            *v9 = v78;
            *v79 = v72;
            v80 = *(v9 + 4);
            *(v9 + 4) = v79[1];
            *(v79 + 1) = v80;
            do
            {
              v81 = *(v9 + 8);
              v9 += 8;
              v72 = v81;
            }

            while (v68 > *(&v81 + 1));
            do
            {
              v82 = *(v79 - 1);
              v79 -= 2;
              v78 = v82;
            }

            while (v68 <= *(&v82 + 1));
          }

          while (v9 < v79);
        }

        if (v9 - 8 != v7)
        {
          *v7 = *(v9 - 8);
          *(v7 + 4) = *(v9 - 4);
        }

        *(v9 - 8) = v66;
        *(v9 - 4) = v67;
        if (v69 >= v74)
        {
          break;
        }

LABEL_86:
        result = std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned int,float> *,false>(v7, v9 - 8, a3, a4 & 1);
        a4 = 0;
      }

      v83 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned int,float> *>(v7, v9 - 8);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned int,float> *>(v9, a2);
      if (result)
      {
        break;
      }

      if (!v83)
      {
        goto LABEL_86;
      }
    }

    a2 = v9 - 8;
    if (!v83)
    {
      continue;
    }

    return result;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long long,float>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned int,float> *,0>(float *result, float *a2, float *a3, uint64_t *a4, uint64_t a5)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = result[1];
  v8 = *a3;
  v9 = HIDWORD(*a3);
  LODWORD(v10) = HIDWORD(*a3);
  if (v5 >= v7)
  {
    if (v10 < v5)
    {
      *a2 = v8;
      *(a2 + 1) = v9;
      *a3 = v6;
      a3[1] = v5;
      v12 = *result;
      v13 = HIDWORD(*a2);
      v14 = HIDWORD(*result);
      if (COERCE_FLOAT(HIDWORD(*a2)) < COERCE_FLOAT(HIDWORD(*result)))
      {
        *result = *a2;
        *(result + 1) = v13;
        *a2 = v12;
        *(a2 + 1) = v14;
      }
    }
  }

  else
  {
    v11 = *result;
    if (v10 < v5)
    {
      *result = v8;
      *(result + 1) = v9;
      *a3 = v11;
LABEL_9:
      a3[1] = v7;
      goto LABEL_10;
    }

    *result = v6;
    result[1] = v5;
    *a2 = v11;
    a2[1] = v7;
    v15 = *a2;
    v16 = HIDWORD(*a3);
    if (COERCE_FLOAT(HIDWORD(*a3)) < COERCE_FLOAT(HIDWORD(*a2)))
    {
      *a2 = *a3;
      *(a2 + 1) = v16;
      *a3 = v15;
      goto LABEL_9;
    }
  }

LABEL_10:
  v17 = *a3;
  v18 = HIDWORD(*a4);
  v19 = HIDWORD(*a3);
  if (COERCE_FLOAT(HIDWORD(*a4)) < COERCE_FLOAT(HIDWORD(*a3)))
  {
    *a3 = *a4;
    *(a3 + 1) = v18;
    *a4 = v17;
    *(a4 + 1) = v19;
    v20 = *a2;
    v21 = HIDWORD(*a3);
    v22 = HIDWORD(*a2);
    if (COERCE_FLOAT(HIDWORD(*a3)) < COERCE_FLOAT(HIDWORD(*a2)))
    {
      *a2 = *a3;
      *(a2 + 1) = v21;
      *a3 = v20;
      *(a3 + 1) = v22;
      v23 = *result;
      v24 = HIDWORD(*a2);
      v25 = HIDWORD(*result);
      if (COERCE_FLOAT(HIDWORD(*a2)) < COERCE_FLOAT(HIDWORD(*result)))
      {
        *result = *a2;
        *(result + 1) = v24;
        *a2 = v23;
        *(a2 + 1) = v25;
      }
    }
  }

  v26 = *a4;
  v27 = HIDWORD(*a5);
  v28 = HIDWORD(*a4);
  if (COERCE_FLOAT(HIDWORD(*a5)) < COERCE_FLOAT(HIDWORD(*a4)))
  {
    *a4 = *a5;
    *(a4 + 1) = v27;
    *a5 = v26;
    *(a5 + 4) = v28;
    v29 = *a3;
    v30 = HIDWORD(*a4);
    v31 = HIDWORD(*a3);
    if (COERCE_FLOAT(HIDWORD(*a4)) < COERCE_FLOAT(HIDWORD(*a3)))
    {
      *a3 = *a4;
      *(a3 + 1) = v30;
      *a4 = v29;
      *(a4 + 1) = v31;
      v32 = *a2;
      v33 = HIDWORD(*a3);
      v34 = HIDWORD(*a2);
      if (COERCE_FLOAT(HIDWORD(*a3)) < COERCE_FLOAT(HIDWORD(*a2)))
      {
        *a2 = *a3;
        *(a2 + 1) = v33;
        *a3 = v32;
        *(a3 + 1) = v34;
        v35 = *result;
        v36 = HIDWORD(*a2);
        v37 = HIDWORD(*result);
        if (COERCE_FLOAT(HIDWORD(*a2)) < COERCE_FLOAT(HIDWORD(*result)))
        {
          *result = *a2;
          *(result + 1) = v36;
          *a2 = v35;
          *(a2 + 1) = v37;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned int,float> *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v8 = *(a1 + 8);
      v7 = *(a1 + 12);
      v9 = *(a1 + 4);
      v10 = *(a2 - 8);
      if (v7 < v9)
      {
        v11 = *a1;
        if (*(&v10 + 1) < v7)
        {
          *a1 = v10;
          v6 = 1;
          *(a2 - 8) = v11;
          *(a2 - 4) = v9;
          return v6;
        }

        *a1 = v8;
        *(a1 + 4) = v7;
        *(a1 + 8) = v11;
        *(a1 + 12) = v9;
        v27 = *(a2 - 8);
        v28 = *(a1 + 8);
        if (*(&v27 + 1) < *(&v28 + 1))
        {
          *(a1 + 8) = v27;
          v6 = 1;
          *(a2 - 8) = v28;
          *(a2 - 4) = v9;
          return v6;
        }

        return 1;
      }

      if (*(&v10 + 1) >= v7)
      {
        return 1;
      }

      *(a1 + 8) = v10;
      *(a2 - 8) = v8;
      *(a2 - 4) = v7;
LABEL_50:
      v44 = *a1;
      v45 = *(a1 + 8);
      v46 = HIDWORD(*a1);
      if (*(&v45 + 1) < COERCE_FLOAT(HIDWORD(*a1)))
      {
        *a1 = v45;
        v6 = 1;
        *(a1 + 8) = v44;
        *(a1 + 12) = v46;
        return v6;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFacesWithTorso::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned int,float> *,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a2 - 8);
        return 1;
      }

      goto LABEL_13;
    }

    v21 = *(a1 + 8);
    v20 = *(a1 + 12);
    v23 = *a1;
    v22 = *(a1 + 4);
    v24 = *(a1 + 16);
    if (v20 >= v22)
    {
      if (*(&v24 + 1) >= v20)
      {
        goto LABEL_47;
      }

      *(a1 + 8) = v24;
      v25 = (a1 + 12);
      *(a1 + 16) = v21;
      *(a1 + 20) = v20;
      v26 = *(a1 + 8);
      if (*(&v26 + 1) >= v22)
      {
        goto LABEL_47;
      }

      *(a1 + 4) = HIDWORD(v26);
      *(a1 + 8) = v23;
      *a1 = v26;
    }

    else if (*(&v24 + 1) >= v20)
    {
      *a1 = v21;
      *(a1 + 4) = v20;
      *(a1 + 8) = v23;
      *(a1 + 12) = v22;
      v39 = *(a1 + 8);
      if (*(&v24 + 1) >= *(&v39 + 1))
      {
        goto LABEL_47;
      }

      *(a1 + 12) = HIDWORD(v24);
      *(a1 + 16) = v39;
      v25 = (a1 + 20);
      *(a1 + 8) = v24;
    }

    else
    {
      *(a1 + 16) = v23;
      v25 = (a1 + 20);
      *a1 = v24;
    }

    *v25 = v22;
LABEL_47:
    v40 = *(a2 - 8);
    v41 = *(a1 + 16);
    if (*(&v40 + 1) >= *(&v41 + 1))
    {
      return 1;
    }

    *(a1 + 16) = v40;
    *(a2 - 8) = v41;
    v42 = *(a1 + 8);
    v43 = *(a1 + 16);
    if (*(&v43 + 1) >= *(&v42 + 1))
    {
      return 1;
    }

    *(a1 + 8) = v43;
    *(a1 + 16) = v42;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 8);
    v4 = *a1;
    v5 = HIDWORD(*a1);
    if (*(&v3 + 1) < COERCE_FLOAT(HIDWORD(*a1)))
    {
      *a1 = v3;
      v6 = 1;
      *(a2 - 8) = v4;
      *(a2 - 4) = v5;
      return v6;
    }

    return 1;
  }

LABEL_13:
  v12 = (a1 + 16);
  v13 = *(a1 + 16);
  v15 = *(a1 + 8);
  v14 = *(a1 + 12);
  v17 = *a1;
  v16 = *(a1 + 4);
  v18 = HIDWORD(v13);
  if (v14 < v16)
  {
    if (*(&v13 + 1) >= v14)
    {
      *a1 = v15;
      *(a1 + 4) = v14;
      *(a1 + 8) = v17;
      *(a1 + 12) = v16;
      v29 = *(a1 + 8);
      if (*(&v13 + 1) >= *(&v29 + 1))
      {
        goto LABEL_33;
      }

      *(a1 + 12) = HIDWORD(v13);
      *(a1 + 16) = v29;
      v19 = (a1 + 20);
      *(a1 + 8) = v13;
      goto LABEL_32;
    }

    *(a1 + 16) = v17;
    v19 = (a1 + 20);
LABEL_24:
    *a1 = v13;
    *(a1 + 4) = v18;
LABEL_32:
    *v19 = v16;
    goto LABEL_33;
  }

  if (*(&v13 + 1) < v14)
  {
    *(a1 + 8) = v13;
    v19 = (a1 + 12);
    *(a1 + 16) = v15;
    *(a1 + 20) = v14;
    v13 = *(a1 + 8);
    v18 = HIDWORD(v13);
    if (*(&v13 + 1) < v16)
    {
      *(a1 + 8) = v17;
      goto LABEL_24;
    }
  }

LABEL_33:
  v30 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *(v30 + 4);
    v34 = *v12;
    if (v33 < COERCE_FLOAT(HIDWORD(*v12)))
    {
      v35 = *v30;
      v36 = v31;
      while (1)
      {
        v37 = a1 + v36;
        *(v37 + 24) = v34;
        *(v37 + 28) = *(a1 + v36 + 20);
        if (v36 == -16)
        {
          break;
        }

        v34 = *(v37 + 8);
        v36 -= 8;
        if (v33 >= *(&v34 + 1))
        {
          v38 = a1 + v36 + 24;
          goto LABEL_41;
        }
      }

      v38 = a1;
LABEL_41:
      *v38 = v35;
      *(v38 + 4) = v33;
      if (++v32 == 8)
      {
        return v30 + 8 == a2;
      }
    }

    v12 = v30;
    v31 += 8;
    v30 += 8;
    if (v30 == a2)
    {
      return 1;
    }
  }
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::affinityForFace(vision::mod::GreedyClustererFacesWithTorso *a1, uint64_t a2, void *a3, std::vector<int> *a4)
{
  {
    return 5244;
  }

  v34 = a2;
  if (vision::mod::GreedyClustererFacesWithTorso::isFaceIdInClustererState(a1, a2))
  {
    __C = &v34;
    v8 = std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 120, a2)[5];
    if (v8 >= (*(*(a1 + 9) + 56) - *(*(a1 + 9) + 48)) >> 2)
    {
      v16 = &CVML_status_inconsistentState;
      return (*v16 + 128) | 0x1400;
    }

    v9 = (*(*a3 + 104))(a3);
    v10 = *(a1 + 9);
    if (*(v10 + 104) == v9 >> 2)
    {
      v11 = *(v10 + 72);
      v12 = *v11;
      v13 = *(*v11 + 16);
      std::vector<int>::reserve(a4, a3[9]);
      if (a3[9])
      {
        v14 = 0;
        v15 = (v12 + v8 * v13 + 64);
        v16 = &CVML_status_ok;
        do
        {
          v17 = (a3[7] + 4 * (a3[8] >> 2) * v14);
          v18 = *(*(a1 + 9) + 104) + (*(*(a1 + 9) + 104) >> 31);
          v19 = *(*(a1 + 9) + 104) / 2;
          LODWORD(__C) = 0;
          v36 = 0.0;
          v20 = v18 >> 1;
          vDSP_dotpr(v17, 1, v15, 1, &__C, v20);
          vDSP_dotpr(&v17[v19], 1, &v15[v19], 1, &v36, v20);
          v21 = *&__C * -0.5 + 0.5;
          v22 = 1.0 - v21;
          end = a4->__end_;
          value = a4->__end_cap_.__value_;
          if (end >= value)
          {
            begin = a4->__begin_;
            v27 = end - a4->__begin_;
            v28 = v27 >> 2;
            v29 = (v27 >> 2) + 1;
            if (v29 >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v30 = value - begin;
            if (v30 >> 1 > v29)
            {
              v29 = v30 >> 1;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v31 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v29;
            }

            if (v31)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v31);
            }

            *(4 * v28) = v22;
            v25 = 4 * v28 + 4;
            memcpy(0, begin, v27);
            v32 = a4->__begin_;
            a4->__begin_ = 0;
            a4->__end_ = v25;
            a4->__end_cap_.__value_ = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *end = v22;
            v25 = (end + 1);
          }

          a4->__end_ = v25;
          ++v14;
        }

        while (a3[9] > v14);
      }

      else
      {
        v16 = &CVML_status_ok;
      }

      return (*v16 + 128) | 0x1400;
    }
  }

  v16 = &CVML_status_invalidParameter;
  return (*v16 + 128) | 0x1400;
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::update(uint64_t a1, void *lpsrc)
{
  {
    if (lpsrc[9] != (lpsrc[2] - lpsrc[1]) >> 3)
    {
      syslog(5, "wrong number of descriptors id in descriptor buffer");
    }

    if (*(lpsrc + 26) == *(a1 + 32))
    {
      std::vector<BOOL>::vector(&v12, (lpsrc + 15));
      v5 = lpsrc[18];
      v4 = lpsrc[19];
      v10 = lpsrc;
      v6 = v4 - v5;
      if (v4 != v5)
      {
        if (!((v6 >> 4) >> 60))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(v6 >> 4);
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v11 = v10[7];
      (*(*v10 + 104))(v10);
      if (v11)
      {
        operator new();
      }

      exception = __cxa_allocate_exception(8uLL);
      *exception = 5245;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    syslog(5, "For consistency, GreedyClustererWithTorso::addDescriptors must be called with a ImageDescriptorBufferJoint having the same distance mode as GreedyClustererWithTorso::distance_mode");
    v8 = __cxa_allocate_exception(8uLL);
    *v8 = 5244;
    __cxa_throw(v8, MEMORY[0x1E69E54B0], 0);
  }

  return 5244;
}

void sub_1A5E52374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  if (__p)
  {
    operator delete(__p);
  }

  v37 = *(v34 - 176);
  if (v37)
  {
    operator delete(v37);
  }

  if (a2 == 1)
  {
    v38 = *__cxa_begin_catch(a1);
    __cxa_end_catch();
    if (v38 == 5248)
    {
      JUMPOUT(0x1A5E521F8);
    }

    JUMPOUT(0x1A5E5220CLL);
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(v34 - 240));
  _Unwind_Resume(a1);
}

uint64_t cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>::create(uint64_t a1)
{
  if (a1)
  {
    cvml::util::MMapFileBackingStore::create(0x18);
  }

  return 0;
}

void sub_1A5E52668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1A5E52700(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::vector<unsigned int>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<unsigned int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1972FE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5E528A0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[1].__shared_owners_ = v4;
    operator delete(v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_1A5E52D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void **a12, void **a13, void **a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v39 + 239) < 0)
  {
    operator delete(*a14);
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*a11);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*a12);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*a15);
  std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(*a13);
  vision::mod::GreedyClustererWithTorso::~GreedyClustererWithTorso(v40);
  std::__shared_weak_count::~__shared_weak_count(v39);
  operator delete(v42);
  _Unwind_Resume(a1);
}

void sub_1A5E52F74(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void vision::mod::GreedyClustererWithTorso::GreedyClustererWithTorso(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = &unk_1F1972DA0;
  *(a1 + 8) = 0x3F0000003F000000;
  *(a1 + 16) = 1;
  *(a1 + 20) = 1;
  *(a1 + 24) = 3;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  if (*a3)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = 5245;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

void sub_1A5E5316C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = v15[9];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = v15[7];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = v15[5];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<vision::mod::GreedyClustererWithTorso::private_t>::__on_zero_shared(uint64_t a1)
{
  vision::mod::GreedyClustererWithTorso::private_t::clusters_t::~clusters_t((a1 + 72));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<vision::mod::GreedyClustererWithTorso::private_t>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1972F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void std::__shared_ptr_emplace<vision::mod::GreedyClustererFacesWithTorso>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1972F40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::GreedyClustererFacesWithTorso::pasreAndVerifyClustererState(uint64_t a1, uint64_t a2, std::string *a3, std::string *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != -1052410331)
  {
    v40 = @"  Clusterer - couldn't find sanity value\n";
LABEL_25:
    VNValidatedLog(4, v40, a3, a4, a5, a6, a7, a8, v53);
    return 5246;
  }

  if (*(a2 + 4) != 10007)
  {
    v53 = *(a2 + 4);
    v40 = CFSTR("  Clusterer - versions mismatch (serialized: %d, current: %d");
    goto LABEL_25;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, (a2 + 44));
  createFullPath(&__str, a1, __p);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v20 = verifyChecksumMD5ForFile(p_str, (a2 + 24));
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__str;
  }

  else
  {
    v21 = __str.__r_.__value_.__r.__words[0];
  }

  if (v20)
  {
    v28 = open(v21, 0);
    v29 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if (v28 != -1)
    {
      v30 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__str;
      }

      VNValidatedLog(1, @"  GreedyClustererFacesWithTorso: Opening '%s'", v22, v23, v24, v25, v26, v27, v30);
      __len = 0;
      read(v28, &__len, 8uLL);
      std::string::basic_string[abi:ne200100](__p, __len);
      if (v57 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      read(v28, v31, __len);
      createFullPath(&v54, a1, __p);
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v54;
      }

      else
      {
        v32 = v54.__r_.__value_.__r.__words[0];
      }

      if (verifyChecksumMD5ForFile(v32, (a2 + 8)))
      {
        *a5 = v28;
        lseek(v28, 0, 0);
        std::string::operator=(a3, &__str);
        std::string::operator=(a4, &v54);
        v39 = &CVML_status_ok;
      }

      else
      {
        v51 = &v54;
        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v51 = v54.__r_.__value_.__r.__words[0];
        }

        VNValidatedLog(4, @"  Clusterer - data checksum mismatch for file: %s", v33, v34, v35, v36, v37, v38, v51);
        close(v28);
        v39 = &CVML_status_internalError;
      }

      v52 = *v39;
      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      v41 = (v52 + 128) | 0x1400;
      goto LABEL_40;
    }

    v43 = __str.__r_.__value_.__r.__words[0];
    __error();
    v50 = &__str;
    if (v29 < 0)
    {
      v50 = v43;
    }

    VNValidatedLog(4, @"  GreedyClustererFacesWithTorso: Failed to open '%s': errno=%d", v44, v45, v46, v47, v48, v49, v50);
  }

  else
  {
    VNValidatedLog(4, @"  Clusterer - data checksum mismatch for file: %s", v14, v15, v16, v17, v18, v19, v21);
  }

  v41 = 5246;
LABEL_40:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v41;
}

void sub_1A5E535E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5E54258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, void *__p, uint64_t a51)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12905(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5E55D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNBGRBilinearUpsampler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5E55F7C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 14);
  objc_exception_rethrow();
}

void sub_1A5E57AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53)
{
  a19 = &a50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  vision::mod::ImageAnalyzer_Tensor3D::~ImageAnalyzer_Tensor3D(&a53);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v56 - 136);

  _Unwind_Resume(a1);
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void sub_1A5E5876C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34, uint64_t a35, void *a36, void *a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void std::vector<CGRect>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void Geometry2D_mallocCart2D(void *a1, int a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 >= 1)
  {
    v4 = 4 * a2;
    v5 = malloc_type_malloc(v4, 0x100004052888210uLL);
    *a1 = v5;
    if (v5 && (v6 = malloc_type_malloc(v4, 0x100004052888210uLL), (a1[1] = v6) != 0))
    {
      *(a1 + 4) = a2;
    }

    else
    {
      free(v5);
      *a1 = 0;
      a1[1] = 0;
      *(a1 + 4) = 0;
    }
  }
}

uint64_t Geometry2D_copyCart2D(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 1917;
  }

  v4 = *a1;
  if (!*a1 || !*(a1 + 8))
  {
    return 1917;
  }

  result = 1917;
  if (a2)
  {
    v6 = *(a1 + 16);
    if (v6 >= 1)
    {
      if (*a2)
      {
        if (*(a2 + 8))
        {
          v7 = *(a2 + 16);
          if (v7 >= 1)
          {
            if (v6 != v7)
            {
              return 1916;
            }

            memcpy(*a2, v4, 4 * v6);
            memcpy(*(a2 + 8), *(a1 + 8), 4 * *(a2 + 16));
            return 1920;
          }
        }
      }

      return 1917;
    }
  }

  return result;
}

float Geometry2D_cloneUsingIndicesCart2D(int *a1, int *a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a2)
  {
    if (*a2)
    {
      if (*(a2 + 1))
      {
        if (a2[4] >= 1)
        {
          Geometry2D_mallocCart2D(a1, 8);
          v5 = *a1;
          if (*a1)
          {
            v6 = *(a1 + 1);
            if (v6)
            {
              if (a1[4] >= 1)
              {
                v7 = 0;
                v8 = *a2;
                v9 = *(a2 + 1);
                do
                {
                  v10 = *(&LandmarkDetector_faceMesh63Parts + v7 + 1544);
                  *(v5 + v7) = *(v8 + 4 * v10);
                  result = *(v9 + 4 * v10);
                  *(v6 + v7) = result;
                  v7 += 4;
                }

                while (v7 != 32);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

id _dataUnvailableError(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no operation point data is available for %@", a1];
  v2 = [VNError errorForDataUnavailableWithLocalizedDescription:v1];

  return v2;
}

void sub_1A5E5D16C(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1A5E5D230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNLKTOpticalFlowGPU;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5E5D834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13883(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unint64_t _bestDimensionForSizeRange(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [v3 idealDimension];
  if (v4)
  {
    goto LABEL_2;
  }

  if ([v3 isAllowedDimension:a2])
  {
    goto LABEL_7;
  }

  v4 = [v3 maximumDimension];
  if (v4 - 1 < a2)
  {
LABEL_2:
    a2 = v4;
  }

  else
  {
    v5 = [v3 minimumDimension];
    if (v5)
    {
      a2 = v5;
    }
  }

LABEL_7:

  return a2;
}

uint64_t __Block_byref_object_copy__13927(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5E5EF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v33 = (v29 + 96);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a15);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a18);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a21);
  do
  {
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(v33 - 2));
    v33 -= 32;
  }

  while (v33 != &a29);
  MEMORY[0x1AC556B00](v31, v30);
  _Unwind_Resume(a1);
}

void *std::set<VNRequestFaceLandmarksConstellation>::set[abi:ne200100](void *a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<VNRequestFaceLandmarksConstellation>::__emplace_hint_unique_key_args<VNRequestFaceLandmarksConstellation,VNRequestFaceLandmarksConstellation const&>(a1, v4, *a2++);
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<VNRequestFaceLandmarksConstellation>::__emplace_hint_unique_key_args<VNRequestFaceLandmarksConstellation,VNRequestFaceLandmarksConstellation const&>(void *result, void *a2, unint64_t a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = a2[4], v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (v7[4] < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
        v15 = v13[4];
        if (v15 <= a3)
        {
          break;
        }

        v13 = *v14;
        v3 = v14;
        if (!*v14)
        {
          goto LABEL_38;
        }
      }

      if (v15 >= a3)
      {
        break;
      }

      v3 = v14 + 1;
      v13 = v14[1];
      if (!v13)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v8 = v3;
    goto LABEL_19;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && v10[4] <= a3)
  {
    v17 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v18 = v17;
        v19 = v17[4];
        if (v19 <= a3)
        {
          break;
        }

        v17 = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_40;
      }

      v3 = v18 + 1;
      v17 = v18[1];
      if (!v17)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  if (!*v8)
  {
LABEL_38:
    operator new();
  }

  return result;
}

void sub_1A5E6138C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A5E61180);
  }

  _Unwind_Resume(a1);
}

void sub_1A5E618DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNTrackMaskDetectorState;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5E633AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5E632C0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5E63F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNTrackMaskDetector;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t ctrTrackerAlgorithm_computeFFTx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, DSPComplex *__C, DSPSplitComplex *__Z, OpaqueFFTSetup *a8)
{
  v8 = 6780;
  if (a1 && a2 && a3 && a4 && a5 && __C && __Z)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(a1 + v16);
      v19 = vextq_s8(v18, v18, 8uLL).u64[0];
      v20 = vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v19, v17) & 0xFF00FF00FF00FFLL)));
      v21 = vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v19, v17) & 0xFF00FF00FF00FFLL)));
      v22 = vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v18.i8, v17) & 0xFF00FF00FF00FFLL)));
      v23 = vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v18.i8, v17) & 0xFF00FF00FF00FFLL)));
      *v17.i32 = (((((((((((((((*v17.i32 + v23.f32[0]) + v23.f32[1]) + v23.f32[2]) + v23.f32[3]) + v22.f32[0]) + v22.f32[1]) + v22.f32[2]) + v22.f32[3]) + v21.f32[0]) + v21.f32[1]) + v21.f32[2]) + v21.f32[3]) + v20.f32[0]) + v20.f32[1]) + v20.f32[2]) + v20.f32[3];
      v16 += 16;
    }

    while (v16 != 0x4000);
    v24 = 0;
    v25 = *v17.i32 * 0.000061035;
    do
    {
      v21.i8[0] = *(a1 + v24);
      v21.f32[0] = (*(a5 + 4 * v24) * (v21.u32[0] - v25)) / 255.0;
      *(&__C->real + v24++) = v21.i32[0];
    }

    while (v24 != 0x4000);
    vDSP_ctoz(__C, 2, __Z, 1, 0x2000uLL);
    vDSP_fft2d_zrip(a8, __Z, 1, 0, 7uLL, 7uLL, 1);
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *(a2 + v26);
      v29 = vextq_s8(v28, v28, 8uLL).u64[0];
      v30 = vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v29, v27) & 0xFF00FF00FF00FFLL)));
      v31 = vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v29, v27) & 0xFF00FF00FF00FFLL)));
      v32 = vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v28.i8, v27) & 0xFF00FF00FF00FFLL)));
      v33 = vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v28.i8, v27) & 0xFF00FF00FF00FFLL)));
      *v27.i32 = (((((((((((((((*v27.i32 + v33.f32[0]) + v33.f32[1]) + v33.f32[2]) + v33.f32[3]) + v32.f32[0]) + v32.f32[1]) + v32.f32[2]) + v32.f32[3]) + v31.f32[0]) + v31.f32[1]) + v31.f32[2]) + v31.f32[3]) + v30.f32[0]) + v30.f32[1]) + v30.f32[2]) + v30.f32[3];
      v26 += 16;
    }

    while (v26 != 0x4000);
    v34 = 0;
    v35 = *v27.i32 * 0.000061035;
    do
    {
      v31.i8[0] = *(a2 + v34);
      v31.f32[0] = (*(a5 + 4 * v34) * (v31.u32[0] - v35)) / 255.0;
      *(&__C->real + v34++) = v31.i32[0];
    }

    while (v34 != 0x4000);
    vDSP_ctoz(__C, 2, __Z + 1, 1, 0x2000uLL);
    vDSP_fft2d_zrip(a8, __Z + 1, 1, 0, 7uLL, 7uLL, 1);
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = *(a3 + v36);
      v39 = vextq_s8(v38, v38, 8uLL).u64[0];
      v40 = vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v39, v37) & 0xFF00FF00FF00FFLL)));
      v41 = vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v39, v37) & 0xFF00FF00FF00FFLL)));
      v42 = vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v38.i8, v37) & 0xFF00FF00FF00FFLL)));
      v43 = vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v38.i8, v37) & 0xFF00FF00FF00FFLL)));
      *v37.i32 = (((((((((((((((*v37.i32 + v43.f32[0]) + v43.f32[1]) + v43.f32[2]) + v43.f32[3]) + v42.f32[0]) + v42.f32[1]) + v42.f32[2]) + v42.f32[3]) + v41.f32[0]) + v41.f32[1]) + v41.f32[2]) + v41.f32[3]) + v40.f32[0]) + v40.f32[1]) + v40.f32[2]) + v40.f32[3];
      v36 += 16;
    }

    while (v36 != 0x4000);
    v44 = 0;
    v45 = *v37.i32 * 0.000061035;
    do
    {
      v41.i8[0] = *(a3 + v44);
      v41.f32[0] = (*(a5 + 4 * v44) * (v41.u32[0] - v45)) / 255.0;
      *(&__C->real + v44++) = v41.i32[0];
    }

    while (v44 != 0x4000);
    vDSP_ctoz(__C, 2, __Z + 2, 1, 0x2000uLL);
    vDSP_fft2d_zrip(a8, __Z + 2, 1, 0, 7uLL, 7uLL, 1);
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = *(a4 + v46);
      v49 = vextq_s8(v48, v48, 8uLL).u64[0];
      v50 = vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v49, v47) & 0xFF00FF00FF00FFLL)));
      v51 = vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v49, v47) & 0xFF00FF00FF00FFLL)));
      v52 = vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v48.i8, v47) & 0xFF00FF00FF00FFLL)));
      v53 = vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v48.i8, v47) & 0xFF00FF00FF00FFLL)));
      *v47.i32 = (((((((((((((((*v47.i32 + v53.f32[0]) + v53.f32[1]) + v53.f32[2]) + v53.f32[3]) + v52.f32[0]) + v52.f32[1]) + v52.f32[2]) + v52.f32[3]) + v51.f32[0]) + v51.f32[1]) + v51.f32[2]) + v51.f32[3]) + v50.f32[0]) + v50.f32[1]) + v50.f32[2]) + v50.f32[3];
      v46 += 16;
    }

    while (v46 != 0x4000);
    v54 = 0;
    v55 = *v47.i32 * 0.000061035;
    do
    {
      v51.i8[0] = *(a4 + v54);
      v51.f32[0] = (*(a5 + 4 * v54) * (v51.u32[0] - v55)) / 255.0;
      *(&__C->real + v54++) = v51.i32[0];
    }

    while (v54 != 0x4000);
    vDSP_ctoz(__C, 2, __Z + 3, 1, 0x2000uLL);
    vDSP_fft2d_zrip(a8, __Z + 3, 1, 0, 7uLL, 7uLL, 1);
    return 6784;
  }

  return v8;
}

uint64_t ctrTrackerAlgorithm_GaussianCorrelation(uint64_t a1, uint64_t a2, DSPSplitComplex *a3, const DSPSplitComplex *a4, DSPComplex *a5, char *a6, OpaqueFFTSetup *a7)
{
  v7 = 6780;
  if (a1 && a2 && a3 && a4 && a5 && a6)
  {
    bzero(a6, 0x10000uLL);
    for (i = 0; i != 4; ++i)
    {
      v16 = (a2 + 16 * i);
      v17 = (a1 + 16 * i);
      vDSP_zvcmul(v16, 1, v17, 1, a3, 1, 0x2000uLL);
      v18 = 0;
      realp = v17->realp;
      imagp = v17->imagp;
      v22 = v16->realp;
      v21 = v16->imagp;
      v23 = a3->realp;
      v24 = a3->imagp;
      *v23 = *v17->realp * *v16->realp;
      *v24 = *imagp * *v21;
      v23[64] = realp[64] * v22[64];
      v24[64] = imagp[64] * v21[64];
      v25 = a4->realp;
      v26 = a4->imagp;
      v27 = a4[1].realp;
      v28 = a4[1].imagp;
      v29 = realp + 192;
      v30 = v22 + 192;
      do
      {
        v25[v18] = *(v29 - 64);
        v26[v18] = *v29;
        v27[v18] = *(v30 - 64);
        v28[v18++] = *v30;
        v29 += 128;
        v30 += 128;
      }

      while (v18 != 63);
      vDSP_zvcmul(a4 + 1, 1, a4, 1, a4 + 2, 1, 0x3EuLL);
      v31 = 0;
      v32 = a4[2].realp;
      v33 = a4[2].imagp;
      v34 = a3->realp + 192;
      do
      {
        *(v34 - 64) = LODWORD(v32[v31]);
        *v34 = LODWORD(v33[v31]);
        v34 += 128;
        ++v31;
      }

      while (v31 != 63);
      v35 = 0;
      v36 = a4->realp;
      v37 = a4->imagp;
      v38 = a4[1].realp;
      v39 = a4[1].imagp;
      v40 = v17->imagp + 192;
      v41 = v16->imagp + 192;
      do
      {
        v36[v35] = *(v40 - 64);
        v37[v35] = *v40;
        v38[v35] = *(v41 - 64);
        v39[v35++] = *v41;
        v40 += 128;
        v41 += 128;
      }

      while (v35 != 63);
      vDSP_zvcmul(a4 + 1, 1, a4, 1, a4 + 2, 1, 0x3EuLL);
      v42 = 0;
      v43 = a4[2].realp;
      v44 = a4[2].imagp;
      v45 = a3->imagp + 192;
      do
      {
        *(v45 - 64) = LODWORD(v43[v42]);
        *v45 = LODWORD(v44[v42]);
        v45 += 128;
        ++v42;
      }

      while (v42 != 63);
      vDSP_fft2d_zrip(a7, a3, 1, 0, 7uLL, 7uLL, -1);
      vDSP_ztoc(a3, 1, a5, 2, 0x2000uLL);
      v52 = 931135488;
      MEMORY[0x1AC5587B0](a5, 1, &v52, a5, 1, 0x4000);
      for (j = 0; j != 0x10000; j += 4)
      {
        *&a6[j] = *(&a5->real + j) + *&a6[j];
      }
    }

    v51 = 0.0;
    v7 = ctrTrackerAlgorithm_packedNorm(a1, a3, &v51);
    if (v7 == 128)
    {
      v50 = 0.0;
      v7 = ctrTrackerAlgorithm_packedNorm(a2, a3, &v50);
      if (v7 == 128)
      {
        v47 = 0;
        v48 = v51 + v50;
        do
        {
          *(&a5->real + v47) = expf(fmaxf((v48 + (*&a6[v47] * -2.0)) * 0.000015259, 0.0) * -25.0);
          v47 += 4;
        }

        while (v47 != 0x10000);
        vDSP_ctoz(a5, 2, a3, 1, 0x2000uLL);
        vDSP_fft2d_zrip(a7, a3, 1, 0, 7uLL, 7uLL, 1);
      }
    }
  }

  return v7;
}

uint64_t ctrTrackerAlgorithm_packedNorm(uint64_t a1, DSPSplitComplex *__C, float *a3)
{
  if (!a3)
  {
    return 6780;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    vDSP_zvcmul((a1 + 16 * v6), 1, (a1 + 16 * v6), 1, __C, 1, 0x2000uLL);
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = (((v10 + COERCE_FLOAT(*&__C->realp[v9])) + COERCE_FLOAT(HIDWORD(*&__C->realp[v9]))) + COERCE_FLOAT(*&__C->realp[v9 + 2])) + COERCE_FLOAT(HIDWORD(*&__C->realp[v9]));
      v9 += 4;
    }

    while (v9 != 0x2000);
    v8 = (a1 + 16 * v6);
    v7 = v7 + ((v10 + (((((*v8[1] * *v8[1]) + (**v8 * **v8)) + ((*v8)[64] * (*v8)[64])) + (v8[1][64] * v8[1][64])) * -0.5)) * 0.000030518);
    ++v6;
  }

  while (v6 != 4);
  *a3 = v7;
  return 6784;
}

uint64_t ctrTrackerAlgorithm_packedDivision(float **a1, float **a2, float **a3)
{
  v3 = 6780;
  if (a1 && a2 && a3)
  {
    v4 = 0;
    v5 = *a1;
    v6 = vdupq_n_s32(0x38D1B717u);
    do
    {
      *&v5[v4] = vaddq_f32(*&v5[v4], v6);
      v4 += 4;
    }

    while (v4 != 0x2000);
    v7 = 192;
    for (i = 1; i < 0x7E; i += 2)
    {
      v5[v7] = v5[v7] + -0.0001;
      v7 += 128;
    }

    v9 = 0;
    v10 = *a2;
    v11 = *a3;
    v12 = a3[1];
    v13 = v12 + 1;
    v14 = a1[1];
    v15 = (*a3 + 1);
    v16 = v14 + 1;
    v17 = v5 + 1;
    v18 = (*a2 + 1);
    do
    {
      for (j = 0; j != 63; ++j)
      {
        *(v15 + j * 4) = (*(v18 + j * 4) * v17[j]) / ((v16[j] * v16[j]) + (v17[j] * v17[j]));
        v13[j] = -(*(v18 + j * 4) * v16[j]) / ((v16[j] * v16[j]) + (v17[j] * v17[j]));
      }

      ++v9;
      v13 += 64;
      v15 += 256;
      v16 += 64;
      v17 += 64;
      v18 += 256;
    }

    while (v9 != 128);
    v20 = 0;
    *v11 = (*v10 * *v5) / ((*v14 * *v14) + (*v5 * *v5));
    *v12 = -(*v10 * *v14) / ((*v14 * *v14) + (*v5 * *v5));
    v11[64] = (v10[64] * v5[64]) / ((v14[64] * v14[64]) + (v5[64] * v5[64]));
    v21 = v14[64];
    v22 = -(v10[64] * v21);
    v23 = v10 + 128;
    v12[64] = v22 / ((v21 * v21) + (v5[64] * v5[64]));
    v24 = v5 + 128;
    v25 = v14 + 128;
    v26 = v11 + 128;
    v27 = v12 + 128;
    do
    {
      *v26 = (*v23 * *v24) / ((*v25 * *v25) + (*v24 * *v24));
      v28 = -(*v23 * *v25);
      v29 = (*v25 * *v25) + (*v24 * *v24);
      v20 += 2;
      v23 += 128;
      v24 += 128;
      *v27 = v28 / v29;
      v25 += 128;
      v26 += 128;
      v27 += 128;
    }

    while (v20 < 0x7E);
    v30 = v11 + 192;
    v31 = v12 + 192;
    v32 = 1;
    v3 = 6784;
    do
    {
      *v30 = 0;
      *v31 = 0;
      v32 += 2;
      v30 += 128;
      v31 += 128;
    }

    while (v32 < 0x7E);
  }

  return v3;
}

float vision::mod::ImageDescriptorProcessorEspresso::getRequiredImageSize(vision::mod::ImageDescriptorProcessorEspresso *this)
{
  v1 = **(this + 6);
  if (v1 && [v1 layers_size] && espresso_vision_first_layer_number_of_input_blobs())
  {
    return (espresso_vision_first_layer_first_source_blob_shape() >> 32);
  }

  else
  {
    return NAN;
  }
}

uint64_t vision::mod::ImageDescriptorProcessorEspresso::getRequiredImageChannelDepth(vision::mod::ImageDescriptorProcessorEspresso *this)
{
  result = **(this + 6);
  if (result)
  {
    result = espresso_vision_first_layer_number_of_input_blobs();
    if (result)
    {
      return *(*(this + 6) + 16);
    }
  }

  return result;
}

uint64_t vision::mod::ImageDescriptorProcessorEspresso::setPriority(vision::mod::ImageDescriptorProcessorEspresso *this)
{
  if (espresso_vision_util_update_metal_priority())
  {
    return 3712;
  }

  else
  {
    return 3708;
  }
}

uint64_t vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorsForImages_Planar8(_DWORD *a1, uint64_t *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a1[10];
  if (!v8)
  {
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      v12 = 3691;
      goto LABEL_28;
    }

    v13 = *(a1 + 6);
    if (*(a1 + 8) == 1 && *(v13 + 8) > ((a2[1] - *a2) >> 5))
    {
      syslog(5, "ERROR: The number of images submitted to batch compute the descriptors is less than the size of the internal Espresso network batch size (resulting in a waste of memory and computation)");
      exception = __cxa_allocate_exception(8uLL);
      *exception = 3700;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    if (*(v13 + 16) == 1)
    {
      if (v14)
      {
        v15 = v14[12];
        if (v15 == (*(*a1 + 128))(a1) >> 2)
        {
          vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(v16, (a2[1] - *a2) >> 5, 0);
          v29 = 0;
          LODWORD(v27) = a1[3];
          v17 = *(a1 + 37);
          HIDWORD(v27) = *(a1 + 36);
          *v28 = v17;
          *&v28[4] = *(a1 + 5);
          v12 = espresso_vision_compute_batch();
          if ((v12 & 0x80) != 0 && *(a1 + 38) == 1)
          {
            v18 = a4[7];
            v19 = (*(*a1 + 128))(a1);
            if (a4[9])
            {
              v20 = 0;
              v21 = v19 >> 2;
              v22 = 1;
              do
              {
                normalizeMeanL2((v18 + 4 * v20), v21);
                v23 = a4[9] > v22++;
                v20 += v21;
              }

              while (v23);
            }
          }

          goto LABEL_28;
        }
      }
    }

LABEL_27:
    v12 = 3708;
    goto LABEL_28;
  }

  v9 = *a2;
  v10 = a2[1];
  if (v10 - *a2 != 64)
  {
    goto LABEL_27;
  }

  if (v9 == v10)
  {
    v12 = 3712;
  }

  else
  {
    v11 = 0;
    while (!v7 || (v7[2](v7) & 1) == 0)
    {
      if (v11)
      {
        a1[10] = 0;
      }

      (*(*a1 + 64))(&v27, a1);
      v12 = (*(*a1 + 32))(a1, v9, v27);
      a1[10] = v8;
      if ((v12 & 0x80) == 0)
      {
        v25 = __cxa_allocate_exception(8uLL);
        *v25 = v12;
        __cxa_throw(v25, MEMORY[0x1E69E54B0], 0);
      }

      (*(*a4 + 40))(a4, v27);
      if (*v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v28);
      }

      v9 += 32;
      --v11;
      if (v9 == v10)
      {
        goto LABEL_28;
      }
    }

    v12 = -29;
  }

LABEL_28:

  return v12;
}

float *normalizeMeanL2(float *result, unsigned int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    v3 = 0.0;
    v4 = result;
    v5 = a2;
    do
    {
      v6 = *v4++;
      v3 = v3 + v6;
      --v5;
    }

    while (v5);
    v7 = v3 / a2;
    v8 = result;
    v9 = a2;
    do
    {
      *v8 = *v8 - v7;
      ++v8;
      --v9;
    }

    while (v9);
    v10 = 0.0;
    v11 = result;
    v12 = a2;
    do
    {
      v13 = *v11++;
      v10 = v10 + (v13 * v13);
      --v12;
    }

    while (v12);
    if (v10 < 0.000001)
    {
      v10 = 0.000001;
    }

    v14 = 1.0 / sqrtf(v10);
    do
    {
      *result = v14 * *result;
      ++result;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorsForImages_BGRA8888(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  if (((*(*a1 + 136))(a1) & 4) != 0)
  {
    v8 = vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorsForImages_XYZA8888(a1, a2, v7, a4);
  }

  else
  {
    v8 = 3691;
  }

  return v8;
}

uint64_t vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorsForImages_XYZA8888(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = v7;
  if (v7 && ((*(v7 + 2))(v7) & 1) != 0)
  {
    v9 = 3683;
  }

  else
  {
    v10 = *(a1 + 48);
    if (*(a1 + 8) == 1 && *(v10 + 8) > ((a2[1] - *a2) >> 5))
    {
      syslog(5, "ERROR: The number of images submitted to batch compute the descriptors is less than the size of the internal Espresso network batch size (resulting in a waste of memory and computation)");
      exception = __cxa_allocate_exception(8uLL);
      *exception = 3700;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    {
      vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(v12, (a2[1] - *a2) >> 5, 0);
      if (*(a1 + 16))
      {
        v15 = *(*a2 + 8);
        v16 = *(*a2 + 16);
        if (v15)
        {
          v17 = 0;
          v18 = 0.0;
          v19 = 0.0;
          v20 = 0.0;
          do
          {
            if (v16)
            {
              v21 = (**a2 + *(*a2 + 24) * v17 + 2);
              v22 = *(*a2 + 16);
              do
              {
                LOBYTE(v14) = *(v21 - 2);
                *&v23 = LODWORD(v14);
                v20 = v20 + *&v23;
                LOBYTE(v23) = *(v21 - 1);
                *&v24 = v23;
                v19 = v19 + *&v24;
                LOBYTE(v24) = *v21;
                v14 = v24;
                v18 = v18 + v14;
                v21 += 4;
                --v22;
              }

              while (v22);
            }

            ++v17;
          }

          while (v17 != v15);
        }

        else
        {
          v20 = 0.0;
          v19 = 0.0;
          v18 = 0.0;
        }

        v26 = (v16 * v15);
        *(a1 + 20) = -v20 / v26;
        *(a1 + 24) = -v19 / v26;
        *(a1 + 28) = -v18 / v26;
      }

      v9 = espresso_vision_compute_batch();
      if ((v9 & 0x80) != 0 && *(a1 + 38) == 1)
      {
        v27 = a4[7];
        v28 = (*(*a1 + 128))(a1);
        if (a4[9])
        {
          v29 = 0;
          v30 = v28 >> 2;
          v31 = 1;
          do
          {
            normalizeMeanL2((v27 + 4 * v29), v30);
            v32 = a4[9] > v31++;
            v29 += v30;
          }

          while (v32);
        }
      }
    }

    else
    {
      v9 = 3708;
    }
  }

  return v9;
}

uint64_t vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorsForImages_RGBA8888(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  if (((*(*a1 + 136))(a1) & 2) != 0)
  {
    v8 = vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorsForImages_XYZA8888(a1, a2, v7, a4);
  }

  else
  {
    v8 = 3691;
  }

  return v8;
}

uint64_t vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorForAugmentedImage(_DWORD *a1, _OWORD *a2, uint64_t a3, void *a4, unint64_t *lpsrc)
{
  if (a1[10])
  {
    if (!v10)
    {
      return 3708;
    }

    v11 = v10[12];
    if (v11 != (*(*a1 + 128))(a1) >> 2)
    {
      return 3708;
    }

    a1[11] = -1082130432;
    v12 = vision::mod::ImageDescriptorProcessorAbstract::computeDescriptorForAugmentedImage(a1, a2, a3, a4, lpsrc);
    if ((v12 & 0x80) != 0)
    {
      v32 = a1[11];
      v34 = 0;
      v35 = 0;
      v33 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v33, &v32, &v33, 1uLL);
      v13 = lpsrc[9];
      v14 = (*(*lpsrc + 104))(lpsrc);
      v15 = v33;
      if (v13 != (v34 - v33) >> 2)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = 3708;
        __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
      }

      v16 = v14;
      v17 = (*(*lpsrc + 24))(lpsrc);
      v18 = v16 >> 2;
      v19 = lpsrc[12];
      lpsrc[12] = v19 + 1;
      lpsrc[8] = (v16 >> 2) + 1;
      vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(lpsrc, v13, 0);
      v30 = v12;
      __p = v15;
      if (v13)
      {
        v20 = 0;
        v21 = 0;
        v22 = 4 * v19;
        v23 = 4 * v18;
        v24 = 4 * v18 + 4;
        v25 = __p;
        do
        {
          v26 = (lpsrc[7] + v20);
          memcpy(v26, (v17[7] + v21), v22);
          v27 = *v25++;
          *&v26[v22] = v27 * 0.00001;
          v21 += v23;
          v20 += v24;
          --v13;
        }

        while (v13);
      }

      else if (!v17)
      {
LABEL_17:
        if (__p)
        {
          operator delete(__p);
        }

        return v30;
      }

      (*(*v17 + 8))(v17);
      goto LABEL_17;
    }

    return v12;
  }

  return vision::mod::ImageDescriptorProcessorAbstract::computeDescriptorForAugmentedImage(a1, a2, a3, a4, lpsrc);
}

void sub_1A5E665C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::ImageDescriptorProcessorAbstract::computeDescriptorForAugmentedImage(uint64_t a1, _OWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  (*(*a1 + 64))(&v13);
  v10 = vision::mod::ImageDescriptorAugmenterAbstract::augment(a4, a2, a3);
  if ((v10 & 0x80) != 0)
  {
    vision::mod::ImageDescriptorAugmenterAbstract::getAugmentedImages(__p, a4);
    v10 = (*(*a1 + 96))(a1, __p, a3, 0, v13);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if ((v10 & 0x80) != 0)
    {
      v10 = (*(*a4 + 24))(a4, v13, a5);
    }
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v10;
}

void sub_1A5E66700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorForImage_Planar8(vision::mod::ImageDescriptorProcessorEspresso *this, const vImage_Buffer *a2, float **a3)
{
  if (((*(*this + 136))(this) & 1) == 0)
  {
    return 3691;
  }

  v6 = *(this + 6);
  if (*(this + 8) == 1 && *(v6 + 8) >= 2)
  {
    syslog(5, "ERROR: The number of images submitted to batch compute the descriptors is less than the size of the internal Espresso network batch size (resulting in a waste of memory and computation)");
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3700;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  if (*(v6 + 16) != 1)
  {
    return 3708;
  }

  if (!v7)
  {
    return 3708;
  }

  v8 = v7;
  v9 = *(v7 + 12);
  if (v9 != (*(*this + 128))(this) >> 2)
  {
    return 3708;
  }

  vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(v8, 1uLL, 0);
  if (*(this + 10))
  {
    v5 = espresso_vision_compute_dropout_augment();
    if ((v5 & 0x80) == 0)
    {
      return v5;
    }
  }

  else
  {
    espresso_vision_compute();
    v5 = 3712;
  }

  if (*(this + 38) == 1)
  {
    v11 = a3[7];
    v12 = (*(*this + 128))(this);
    normalizeMeanL2(v11, v12 >> 2);
  }

  if (*(this + 10))
  {
    *(this + 11) = 1065353216;
  }

  return v5;
}

uint64_t vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorForImage_BGRA8888(vision::mod::ImageDescriptorProcessorEspresso *this, const vImage_Buffer *a2, float **a3)
{
  if (((*(*this + 136))(this) & 4) == 0)
  {
    return 3691;
  }

  return vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorForImage_XYZA8888(this, a2, a3);
}

uint64_t vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorForImage_XYZA8888(vision::mod::ImageDescriptorProcessorEspresso *this, const vImage_Buffer *a2, float **lpsrc)
{
  v6 = *(this + 6);
  if (*(this + 8) == 1 && *(v6 + 8) >= 2)
  {
    syslog(5, "ERROR: The number of images submitted to batch compute the descriptors is less than the size of the internal Espresso network batch size (resulting in a waste of memory and computation)");
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3700;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  if ((*(v6 + 16) - 3) > 1)
  {
    return 3708;
  }

  if (!v7)
  {
    return 3708;
  }

  v8 = v7;
  v9 = *(v7 + 12);
  if (v9 != (*(*this + 128))(this) >> 2)
  {
    return 3708;
  }

  vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(v8, 1uLL, 0);
  if (*(this + 16))
  {
    height = a2->height;
    width = a2->width;
    if (height)
    {
      v13 = 0;
      v14 = a2->data + 2;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      do
      {
        v18 = v14;
        v19 = a2->width;
        if (width)
        {
          do
          {
            LOBYTE(v10) = *(v18 - 2);
            *&v20 = LODWORD(v10);
            v17 = v17 + *&v20;
            LOBYTE(v20) = *(v18 - 1);
            *&v21 = v20;
            v16 = v16 + *&v21;
            LOBYTE(v21) = *v18;
            v10 = v21;
            v15 = v15 + v10;
            v18 += 4;
            --v19;
          }

          while (v19);
        }

        ++v13;
        v14 += a2->rowBytes;
      }

      while (v13 != height);
    }

    else
    {
      v17 = 0.0;
      v16 = 0.0;
      v15 = 0.0;
    }

    v23 = (width * height);
    *(this + 5) = -v17 / v23;
    *(this + 6) = -v16 / v23;
    *(this + 7) = -v15 / v23;
  }

  espresso_vision_compute();
  if (*(this + 38) == 1)
  {
    v24 = lpsrc[7];
    v25 = (*(*this + 128))(this);
    normalizeMeanL2(v24, v25 >> 2);
  }

  return 3712;
}

uint64_t vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorForImage_RGBA8888(vision::mod::ImageDescriptorProcessorEspresso *this, const vImage_Buffer *a2, float **a3)
{
  if (((*(*this + 136))(this) & 2) == 0)
  {
    return 3691;
  }

  return vision::mod::ImageDescriptorProcessorEspresso::computeDescriptorForImage_XYZA8888(this, a2, a3);
}

void vision::mod::ImageDescriptorProcessorEspresso::~ImageDescriptorProcessorEspresso(vision::mod::ImageDescriptorProcessorEspresso *this)
{
  *this = &unk_1F1973180;
  v1 = *(this + 7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1973180;
  v1 = *(this + 7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<vision::mod::ImageDescriptorProcessorEspresso::private_t>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void std::__shared_ptr_emplace<vision::mod::ImageDescriptorProcessorEspresso::private_t>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1973230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void vision::mod::ImageDescriptorProcessorEspresso::ImageDescriptorProcessorEspresso(uint64_t a1)
{
  *a1 = &unk_1F1973180;
  *(a1 + 8) = 1;
  *(a1 + 39) = 0;
  *(a1 + 40) = 0xBF80000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_1A5E671BC(_Unwind_Exception *a1)
{
  v4 = *(v2 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  vision::mod::ImageDescriptorProcessorEspresso::Options::~Options(v1);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__14665(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__14666(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void *std::vector<_Geometry2D_point2D_>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1A5E67BA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__37(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = result;
  return result;
}

void sub_1A5E68BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, char a47)
{
  if (v48)
  {
    operator delete(v48);
  }

  vision::mod::Face3D::~Face3D(&a47);

  _Unwind_Resume(a1);
}

void sub_1A5E69418(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1A5E694E0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1A5E6A774(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t ___ZL11getVNBundlev_block_invoke()
{
  getVNBundle(void)::bundle = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.VN"];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A5E6BAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(&__p);
  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(&a25);
  _Unwind_Resume(a1);
}

BOOL _validateVNElementType(unint64_t a1, void *a2)
{
  v2 = a1 - 1;
  if (a1 - 1 >= 2 && a2 != 0)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = VNElementTypeToString(a1);
    v7 = [v5 stringWithFormat:@"invalid element type of %@", v6];

    *a2 = [VNError errorForInternalErrorWithLocalizedDescription:v7];
  }

  return v2 < 2;
}

void sub_1A5E6E3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15266(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL CCRectLowLevel(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, float a10, float a11)
{
  v10 = MEMORY[0x1EEE9AC00](a1).n128_u32[0];
  v444 = v11;
  v503 = v13;
  v504 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v446 = v20;
  v473 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v10;
  v34 = v33;
  *&v552[4772] = *MEMORY[0x1E69E9840];
  v543 = 0;
  v478 = malloc_type_malloc(0x1680uLL, 0x100004052888210uLL);
  v510 = malloc_type_malloc(0x4000uLL, 0x1020040166361F2uLL);
  v494 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
  v507 = malloc_type_malloc(8 * (v15 + 256), 0x100004000313F17uLL);
  v441 = v15;
  v505 = malloc_type_malloc(32 * v15, 0x100004052888210uLL);
  v506 = malloc_type_malloc(8 * (v15 + 256), 0x80040B8603338uLL);
  v509 = malloc_type_malloc(4 * (v15 + 256), 0x100004052888210uLL);
  v508 = malloc_type_malloc(0x400uLL, 0x100004052888210uLL);
  if (CCRectLowLevel_bFirstTime == 1)
  {
    PerMeshForFFTSIZE = CCRectLowLevel_retainedPerMeshPtr;
  }

  else
  {
    if (v17)
    {
      PerMeshForFFTSIZE = 0;
    }

    else
    {
      PerMeshForFFTSIZE = createPerMeshForFFTSIZE();
    }

    CCRectLowLevel_retainedPerMeshPtr = PerMeshForFFTSIZE;
    CCRectLowLevel_bFirstTime = 1;
  }

  if (v17)
  {
    v37 = v17;
  }

  else
  {
    v37 = PerMeshForFFTSIZE;
  }

  v468 = v37;
  if (v19 != -1.0)
  {
    *v35.i32 = v19 * v19;
    v495 = vdupq_lane_s32(v35, 0);
    v38 = xmmword_1A6038C50;
    v39 = &cosScaleTab;
    v40 = &sinScaleTab;
    v41 = 1440;
    v483 = vdupq_n_s32(0x44B40000u);
    v489 = vdupq_n_s32(0x40490FDBu);
    do
    {
      countc = v38;
      v42 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(v38), v489), v483);
      *v525 = vcvtq_f64_f32(*v42.f32);
      v516 = vcvt_hight_f64_f32(v42);
      v43 = __sincos_stret(v516.f64[1]);
      v45 = __sincos_stret(v516.f64[0]);
      v44.f64[0] = v45.__sinval;
      v44.f64[1] = v43.__sinval;
      v512 = v44;
      v46 = __sincos_stret(*&v525[1]);
      v49 = __sincos_stret(*v525);
      v48.f64[0] = v49.__cosval;
      v47.f64[0] = v49.__sinval;
      v47.f64[1] = v46.__sinval;
      v50.f64[0] = v45.__cosval;
      v50.f64[1] = v43.__cosval;
      v51 = vcvt_hight_f32_f64(vcvt_f32_f64(v47), v512);
      v48.f64[1] = v46.__cosval;
      v52 = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v50);
      v53 = vmulq_f32(v51, v51);
      v54 = vmulq_f32(v52, v52);
      *v40++ = vsqrtq_f32(vmlaq_f32(v54, v53, v495));
      *v39++ = vsqrtq_f32(vmlaq_f32(v53, v54, v495));
      v54.i64[0] = 0x400000004;
      v54.i64[1] = 0x400000004;
      v38 = vaddq_s32(countc, v54);
      v41 -= 4;
    }

    while (v41);
  }

  v55 = malloc_type_malloc(0x20000uLL, 0x1000040BDFB0063uLL);
  v56 = malloc_type_malloc(0x20000uLL, 0x1000040BDFB0063uLL);
  v57 = malloc_type_malloc(0x10000uLL, 0xDE31F7A8uLL);
  count = v55;
  v526 = v56;
  cannyEdgeWithGradientOutput(*v34, v57, v55, v56, 0.5, 0.9);
  thinBin(v57);
  for (i = 257; i != 511; ++i)
  {
    if (*(v57 + i))
    {
      trimChain(v57, i - 256, 1, 6u);
    }
  }

  for (j = 0; j != 254; ++j)
  {
    if (*(v57 + j + 65025))
    {
      trimChain(v57, j + 1, 254, 2u);
    }
  }

  v60 = 1;
  v61 = 257;
  do
  {
    if (*(v57 + v61))
    {
      trimChain(v57, 1, v60, 0);
    }

    ++v60;
    v61 += 256;
  }

  while (v60 != 255);
  v62 = 1;
  v63 = 510;
  do
  {
    if (*(v57 + v63))
    {
      trimChain(v57, 254, v62, 4u);
    }

    ++v62;
    v63 += 256;
  }

  while (v62 != 255);
  v64 = 0;
  v65.i64[0] = 0x303030303030303;
  v65.i64[1] = 0x303030303030303;
  do
  {
    v66 = vceqq_s8(v57[v64], v65);
    if (v66.i8[0])
    {
      LOBYTE(v57[v64]) = 0;
    }

    if (v66.i8[1])
    {
      BYTE1(v57[v64]) = 0;
    }

    if (v66.i8[2])
    {
      BYTE2(v57[v64]) = 0;
    }

    if (v66.i8[3])
    {
      BYTE3(v57[v64]) = 0;
    }

    if (v66.i8[4])
    {
      BYTE4(v57[v64]) = 0;
    }

    if (v66.i8[5])
    {
      BYTE5(v57[v64]) = 0;
    }

    if (v66.i8[6])
    {
      BYTE6(v57[v64]) = 0;
    }

    if (v66.i8[7])
    {
      BYTE7(v57[v64]) = 0;
    }

    if (v66.i8[8])
    {
      BYTE8(v57[v64]) = 0;
    }

    if (v66.i8[9])
    {
      BYTE9(v57[v64]) = 0;
    }

    if (v66.i8[10])
    {
      BYTE10(v57[v64]) = 0;
    }

    if (v66.i8[11])
    {
      BYTE11(v57[v64]) = 0;
    }

    if (v66.i8[12])
    {
      BYTE12(v57[v64]) = 0;
    }

    if (v66.i8[13])
    {
      BYTE13(v57[v64]) = 0;
    }

    if (v66.i8[14])
    {
      BYTE14(v57[v64]) = 0;
    }

    if (v66.i8[15])
    {
      HIBYTE(v57[v64]) = 0;
    }

    ++v64;
  }

  while (v64 != 4096);
  v511 = v57;
  v67 = malloc_type_malloc(0x30uLL, 0x109004023CC7A6AuLL);
  *v67 = xmmword_1A6038C60;
  *(v67 + 2) = malloc_type_malloc(0x4000uLL, 0x62660A76uLL);
  *(v67 + 3) = malloc_type_malloc(0x4000uLL, 0xD04B230uLL);
  *(v67 + 4) = malloc_type_malloc(0x10000uLL, 0x100004052888210uLL);
  v68 = malloc_type_malloc(0x400uLL, 0x100004052888210uLL);
  v69 = v67;
  v70 = 0;
  LODWORD(v71) = 0;
  v72 = 0;
  v522 = v68;
  *(v69 + 5) = v68;
  v73 = v69[1];
  v74 = *(v69 + 2);
  v75 = *(v69 + 3);
  *(v69 + 1) = 0x10000000100;
  v76 = 0;
  v77 = *(v69 + 4);
  v456 = v69;
  do
  {
    v78 = 0;
    v71 = v71;
    do
    {
      if (*(v57 + v71))
      {
        *(v74 + v76) = v78;
        *(v75 + v76) = v70;
        v79 = atan2f(*&v526[2 * v71], *&count[2 * v71]);
        v80 = fmodf(3.1416 - v79, 3.1416);
        v69 = v456;
        *(v77 + 4 * v76++) = (v80 * 180.0) / 3.1416;
        if (v76 == v73)
        {
          *v456 = v73;
          goto LABEL_75;
        }
      }

      ++v71;
      ++v78;
    }

    while (v78 != 256);
    if (v72 == v76)
    {
      v81 = -1;
    }

    else
    {
      v81 = v72;
    }

    v522[v70++] = v81;
    v72 = v76;
  }

  while (v70 != 256);
  *v69 = v76;
  if (!count)
  {
    goto LABEL_76;
  }

LABEL_75:
  free(count);
LABEL_76:
  if (v526)
  {
    free(v526);
  }

  __N = 0;
  v82 = malloc_type_malloc(0x40000uLL, 0x100004052888210uLL);
  v83 = malloc_type_malloc(0x40000uLL, 0x100004052888210uLL);
  v85 = v83;
  v86 = 0;
  do
  {
    LOBYTE(v84) = *(v57 + v86);
    v84 = LODWORD(v84) * 255.0;
    *(&v83->real + v86++) = v84;
  }

  while (v86 != 0x10000);
  v87 = malloc_type_malloc(0x10000uLL, 0x1617EA03uLL);
  v88 = v57[3];
  v90 = *v57;
  v89 = v57[1];
  v87[2] = v57[2];
  v87[3] = v88;
  *v87 = v90;
  v87[1] = v89;
  v91 = v57[7];
  v93 = v57[4];
  v92 = v57[5];
  v87[6] = v57[6];
  v87[7] = v91;
  v87[4] = v93;
  v87[5] = v92;
  v94 = v57[11];
  v96 = v57[8];
  v95 = v57[9];
  v87[10] = v57[10];
  v87[11] = v94;
  v87[8] = v96;
  v87[9] = v95;
  v97 = v57[15];
  v99 = v57[12];
  v98 = v57[13];
  v87[14] = v57[14];
  v87[15] = v97;
  v87[12] = v99;
  v87[13] = v98;
  v100 = v57 + 16;
  v101 = v87 + 16;
  for (k = 1; k != 255; ++k)
  {
    v103 = 0;
    v104 = *v100;
    *v101 = *v100;
    v105 = (8 * (*(v100 - 255) & 1)) & 0xC8 | (16 * (*(v100 + 1) & 1)) & 0xD8 | (32 * (*(v100 + 257) & 1)) | *(v100 - 16) & 1 | (2 * (v104 & 1)) & 0xFB | (4 * (v100[16] & 1));
    do
    {
      v106 = ((*(v100 + v103 + 2) & 1) << 7) | ((*(v100 + v103 - 254) & 1) << 6) | ((*(v100 + v103 + 258) & 1) << 8) | v105;
      v101[v103 + 1] = dilate[v106];
      v105 = v106 >> 3;
      ++v103;
    }

    while (v103 != 254);
    v107 = v100 + v103;
    v108 = &v101[v103];
    v101 = v108 + 2;
    v108[1] = v107[1];
    v100 = v107 + 2;
  }

  v109 = *v100;
  v110 = v100[1];
  v111 = v100[3];
  *(v108 + 34) = v100[2];
  *(v108 + 50) = v111;
  *v101 = v109;
  *(v108 + 18) = v110;
  v112 = v100[4];
  v113 = v100[5];
  v114 = v100[7];
  *(v108 + 98) = v100[6];
  *(v108 + 114) = v114;
  *(v108 + 66) = v112;
  *(v108 + 82) = v113;
  v115 = v100[8];
  v116 = v100[9];
  v117 = v100[11];
  *(v108 + 162) = v100[10];
  *(v108 + 178) = v117;
  *(v108 + 130) = v115;
  *(v108 + 146) = v116;
  v118 = v100[12];
  v119 = v100[13];
  v120 = v100[15];
  *(v108 + 226) = v100[14];
  *(v108 + 242) = v120;
  *(v108 + 194) = v118;
  *(v108 + 210) = v119;
  memcpy(v57, v87, 0x10000uLL);
  free(v87);
  fftGrayMag(v85, v82, v468);
  free(v85);
  v541 = 0;
  fftProject(v82, v478, &v541, 0.0625);
  free(v82);
  v121 = &sinScaleTab;
  v122 = 0x3FFFFFFFFFFFFA60;
  do
  {
    v123 = *v121++;
    *&v478[v122 + 1440] = vmulq_f32(v123, *&v478[v122 + 1440]);
    v122 += 4;
  }

  while (v122 * 4);
  normalizeArray(v478, 0x5A0u);
  v124 = malloc_type_malloc(0x1680uLL, 0x100004052888210uLL);
  v125 = malloc_type_malloc(0x1680uLL, 0x100004052888210uLL);
  boxFilter(v478, 0x5A0u, 3u, 2, v124);
  boxFilter(v478, 0x5A0u, 0x13u, 4, v125);
  normalizeArray(v124, 0x5A0u);
  normalizeArray(v125, 0x5A0u);
  v540 = 0;
  v517 = 90.0 - v473;
  v126 = 0.3;
  counta = v19;
  while (1)
  {
    v496 = v126;
    findPeaks(v125, 1440, v550, &v540, 0.0, 0.003);
    v127 = v540;
    if (v540 >= 2)
    {
      break;
    }

LABEL_88:
    v126 = v496 * 0.8;
    if ((v496 * 0.8) < 0.1)
    {
      v356 = v127 == 0;
      v142 = v494;
      v143 = v511;
      v144 = v478;
      if (v127)
      {
        v141 = 1;
        goto LABEL_105;
      }

      goto LABEL_112;
    }
  }

  v128 = 0;
  v129 = v540 - 1;
  v130 = v540 - 1;
  v131 = v552;
  while (1)
  {
    v132 = __sincosf_stret((v550[6 * v128 + 1] * 0.125) * 0.017453);
    v133 = atan2f(v132.__sinval * v19, v132.__cosval);
    if (++v128 < v127)
    {
      break;
    }

LABEL_101:
    v131 += 6;
    --v130;
    v19 = counta;
    if (v128 == v129)
    {
      goto LABEL_88;
    }
  }

  v134 = v133 * 57.296;
  v135 = v130;
  v136 = v131;
  while (1)
  {
    v137 = __sincosf_stret((*v136 * 0.125) * 0.017453);
    v138 = atan2f(v137.__sinval * counta, v137.__cosval) * 57.296;
    if (v134 <= v138)
    {
      v140 = v138 - v134;
      v139 = v140 >= 90.0 ? 180.0 - v140 : -v140;
    }

    else
    {
      v139 = v134 - v138;
      if (v139 >= 90.0)
      {
        v139 = v139 + -180.0;
      }
    }

    if (fabsf(v139) >= v517)
    {
      break;
    }

    v136 += 6;
    if (!--v135)
    {
      goto LABEL_101;
    }
  }

  v356 = v127 == 0;
  if (v127)
  {
    v141 = 0;
    v142 = v494;
    v19 = counta;
    v143 = v511;
    v144 = v478;
LABEL_105:
    v145 = &v551;
    v146 = 1.0;
    v147 = v127;
    do
    {
      v148 = (*v145 + 0.5) % 0x5A0u;
      if (v125[(*(v145 - 1) + 0.5) % 0x5A0u] < v146)
      {
        v146 = v125[(*(v145 - 1) + 0.5) % 0x5A0u];
      }

      if (v125[v148] < v146)
      {
        v146 = v125[v148];
      }

      v145 += 6;
      --v147;
    }

    while (v147);
    if (v141)
    {
LABEL_112:
      free(v124);
      free(v125);
      free(v143);
      free(v510);
      v149 = 0;
      goto LABEL_442;
    }

    v539 = 0;
    findPeaks(v124, 1440, v549, &v539, v146, 0.0);
    v150 = 0;
    if (!v356)
    {
      v151 = 0;
      v150 = 0;
      LODWORD(v152) = 0;
      v153 = v539;
      v154 = -1;
      while (1)
      {
        v155 = &v550[6 * v151];
        v157 = v155[2];
        v156 = v155[3];
        v158 = v124[(v157 + 0.5) % 0x5A0u];
        if (v151)
        {
          v159 = 0;
        }

        else
        {
          v159 = v152;
        }

        if (v157 <= v156)
        {
          v160 = v152;
        }

        else
        {
          v160 = v159;
        }

        if (v157 <= v156)
        {
          v161 = v157;
        }

        else
        {
          v161 = 0.0;
        }

        v162 = &v549[6 * v160 + 1];
        v163 = v160 + 1;
        do
        {
          v152 = v160;
          v164 = v163;
          v165 = *v162;
          v162 += 6;
          v166 = v165;
          ++v160;
          ++v163;
        }

        while (v165 < v161 && v152 < v153);
        if (v158 >= v124[(v156 + 0.5) % 0x5A0u])
        {
          v158 = v124[(v156 + 0.5) % 0x5A0u];
        }

        if (v157 > v156)
        {
          v154 = v151;
        }

        if (v153 == v152)
        {
          break;
        }

        if (v166 <= v156)
        {
          while (1)
          {
            if (v124[v166] >= v158)
            {
              v546[v150++] = v164 - 1;
            }

            if (v153 == v164)
            {
              break;
            }

            v166 = v549[6 * v164++ + 1];
            if (v166 > v156)
            {
              LODWORD(v152) = v164 - 1;
              goto LABEL_143;
            }
          }

          LODWORD(v152) = v153;
        }

LABEL_143:
        if (++v151 == v127)
        {
          goto LABEL_146;
        }
      }

      LODWORD(v152) = v153;
LABEL_146:
      if (v154 != -1)
      {
        v168 = v152;
        v169 = &v550[6 * v154];
        v170 = v169[2];
        v171 = v124[(v169[3] + 0.5) % 0x5A0u];
        v172 = &v549[6 * v152 + 1];
        do
        {
          v173 = v168;
          v174 = *v172;
          v172 += 6;
          v175 = v174;
          ++v168;
        }

        while (v174 < v170 && v173 < v153);
        v177 = v124[(v170 + 0.5) % 0x5A0u] >= v171 ? v171 : v124[(v170 + 0.5) % 0x5A0u];
        if (v173 < v153 && v175 < 1440.0)
        {
          do
          {
            if (v124[v175] >= v177)
            {
              v546[v150++] = v168 - 1;
            }

            if (v153 == v168)
            {
              break;
            }

            v175 = v549[6 * v168 + 1];
            LODWORD(v168) = v168 + 1;
          }

          while (v175 < 1440.0);
        }
      }

      if (v150 > 0)
      {
        v178 = v150;
        v179 = v546;
        v180 = v547;
        v181 = v150;
        do
        {
          v182 = *v179++;
          v183 = &v549[6 * v182];
          *v180 = *v183;
          v180[2] = *(v183 + 2);
          v180 += 3;
          --v181;
        }

        while (v181);
        goto LABEL_167;
      }
    }
  }

  else
  {
    v539 = 0;
    findPeaks(v124, 1440, v549, &v539, 1.0, 0.0);
    v150 = 0;
    v19 = counta;
    v144 = v478;
  }

  v178 = v150;
LABEL_167:
  free(v144);
  free(v124);
  free(v125);
  v448 = malloc_type_calloc(v178 * v178, 1uLL, 0x3BA23B7uLL);
  v484 = v150;
  if (v150 >= 2)
  {
    v184 = v150 - 1;
    v490 = v178 + 1;
    v185 = v448;
    v186 = v448 + 1;
    v187 = &v548;
    v188 = 1;
    do
    {
      v189 = __sincosf_stret((*(&v547[3 * v188 - 2] - 1) * 0.125) * 0.017453);
      v190 = atan2f(v189.__sinval * v19, v189.__cosval) * 57.296;
      v191 = v187;
      v497 = v186;
      v192 = v185;
      v499 = v184;
      do
      {
        v193 = __sincosf_stret((*v191 * 0.125) * 0.017453);
        v194 = atan2f(v193.__sinval * counta, v193.__cosval) * 57.296;
        if (v190 <= v194)
        {
          v196 = v194 - v190;
          if (v196 >= 90.0)
          {
            v195 = 180.0 - v196;
          }

          else
          {
            v195 = -v196;
          }
        }

        else
        {
          v195 = v190 - v194;
          if (v195 >= 90.0)
          {
            v195 = v195 + -180.0;
          }
        }

        if (fabsf(v195) >= v517)
        {
          *v186 = 1;
          v192[v178] = 1;
        }

        v192 += v178;
        ++v186;
        v191 += 6;
        --v184;
      }

      while (v184);
      ++v188;
      v184 = v499 - 1;
      v185 += v490;
      v186 = &v497[v490];
      v187 += 6;
      v19 = counta;
    }

    while (v188 != v178);
  }

  v197 = malloc_type_calloc(4uLL, v178, 0x17FB3226uLL);
  v198 = malloc_type_calloc(4uLL, v178, 0xA00C2A5FuLL);
  v199 = malloc_type_calloc(4uLL, v178, 0xA94E6497uLL);
  v454 = v199;
  if (!v484)
  {
    v498 = malloc_type_calloc(0x50uLL, v178, 0x1010040E915464FuLL);
    v443 = malloc_type_calloc(0, 1uLL, 0x26B26AA0uLL);
    countb = 0;
    v455 = 0;
    v142 = v494;
LABEL_356:
    v287 = v511;
    goto LABEL_431;
  }

  v200 = 0;
  v201 = v448;
  v202 = v448;
  v142 = v494;
  do
  {
    v203 = 0;
    v204 = v201;
    do
    {
      v197[v200] += v202[v203];
      v205 = v198[v200] + *v204;
      v198[v200] = v205;
      ++v203;
      v204 += v178;
    }

    while (v178 != v203);
    v199[v200] = v205 + v197[v200];
    ++v200;
    ++v201;
    v202 += v178;
  }

  while (v200 != v178);
  v449 = v197;
  v498 = malloc_type_calloc(0x50uLL, v178, 0x1010040E915464FuLL);
  v206 = v454;
  v207 = 0;
  v455 = 0;
  v208 = v448;
  v209 = v448;
  v451 = v198;
  do
  {
    if (!v206[v207])
    {
      goto LABEL_265;
    }

    v464 = v207;
    v210 = *(&v547[3 * v207] + 1) * 0.125;
    v211 = __sincosf_stret((v210 * 3.1416) / 180.0);
    v212 = *v456;
    v213 = *(v456 + 4);
    v214 = malloc_type_malloc(v212, 0x66DD0DD5uLL);
    v215 = malloc_type_malloc(v212, 0xFC7EB870uLL);
    v216 = v215;
    v217 = v210 + -5.0;
    v527 = v210;
    v218 = v210 + 5.0;
    if (v217 < 0.0)
    {
      v219 = fmodf(v217 + 180.0, 180.0);
      goto LABEL_200;
    }

    if (v218 >= 180.0)
    {
      v225 = v218 + 180.0;
      v226 = v217;
      v227 = fmodf(v225, 180.0);
      v219 = v226;
      v218 = v227;
LABEL_200:
      cosval = v211.__cosval;
      if (v212)
      {
        v228 = 0;
        v221 = 0;
        do
        {
          v229 = *(v213 + 4 * v228);
          v230 = v229 < v219 || v229 > 180.0;
          if (!v230 || (v229 >= 0.0 ? (v231 = v229 > v218) : (v231 = 1), !v231))
          {
            v214[v221] = *(*(v456 + 2) + v228);
            v216[v221++] = *(*(v456 + 3) + v228);
          }

          ++v228;
        }

        while (v212 != v228);
      }

      else
      {
        v221 = 0;
      }

      goto LABEL_216;
    }

    if (v212)
    {
      v220 = 0;
      v221 = 0;
      cosval = v211.__cosval;
      do
      {
        v223 = *(v213 + 4 * v220);
        if (v223 >= v217 && v223 <= v218)
        {
          v214[v221] = *(*(v456 + 2) + v220);
          v215[v221++] = *(*(v456 + 3) + v220);
        }

        ++v220;
      }

      while (v212 != v220);
    }

    else
    {
      v221 = 0;
      cosval = v211.__cosval;
    }

LABEL_216:
    v232 = &v498[20 * v455];
    v500 = fabsf(cosval);
    sinval = v211.__sinval;
    v479 = fabsf(v211.__sinval);
    v234 = malloc_type_calloc(0x800uLL, 1uLL, 0x213BB4DuLL);
    v235 = v234 + 128;
    v491 = malloc_type_malloc(0x800uLL, 0x100004052888210uLL);
    v485 = malloc_type_malloc(0x600uLL, 0x1000040504FFAC1uLL);
    LODWORD(v536) = 0;
    v545 = 0.0;
    v232[1] = v527;
    v459 = v214;
    v461 = v209;
    v457 = v216;
    v474 = v232;
    if (v500 <= v479)
    {
      v232[2] = v211.__cosval;
      v232[3] = -v211.__sinval;
      v528 = v211.__cosval / v211.__sinval;
      if (!v221)
      {
        goto LABEL_229;
      }

      v244 = v221;
      v245 = v216;
      v246 = v214;
      do
      {
        v247 = *v245++;
        v248 = v247;
        v249 = *v246++;
        v250 = modff((v248 + (-(v211.__cosval / v211.__sinval) * v249)) + (v528 * 128.0), &v545);
        if (v545 <= 0xFF)
        {
          v251.f32[0] = 1.0 - v250;
          v251.f32[1] = v250;
          *&v235[v545] = vadd_f32(v251, *&v235[v545]);
        }

        --v244;
      }

      while (v244);
    }

    else
    {
      v232[2] = -v211.__cosval;
      v232[3] = v211.__sinval;
      v528 = v211.__sinval / v211.__cosval;
      if (!v221)
      {
        goto LABEL_229;
      }

      v236 = v221;
      v237 = v214;
      v238 = v216;
      do
      {
        v239 = *v237++;
        v240 = v239;
        v241 = *v238++;
        v242 = modff((v240 + (-(v211.__sinval / v211.__cosval) * v241)) + (v528 * 128.0), &v545);
        if (v545 <= 0xFF)
        {
          v243.f32[0] = 1.0 - v242;
          v243.f32[1] = v242;
          *&v235[v545] = vadd_f32(v243, *&v235[v545]);
        }

        --v236;
      }

      while (v236);
    }

    sinval = v211.__sinval;
LABEL_229:
    boxFilter(v234, 0x200u, 3u, 3, v491);
    normalizeArray(v491, 0x200u);
    findPeaks(v491, 512, v485, &v536, 0.1, 0.0);
    v252 = malloc_type_malloc(0x100uLL, 0x100004052888210uLL);
    v253 = malloc_type_malloc(0x100uLL, 0x100004052888210uLL);
    v544 = 0.0;
    v254 = v536;
    v469 = v252;
    if (!v536)
    {
      v272 = 0;
      v19 = counta;
LABEL_259:
      v198 = v451;
      v207 = v464;
      goto LABEL_260;
    }

    v255 = 0;
    v518 = -v528;
    v256 = v485 + 1;
    v257 = v211.__cosval;
    if (v500 <= v479)
    {
      v257 = sinval;
    }

    v501 = v257;
    v258 = -1;
    v259 = -1;
    *&v260 = -1.0e10;
    *&v261 = -1.0e10;
    do
    {
      v262 = *v256;
      if (*v256 >= 128.0 && v262 <= 384.0)
      {
        v523 = *&v260;
        v529 = *&v261;
        v264 = modff(v262, &v544);
        v265 = (((v234[v544] + (v234[v544 - 1] * (1.0 - v264))) + v234[v544 + 1]) + (v234[v544 + 2] * v264)) / 3.0;
        if (v265 >= 2.0)
        {
          v253[v255] = v265;
          *&v261 = v529;
          v266 = v523;
          if (v265 <= v529)
          {
            if (v265 <= v523)
            {
              v265 = v523;
            }

            else
            {
              v258 = v255;
            }
          }

          else
          {
            if (v529 > v523)
            {
              v266 = v529;
              v258 = v259;
            }

            *&v261 = v265;
            v265 = v266;
            v259 = v255;
          }

          v252[v255++] = (v501 * ((v262 + -128.0) + (v518 * 128.0)));
          *&v260 = v265;
        }

        else
        {
          *&v261 = v529;
          *&v260 = v523;
        }
      }

      v256 += 6;
      --v254;
    }

    while (v254);
    if (v255 <= 0)
    {
      v272 = 0;
      v19 = counta;
      goto LABEL_259;
    }

    v267 = *v252;
    v268 = &v498[20 * v455];
    v474[4] = v267;
    v474[8] = *v253;
    *v474 = 1;
    v270 = v255 - 1;
    v269 = v255 == 1;
    v19 = counta;
    v198 = v451;
    v207 = v464;
    if (v269)
    {
      goto LABEL_261;
    }

    v474[5] = v469[v270];
    v474[9] = v253[v270];
    *v474 = 2;
    v271 = 2;
    if (v259 >= 1 && v259 != v270)
    {
      v474[6] = v469[v259];
      v474[10] = v253[v259];
      *v474 = 3;
      v271 = 3;
    }

    v268 = &v498[20 * v455];
    if (v258 < 1 || v258 == v270)
    {
      goto LABEL_261;
    }

    v474[v271 + 4] = v469[v258];
    v474[v271 + 8] = v253[v258];
    v272 = v271 + 1;
LABEL_260:
    v268 = &v498[20 * v455];
    *v474 = v272;
LABEL_261:
    free(v459);
    free(v457);
    free(v485);
    free(v234);
    free(v491);
    free(v469);
    free(v253);
    if (*v268)
    {
      ++v455;
      v142 = v494;
      v206 = v454;
      v209 = v461;
    }

    else
    {
      v273 = 0;
      v449[v207] = 0;
      v198[v207] = 0;
      v209 = v461;
      v274 = v461;
      v206 = v454;
      v454[v207] = 0;
      v142 = v494;
      do
      {
        *v274 = 0;
        v208[v273++] = 0;
        v274 += v178;
      }

      while (v178 != v273);
    }

LABEL_265:
    v207 = v207 + 1;
    v208 += v178;
    ++v209;
  }

  while (v207 != v178);
  v275 = v455 * v455;
  v276 = malloc_type_calloc(v275, 1uLL, 0x26B26AA0uLL);
  v277 = 0;
  v278 = 0;
  v279 = v448;
  v197 = v449;
  v443 = v276;
  v280 = v276;
  do
  {
    if (v454[v277])
    {
      v281 = v454;
      v282 = v279;
      v283 = v178;
      do
      {
        if (*v281++)
        {
          v285 = *v282;
          *v280++ = v285;
          if (v285)
          {
            ++v278;
          }
        }

        ++v282;
        --v283;
      }

      while (v283);
    }

    ++v277;
    v279 += v178;
  }

  while (v277 != v178);
  countb = v455;
  if (!v278)
  {
    goto LABEL_356;
  }

  v530 = malloc_type_calloc(v275, 8uLL, 0x7D0AE5BBuLL);
  v524 = malloc_type_calloc(v275, 4uLL, 0xCE10621uLL);
  v545 = 0.0;
  v536 = 0x424CCCCD00000001;
  v537 = v19;
  v538 = 256;
  if (v446 >= 0x20)
  {
    v286 = 32;
  }

  else
  {
    v286 = v446;
  }

  v287 = v511;
  if (v455 > v286)
  {
    goto LABEL_430;
  }

  v288 = malloc_type_calloc(v455, 4uLL, 0x100004052888210uLL);
  v289 = malloc_type_calloc(v455, 4uLL, 0x100004052888210uLL);
  v445 = v288;
  v440 = v289;
  if (!v455)
  {
    goto LABEL_429;
  }

  v290 = 0;
  v291 = v443;
  v292 = v455;
  v293 = v530;
  do
  {
    v294 = 0;
    v295 = 1;
    v296 = v291;
    v297 = v455;
    do
    {
      if (*v296++)
      {
        v294 |= v295;
        ++v289[v290];
      }

      v295 *= 2;
      --v297;
    }

    while (v297);
    v288[v290++] = v294;
    v291 += v455;
  }

  while (v290 != v455);
  v436 = v455 * v455;
  v544 = 0.0;
  v535 = 0;
  v450 = 8 * v455;
  v462 = v455 - 1;
  if (v455 == 1)
  {
    goto LABEL_423;
  }

  v299 = 0;
  v502 = v441;
  size = 4 * v455;
  v300 = size + 4;
  v480 = &v524[size + 4];
  v486 = (v498 + 20);
  v301 = v450 + 8;
  v475 = &v530[v450 / 8 + 1];
  v470 = v443 + 1;
  v465 = v455 - 1;
  while (2)
  {
    if (v445[v299])
    {
      v302 = &v293[v299 * v292];
      v303 = &v524[4 * v299 * v292];
      v304 = *&v303[4 * v299];
      v513 = *&v302[8 * v299];
      if (v513)
      {
        v544 = *&v303[4 * v299];
      }

      else if (v304)
      {
        v304 = 0;
        v513 = 0;
        v544 = 0.0;
      }

      else
      {
        singleton(&v498[20 * v299], &v536, &v544);
        if (v544 == 0.0)
        {
          v304 = 0;
          v513 = 0;
          *&v303[4 * v299] = -1;
        }

        else
        {
          v305 = LODWORD(v544) << 6;
          v306 = v544;
          v307 = malloc_type_malloc(v305, 0x1020040E4DCC77DuLL);
          memcpy(v307, &leqBuffer, v305);
          v304 = LODWORD(v306);
          v513 = v307;
          *&v302[8 * v299] = v307;
          *&v303[4 * v299] = v306;
        }

        v292 = v455;
        v293 = v530;
      }

      v308 = v470;
      v309 = v475;
      v310 = v480;
      v311 = v486;
      v312 = v465;
      v519 = v304;
      do
      {
        if (*v308++)
        {
          v314 = *v309;
          LODWORD(v315) = *v310;
          if (*v309)
          {
            v535 = *v310;
            if (v304)
            {
              goto LABEL_301;
            }
          }

          else if (v315)
          {
            v535 = 0;
          }

          else
          {
            singleton(v311, &v536, &v535);
            v315 = v535;
            if (v535)
            {
              v314 = malloc_type_malloc(v535 << 6, 0x1020040E4DCC77DuLL);
              v300 = 4 * v455 + 4;
              memcpy(v314, &leqBuffer, v315 << 6);
              *v309 = v314;
              *v310 = v315;
              v292 = v455;
              v293 = v530;
              v304 = v519;
              if (v519)
              {
LABEL_301:
                if (v315)
                {
                  generateQuadrilaterals(v513, v304, v314, v315, v510, &v545, v23);
                  v304 = v519;
                  v293 = v530;
                  v292 = v455;
                  if (v545 != 0.0)
                  {
                    *&v316 = v19;
                    LODWORD(v317) = v32;
                    LODWORD(v318) = v31;
                    LODWORD(v319) = v29;
                    processQuadrilaterals(v510, LODWORD(v545), v511, v494, v508, &__N, v316, v317, v318, v319, v27, v25, a11);
                    v300 = 4 * v455 + 4;
                    mergeQuads(v510, v494, v508, v507, v505, v506, v509, __N, v504, v503, v441, &v543);
                    v304 = v519;
                    v293 = v530;
                    v292 = v455;
                  }
                }
              }
            }

            else
            {
              *v310 = -1;
              v292 = v455;
              v293 = v530;
              v304 = v519;
            }
          }
        }

        v311 += 80;
        v310 = (v310 + v300);
        v309 = (v309 + v301);
        --v312;
      }

      while (v312);
    }

    ++v299;
    --v465;
    v480 += v300;
    v486 += 80;
    v475 = (v475 + v301);
    v470 += v455 + 1;
    if (v299 != v462)
    {
      continue;
    }

    break;
  }

  v287 = v511;
  if (v455 == 2)
  {
    goto LABEL_423;
  }

  v320 = 0;
  v438 = v293 + 1;
  while (2)
  {
    v452 = v320;
    if (v440[v320] >= 2u)
    {
      v321 = &v293[v320 * v292];
      v322 = &v524[4 * v320 * v292];
      LODWORD(v323) = *&v322[4 * v320];
      v520 = *&v321[8 * v320];
      if (v520)
      {
        v544 = *&v322[4 * v320];
        v324 = v445;
      }

      else
      {
        v324 = v445;
        if (v323)
        {
          LODWORD(v323) = 0;
          v520 = 0;
          v544 = 0.0;
        }

        else
        {
          singleton(&v498[20 * v320], &v536, &v544);
          v323 = LODWORD(v544);
          if (v544 == 0.0)
          {
            v520 = 0;
            *&v322[4 * v452] = -1;
          }

          else
          {
            v325 = malloc_type_malloc(LODWORD(v544) << 6, 0x1020040E4DCC77DuLL);
            memcpy(v325, &leqBuffer, v323 << 6);
            v520 = v325;
            *&v321[8 * v452] = v325;
            *&v322[4 * v452] = v323;
          }

          v292 = v455;
          v293 = v530;
        }
      }

      v326 = 0;
      v327 = v324[v452];
      v328 = 1;
      v492 = v438;
      v481 = v498 + 20;
      v487 = (v524 + 4);
      v476 = v455 - 1;
      while (1)
      {
        v514 = v326 + 1;
        v471 = v328;
        if ((v328 & v327) != 0 && v514 < v292)
        {
          break;
        }

LABEL_341:
        v328 = 2 * v471;
        --v476;
        v481 += 20;
        v487 = (v487 + size + 4);
        v492 = (v492 + v450 + 8);
        v326 = v514;
        if (v514 == v462)
        {
          goto LABEL_342;
        }
      }

      v329 = 2 << v326;
      v466 = &v498[20 * v326];
      v330 = v492;
      v331 = v481;
      v332 = v487;
      v333 = v476;
      while (2)
      {
        if ((v329 & v327) != 0)
        {
          v334 = *v330;
          LODWORD(v335) = *v332;
          if (*v330)
          {
            v535 = *v332;
            if (v323)
            {
LABEL_331:
              if (v335)
              {
                generateQuadrilaterals(v520, v323, v334, v335, v510, &v545, v23);
                *&v336 = v19;
                LODWORD(v337) = v32;
                LODWORD(v338) = v31;
                LODWORD(v339) = v29;
                processQuadrilaterals(v510, LODWORD(v545), v511, v494, v508, &__N, v336, v337, v338, v339, v27, v25, a11);
                mergeQuads(v510, v494, v508, v507, v505, v506, v509, __N, v504, v503, v441, &v543);
                v293 = v530;
                v292 = v455;
              }
            }
          }

          else if (v335)
          {
            v535 = 0;
          }

          else
          {
            doubleton(v466, v331, &v536, &v535);
            v335 = v535;
            if (v535)
            {
              v334 = malloc_type_malloc(v535 << 6, 0x1020040E4DCC77DuLL);
              memcpy(v334, &leqBuffer, v335 << 6);
              *v330 = v334;
              *v332 = v335;
              v292 = v455;
              v293 = v530;
              if (v323)
              {
                goto LABEL_331;
              }
            }

            else
            {
              *v332 = -1;
              v292 = v455;
              v293 = v530;
            }
          }
        }

        v329 *= 2;
        v331 += 20;
        ++v332;
        ++v330;
        if (!--v333)
        {
          goto LABEL_341;
        }

        continue;
      }
    }

LABEL_342:
    v320 = v452 + 1;
    if (v452 + 1 != v292)
    {
      continue;
    }

    break;
  }

  v287 = v511;
  if (v455 >= 4)
  {
    v433 = malloc_type_malloc(4 * v436, 0x100004052888210uLL);
    v439 = malloc_type_malloc(4 * v436, 0x100004052888210uLL);
    v340 = malloc_type_malloc(size, 0x100004052888210uLL);
    v341 = malloc_type_malloc(size, 0x100004052888210uLL);
    v467 = malloc_type_malloc(size, 0x100004052888210uLL);
    v342 = malloc_type_malloc(size, 0x100004052888210uLL);
    v343 = v455;
    v344 = 0;
    LODWORD(v345) = 0;
    v346 = 0;
    v347 = v524;
    v348 = v445;
    do
    {
      if (v440[v344] >= 2u)
      {
        v349 = v445[v344];
        v341[v346++] = v349;
        if (v345 < 1)
        {
LABEL_350:
          v340[v345] = v349;
          LODWORD(v345) = v345 + 1;
        }

        else
        {
          v350 = v345;
          v351 = v340;
          while (1)
          {
            v352 = *v351++;
            if (v349 == v352)
            {
              break;
            }

            if (!--v350)
            {
              goto LABEL_350;
            }
          }
        }
      }

      ++v344;
    }

    while (v344 != v455);
    v432 = v341;
    v353 = v530;
    if (v345)
    {
      if (v345 == 1)
      {
        v354 = *v340;
        *v433 = *v340;
        *v439 = v354;
        v355 = 1;
        goto LABEL_383;
      }

      if (v345 >= 1)
      {
        v357 = v345;
        v358 = v340;
        v359 = v433;
        v360 = v345;
        do
        {
          v361 = *v358++;
          *v359++ = v361;
          --v360;
        }

        while (v360);
        v362 = (v345 - 1);
        v363 = 0;
        v364 = 1;
        do
        {
          v365 = v340[v363];
          v366 = v364;
          do
          {
            v367 = v340[v366] & v365;
            if ((v367 & (v367 - 1)) != 0)
            {
              v368 = v345;
              v369 = v433;
              while (1)
              {
                v370 = *v369++;
                if (v367 == v370)
                {
                  break;
                }

                if (!--v368)
                {
                  v433[v345] = v367;
                  LODWORD(v345) = v345 + 1;
                  break;
                }
              }
            }

            ++v366;
          }

          while (v366 != v357);
          ++v363;
          ++v364;
        }

        while (v363 != v362);
        v371 = 0;
        v345 = v345;
        v372 = v433 + 1;
        v373 = v345 - 1;
        do
        {
          v374 = v371;
          v375 = v433[v371++];
          v376 = v373;
          v377 = v372;
          while (1)
          {
            v378 = *v377++;
            if ((v378 ^ v375) == (v378 | v375))
            {
              break;
            }

            if (!--v376)
            {
              goto LABEL_377;
            }
          }

          v433[v374] = 0;
LABEL_377:
          ++v372;
          --v373;
        }

        while (v371 != v345 - 1);
        v343 = v455;
        v353 = v530;
        v347 = v524;
        v355 = 0;
        v379 = v433;
        do
        {
          v381 = *v379++;
          v380 = v381;
          if (v381)
          {
            v439[v355++] = v380;
          }

          --v345;
        }

        while (v345);
        if (v355 >= 1)
        {
LABEL_383:
          v382 = 0;
          sizea = v355;
          v437 = v340;
          v458 = v342 + 1;
          v521 = v342;
          while (1)
          {
            v383 = 0;
            v384 = 0;
            v385 = v439[v382];
            v386 = 1;
            do
            {
              if ((v386 & v385) != 0)
              {
                v467[v384++] = v383;
              }

              v386 *= 2;
              ++v383;
            }

            while (v455 != v383);
            v387 = 0;
            v388 = 0;
            do
            {
              if ((v385 & ~v348[v387]) == 0)
              {
                v342[v388++] = v387;
              }

              ++v387;
            }

            while (v343 != v387);
            v442 = v382;
            if (v388 >= 2 && v384 >= 2)
            {
              break;
            }

LABEL_421:
            v382 = v442 + 1;
            v340 = v437;
            v287 = v511;
            v348 = v445;
            if (v442 + 1 == sizea)
            {
              goto LABEL_422;
            }
          }

          v472 = 0;
          v447 = (v384 - 1);
          v482 = (v388 - 1);
          v460 = (v388 - 1);
          v463 = v384;
          v389 = 1;
          while (2)
          {
            v453 = v389;
LABEL_396:
            v390 = v467[v472];
            v477 = v389;
            v391 = v467[v389];
            v392 = v390 * v343;
            v393 = &v353[v392];
            v394 = &v347[4 * v392];
            LODWORD(v395) = *&v394[4 * v391];
            v515 = *&v393[8 * v391];
            if (v515)
            {
              v544 = *&v394[4 * v391];
            }

            else if (v395)
            {
              LODWORD(v395) = 0;
              v515 = 0;
              v544 = 0.0;
            }

            else
            {
              doubleton(&v498[20 * v390], &v498[20 * v391], &v536, &v544);
              v395 = LODWORD(v544);
              if (v544 == 0.0)
              {
                v515 = 0;
                *&v394[4 * v391] = -1;
              }

              else
              {
                v396 = malloc_type_malloc(LODWORD(v544) << 6, 0x1020040E4DCC77DuLL);
                memcpy(v396, &leqBuffer, v395 << 6);
                v515 = v396;
                *&v393[8 * v391] = v396;
                *&v394[4 * v391] = v395;
              }

              v343 = v455;
              v353 = v530;
              v347 = v524;
              v342 = v521;
            }

            v397 = 0;
            v398 = v458;
            v399 = v460;
            v400 = v494;
LABEL_405:
            v493 = v398;
            v488 = v399;
LABEL_406:
            v401 = v342[v397];
            v403 = *v398++;
            v402 = v403;
            v404 = v401 * v343;
            v405 = &v353[v404];
            v406 = *&v405[8 * v403];
            v407 = &v347[4 * v404];
            LODWORD(v408) = *&v407[4 * v403];
            if (v406)
            {
              v535 = v408;
              if (v395)
              {
LABEL_408:
                if (v408)
                {
                  generateQuadrilaterals(v515, v395, v406, v408, v510, &v545, v23);
                  *&v409 = v19;
                  LODWORD(v410) = v32;
                  LODWORD(v411) = v31;
                  LODWORD(v412) = v29;
                  processQuadrilaterals(v510, LODWORD(v545), v511, v400, v508, &__N, v409, v410, v411, v412, v27, v25, a11);
                  mergeQuads(v510, v400, v508, v507, v505, v506, v509, __N, v504, v503, v502, &v543);
                  v342 = v521;
                  v347 = v524;
                  v353 = v530;
                  v343 = v455;
                }
              }
            }

            else if (v408)
            {
              v535 = 0;
            }

            else
            {
              doubleton(&v498[20 * v401], &v498[20 * v402], &v536, &v535);
              v408 = v535;
              if (v535)
              {
                v406 = malloc_type_malloc(v535 << 6, 0x1020040E4DCC77DuLL);
                v400 = v494;
                memcpy(v406, &leqBuffer, v408 << 6);
                *&v405[8 * v402] = v406;
                *&v407[4 * v402] = v408;
                v343 = v455;
                v353 = v530;
                v347 = v524;
                v342 = v521;
                if (v395)
                {
                  goto LABEL_408;
                }
              }

              else
              {
                *&v407[4 * v402] = -1;
                v343 = v455;
                v353 = v530;
                v347 = v524;
                v342 = v521;
              }
            }

            if (!--v399)
            {
              ++v397;
              v399 = v488 - 1;
              v398 = v493 + 1;
              if (v397 == v482)
              {
                v389 = v477 + 1;
                if (v477 + 1 == v463)
                {
                  v389 = v453 + 1;
                  v472 = v472 + 1;
                  if (v472 == v447)
                  {
                    goto LABEL_421;
                  }

                  continue;
                }

                goto LABEL_396;
              }

              goto LABEL_405;
            }

            goto LABEL_406;
          }
        }
      }
    }

LABEL_422:
    v413 = v342;
    free(v340);
    free(v433);
    free(v439);
    free(v432);
    free(v467);
    free(v413);
    v293 = v530;
    v292 = v455;
  }

LABEL_423:
  v414 = 0;
  v415 = v293;
  do
  {
    v416 = v415;
    v417 = v292;
    do
    {
      if (*v416)
      {
        free(*v416);
      }

      ++v416;
      --v417;
    }

    while (v417);
    ++v414;
    v415 = (v415 + v450);
    v292 = v455;
  }

  while (v414 != v455);
LABEL_429:
  free(v445);
  free(v440);
  v142 = v494;
  v197 = v449;
  v198 = v451;
LABEL_430:
  free(v530);
  free(v524);
LABEL_431:
  deallocateEdgeMap(v456);
  if (v287)
  {
    free(v287);
  }

  free(v197);
  free(v198);
  free(v454);
  free(v448);
  free(v443);
  if (v455)
  {
    v418 = 0;
    v419 = (v498 + 12);
    do
    {
      for (m = 0; m != 32; m += 8)
      {
        free(*&v419[m]);
        *&v419[m] = 0;
      }

      ++v418;
      v419 += 80;
    }

    while (v418 != countb);
  }

  free(v498);
  free(v510);
  v421 = v543;
  v149 = v543 != 0;
  if (v543)
  {
    v422 = v19 * a10;
    v423 = (v504 + 1);
    do
    {
      v424 = *(v423 - 2);
      v425 = 255.0 - *(v423 - 1);
      v426 = *v423;
      v427 = 255.0 - v423[1];
      v428 = (255.0 - *(v423 - 3)) * a10;
      *(v423 - 4) = v422 * *(v423 - 4);
      *(v423 - 3) = v428;
      v429 = v423[2];
      v430 = 255.0 - v423[3];
      *(v423 - 2) = v422 * v424;
      *(v423 - 1) = v425 * a10;
      *v423 = v422 * v426;
      v423[1] = v427 * a10;
      v423[2] = v422 * v429;
      v423[3] = v430 * a10;
      v423 += 8;
      --v421;
    }

    while (v421);
  }

  v456 = 0;
  v144 = 0;
LABEL_442:
  if (v142)
  {
    free(v142);
  }

  if (v507)
  {
    free(v507);
  }

  if (v505)
  {
    free(v505);
  }

  if (v506)
  {
    free(v506);
  }

  if (v509)
  {
    free(v509);
  }

  if (v508)
  {
    free(v508);
  }

  if (v144)
  {
    free(v144);
  }

  if (v456)
  {
    deallocateEdgeMap(v456);
  }

  *v444 = v543;
  return v149;
}

float *createPerMeshForFFTSIZE()
{
  v0 = malloc_type_malloc(0x40000uLL, 0x100004052888210uLL);
  v1 = v0;
  if (v0)
  {
    initializePerMesh(v0, 256, 256);
  }

  return v1;
}

void initializePerMesh(float *a1, int a2, int a3)
{
  v6 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
  v7 = v6;
  if (a2 != a3)
  {
    v7 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
  }

  if (a2 >= 1)
  {
    v8 = 0;
    v9 = (a2 + 1) & 0xFFFFFFFE;
    v31 = vdupq_lane_s64(COERCE__INT64(a2), 0);
    v33 = vdupq_n_s64(a2 - 1);
    v10 = xmmword_1A6027760;
    v11 = v6 + 1;
    v27 = vdupq_n_s64(2uLL);
    v29 = vdupq_n_s64(0x401921FB54442D18uLL);
    do
    {
      v41 = v10;
      v39 = vmovn_s64(vcgeq_u64(v33, v10));
      v12.i64[0] = v8;
      v12.i64[1] = v8 + 1;
      __x = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v12), v29), v31);
      v37 = cos(__x.f64[1]);
      v13 = cos(__x.f64[0]);
      if (v39.i8[0])
      {
        *(v11 - 1) = v13;
      }

      if (v39.i8[4])
      {
        *v11 = v37;
      }

      v10 = vaddq_s64(v41, v27);
      v11 += 2;
      v8 += 2;
      v9 -= 2;
    }

    while (v9);
  }

  if (a2 != a3 && a3 >= 1)
  {
    v14 = 0;
    v15 = (a3 + 1) & 0xFFFFFFFE;
    v32 = vdupq_lane_s64(COERCE__INT64(a3), 0);
    v34 = vdupq_n_s64(a3 - 1);
    v16 = xmmword_1A6027760;
    v17 = v7 + 1;
    v28 = vdupq_n_s64(2uLL);
    v30 = vdupq_n_s64(0x401921FB54442D18uLL);
    do
    {
      v42 = v16;
      v40 = vmovn_s64(vcgeq_u64(v34, v16));
      v18.i64[0] = v14;
      v18.i64[1] = v14 + 1;
      __xa = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v18), v30), v32);
      v38 = cos(__xa.f64[1]);
      v19 = cos(__xa.f64[0]);
      if (v40.i8[0])
      {
        *(v17 - 1) = v19;
      }

      if (v40.i8[4])
      {
        *v17 = v38;
      }

      v16 = vaddq_s64(v42, v28);
      v17 += 2;
      v14 += 2;
      v15 -= 2;
    }

    while (v15);
  }

  if (a3 >= 1)
  {
    v20 = 0;
    v21 = a1;
    do
    {
      if (a2 >= 1)
      {
        v22 = v7[v20];
        v23 = v6;
        v24 = a2;
        do
        {
          v25 = *v23++;
          v26 = 1.0 / (2.0 - v25 - v22 + 2.0 - v25 - v22);
          *v21++ = v26;
          --v24;
        }

        while (v24);
      }

      ++v20;
    }

    while (v20 != a3);
  }

  *a1 = 0.0;
  free(v6);
  if (a2 != a3)
  {

    free(v7);
  }
}

void std::vector<std::vector<unsigned int>>::__assign_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      std::vector<std::vector<long long>>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      std::vector<std::vector<unsigned int>>::__vallocate[abi:ne200100](a1, v12);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v13 >> 3) >= a4)
  {
    v14 = std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned int> *,std::vector<unsigned int> *,std::vector<unsigned int> *>(a2, a3, v9);
    v15 = a1[1];
    if (v15 != v14)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 3);
        v16 -= 3;
        v17 = v18;
        if (v18)
        {
          *(v15 - 2) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned int> *,std::vector<unsigned int> *,std::vector<unsigned int> *>(a2, (a2 + v13), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*,std::vector<unsigned int>*,std::vector<unsigned int>*>(a1, (a2 + v13), a3, a1[1]);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned int> *,std::vector<unsigned int> *,std::vector<unsigned int> *>(char **a1, char **a2, char **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*,std::vector<unsigned int>*,std::vector<unsigned int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void sub_1A5E739E0(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  objc_begin_catch(exc_buf);
  os_unfair_lock_unlock((v10 + v11));
  objc_exception_rethrow();
}

void sub_1A5E742A4(void *a1)
{
  __cxa_begin_catch(a1);
  _deleteEPolygonList(v1);
  __cxa_rethrow();
}

void sub_1A5E74428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  v18 = a15;
  *(v16 - 56) = &a12;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100]((v16 - 56));
  if (v18)
  {
    a16 = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_1A5E750D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<apple::vision::libraries::autotrace::EPolygonList *,void (*)(apple::vision::libraries::autotrace::EPolygonList *),std::allocator<apple::vision::libraries::autotrace::EPolygonList>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "PFvPN5apple6vision9libraries9autotrace12EPolygonListEE"))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<apple::vision::libraries::autotrace::EPolygonList *,void (*)(apple::vision::libraries::autotrace::EPolygonList *),std::allocator<apple::vision::libraries::autotrace::EPolygonList>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void _deleteEPolygonList(apple::vision::libraries::autotrace::EPolygonList *a1)
{
  apple::vision::libraries::autotrace::EPolygonList::term(a1);
  if (a1)
  {

    JUMPOUT(0x1AC556B00);
  }
}

void sub_1A5E75250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VNContoursObservation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5E76330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double getHostTimeInMillis(void)
{
  v0 = mach_timebase_info(&getHostTimeInNanos(void)::info);
  v1 = 0.0;
  if (!v0)
  {
    v1 = (mach_absolute_time() * getHostTimeInNanos(void)::info / *algn_1EB286394);
  }

  return v1 / 1000000.0;
}

void ObservedParabola::ObservedParabola(ObservedParabola *this, const ObservedParabola *a2)
{
  *this = *a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(this + 8, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 4);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 4);
  *(this + 56) = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  *(this + 116) = *(a2 + 116);
  *(this + 104) = v6;
  *(this + 88) = v5;
  *(this + 72) = v4;
}

void sub_1A5E766BC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void ObservedParabola::~ObservedParabola(ObservedParabola *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void sub_1A5E769AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VNTrajectoryProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5E7706C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1A5E77240(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A5E77D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p)
{
  v37 = *(v35 - 224);
  if (v37)
  {
    operator delete(v37);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<_Geometry2D_point2D_>::resize(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  if ((v4 >> 3) > 0x3E)
  {
    if (v4 == 504)
    {
      return;
    }

    v10 = v2 + 504;
  }

  else
  {
    v5 = 63 - (v4 >> 3);
    v6 = a1[2];
    if (v5 > (v6 - v3) >> 3)
    {
      v7 = v6 - v2;
      v8 = v7 >> 2;
      if ((v7 >> 2) <= 0x3F)
      {
        v8 = 63;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v9 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v9);
    }

    bzero(a1[1], 8 * v5);
    v10 = v3 + 8 * v5;
  }

  a1[1] = v10;
}

void std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned char,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1A5E78108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = VNFaceRegionMapGenerator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vision::mod::FaceRegionMap>::__on_zero_shared(void *a1)
{
  v3 = (a1 + 4);
  v2 = a1[4];
  v3[10] = v3[9];
  std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(v2);
  *v3 = 0;
  v3[1] = 0;
  *(v3 - 1) = v3;
  v3[3] = v3[2];
  v4 = v3[5];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    a1[7] = v6;
    operator delete(v6);
  }

  v7 = *v3;

  std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(v7);
}

void std::__shared_ptr_emplace<vision::mod::FaceRegionMap>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1973310;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void deallocateEdgeMap(void **a1)
{
  free(a1[2]);
  a1[2] = 0;
  free(a1[3]);
  a1[3] = 0;
  free(a1[4]);
  a1[4] = 0;
  free(a1[5]);

  free(a1);
}

void sub_1A5E79824(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5E7A3C8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A5E7A2F8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1A5E7BD70(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5E7BCECLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5E7CF0C(void *exc_buf)
{
  objc_begin_catch(exc_buf);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5E7D0BC(void *exc_buf)
{
  objc_begin_catch(exc_buf);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5E7D294(void *exc_buf)
{
  objc_begin_catch(exc_buf);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5E7F40C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A5E7EC8CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1A5E811F0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5E817E8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A5E81CA4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A5E81B58);
  }

  _Unwind_Resume(a1);
}

void sub_1A5E82F04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5E8312C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5E83668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VNPixelBufferObservation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5E84124(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5E85B28(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5E86CDC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5E87710(_Unwind_Exception *a1, int a2)
{
  v8 = v6;

  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A5E875B4);
  }

  _Unwind_Resume(a1);
}

void sub_1A5E895B4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5E8ABB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_1A5E8AD28(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1A5E8AD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5E8ADEC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1A5E8AE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5E8AECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1A5E8BE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, void *a35, void *a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  objc_destroyWeak((v50 + 80));

  objc_destroyWeak(&a39);
  _Block_object_dispose(&a45, 8);

  _Block_object_dispose((v53 - 224), 8);
  _Block_object_dispose((v53 - 176), 8);
  objc_destroyWeak((v53 - 144));

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16828(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5E8C958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_1A5E8CAD0(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5E8CE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNDetector;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5E8CF28(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5E8D88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v25 - 80), 8);
  _Unwind_Resume(a1);
}

void ___ZL30_detectorTypeToClassDictionaryv_block_invoke()
{
  v3[57] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNFaceBoxAlignerType";
  v3[0] = objc_opt_class();
  v2[1] = @"VNFaceGeometryEstimatorType";
  v3[1] = objc_opt_class();
  v2[2] = @"VNFaceRegionMapGeneratorType";
  v3[2] = objc_opt_class();
  v2[3] = @"VNFaceExpressionDetectorType";
  v3[3] = objc_opt_class();
  v2[4] = @"VNFaceDetectorType";
  v3[4] = objc_opt_class();
  v2[5] = @"VNFaceLandmarkDetectorType";
  v3[5] = objc_opt_class();
  v2[6] = @"VNFaceSegmentGeneratorType";
  v3[6] = objc_opt_class();
  v2[7] = @"VNFaceQualityGeneratorType";
  v3[7] = objc_opt_class();
  v2[8] = @"VNRectangleDetectorType";
  v3[8] = objc_opt_class();
  v2[9] = @"VNImageprintGeneratorType";
  v3[9] = objc_opt_class();
  v2[10] = @"VNJunkIdentifierType";
  v3[10] = objc_opt_class();
  v2[11] = @"VNAttentionBasedSaliencyHeatmapBoundingBoxGeneratorType";
  v3[11] = objc_opt_class();
  v2[12] = @"VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType";
  v3[12] = objc_opt_class();
  v2[13] = @"VNSaliencyHeatmapBoundingBoxGeneratorType";
  v3[13] = objc_opt_class();
  v2[14] = @"VNSmartCamClassifierType";
  v3[14] = objc_opt_class();
  v2[15] = @"VNTorsoprintGeneratorDetectorType";
  v3[15] = objc_opt_class();
  v2[16] = @"VNHorizonDetectorType";
  v3[16] = objc_opt_class();
  v2[17] = @"VNImageAnalyzerMultiDetectorType";
  v3[17] = objc_opt_class();
  v2[18] = @"VNFaceAnalyzerMultiDetectorType";
  v3[18] = objc_opt_class();
  v2[19] = @"VNANFDMultiDetectorType";
  v3[19] = objc_opt_class();
  v2[20] = @"VNOpticalFlowGeneratorType";
  v3[20] = objc_opt_class();
  v2[21] = @"VNContoursDetectorType";
  v3[21] = objc_opt_class();
  v2[22] = @"VNHumanBodyPoseDetectorType";
  v3[22] = objc_opt_class();
  v2[23] = @"VNHumanBodyPose3DDetectorType";
  v3[23] = objc_opt_class();
  v2[24] = @"VNHumanHandPoseDetectorType";
  v3[24] = objc_opt_class();
  v2[25] = @"VNAnimalBodyPoseDetectorType";
  v3[25] = objc_opt_class();
  v2[26] = @"VNDetectionprintGeneratorType";
  v3[26] = objc_opt_class();
  v2[27] = @"VNImageSignatureDetectorType";
  v3[27] = objc_opt_class();
  v2[28] = @"VN4nFZhnOcBOiJmeVWzBWsvType";
  v3[28] = objc_opt_class();
  v2[29] = @"VNE5RTScreenGazeDetectorType";
  v3[29] = objc_opt_class();
  v2[30] = @"VNFaceGazeDetectorType";
  v3[30] = objc_opt_class();
  v2[31] = @"VNCRImageReaderDetectorType";
  v3[31] = objc_opt_class();
  v2[32] = @"VNCRImageReaderForDocumentsDetectorType";
  v3[32] = objc_opt_class();
  v2[33] = @"VNAnimalprintDetectorDetectorType";
  v3[33] = objc_opt_class();
  v2[34] = @"VNImageRegistrationDetectorType";
  v3[34] = objc_opt_class();
  v2[35] = @"VNHomographicImageRegistrationDetectorType";
  v3[35] = objc_opt_class();
  v2[36] = @"VNBlurDetectorType";
  v3[36] = objc_opt_class();
  v2[37] = @"VNBrightnessDetectorType";
  v3[37] = objc_opt_class();
  v2[38] = @"VNMemeClassifierType";
  v3[38] = objc_opt_class();
  v2[39] = @"VNHomographyTrackerType";
  v3[39] = objc_opt_class();
  v2[40] = @"VNDocumentSegmentationDetectorType";
  v3[40] = objc_opt_class();
  v2[41] = @"VNSmartCam5GatingDetectorType";
  v3[41] = objc_opt_class();
  v2[42] = @"VNE5RTSegmentationMultiGeneratorType";
  v3[42] = objc_opt_class();
  v2[43] = @"VNPersonSegmentationGeneratorInstanceBased4PeopleType";
  v3[43] = objc_opt_class();
  v2[44] = @"VNPersonSegmentationGeneratorSemanticsType";
  v3[44] = objc_opt_class();
  v2[45] = @"VNSliderNetDetectorType";
  v3[45] = objc_opt_class();
  v2[46] = @"VNRemoveBackgroundProcessorType";
  v3[46] = objc_opt_class();
  v2[47] = @"VNMRCDetectorType";
  v3[47] = objc_opt_class();
  v2[48] = @"VNGuidedUpsamplingGeneratorType";
  v3[48] = objc_opt_class();
  v2[49] = @"VNGenerateInstanceMaskDetectorType";
  v3[49] = objc_opt_class();
  v2[50] = @"VNTrackMaskDetectorType";
  v3[50] = objc_opt_class();
  v2[51] = @"VNFaceprintUpgradeDetectorType";
  v3[51] = objc_opt_class();
  v2[52] = @"VNEspressoprintUpgradeDetectorType";
  v3[52] = objc_opt_class();
  v2[53] = @"VNImageSegmenterType";
  v3[53] = objc_opt_class();
  v2[54] = @"VNCoreSceneUnderstandingDetectorType";
  v3[54] = objc_opt_class();
  v2[55] = @"VNCSUDetectionprintGeneratorType";
  v3[55] = objc_opt_class();
  v2[56] = @"VNLensSmudgeDetectorType";
  v3[56] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:57];
  v1 = _detectorTypeToClassDictionary(void)::ourDetectorTypeToClassLookup;
  _detectorTypeToClassDictionary(void)::ourDetectorTypeToClassLookup = v0;
}

uint64_t __Block_byref_object_copy__16947(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5E90AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VNVTSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5E90B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VNVTPixelTransferSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5E90C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNVTPixelRotationSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id **std::unique_ptr<SessionsHandler<VNVTPixelTransferSession>>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1AC556B00);
  }

  return result;
}

VNVTPixelTransferSession *_block_invoke_2(uint64_t a1, void *a2)
{
  objc_opt_self();
  pixelTransferSessionOut = 0;
  v3 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = pixelTransferSessionOut == 0;
  }

  if (v4)
  {
    if (a2)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot create VTPixelTransferSessionRef object: session: %lu, error: %d", pixelTransferSessionOut, v3];
      v6 = [v5 UTF8String];
      VNValidatedLog(4, @"%s", v7, v8, v9, v10, v11, v12, v6);
      v13 = [VNError errorForInternalErrorWithLocalizedDescription:v5];
LABEL_11:
      *a2 = v13;
    }

LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  v14 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DE0], *MEMORY[0x1E6965FC8]);
  if (v14)
  {
    if (a2)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set VTSession property, error: %d", v14];
      v15 = [v5 UTF8String];
      VNValidatedLog(4, @"%s", v16, v17, v18, v19, v20, v21, v15);
      v13 = [VNError errorForInternalErrorWithLocalizedDescription:v5];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v22 = [VNVTPixelTransferSession alloc];
  if (v22)
  {
    v22->_pixelTransferSession = pixelTransferSessionOut;
    v25.receiver = v22;
    v25.super_class = VNVTPixelTransferSession;
    v22 = objc_msgSendSuper2(&v25, sel_initWithSession_);
  }

LABEL_13:

  return v22;
}