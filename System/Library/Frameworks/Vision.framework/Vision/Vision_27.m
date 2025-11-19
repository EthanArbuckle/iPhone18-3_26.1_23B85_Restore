void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E77B0710, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void vision::mod::ImageDescriptorBufferJoint::setToReferenceToKthDescriptor(vision::mod::ImageDescriptorBufferJoint *this, vision::mod::ImageDescriptorBufferAbstract *a2, unint64_t a3)
{
  vision::mod::ImageDescriptorBufferAbstract::setToReferenceToKthDescriptor(this, a2, a3);
  v6 = (a3 >> 2) & 0x1FFFFFFFFFFFFFF8;
  v7 = 2 * (a3 & 0x1F);
  v22 = (*(*(this + 15) + v6) >> v7) & 1;
  std::vector<BOOL>::push_back(a2 + 120, &v22);
  v21 = ((*(*(this + 15) + v6) >> v7) & 2) != 0;
  std::vector<BOOL>::push_back(a2 + 120, &v21);
  v8 = *(this + 18);
  v10 = *(a2 + 19);
  v9 = *(a2 + 20);
  if (v10 >= v9)
  {
    v12 = *(a2 + 18);
    v13 = (v10 - v12) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v15 = v9 - v12;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(v16);
    }

    *(16 * v13) = *(v8 + 16 * a3);
    v11 = 16 * v13 + 16;
    v17 = *(a2 + 18);
    v18 = *(a2 + 19) - v17;
    v19 = (16 * v13 - v18);
    memcpy(v19, v17, v18);
    v20 = *(a2 + 18);
    *(a2 + 18) = v19;
    *(a2 + 19) = v11;
    *(a2 + 20) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v10 = *(v8 + 16 * a3);
    v11 = (v10 + 1);
  }

  *(a2 + 19) = v11;
}

int64x2_t vision::mod::ImageDescriptorBufferAbstract::setToReferenceToKthDescriptor(vision::mod::ImageDescriptorBufferAbstract *this, vision::mod::ImageDescriptorBufferAbstract *a2, unint64_t a3)
{
  v6 = a2 + 8;
  *(a2 + 2) = *(a2 + 1);
  v7 = (a2 + 40);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(a2 + 5));
  *(a2 + 4) = v7;
  *v7 = 0;
  *(a2 + 6) = 0;
  v8 = *(this + 1);
  if (v8 != *(this + 2))
  {
    std::vector<long long>::push_back[abi:ne200100](v6, (v8 + 8 * a3));
    *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a2 + 32, *(*(this + 1) + 8 * a3)) + 10) = 0;
  }

  DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, a3);
  *(a2 + 88) = 0;
  v10 = *(this + 8);
  *(a2 + 7) = DataForKthDescriptor;
  *(a2 + 8) = v10;
  result = vdupq_n_s64(1uLL);
  *(a2 + 72) = result;
  return result;
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1A5D68DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void *std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
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
      v4 = v2[4];
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

uint64_t *std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t vision::mod::ImageDescriptorBufferJoint::computeSelfDistances@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 72);
  if (v2 > 1)
  {
    std::vector<float>::vector[abi:ne200100](a2, ((v2 - 1) * v2) >> 1);
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3711;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return this;
}

void sub_1A5D691C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_1A5D69244(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void vision::mod::ImageDescriptorBufferJoint::computeDistanceFrom(vision::mod::ImageDescriptorBufferJoint *this, const vision::mod::ImageDescriptorBufferAbstract *lpsrc)
{
  if (*(this + 9) == 1 && *(lpsrc + 9) == 1)
  {
    v6 = vision::mod::ImageDescriptorBufferJoint::computeDistanceBetweenDescriptors(this, this, v5, &v7);
    exception = __cxa_allocate_exception(8uLL);
    *exception = v6;
  }

  else
  {
    syslog(5, "ERROR: Invalid number of descriptors, should be 1");
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3708;
  }

  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

uint64_t vision::mod::ImageDescriptorBufferJoint::computeDistanceBetweenDescriptors(vision::mod::ImageDescriptorBufferJoint *this, const vision::mod::ImageDescriptorBufferJoint *a2, const vision::mod::ImageDescriptorBufferJoint *a3, float *a4)
{
  v4 = 3709;
  if (a2 && a3)
  {
    *a4 = 0.0;
    v8 = *(a2 + 7);
    v9 = *(a3 + 7);
    std::vector<BOOL>::vector(&v17, a2 + 120);
    std::vector<BOOL>::vector(&__p, a3 + 120);
    v10 = *(this + 26);
    if (v10 == 3)
    {
      v11 = (*(*this + 104))(this) >> 3;
      __C = 0;
      vDSP_dotpr(v8, 1, v9, 1, &__C + 1, v11);
      vDSP_dotpr(&v8[v11], 1, &v9[v11], 1, &__C, v11);
      v12 = (*(&__C + 1) * -0.5) + 0.5;
      if ((*v17 & 2) != 0 && (*__p & 2) != 0)
      {
        v12 = (((*&__C * -0.5) + 0.5) * 0.3) + (v12 * 0.7);
      }

      *a4 = v12;
      v4 = 3712;
    }

    else
    {
      if (v10 == 4)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = 3711;
        __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
      }

      syslog(5, "ERROR: Unknown distance function");
      v4 = 3702;
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (v17)
    {
      operator delete(v17);
    }
  }

  return v4;
}

void sub_1A5D69568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void vision::mod::ImageDescriptorBufferJoint::computeDistancesFrom(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  exception = __cxa_allocate_exception(8uLL);
  *exception = 3711;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

uint64_t vision::mod::ImageDescriptorBufferJoint::print@<X0>(vision::mod::ImageDescriptorBufferJoint *this@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Descriptor count = ", 19);
  v4 = MEMORY[0x1AC556940](&v23, *(this + 9));
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v32, MEMORY[0x1E69E5318]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Descriptor length = ", 20);
  v6 = MEMORY[0x1AC556940](&v23, *(this + 12));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " (", 2);
  v7 = (*(*this + 104))(this);
  v8 = MEMORY[0x1AC556940](v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " bytes", 6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ")", 1);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v32, MEMORY[0x1E69E5318]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  if (*(this + 18) >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E5318];
    do
    {
      v12 = MEMORY[0x1AC556930](&v23, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " = [", 4);
      if (*(this + 24) >= 2)
      {
        v13 = 0;
        do
        {
          vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, v10);
          v14 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
          ++v13;
        }

        while (v13 < *(this + 24) - 1);
      }

      vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, v10);
      v15 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "]", 1);
      std::ios_base::getloc((v15 + *(*v15 - 24)));
      v16 = std::locale::use_facet(&v32, v11);
      (v16->__vftable[2].~facet_0)(v16, 10);
      std::locale::~locale(&v32);
      std::ostream::put();
      std::ostream::flush();
      ++v10;
    }

    while (v10 < *(this + 18));
  }

  std::ostream::flush();
  if ((v30 & 0x10) != 0)
  {
    v18 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v18 = v26;
    }

    locale = v25[4].__locale_;
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v17 = 0;
      a2[23] = 0;
      goto LABEL_20;
    }

    locale = v25[1].__locale_;
    v18 = v25[3].__locale_;
  }

  v17 = v18 - locale;
  if ((v18 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  a2[23] = v17;
  if (v17)
  {
    memmove(a2, locale, v17);
  }

LABEL_20:
  a2[v17] = 0;
  v22[0] = *MEMORY[0x1E69E54D8];
  v20 = *(MEMORY[0x1E69E54D8] + 72);
  *(v22 + *(v22[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v23 = v20;
  v24 = MEMORY[0x1E69E5548] + 16;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  v24 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC556A40](&v31);
}

void sub_1A5D69C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::locale::~locale((v26 - 96));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10);
  MEMORY[0x1AC556A40](&a26);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1A5D69EDC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1AC556A40](v1);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1AC5568E0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1AC5568F0](v20);
  return a1;
}

void sub_1A5D6A1AC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1AC5568F0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1A5D6A180);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1AC556A40](a1 + 128);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1AC5569F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1A5D6A440(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t vision::mod::ImageDescriptorBufferAbstract::createDeepCopy(vision::mod::ImageDescriptorBufferAbstract *this)
{
  v2 = (*(*this + 16))(this);
  *(v2 + 88) = 1;
  v3 = *(this + 8);
  v4 = *(this + 9);
  *(v2 + 64) = v3;
  *(v2 + 72) = v4;
  v5 = malloc_type_malloc(v3 * v4, 0xB74DECAuLL);
  *(v2 + 56) = v5;
  v6 = *(this + 9);
  *(v2 + 80) = v6;
  memcpy(v5, *(this + 7), *(this + 8) * v6);
  v7 = *(this + 2);
  v8 = *(this + 1);
  if (v8 != v7)
  {
    do
    {
      std::vector<long long>::push_back[abi:ne200100](v2 + 8, v8++);
    }

    while (v8 != v7);
    std::map<long long,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,int>,std::__tree_node<std::__value_type<long long,int>,void *> *,long>>>((v2 + 32), *(this + 4), this + 5);
  }

  return v2;
}

void *std::map<long long,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,int>,std::__tree_node<std::__value_type<long long,int>,void *> *,long>>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = v3[4];
      if (v5[4] < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = result + 1;
        }
      }

      else
      {
        v10 = result + 1;
        if (v4)
        {
          v10 = result + 1;
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = v4[4];
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
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
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

void vision::mod::ImageDescriptorBufferJoint::~ImageDescriptorBufferJoint(void **this)
{
  vision::mod::ImageDescriptorBufferJoint::~ImageDescriptorBufferJoint(this);

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F19715F0;
  free(this[14]);
  v2 = this[18];
  if (v2)
  {
    this[19] = v2;
    operator delete(v2);
  }

  v3 = this[15];
  if (v3)
  {
    operator delete(v3);
  }

  vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(this);
}

void vision::mod::ImageDescriptorBufferJoint::resizeForDescriptorsCount(void **this, unint64_t a2, char a3)
{
  vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(this, a2, a3);
  std::vector<BOOL>::resize((this + 15), 2 * a2, 0);
  v5 = this[18];
  v6 = this[19];
  v7 = (v6 - v5) >> 4;
  if (a2 <= v7)
  {
    if (a2 >= v7)
    {
      return;
    }

    v13 = &v5[16 * a2];
  }

  else
  {
    v8 = a2 - v7;
    v9 = this[20];
    if (v8 > (v9 - v6) >> 4)
    {
      if (!(a2 >> 60))
      {
        v10 = v9 - v5;
        v11 = v10 >> 3;
        if (v10 >> 3 <= a2)
        {
          v11 = a2;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(v12);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    bzero(this[19], 16 * v8);
    v13 = &v6[16 * v8];
  }

  this[19] = v13;
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = v7 << 6;
    if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
    {
      __dst = 0;
      v19 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v10 = v7 << 7;
      if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v8 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&__dst, v11);
      v12 = *a1;
      v13 = *(a1 + 8);
      *&v19 = v13 + v5;
      v14 = __dst;
      if (v13 < 1)
      {
        LODWORD(v17) = 0;
        v16 = __dst;
      }

      else
      {
        v15 = v13 >> 6;
        if (v13 >= 0x40)
        {
          memmove(__dst, v12, 8 * v15);
        }

        v16 = &v14[8 * v15];
        v17 = v13 & 0x3F;
        if (v17)
        {
          *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> -v17) | *(v12 + v15) & (0xFFFFFFFFFFFFFFFFLL >> -v17);
        }

        v12 = *a1;
      }

      *a1 = v14;
      *(a1 + 8) = v19;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      v16 = (*a1 + 8 * (v4 >> 6));
      v17 = *(a1 + 8) & 0x3FLL;
      *(a1 + 8) = a2;
    }

    if (a3)
    {
      __dst = v16;
      LODWORD(v19) = v17;
      std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&__dst, v5);
    }

    else
    {
      __dst = v16;
      LODWORD(v19) = v17;
      std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&__dst, v5);
    }
  }
}

void sub_1A5D6AB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void thinBin(_OWORD *a1)
{
  v2 = malloc_type_malloc(0x10000uLL, 0x1C79D2FDuLL);
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v2[2] = a1[2];
  v2[3] = v3;
  *v2 = v5;
  v2[1] = v4;
  v6 = a1[7];
  v8 = a1[4];
  v7 = a1[5];
  v2[6] = a1[6];
  v2[7] = v6;
  v2[4] = v8;
  v2[5] = v7;
  v9 = a1[11];
  v11 = a1[8];
  v10 = a1[9];
  v2[10] = a1[10];
  v2[11] = v9;
  v2[8] = v11;
  v2[9] = v10;
  v12 = a1[15];
  v14 = a1[12];
  v13 = a1[13];
  v2[14] = a1[14];
  v2[15] = v12;
  v2[12] = v14;
  v2[13] = v13;
  v15 = v2 + 16;
  v16 = a1 + 16;
  v17 = 1;
  v18 = v2 + 16;
  v19 = a1 + 16;
  do
  {
    v20 = 0;
    v21 = *v19;
    *v18 = *v19;
    v22 = (8 * (*(v19 - 255) & 1)) & 0xC8 | (16 * (*(v19 + 1) & 1)) & 0xD8 | (32 * (*(v19 + 257) & 1)) | *(v19 - 16) & 1 | (2 * (v21 & 1)) & 0xFB | (4 * (v19[16] & 1));
    do
    {
      v23 = ((*(v19 + v20 + 2) & 1) << 7) | ((*(v19 + v20 - 254) & 1) << 6) | ((*(v19 + v20 + 258) & 1) << 8) | v22;
      v18[v20 + 1] = qdthin1[v23];
      v22 = v23 >> 3;
      ++v20;
    }

    while (v20 != 254);
    v24 = v19 + v20;
    v25 = &v18[v20];
    v18 = v25 + 2;
    v25[1] = v24[1];
    v19 = v24 + 2;
    ++v17;
  }

  while (v17 != 255);
  v26 = *v19;
  v27 = v19[1];
  v28 = v19[3];
  *(v25 + 34) = v19[2];
  *(v25 + 50) = v28;
  *v18 = v26;
  *(v25 + 18) = v27;
  v29 = v19[4];
  v30 = v19[5];
  v31 = v19[7];
  *(v25 + 98) = v19[6];
  *(v25 + 114) = v31;
  *(v25 + 66) = v29;
  *(v25 + 82) = v30;
  v32 = v19[8];
  v33 = v19[9];
  v34 = v19[11];
  *(v25 + 162) = v19[10];
  *(v25 + 178) = v34;
  *(v25 + 130) = v32;
  *(v25 + 146) = v33;
  v35 = v19[12];
  v36 = v19[13];
  v37 = v19[15];
  *(v25 + 226) = v19[14];
  *(v25 + 242) = v37;
  *(v25 + 194) = v35;
  *(v25 + 210) = v36;
  v38 = *v2;
  v39 = v2[1];
  v40 = v2[3];
  a1[2] = v2[2];
  a1[3] = v40;
  *a1 = v38;
  a1[1] = v39;
  v41 = v2[4];
  v42 = v2[5];
  v43 = v2[7];
  a1[6] = v2[6];
  a1[7] = v43;
  a1[4] = v41;
  a1[5] = v42;
  v44 = v2[8];
  v45 = v2[9];
  v46 = v2[11];
  a1[10] = v2[10];
  a1[11] = v46;
  a1[8] = v44;
  a1[9] = v45;
  v47 = v2[12];
  v48 = v2[13];
  v49 = v2[15];
  a1[14] = v2[14];
  a1[15] = v49;
  a1[12] = v47;
  a1[13] = v48;
  for (i = 1; i != 255; ++i)
  {
    v51 = 0;
    v52 = *v15;
    *v16 = *v15;
    v53 = (32 * (*(v15 - 255) & 1)) | (16 * (*(v15 + 1) & 1)) | (8 * (*(v15 + 257) & 1)) | (4 * (*(v15 - 16) & 1)) | (2 * (v52 & 1)) | v15[16] & 1;
    do
    {
      v54 = ((*(v15 + v51 + 2) & 1) << 7) | ((*(v15 + v51 - 254) & 1) << 8) | ((*(v15 + v51 + 258) & 1) << 6) | v53;
      v16[v51 + 1] = qdthin2[v54];
      v53 = v54 >> 3;
      ++v51;
    }

    while (v51 != 254);
    v55 = v15 + v51;
    v56 = &v16[v51];
    v16 = v56 + 2;
    v56[1] = v55[1];
    v15 = v55 + 2;
  }

  v57 = *v15;
  v58 = v15[1];
  v59 = v15[3];
  *(v56 + 34) = v15[2];
  *(v56 + 50) = v59;
  *v16 = v57;
  *(v56 + 18) = v58;
  v60 = v15[4];
  v61 = v15[5];
  v62 = v15[7];
  *(v56 + 98) = v15[6];
  *(v56 + 114) = v62;
  *(v56 + 66) = v60;
  *(v56 + 82) = v61;
  v63 = v15[8];
  v64 = v15[9];
  v65 = v15[11];
  *(v56 + 162) = v15[10];
  *(v56 + 178) = v65;
  *(v56 + 130) = v63;
  *(v56 + 146) = v64;
  v66 = v15[12];
  v67 = v15[13];
  v68 = v15[15];
  *(v56 + 226) = v15[14];
  *(v56 + 242) = v68;
  *(v56 + 194) = v66;
  *(v56 + 210) = v67;

  free(v2);
}

uint64_t trimChain(uint64_t result, int a2, int a3, unsigned int a4)
{
  if (a4 <= 6 && ((0x55u >> a4) & 1) != 0)
  {
    v4 = 0;
    v5 = (result + (a2 + (a3 << 8)));
    v6 = qword_1A6052480[a4];
    v7 = qword_1A60524B8[a4];
    v8 = qword_1A60524F0[a4];
    v9 = 256;
    while (1)
    {
      result = v5[v6] & 1;
      v10 = v5[v8] & 1;
      if ((v5[v7] & 1) + result + v10 != 1)
      {
        break;
      }

      if (v5[v6])
      {
        *v5 = 3;
        if (v4 == -1)
        {
          return result;
        }

        v4 = -1;
        v5 += v6;
      }

      else
      {
        *v5 = 3;
        if (v10)
        {
          if (v4 == 1)
          {
            return result;
          }

          v4 = 1;
          v5 += v8;
        }

        else
        {
          v4 = 0;
          v5 += v7;
        }
      }

      if (!--v9)
      {
        return result;
      }
    }

    *v5 = 3;
  }

  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_1A5D6DCB4(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1A5D6DF38(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1A5D6EAB8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A5D6ED30(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5D6FB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A5D704B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, vision::mod::ImageDescriptorBufferFloat32 *a10, void *a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  _Block_object_dispose(&STACK[0x218], 8);
  if (STACK[0x238])
  {
    operator delete(STACK[0x238]);
  }

  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(&STACK[0x250]);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

void vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(void **this)
{
  *this = &unk_1F19764A8;
  free(this[14]);

  vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(this);
}

{
  *this = &unk_1F19764A8;
  free(this[14]);

  vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(this);
}

{
  *this = &unk_1F19764A8;
  free(this[14]);
  vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(this);

  JUMPOUT(0x1AC556B00);
}

__n128 __Block_byref_object_copy__280(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  v4 = a1 + 56;
  *(a1 + 48) = &unk_1F1975D68;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  std::map<long long,int>::map[abi:ne200100]((v4 + 24), a2 + 80);
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  *(a1 + 48) = &unk_1F19764A8;
  result = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = result;
  return result;
}

void sub_1A5D7083C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __Block_byref_object_dispose__281(uint64_t a1)
{
  v1 = (a1 + 48);
  *(a1 + 48) = &unk_1F19764A8;
  free(*(a1 + 160));

  vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(v1);
}

void sub_1A5D70948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5D709C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_48c39_ZTSNSt3__16vectorIxNS_9allocatorIxEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_ea8_48c39_ZTSNSt3__16vectorIxNS_9allocatorIxEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = a1 + 48;
  *(v2 + 16) = 0;
  return std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v2, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
}

void *std::map<long long,int>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  std::map<long long,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,int>,std::__tree_node<std::__value_type<long long,int>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1A5D70EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a46, 8);
  a28 = a13;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a28);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__273(__n128 *a1, __n128 *a2)
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

__n128 __Block_byref_object_copy__224(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__225(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<std::vector<long long>>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(24 * v7, *a2, a2[1], (a2[1] - *a2) >> 3);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = std::__split_buffer<std::vector<long long>>::~__split_buffer(&v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    result = std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v4, *a2, a2[1], (a2[1] - *a2) >> 3);
    v6 = v4 + 24;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_1A5D711CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<long long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<long long>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<long long>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
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

  a1[1] = v3;
}

uint64_t std::__split_buffer<std::vector<long long>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1A5D71B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  _Block_object_dispose(&a33, 8);
  if (__p)
  {
    a40 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(*(v40 - 240));
  _Unwind_Resume(a1);
}

void *std::vector<long long>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_1A5D71CAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void sub_1A5D71F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__243(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5D720F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(a10);
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(a13);
  _Unwind_Resume(a1);
}

void sub_1A5D72530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v33 - 176), 8);
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(*(v33 - 120));

  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy_(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E77B0718, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void sub_1A5D72B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v13 = v12;

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  std::__list_imp<long long>::clear(v10);

  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__227(void *result, void *a2)
{
  result[6] = result + 6;
  result[7] = result + 6;
  result[8] = 0;
  v2 = a2[8];
  if (v2)
  {
    v4 = a2[6];
    v3 = a2[7];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[6];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[6] = v4;
    *(v4 + 8) = result + 6;
    result[8] = v2;
    a2[8] = 0;
  }

  return result;
}

void *std::__list_imp<long long>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_1A5D72E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5D73020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  _Block_object_dispose(&a15, 8);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__221(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__222(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1A5D740F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22)
{
  _Block_object_dispose(&STACK[0x478], 8);
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(STACK[0x4B0]);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__214(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__215(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1A5D74C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_1A5D74FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(a10);
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(a13);
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(a16);
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(*(v16 - 32));
  _Unwind_Resume(a1);
}

void sub_1A5D75738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

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

void _addFileNameInStdStringPathToArray(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
      goto LABEL_9;
    }

    a1 = *a1;
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_9;
  }

  v6 = v3;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v5 = [v4 lastPathComponent];

  if ([v5 length])
  {
    [v6 addObject:v5];
  }

  v3 = v6;
LABEL_9:
}

void sub_1A5D75C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  _Block_object_dispose(&a21, 8);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__256(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__257(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1A5D75EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(va);
  _Unwind_Resume(a1);
}

float *std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__identity,std::__less<void,void>>(float *result, float *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= *v2 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v2 + 2 != a2)
    {
      if (v4 >= v5)
      {
        v4 = *v2;
      }

      for (i = v2 + 3; ; i += 2)
      {
        v9 = v7;
        if (i == a2)
        {
          break;
        }

        v11 = *(i - 1);
        v10 = *i;
        if (*i >= v11)
        {
          v12 = v2 + 3;
          if (v11 < v4)
          {
            v4 = *(i - 1);
            result = i - 1;
          }

          if (v10 >= *v6)
          {
            v6 = v12;
          }
        }

        else
        {
          v4 = *result;
          if (v10 < *result)
          {
            v4 = *i;
            result = i;
          }

          if (v11 >= *v6)
          {
            v6 = i - 1;
          }
        }

        v7 += 2;
        v13 = i + 1;
        v2 = v9;
        if (v13 == a2)
        {
          return result;
        }
      }

      if (*(i - 1) < *result)
      {
        return i - 1;
      }
    }
  }

  return result;
}

void std::vector<long long>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v10);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

uint64_t vision::mod::ImageDescriptorBufferJoint::setAvailableFlagsForKthDescriptor(uint64_t this, int a2, int a3, int a4)
{
  if (a2 < 0 || *(this + 72) <= a2)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3692;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v4 = (2 * a2);
  v5 = *(this + 120);
  v6 = v4 >> 6;
  v7 = 1 << ((2 * a2) & 0x3E);
  if (a3)
  {
    v8 = *(v5 + 8 * v6) | v7;
  }

  else
  {
    v8 = *(v5 + 8 * v6) & ~v7;
  }

  *(v5 + 8 * v6) = v8;
  v9 = v4 | 1;
  v10 = v9 >> 6;
  v11 = 1 << v9;
  if (a4)
  {
    v12 = *(v5 + 8 * v10) | v11;
  }

  else
  {
    v12 = *(v5 + 8 * v10) & ~v11;
  }

  *(v5 + 8 * v10) = v12;
  return this;
}

__n128 vision::mod::ImageDescriptorBufferJoint::setSideInfoForKthDescriptor(uint64_t a1, unsigned int a2, __n128 *a3)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 72) <= a2)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3692;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  result = *a3;
  *(*(a1 + 144) + 16 * a2) = *a3;
  return result;
}

void sub_1A5D7764C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  v67 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v67;
    operator delete(v67);
  }

  v68 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v68;
    operator delete(v68);
  }

  v69 = STACK[0x2E8];
  if (STACK[0x2E8])
  {
    STACK[0x2F0] = v69;
    operator delete(v69);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__364(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__365(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

double std::vector<std::pair<long long,long long>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<long long,long long>*>,std::__wrap_iter<std::pair<long long,long long>*>>(void *a1, char *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v9 = a1[1];
    v10 = a1[2];
    if (a5 <= (v10 - v9) >> 4)
    {
      v16 = (v9 - a2) >> 4;
      if (v16 >= a5)
      {
        v19 = &a2[16 * a5];
        v20 = &v9[-16 * a5];
        v21 = a1[1];
        while (v20 < v9)
        {
          v22 = *v20;
          v20 += 16;
          *v21++ = v22;
        }

        a1[1] = v21;
        if (v9 != v19)
        {
          v23 = v19 - v9;
          v24 = v9 - 8;
          v25 = &v24[-16 * a5];
          do
          {
            *(v24 - 1) = *(v25 - 1);
            v26 = *v25;
            v25 -= 2;
            *v24 = v26;
            v24 -= 16;
            v23 += 16;
          }

          while (v23);
        }

        do
        {
          v27 = *v6++;
          result = *&v27;
          *v7 = v27;
          v7 += 16;
        }

        while (v6 != &a3[a5]);
      }

      else
      {
        v17 = (a3 + v9 - a2);
        if (v17 == a4)
        {
          v18 = a1[1];
        }

        else
        {
          v38 = (a3 + v9 - a2);
          v18 = a1[1];
          do
          {
            v39 = *v38++;
            result = *&v39;
            *v18 = v39;
            v18 += 16;
          }

          while (v38 != a4);
        }

        a1[1] = v18;
        if (v16 >= 1)
        {
          v40 = &a2[16 * a5];
          v41 = &v18[-16 * a5];
          v42 = v18;
          while (v41 < v9)
          {
            v43 = *v41;
            v41 += 16;
            result = *&v43;
            *v42 = v43;
            v42 += 16;
          }

          a1[1] = v42;
          if (v18 != v40)
          {
            v44 = v40 - v18;
            v45 = v18 - 8;
            v46 = &v45[-16 * a5];
            do
            {
              *(v45 - 1) = *(v46 - 1);
              v47 = *v46;
              v46 -= 2;
              *v45 = v47;
              v45 -= 16;
              v44 += 16;
            }

            while (v44);
          }

          if (v9 != a2)
          {
            do
            {
              v48 = *v6++;
              result = *&v48;
              *v7 = v48;
              v7 += 16;
            }

            while (v6 != v17);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + (&v9[-*a1] >> 4);
      if (v12 >> 60)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v13 = v10 - v11;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v15 = (a2 - v11) >> 4;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(v14);
      }

      v29 = 16 * v15;
      v30 = 16 * a5;
      v31 = (16 * v15);
      do
      {
        v32 = *v6++;
        *v31++ = v32;
        v30 -= 16;
      }

      while (v30);
      memcpy((v29 + 16 * a5), a2, a1[1] - a2);
      v33 = *a1;
      v34 = v29 + 16 * a5 + a1[1] - v7;
      a1[1] = v7;
      v35 = v7 - v33;
      v36 = (v29 - (v7 - v33));
      memcpy(v36, v33, v35);
      v37 = *a1;
      *a1 = v36;
      a1[1] = v34;
      a1[2] = 0;
      if (v37)
      {

        operator delete(v37);
      }
    }
  }

  return result;
}

void sub_1A5D77DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_56c39_ZTSNSt3__16vectorIxNS_9allocatorIxEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_ea8_56c39_ZTSNSt3__16vectorIxNS_9allocatorIxEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
}

void sub_1A5D7832C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  v24 = *(v22 - 104);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void sub_1A5D78E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5D793B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1A5D7947C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void sub_1A5D7C704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
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
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
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

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
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

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void sub_1A5D7ED90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  v68 = *(v66 - 168);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void sub_1A5D810E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  v67 = &STACK[0x2D7];
  v68 = -408;
  v69 = &STACK[0x2D7];
  while (1)
  {
    v70 = *v69;
    v69 -= 3;
    if (v70 < 0)
    {
      operator delete(*(v67 - 23));
    }

    v67 = v69;
    v68 += 24;
    if (!v68)
    {
      if (a31 < 0)
      {
        operator delete(__p);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v63);

      if (a23 < 0)
      {
        operator delete(a18);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_1A5D81F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__426(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5D827D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A5D82D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v36 - 128), 8);

  _Unwind_Resume(a1);
}

void apple::vision::fgbg::ConnectedComponentResult::ConnectedComponentResult(apple::vision::fgbg::ConnectedComponentResult *this, uint64_t a2, uint64_t a3, int a4, char a5, char a6)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 12) = 0;
  *(this + 13) = a2;
  *(this + 14) = a3;
  *(this + 30) = a4;
  *(this + 16) = 0;
  *(this + 136) = a5;
  *(this + 137) = a6;
  operator new[]();
}

void sub_1A5D8366C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 10);
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = v10[7];
  if (v12)
  {
    v10[8] = v12;
    operator delete(v12);
  }

  v13 = v10[4];
  if (v13)
  {
    v10[5] = v13;
    operator delete(v13);
  }

  v14 = v10[1];
  if (v14)
  {
    v10[2] = v14;
    operator delete(v14);
  }

  v15 = *v10;
  *v10 = 0;
  if (v15)
  {
    MEMORY[0x1AC556AE0](v15, 0x1000C8000313F17);
  }

  _Unwind_Resume(a1);
}

uint64_t apple::vision::fgbg::connectComponentLabel(apple::vision::fgbg *this, float *a2, unint64_t a3, float64x2_t **a4, apple::vision::fgbg::ConnectedComponentResult *a5)
{
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  if (a3)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (a2)
      {
        v11 = 0;
        v12 = v9 * a2;
        v36 = v9;
        v37 = v9;
        v35 = v9 * a2;
        do
        {
          if (*(this + v12 + v11) >= 0.5 && (!*&(*a4)->f64[a4[13] * v9 + v11] || v10 == 0))
          {
            v14 = *(&v41 + 1);
            v15 = ((v42 - *(&v41 + 1)) << 6) - 1;
            if (v42 == *(&v41 + 1))
            {
              v15 = 0;
            }

            v16 = v43;
            if (v15 == v43)
            {
              std::deque<std::pair<int,int>>::__add_back_capacity(&v41);
              v14 = *(&v41 + 1);
              v16 = *(&v43 + 1) + v43;
            }

            ++v10;
            *(*(v14 + ((v16 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v16 & 0x1FF)) = v37 | (v11 << 32);
            ++*(&v43 + 1);
            v40 = v10;
            apple::vision::fgbg::ConnectedComponentResult::setLabel(a4, v9, v11, v10);
            v17 = *(&v43 + 1);
            if (*(&v43 + 1))
            {
              v38 = v11;
              v39 = v10;
              do
              {
                v18 = (*(*(&v41 + 1) + ((v43 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v43 & 0x1FF));
                v19 = *v18;
                v20 = v18[1];
                *&v43 = v43 + 1;
                *(&v43 + 1) = v17 - 1;
                if (v43 > 0x3FF)
                {
                  operator delete(**(&v41 + 1));
                  *(&v41 + 1) += 8;
                  *&v43 = v43 - 512;
                }

                for (i = 0; i != 8; ++i)
                {
                  v22 = dword_1A6039330[i] + v19;
                  if ((v22 & 0x80000000) == 0 && v22 < a3)
                  {
                    v23 = dword_1A6039350[i] + v20;
                    if ((v23 & 0x80000000) == 0 && v23 < a2 && *(this + v23 + v22 * a2) >= 0.5 && !*&(*a4)->f64[a4[13] * v22 + v23])
                    {
                      v24 = *(&v41 + 1);
                      if (v42 == *(&v41 + 1))
                      {
                        v25 = 0;
                      }

                      else
                      {
                        v25 = ((v42 - *(&v41 + 1)) << 6) - 1;
                      }

                      v26 = *(&v43 + 1);
                      v27 = *(&v43 + 1) + v43;
                      if (v25 == *(&v43 + 1) + v43)
                      {
                        std::deque<std::pair<int,int>>::__add_back_capacity(&v41);
                        v26 = *(&v43 + 1);
                        v24 = *(&v41 + 1);
                        v27 = v43 + *(&v43 + 1);
                      }

                      v28 = (*(v24 + ((v27 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v27 & 0x1FF));
                      *v28 = v22;
                      v28[1] = v23;
                      *(&v43 + 1) = v26 + 1;
                      apple::vision::fgbg::ConnectedComponentResult::setLabel(a4, v22, v23, v40);
                    }
                  }
                }

                v17 = *(&v43 + 1);
              }

              while (*(&v43 + 1));
              v12 = v35;
              v9 = v36;
              v11 = v38;
              v10 = v39;
            }
          }

          ++v11;
        }

        while (v11 != a2);
      }

      ++v9;
    }

    while (v9 != a3);
  }

  if (*(a4 + 137) == 1)
  {
    v29 = a4[1];
    v30 = a4[2] - v29;
    if (v30)
    {
      v31 = v30 >> 3;
      v32 = a4[7];
      if (v31 <= 1)
      {
        v31 = 1;
      }

      do
      {
        v33 = *v29++;
        *v32 = vdivq_f64(*v32, vdupq_lane_s64(COERCE__INT64(v33), 0));
        ++v32;
        --v31;
      }

      while (v31);
    }
  }

  return std::deque<std::pair<int,int>>::~deque[abi:ne200100](&v41);
}

void sub_1A5D839E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void apple::vision::fgbg::ConnectedComponentResult::setLabel(apple::vision::fgbg::ConnectedComponentResult *this, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = *(this + 1);
  *(*this + 8 * *(this + 13) * a2 + 8 * a3) = a4;
  v9 = a4 - *(this + 30);
  v10 = *(this + 2);
  v11 = (v10 - v8) >> 3;
  if (v11 > v9)
  {
    v12 = *(v8 + 8 * v9) + 1;
    goto LABEL_17;
  }

  v13 = a4 - v11;
  if (a4 > v11)
  {
    v14 = *(this + 3);
    if (v13 > (v14 - v10) >> 3)
    {
      if (!(a4 >> 61))
      {
        v15 = v14 - v8;
        v16 = v15 >> 2;
        if (v15 >> 2 <= a4)
        {
          v16 = a4;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v17);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(this + 2), 8 * v13);
    v18 = v10 + 8 * v13;
    goto LABEL_15;
  }

  if (a4 < v11)
  {
    v18 = v8 + 8 * a4;
LABEL_15:
    *(this + 2) = v18;
  }

  v12 = 1;
LABEL_17:
  *(v8 + 8 * v9) = v12;
  v19 = *(this + 10);
  v20 = *(this + 11);
  v21 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3);
  if (v21 <= v9)
  {
    v22 = a4 - v21;
    if (a4 <= v21)
    {
      if (a4 < v21)
      {
        v27 = v19 + 24 * a4;
        if (v20 != v27)
        {
          v28 = *(this + 11);
          do
          {
            v30 = *(v28 - 24);
            v28 -= 24;
            v29 = v30;
            if (v30)
            {
              *(v20 - 16) = v29;
              operator delete(v29);
            }

            v20 = v28;
          }

          while (v28 != v27);
        }

        *(this + 11) = v27;
      }
    }

    else
    {
      v23 = *(this + 12);
      if (0xAAAAAAAAAAAAAAABLL * ((v23 - v20) >> 3) < v22)
      {
        if (a4 <= 0xAAAAAAAAAAAAAAALL)
        {
          v24 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v19) >> 3);
          v25 = 2 * v24;
          if (2 * v24 <= a4)
          {
            v25 = a4;
          }

          if (v24 >= 0x555555555555555)
          {
            v26 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v26 = v25;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CGPoint>>>(v26);
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      bzero(*(this + 11), 24 * ((24 * v22 - 24) / 0x18) + 24);
      *(this + 11) = v20 + 24 * ((24 * v22 - 24) / 0x18) + 24;
    }

    v19 = *(this + 10);
  }

  v31 = a3;
  v32 = v19 + 24 * v9;
  v33 = a2;
  v35 = *(v32 + 8);
  v34 = *(v32 + 16);
  if (v35 >= v34)
  {
    v37 = *v32;
    v38 = v35 - *v32;
    v39 = v38 >> 4;
    v40 = (v38 >> 4) + 1;
    if (v40 >> 60)
    {
      goto LABEL_92;
    }

    v41 = v34 - v37;
    if (v41 >> 3 > v40)
    {
      v40 = v41 >> 3;
    }

    if (v41 >= 0x7FFFFFFFFFFFFFF0)
    {
      v42 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v40;
    }

    if (v42)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(v42);
    }

    v43 = (16 * v39);
    *v43 = v31;
    v43[1] = v33;
    v36 = 16 * v39 + 16;
    memcpy(0, v37, v38);
    v44 = *v32;
    *v32 = 0;
    *(v32 + 8) = v36;
    *(v32 + 16) = 0;
    if (v44)
    {
      operator delete(v44);
    }
  }

  else
  {
    *v35 = v31;
    v35[1] = v33;
    v36 = (v35 + 2);
  }

  *(v32 + 8) = v36;
  ++*(this + 16);
  if (*(this + 136) == 1)
  {
    v45 = *(this + 4);
    v46 = *(this + 5);
    v47 = (v46 - v45) >> 5;
    if (v47 > v9)
    {
      v48 = (v45 + 32 * v9);
      v49 = v48[2];
      v50 = v48[3];
      if (v49 >= a3)
      {
        v49 = a3;
      }

      if (v50 <= a3)
      {
        v50 = a3;
      }

      v48[2] = v49;
      v48[3] = v50;
      v51 = *v48;
      v52 = v48[1];
      if (*v48 >= a2)
      {
        v51 = a2;
      }

      if (v52 <= a2)
      {
        v52 = a2;
      }

      *v48 = v51;
      v48[1] = v52;
      goto LABEL_74;
    }

    v53 = a4 - v47;
    if (a4 <= v47)
    {
      if (a4 >= v47)
      {
LABEL_73:
        v59 = (*(this + 4) + 32 * v9);
        v59[2] = a3;
        v59[3] = a3;
        *v59 = a2;
        v59[1] = a2;
        goto LABEL_74;
      }

      v58 = v45 + 32 * a4;
    }

    else
    {
      v54 = *(this + 6);
      if (v53 > (v54 - v46) >> 5)
      {
        if (!(a4 >> 59))
        {
          v55 = v54 - v45;
          v56 = v55 >> 4;
          if (v55 >> 4 <= a4)
          {
            v56 = a4;
          }

          if (v55 >= 0x7FFFFFFFFFFFFFE0)
          {
            v57 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v56;
          }

          if (!(v57 >> 59))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      bzero(*(this + 5), 32 * v53);
      v58 = v46 + 32 * v53;
    }

    *(this + 5) = v58;
    goto LABEL_73;
  }

LABEL_74:
  if (*(this + 137) != 1)
  {
    return;
  }

  v60 = *(this + 7);
  v61 = *(this + 8);
  v62 = (v61 - v60) >> 4;
  if (v62 > v9)
  {
    v63 = (v60 + 16 * v9);
    v64 = v63[1] + v33;
    *v63 = *v63 + v31;
    v63[1] = v64;
    return;
  }

  v65 = a4 - v62;
  if (a4 > v62)
  {
    v66 = *(this + 9);
    if (v65 > (v66 - v61) >> 4)
    {
      if (!(a4 >> 60))
      {
        v67 = v66 - v60;
        v68 = v67 >> 3;
        if (v67 >> 3 <= a4)
        {
          v68 = a4;
        }

        if (v67 >= 0x7FFFFFFFFFFFFFF0)
        {
          v69 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v69 = v68;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(v69);
      }

LABEL_92:
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(this + 8), 16 * v65);
    v70 = v61 + 16 * v65;
    goto LABEL_89;
  }

  if (a4 < v62)
  {
    v70 = v60 + 16 * a4;
LABEL_89:
    *(this + 8) = v70;
  }

  v71 = (*(this + 7) + 16 * v9);
  *v71 = v31;
  v71[1] = v33;
}

uint64_t std::deque<std::pair<int,int>>::~deque[abi:ne200100](uint64_t a1)
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

void *std::deque<std::pair<int,int>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>(a1, &v10);
}

void sub_1A5D84510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(v11);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CGPoint>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void vision::mod::ImageProcessing_Preprocessor::ImageProcessing_Preprocessor(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 1;
  *(a1 + 18) = 0;
  *(a1 + 20) = 0x437F000000000000;
  *(a1 + 28) = 32;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v1 = 0x908060504030201;
  v2 = 2567;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_1A5D85380(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<vision::mod::ImageProcessing_Preprocessor>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    vision::mod::ImageProcessing_Preprocessor::~ImageProcessing_Preprocessor(result);

    JUMPOUT(0x1AC556B00);
  }

  return result;
}

void vision::mod::ImageProcessing_Preprocessor::~ImageProcessing_Preprocessor(void **this)
{
  free(this[14]);
  std::__tree<std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>,std::__map_value_compare<vision::mod::ImagePreprocessor_BufferName,std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>,std::less<vision::mod::ImagePreprocessor_BufferName>,true>,std::allocator<std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>>>::destroy(this[12]);
  std::__tree<std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>,std::__map_value_compare<vision::mod::ImagePreprocessor_BufferName,std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>,std::less<vision::mod::ImagePreprocessor_BufferName>,true>,std::allocator<std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>>>::destroy(this[9]);
  v2 = this[5];
  if (v2)
  {
    this[6] = v2;
    operator delete(v2);
  }
}

void std::__tree<std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>,std::__map_value_compare<vision::mod::ImagePreprocessor_BufferName,std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>,std::less<vision::mod::ImagePreprocessor_BufferName>,true>,std::allocator<std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>,std::__map_value_compare<vision::mod::ImagePreprocessor_BufferName,std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>,std::less<vision::mod::ImagePreprocessor_BufferName>,true>,std::allocator<std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>>>::destroy(*a1);
    std::__tree<std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>,std::__map_value_compare<vision::mod::ImagePreprocessor_BufferName,std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>,std::less<vision::mod::ImagePreprocessor_BufferName>,true>,std::allocator<std::__value_type<vision::mod::ImagePreprocessor_BufferName,vision::mod::ImageProcessing_ImageBuffer>>>::destroy(a1[1]);
    if ((*(a1 + 76) & 1) == 0)
    {
      free(a1[5]);
    }

    operator delete(a1);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__shared_ptr_emplace<vision::mod::ConcreteFaceQualityPredictor>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 556) == 1)
  {
    if (espresso_plan_destroy())
    {
      syslog(5, "[Error] Failed to destroy the existing FaceQual espresso plan ");
LABEL_6:
      syslog(5, "[Error] Failed to destroy Face Quality object");
      goto LABEL_7;
    }

    *(a1 + 184) = 0;
    if (espresso_context_destroy())
    {
      syslog(5, "[Error] Failed to destroy the existing FaceQual context ");
      goto LABEL_6;
    }

    *(a1 + 176) = 0;
  }

LABEL_7:
  std::unique_ptr<vision::mod::ImageProcessing_Preprocessor>::reset[abi:ne200100]((a1 + 168), 0);
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }
}

void std::__shared_ptr_emplace<vision::mod::ConcreteFaceQualityPredictor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1971720;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void vision::mod::ImageDescriptorBufferAbstract::getRepresentative()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = 3711;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

float vision::mod::ImageDescriptorBufferAbstract::computeDistanceFrom(vision::mod::ImageDescriptorBufferAbstract *this, const vision::mod::ImageDescriptorBufferAbstract *a2)
{
  if (*(this + 9) != 1 || *(a2 + 9) != 1)
  {
    syslog(5, "ERROR: Incorrect count of descriptors in one of the buffers, expected exactly 1\n");
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3708;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  (*(*this + 80))(__p);
  v3 = *__p[0];
  __p[1] = __p[0];
  operator delete(__p[0]);
  return v3;
}

uint64_t vision::mod::ImageDescriptorBufferAbstract::print@<X0>(vision::mod::ImageDescriptorBufferAbstract *this@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Descriptor count = ", 19);
  v4 = MEMORY[0x1AC556940](&v15, *(this + 9));
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Descriptor length = ", 20);
  v6 = (*(*this + 104))(this);
  v7 = MEMORY[0x1AC556940](&v15, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " bytes", 6);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  if ((v22 & 0x10) != 0)
  {
    v10 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v10 = v18;
    }

    locale = v17[4].__locale_;
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v17[1].__locale_;
    v10 = v17[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, locale, v9);
  }

LABEL_14:
  a2[v9] = 0;
  v14[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v15 = v12;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(__p);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC556A40](&v23);
}

void sub_1A5D85BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::locale::~locale((v25 - 56));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9);
  MEMORY[0x1AC556A40](&a25);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::ImageDescriptorBufferAbstract::deleteDescriptorsWithIds(void *a1, uint64_t *a2, uint64_t a3)
{
  if (a1[1] == a1[2])
  {
    syslog(5, "ERROR: Can't delete descriptors with given ids - ids information is not present\n");
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3708;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v6 = *a2;
  if (((a2[1] - *a2) >> 3) >= 1)
  {
    v7 = 0;
    do
    {
      v20 = *(v6 + 8 * v7);
      __p = &v20;
      v8 = std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 4), v20);
      std::vector<int>::push_back[abi:ne200100](&v21, v8 + 10);
      ++v7;
      v6 = *a2;
    }

    while (v7 < ((a2[1] - *a2) >> 3));
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  v9 = (*(*a1 + 56))(a1, &v21, &__p);
  if ((v9 & 0x80) != 0)
  {
    v10 = __p;
    if (a3 && (v11 = v18, ((v18 - __p) >> 2) >= 1))
    {
      v12 = 0;
      v9 = 3712;
      do
      {
        v13 = *&v10[4 * v12];
        v14 = a1[1];
        if (v13 < ((a1[2] - v14) >> 3))
        {
          std::vector<long long>::push_back[abi:ne200100](a3, (v14 + 8 * v13));
          v10 = __p;
          v11 = v18;
        }

        ++v12;
      }

      while (v12 < ((v11 - v10) >> 2));
    }

    else
    {
      v9 = 3712;
    }
  }

  else
  {
    v10 = __p;
  }

  if (v10)
  {
    v18 = v10;
    operator delete(v10);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return v9;
}

void sub_1A5D85D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t vision::mod::ImageDescriptorBufferAbstract::deleteDescriptorsAtIndexes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v5 = 0uLL;
  v17 = 0u;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 == v7)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    do
    {
      std::vector<int>::push_back[abi:ne200100](&v17, v6++);
    }

    while (v6 != v7);
    v5 = v17;
    v8 = *(&v17 + 1);
    v9 = v17;
  }

  v10 = 126 - 2 * __clz((*(&v5 + 1) - v5) >> 2);
  if (*(&v5 + 1) == v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v5, *(&v5 + 1), v11, 1);
  if (((v8 - v9) >> 2) >= 1)
  {
    v12 = 0;
    v13 = ((v8 - v9) >> 2);
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v14 = 4 * v13;
    do
    {
      v15 = (*(*a1 + 48))(a1, *&v9[v12], a3);
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      v12 += 4;
    }

    while (v14 != v12);
  }

  v15 = 3712;
  if (v9)
  {
LABEL_15:
    operator delete(v9);
  }

  return v15;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(uint64_t result, int *a2, uint64_t a3, char a4)
{
  v6 = result;
  v7 = xmmword_1A6027770;
  v8 = vdupq_n_s64(1uLL);
  v9 = xmmword_1A6027760;
  v10 = vdupq_n_s64(4uLL);
  v205 = v8;
  v204 = v10;
  while (2)
  {
    v11 = v6;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          v6 = v11;
          v12 = a2 - v11;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v146 = v11[1];
                v147 = *(a2 - 1);
                if (v146 <= v147)
                {
                  v148 = *(a2 - 1);
                }

                else
                {
                  v148 = v11[1];
                }

                if (v146 >= v147)
                {
                  v146 = *(a2 - 1);
                }

                *(a2 - 1) = v146;
                v11[1] = v148;
                v149 = *(a2 - 1);
                if (v149 <= *v11)
                {
                  v150 = *v11;
                }

                else
                {
                  v150 = *(a2 - 1);
                }

                if (v149 >= *v11)
                {
                  v149 = *v11;
                }

                *(a2 - 1) = v149;
                v152 = *v11;
                v151 = v11[1];
                if (v150 <= v151)
                {
                  v152 = v11[1];
                }

                if (v150 < v151)
                {
                  v151 = v150;
                }

                *v11 = v152;
                v11[1] = v151;
                return result;
              case 4:
                v154 = v11[1];
                v153 = v11[2];
                if (*v11 <= v153)
                {
                  v155 = v11[2];
                }

                else
                {
                  v155 = *v11;
                }

                if (*v11 < v153)
                {
                  v153 = *v11;
                }

                v11[2] = v153;
                *v11 = v155;
                v156 = *(a2 - 1);
                if (v154 <= v156)
                {
                  v157 = *(a2 - 1);
                }

                else
                {
                  v157 = v154;
                }

                if (v154 < v156)
                {
                  v156 = v154;
                }

                *(a2 - 1) = v156;
                v158 = *v11;
                if (*v11 <= v157)
                {
                  v159 = v157;
                }

                else
                {
                  v159 = *v11;
                }

                if (v158 >= v157)
                {
                  v158 = v157;
                }

                *v11 = v159;
                v11[1] = v158;
                v160 = v11[2];
                v161 = *(a2 - 1);
                if (v160 <= v161)
                {
                  v162 = *(a2 - 1);
                }

                else
                {
                  v162 = v11[2];
                }

                if (v160 >= v161)
                {
                  v160 = *(a2 - 1);
                }

                *(a2 - 1) = v160;
                v163 = v11[1];
                if (v163 <= v162)
                {
                  v164 = v162;
                }

                else
                {
                  v164 = v11[1];
                }

                if (v163 >= v162)
                {
                  v163 = v162;
                }

                v11[1] = v164;
                v11[2] = v163;
                return result;
              case 5:
                v124 = *v11;
                v125 = v11[1];
                if (*v11 <= v125)
                {
                  v126 = v11[1];
                }

                else
                {
                  v126 = *v11;
                }

                if (v124 >= v125)
                {
                  v124 = v11[1];
                }

                *v11 = v126;
                v11[1] = v124;
                v127 = v11[3];
                v128 = *(a2 - 1);
                if (v127 <= v128)
                {
                  v129 = *(a2 - 1);
                }

                else
                {
                  v129 = v11[3];
                }

                if (v127 >= v128)
                {
                  v127 = *(a2 - 1);
                }

                *(a2 - 1) = v127;
                v11[3] = v129;
                v130 = *(a2 - 1);
                v131 = v11[2];
                if (v130 <= v131)
                {
                  v132 = v11[2];
                }

                else
                {
                  v132 = *(a2 - 1);
                }

                if (v130 >= v131)
                {
                  v130 = v11[2];
                }

                *(a2 - 1) = v130;
                v134 = v11[2];
                v133 = v11[3];
                v135 = v11[1];
                if (v132 <= v133)
                {
                  v134 = v11[3];
                }

                if (v132 < v133)
                {
                  v133 = v132;
                }

                v11[2] = v134;
                v11[3] = v133;
                v136 = *(a2 - 1);
                if (v135 <= v136)
                {
                  v137 = *(a2 - 1);
                }

                else
                {
                  v137 = v135;
                }

                if (v135 < v136)
                {
                  v136 = v135;
                }

                *(a2 - 1) = v136;
                v138 = *v11;
                v140 = v11[2];
                v139 = v11[3];
                if (v139 <= *v11)
                {
                  v141 = *v11;
                }

                else
                {
                  v141 = v11[3];
                }

                if (v139 >= v138)
                {
                  v139 = *v11;
                }

                if (v141 <= v140)
                {
                  v138 = v11[2];
                }

                if (v141 < v140)
                {
                  v140 = v141;
                }

                if (v139 <= v137)
                {
                  v142 = v137;
                }

                else
                {
                  v142 = v139;
                }

                if (v139 >= v137)
                {
                  v139 = v137;
                }

                if (v142 <= v140)
                {
                  v137 = v140;
                }

                *v11 = v138;
                v11[1] = v137;
                if (v142 >= v140)
                {
                  v143 = v140;
                }

                else
                {
                  v143 = v142;
                }

                v11[2] = v143;
                v11[3] = v139;
                return result;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              v144 = *(a2 - 1);
              v145 = *v11;
              if (v144 > *v11)
              {
                *v11 = v144;
                *(a2 - 1) = v145;
              }

              return result;
            }
          }

          if (v12 <= 23)
          {
            v165 = v11 + 1;
            v167 = v11 == a2 || v165 == a2;
            if (a4)
            {
              if (!v167)
              {
                v168 = 4;
                v169 = v11;
                do
                {
                  v171 = *v169;
                  v170 = v169[1];
                  v169 = v165;
                  if (v170 > v171)
                  {
                    v172 = v168;
                    while (1)
                    {
                      *(v11 + v172) = v171;
                      v173 = v172 - 4;
                      if (v172 == 4)
                      {
                        break;
                      }

                      v171 = *(v11 + v172 - 8);
                      v172 -= 4;
                      if (v170 <= v171)
                      {
                        v174 = (v11 + v173);
                        goto LABEL_290;
                      }
                    }

                    v174 = v11;
LABEL_290:
                    *v174 = v170;
                  }

                  v165 = v169 + 1;
                  v168 += 4;
                }

                while (v169 + 1 != a2);
              }
            }

            else if (!v167)
            {
              do
              {
                v203 = *v6;
                v202 = v6[1];
                v6 = v165;
                if (v202 > v203)
                {
                  do
                  {
                    *v165 = v203;
                    v203 = *(v165 - 2);
                    --v165;
                  }

                  while (v202 > v203);
                  *v165 = v202;
                }

                v165 = v6 + 1;
              }

              while (v6 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v11 != a2)
            {
              v175 = (v12 - 2) >> 1;
              v176 = v175;
              do
              {
                v177 = v176;
                if (v175 >= v176)
                {
                  v178 = (2 * v176) | 1;
                  v179 = &v11[v178];
                  if (2 * v177 + 2 >= v12)
                  {
                    v180 = *v179;
                  }

                  else
                  {
                    v180 = v179[1];
                    v181 = *v179 <= v180;
                    if (*v179 < v180)
                    {
                      v180 = *v179;
                    }

                    if (!v181)
                    {
                      ++v179;
                      v178 = 2 * v177 + 2;
                    }
                  }

                  v182 = &v11[v177];
                  v183 = *v182;
                  if (v180 <= *v182)
                  {
                    do
                    {
                      *v182 = v180;
                      v182 = v179;
                      if (v175 < v178)
                      {
                        break;
                      }

                      v184 = (2 * v178) | 1;
                      v179 = &v11[v184];
                      v178 = 2 * v178 + 2;
                      if (v178 >= v12)
                      {
                        v180 = *v179;
                        v178 = v184;
                      }

                      else
                      {
                        v180 = *v179;
                        result = v179[1];
                        if (*v179 >= result)
                        {
                          v180 = v179[1];
                        }

                        if (*v179 <= result)
                        {
                          v178 = v184;
                        }

                        else
                        {
                          ++v179;
                        }
                      }
                    }

                    while (v180 <= v183);
                    *v182 = v183;
                  }
                }

                v176 = v177 - 1;
              }

              while (v177);
              do
              {
                v185 = 0;
                v186 = *v11;
                v187 = v11;
                do
                {
                  v188 = &v187[v185];
                  v189 = v188 + 1;
                  v190 = (2 * v185) | 1;
                  v185 = 2 * v185 + 2;
                  if (v185 >= v12)
                  {
                    v191 = *v189;
                    v185 = v190;
                  }

                  else
                  {
                    v193 = v188[2];
                    v192 = v188 + 2;
                    v191 = v193;
                    v194 = *(v192 - 1);
                    v195 = v194 <= v193;
                    if (v194 < v193)
                    {
                      v191 = *(v192 - 1);
                    }

                    if (v195)
                    {
                      v185 = v190;
                    }

                    else
                    {
                      v189 = v192;
                    }
                  }

                  *v187 = v191;
                  v187 = v189;
                }

                while (v185 <= ((v12 - 2) >> 1));
                if (v189 == --a2)
                {
                  *v189 = v186;
                }

                else
                {
                  *v189 = *a2;
                  *a2 = v186;
                  v196 = (v189 - v11 + 4) >> 2;
                  v21 = v196 < 2;
                  v197 = v196 - 2;
                  if (!v21)
                  {
                    v198 = v197 >> 1;
                    v199 = &v11[v198];
                    v200 = *v199;
                    v201 = *v189;
                    if (*v199 > *v189)
                    {
                      do
                      {
                        *v189 = v200;
                        v189 = v199;
                        if (!v198)
                        {
                          break;
                        }

                        v198 = (v198 - 1) >> 1;
                        v199 = &v11[v198];
                        v200 = *v199;
                      }

                      while (*v199 > v201);
                      *v189 = v201;
                    }
                  }
                }

                v21 = v12-- <= 2;
              }

              while (!v21);
            }

            return result;
          }

          v13 = v12 >> 1;
          v14 = *(a2 - 1);
          if (v12 < 0x81)
          {
            v49 = *v11;
            if (*v11 <= v14)
            {
              v50 = *(a2 - 1);
            }

            else
            {
              v50 = *v11;
            }

            if (v49 >= v14)
            {
              v49 = *(a2 - 1);
            }

            *(a2 - 1) = v49;
            *v11 = v50;
            v51 = *(a2 - 1);
            v52 = v11[v13];
            if (v51 <= v52)
            {
              v53 = v11[v13];
            }

            else
            {
              v53 = *(a2 - 1);
            }

            if (v51 >= v52)
            {
              v51 = v11[v13];
            }

            *(a2 - 1) = v51;
            v54 = *v11;
            v55 = v53 <= *v11;
            if (v53 > *v11)
            {
              v54 = v11[v13];
            }

            v11[v13] = v54;
            v48 = *v11;
            if (v55)
            {
              v48 = v53;
            }

            *v11 = v48;
          }

          else
          {
            v15 = &v11[v13];
            v16 = *v15;
            if (*v15 <= v14)
            {
              v17 = *(a2 - 1);
            }

            else
            {
              v17 = *v15;
            }

            if (v16 >= v14)
            {
              v16 = *(a2 - 1);
            }

            *(a2 - 1) = v16;
            *v15 = v17;
            v18 = *(a2 - 1);
            if (v18 <= *v11)
            {
              v19 = *v11;
            }

            else
            {
              v19 = *(a2 - 1);
            }

            if (v18 >= *v11)
            {
              v18 = *v11;
            }

            *(a2 - 1) = v18;
            v20 = *v15;
            v21 = v19 <= *v15;
            if (v19 > *v15)
            {
              v20 = *v11;
            }

            *v11 = v20;
            v22 = *v15;
            if (v21)
            {
              v22 = v19;
            }

            *v15 = v22;
            v23 = *(v15 - 1);
            v24 = *(a2 - 2);
            if (v23 <= v24)
            {
              v25 = *(a2 - 2);
            }

            else
            {
              v25 = *(v15 - 1);
            }

            if (v23 >= v24)
            {
              v23 = *(a2 - 2);
            }

            *(a2 - 2) = v23;
            *(v15 - 1) = v25;
            v26 = *(a2 - 2);
            v27 = v11[1];
            if (v26 <= v27)
            {
              v28 = v11[1];
            }

            else
            {
              v28 = *(a2 - 2);
            }

            if (v26 >= v27)
            {
              v26 = v11[1];
            }

            *(a2 - 2) = v26;
            v29 = *(v15 - 1);
            v30 = v28 <= v29;
            if (v28 > v29)
            {
              v29 = v11[1];
            }

            v11[1] = v29;
            v31 = *(v15 - 1);
            if (v30)
            {
              v31 = v28;
            }

            *(v15 - 1) = v31;
            v32 = v15[1];
            v33 = *(a2 - 3);
            if (v32 <= v33)
            {
              v34 = *(a2 - 3);
            }

            else
            {
              v34 = v15[1];
            }

            if (v32 >= v33)
            {
              v32 = *(a2 - 3);
            }

            *(a2 - 3) = v32;
            v15[1] = v34;
            v35 = *(a2 - 3);
            v36 = v11[2];
            if (v35 <= v36)
            {
              v37 = v11[2];
            }

            else
            {
              v37 = *(a2 - 3);
            }

            if (v35 >= v36)
            {
              v35 = v11[2];
            }

            *(a2 - 3) = v35;
            v38 = v15[1];
            v39 = v37 <= v38;
            if (v37 > v38)
            {
              v38 = v11[2];
            }

            v11[2] = v38;
            v41 = *v15;
            v40 = v15[1];
            if (v39)
            {
              v40 = v37;
            }

            if (v41 <= v40)
            {
              v42 = v40;
            }

            else
            {
              v42 = *v15;
            }

            if (v41 < v40)
            {
              v40 = *v15;
            }

            v43 = *(v15 - 1);
            if (v40 <= v43)
            {
              v44 = *(v15 - 1);
            }

            else
            {
              v44 = v40;
            }

            if (v40 >= v43)
            {
              v40 = *(v15 - 1);
            }

            v15[1] = v40;
            if (v43 <= v42)
            {
              v45 = v42;
            }

            else
            {
              v45 = v43;
            }

            if (v43 <= v42)
            {
              v46 = v44;
            }

            else
            {
              v46 = v42;
            }

            *(v15 - 1) = v45;
            *v15 = v46;
            v47 = *v11;
            *v11 = v46;
            *v15 = v47;
            v48 = *v11;
          }

          --a3;
          if ((a4 & 1) == 0 && *(v11 - 1) <= v48)
          {
            if (v48 <= *(a2 - 1))
            {
              v116 = v11 + 1;
              do
              {
                v11 = v116;
                if (v116 >= a2)
                {
                  break;
                }

                ++v116;
              }

              while (v48 <= *v11);
            }

            else
            {
              do
              {
                v115 = v11[1];
                ++v11;
              }

              while (v48 <= v115);
            }

            v117 = a2;
            if (v11 < a2)
            {
              v117 = a2;
              do
              {
                v118 = *--v117;
              }

              while (v48 > v118);
            }

            if (v11 < v117)
            {
              v119 = *v11;
              v120 = *v117;
              do
              {
                *v11 = v120;
                *v117 = v119;
                do
                {
                  v121 = v11[1];
                  ++v11;
                  v119 = v121;
                }

                while (v48 <= v121);
                do
                {
                  v122 = *--v117;
                  v120 = v122;
                }

                while (v48 > v122);
              }

              while (v11 < v117);
            }

            v123 = v11 - 1;
            if (v11 - 1 != v6)
            {
              *v6 = *v123;
            }

            a4 = 0;
            *v123 = v48;
            continue;
          }

          break;
        }

        if (v48 <= *(a2 - 1))
        {
          v58 = v11 + 1;
          do
          {
            v56 = v58;
            if (v58 >= a2)
            {
              break;
            }

            ++v58;
          }

          while (v48 <= *v56);
        }

        else
        {
          v56 = v11;
          do
          {
            v57 = v56[1];
            ++v56;
          }

          while (v48 <= v57);
        }

        v59 = a2;
        if (v56 < a2)
        {
          v59 = a2;
          do
          {
            v60 = *--v59;
          }

          while (v48 > v60);
        }

        v61 = v56;
        if (v56 < v59)
        {
          v62 = *v56;
          *v56 = *v59;
          v61 = v56 + 1;
          *v59 = v62;
        }

        v63 = v59 - 1;
        v64 = (v59 - 1) - v61;
        if (v64 < 505)
        {
          v65 = 0;
          v93 = v64 >> 2;
          v91 = 1;
LABEL_129:
          v97 = v93 + 1;
          v94 = (v93 + 1) / 2;
          v95 = v97 - v97 / 2;
          goto LABEL_130;
        }

        v65 = 0;
        v66 = 0;
        v67 = vdupq_n_s32(v48);
        do
        {
          if (v66)
          {
            if (v65)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v68 = 0uLL;
            v69 = v9;
            v70 = v7;
            v71 = 0uLL;
            do
            {
              v72 = vcgeq_s32(v67, *(v61 + v66));
              v73.i64[0] = v72.u32[2];
              v73.i64[1] = v72.u32[3];
              v74 = vandq_s8(v73, v8);
              v73.i64[0] = v72.u32[0];
              v73.i64[1] = v72.u32[1];
              v71 = vorrq_s8(vshlq_u64(v74, v70), v71);
              v68 = vorrq_s8(vshlq_u64(vandq_s8(v73, v8), v69), v68);
              v70 = vaddq_s64(v70, v10);
              v69 = vaddq_s64(v69, v10);
              v66 += 16;
            }

            while (v66 != 256);
            v75 = vorrq_s8(v68, v71);
            v66 = vorr_s8(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
            if (v65)
            {
LABEL_109:
              if (!v66)
              {
                goto LABEL_120;
              }

              goto LABEL_117;
            }
          }

          v76 = 0uLL;
          v77 = 0x3FFFFFFFFFFFFFFDLL;
          v78 = v9;
          v79 = v7;
          v80 = 0uLL;
          do
          {
            v81 = vrev64q_s32(*&v63[v77]);
            v82 = vcgtq_s32(vextq_s8(v81, v81, 8uLL), v67);
            v83.i64[0] = v82.u32[2];
            v83.i64[1] = v82.u32[3];
            v84 = vdupq_n_s64(1uLL);
            v85 = vandq_s8(v83, v84);
            v83.i64[0] = v82.u32[0];
            v83.i64[1] = v82.u32[1];
            v80 = vorrq_s8(vshlq_u64(v85, v79), v80);
            v76 = vorrq_s8(vshlq_u64(vandq_s8(v83, v84), v78), v76);
            v86 = vdupq_n_s64(4uLL);
            v79 = vaddq_s64(v79, v86);
            v78 = vaddq_s64(v78, v86);
            v77 -= 4;
          }

          while (v77 != -67);
          v87 = vorrq_s8(v76, v80);
          v65 = vorr_s8(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
          if (!v66)
          {
            goto LABEL_120;
          }

LABEL_117:
          if (v65)
          {
            do
            {
              v88 = __clz(__rbit64(v66));
              v66 &= v66 - 1;
              v89 = &v63[-__clz(__rbit64(v65))];
              v90 = v61[v88];
              v61[v88] = *v89;
              *v89 = v90;
              v65 &= v65 - 1;
            }

            while (v65 && v66);
          }

LABEL_120:
          v61 += 64 * (v66 == 0);
          v91 = v65 == 0;
          if (v65)
          {
            v92 = 0;
          }

          else
          {
            v92 = -256;
          }

          v63 = (v63 + v92);
        }

        while (v63 - v61 > 504);
        v93 = v63 - v61;
        if (!(v66 | v65))
        {
          goto LABEL_129;
        }

        v94 = v93 - 63;
        v95 = 64;
        v96 = 64;
        if (v66)
        {
          if (v65)
          {
            goto LABEL_139;
          }

LABEL_136:
          if (v94 >= 1)
          {
            v99 = 0;
            v65 = 0;
            v100 = v63;
            do
            {
              v101 = *v100--;
              v65 |= (v101 > v48) << v99++;
            }

            while (v94 != v99);
            goto LABEL_139;
          }

          if (v66)
          {
            v109 = 0;
          }

          else
          {
            v109 = v96;
          }

          v11 = &v61[v109];
LABEL_156:
          if (v66)
          {
            v63 -= v94;
            goto LABEL_158;
          }

          goto LABEL_162;
        }

LABEL_130:
        if (v94 < 1)
        {
          v66 = 0;
        }

        else
        {
          v98 = 0;
          v66 = 0;
          do
          {
            v66 |= (v61[v98] <= v48) << v98;
            ++v98;
          }

          while (v94 != v98);
        }

        v96 = v94;
        v94 = v95;
        if (v91)
        {
          goto LABEL_136;
        }

LABEL_139:
        if (v66 && v65)
        {
          do
          {
            v102 = __clz(__rbit64(v66));
            v66 &= v66 - 1;
            v103 = &v63[-__clz(__rbit64(v65))];
            v104 = v61[v102];
            v61[v102] = *v103;
            *v103 = v104;
            v65 &= v65 - 1;
          }

          while (v65 && v66);
        }

        if (v66)
        {
          v105 = 0;
        }

        else
        {
          v105 = v96;
        }

        v11 = &v61[v105];
        if (!v65)
        {
          goto LABEL_156;
        }

        if (v66)
        {
          do
          {
LABEL_158:
            v110 = __clz(v66) ^ 0x3F;
            v111 = &v11[v110];
            if (v63 != v111)
            {
              v112 = *v111;
              *v111 = *v63;
              *v63 = v112;
            }

            v66 &= ~(-1 << v110);
            --v63;
          }

          while (v66);
          v11 = v63 + 1;
        }

        else
        {
          do
          {
            v106 = __clz(v65) ^ 0x3F;
            v107 = &v63[-v106];
            if (v11 != v107)
            {
              v108 = *v107;
              *v107 = *v11;
              *v11 = v108;
            }

            v65 &= ~(-1 << v106);
            ++v11;
          }

          while (v65);
        }

LABEL_162:
        v113 = v11 - 1;
        if (v11 - 1 != v6)
        {
          *v6 = *v113;
        }

        *v113 = v48;
        if (v56 < v59)
        {
LABEL_167:
          result = std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v6, v11 - 1, a3, a4 & 1);
          v10 = v204;
          v9 = xmmword_1A6027760;
          v8 = v205;
          v7 = xmmword_1A6027770;
          a4 = 0;
          continue;
        }

        break;
      }

      v114 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v6, v11 - 1);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v11, a2);
      if (!result)
      {
        v8 = v205;
        v7 = xmmword_1A6027770;
        v10 = v204;
        v9 = xmmword_1A6027760;
        if (!v114)
        {
          goto LABEL_167;
        }

        continue;
      }

      break;
    }

    a2 = v11 - 1;
    v8 = v205;
    v7 = xmmword_1A6027770;
    v10 = v204;
    v9 = xmmword_1A6027760;
    if (!v114)
    {
      continue;
    }

    return result;
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (v52 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= v19)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

uint64_t vision::mod::ImageDescriptorBufferAbstract::deleteDescriptorAtIndex(vision::mod::ImageDescriptorBufferAbstract *this, int a2, uint64_t a3)
{
  v18 = a2;
  v4 = *(this + 18);
  v5 = v4 - 1;
  if (v4 <= a2)
  {
    syslog(5, "ERROR: Can't delete descriptor with given index: %d (highest descriptor index in the buffer is %d)\n", a2, v4 - 1);
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3708;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  if (v5 > a2)
  {
    DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, a2);
    v9 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, v5);
    memcpy(DataForKthDescriptor, v9, *(this + 8));
    v10 = *(this + 1);
    if (v10 != *(this + 2))
    {
      v17 = *(v10 + 8 * a2);
      v16 = *(v10 + 8 * v5);
      v11 = v16;
      v19 = &v17;
      *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(this + 32, v17) + 10) = v5;
      v19 = &v16;
      *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(this + 32, v11) + 10) = a2;
      v12 = *(this + 1);
      *(v12 + 8 * a2) = v16;
      *(v12 + 8 * v5) = v17;
    }

    if (a3)
    {
      std::vector<int>::push_back[abi:ne200100](a3, &v18);
    }
  }

  v13 = *(this + 1);
  if (v13 != *(this + 2))
  {
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__erase_unique<long long>(this + 4, *(v13 + 8 * v5));
    *(this + 2) -= 8;
  }

  --*(this + 9);
  return 3712;
}

void std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__erase_unique<long long>(uint64_t **a1, uint64_t a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      if (v6[4] >= a2)
      {
        v5 = v6;
      }

      v6 = v6[v6[4] < a2];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
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
        v9 = v5;
        do
        {
          v8 = v9[2];
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (*a1 == v5)
      {
        *a1 = v8;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);

      operator delete(v5);
    }
  }
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
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (v18 && (v18[3] & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (v23[3] & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  v7[1] = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = v7[2];
  v24[2] = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  v7[2] = v24;
  v23 = v7;
LABEL_68:
  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

uint64_t vision::mod::ImageDescriptorBufferAbstract::appendDescriptors(vision::mod::ImageDescriptorBufferAbstract *this, const vision::mod::ImageDescriptorBufferAbstract *a2)
{
  if (!*(a2 + 9))
  {
    return 3712;
  }

  v4 = (*(*this + 104))(this);
  if (v4 != (*(*a2 + 104))(a2))
  {
    syslog(5, "ERROR: Descriptors lenghts don't match\n");
    return 3708;
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v5 != v6)
  {
    v7 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v7 == v8 && *(a2 + 9) != 0)
    {
      goto LABEL_14;
    }

    v10 = (v6 - v5) >> 3;
    if (v10 != *(this + 9))
    {
      syslog(5, "ERROR: Descriptor ids values count does not match the descriptors count in the base buffer\n");
      return 3708;
    }

    goto LABEL_16;
  }

  v10 = *(this + 9);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  if (!v10)
  {
LABEL_16:
    v12 = a2 + 8;
    v13 = *(a2 + 9);
    if (v7 != v8 && v13 != (v8 - v7) >> 3)
    {
      syslog(5, "ERROR: Descriptor ids values count does not match the descriptors count in the appended buffer\n");
      return 3708;
    }

    goto LABEL_20;
  }

  if (v7 != v8)
  {
LABEL_14:
    syslog(5, "ERROR: Both descriptor buffers have to either contain descriptor ids values or not\n");
    return 3708;
  }

  v12 = a2 + 8;
  v13 = *(a2 + 9);
LABEL_20:
  if (*(this + 6) && *(a2 + 6) && v13 >= 1)
  {
    v14 = 0;
    while (1)
    {
      if (*(this + 5))
      {
        v15 = *(v7 + 8 * v14);
        v16 = (this + 40);
        v17 = *(this + 5);
        do
        {
          if (v17[4] >= v15)
          {
            v16 = v17;
          }

          v17 = v17[v17[4] < v15];
        }

        while (v17);
        if (v16 != (this + 40) && v15 >= v16[4])
        {
          break;
        }
      }

      if (++v14 == (v13 & 0x7FFFFFFF))
      {
        goto LABEL_32;
      }
    }

    syslog(5, "ERROR: One of the descriptor ids from the appended descriptor buffer already exists in the base descriptor buffer (id: %lld).\n");
    return 3708;
  }

LABEL_32:
  vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(this, v13 + v10, 1);
  v27 = v13;
  if (v13 >= 1)
  {
    v18 = 0;
    do
    {
      DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, v10 + v18);
      v20 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a2, v18);
      v21 = (*(*this + 104))(this);
      memcpy(DataForKthDescriptor, v20, v21);
      ++v18;
    }

    while ((v27 & 0x7FFFFFFF) != v18);
  }

  v22 = *(v12 + 1);
  v23 = *v12;
  if (*v12 == v22)
  {
    return 3712;
  }

  do
  {
    std::vector<long long>::push_back[abi:ne200100](this + 8, v23++);
  }

  while (v23 != v22);
  if (v27 < 1)
  {
    return 3712;
  }

  v24 = 0;
  v25 = v27 & 0x7FFFFFFF;
  v11 = 3712;
  do
  {
    *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(this + 32, *(*v12 + v24)) + 10) = v10;
    v24 += 8;
    LODWORD(v10) = v10 + 1;
    --v25;
  }

  while (v25);
  return v11;
}

void *vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(vision::mod::ImageDescriptorBufferAbstract *this, unint64_t a2, char a3)
{
  if (!(*(*this + 104))(this))
  {
    syslog(5, "ERROR: the resizeForDescriptorsCount method is probably called without ever initializing the descriptor buffer");
    exception = __cxa_allocate_exception(8uLL);
    v13 = 3710;
    goto LABEL_21;
  }

  if (*(this + 10) < a2 || (result = (*(*this + 104))(this), result > *(this + 8)))
  {
    v7 = (*(*this + 104))(this);
    v8 = *(this + 8);
    if (v7 <= v8)
    {
      v9 = *(this + 7);
      if (v9 && (a3 & 1) != 0)
      {
        if (*(this + 88) != 1)
        {
          v11 = malloc_type_malloc(v8 * a2, 0x8A324A9EuLL);
          *(this + 7) = v11;
          if (v11)
          {
            result = memcpy(v11, v9, *(this + 9) * *(this + 8));
            goto LABEL_11;
          }

          goto LABEL_20;
        }

        result = malloc_type_realloc(*(this + 7), v8 * a2, 0x48CE3D9FuLL);
LABEL_10:
        *(this + 7) = result;
        if (result)
        {
LABEL_11:
          *(this + 9) = a2;
          *(this + 10) = a2;
          *(this + 88) = 1;
          return result;
        }

LABEL_20:
        exception = __cxa_allocate_exception(8uLL);
        v13 = 3707;
LABEL_21:
        *exception = v13;
        __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
      }
    }

    else
    {
      *(this + 8) = (*(*this + 104))(this);
      v9 = *(this + 7);
    }

    if (v9)
    {
      if (*(this + 88) == 1)
      {
        free(v9);
      }
    }

    v10 = (*(*this + 104))(this);
    *(this + 8) = v10;
    result = malloc_type_malloc(v10 * a2, 0x570B8F8FuLL);
    goto LABEL_10;
  }

  *(this + 9) = a2;
  return result;
}

uint64_t vision::mod::ImageDescriptorBufferAbstract::createDeepCopyOfSubset(vision::mod::ImageDescriptorBufferAbstract *a1, char **a2)
{
  v4 = a2[1] - *a2;
  v5 = (*(*a1 + 104))(a1);
  v6 = (*(*a1 + 16))(a1);
  *(v6 + 88) = 1;
  v7 = *(a1 + 8);
  *(v6 + 64) = v7;
  *(v6 + 72) = v4 >> 3;
  *(v6 + 56) = malloc_type_malloc(v7 * (v4 >> 3), 0x9226E935uLL);
  *(v6 + 80) = v4 >> 3;
  if ((v6 + 8) != a2)
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((v6 + 8), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  if ((v4 >> 3) >= 1)
  {
    v8 = 0;
    v9 = (a1 + 40);
    v10 = *(v6 + 56);
    v11 = (v4 >> 3) & 0x7FFFFFFF;
    while (1)
    {
      v12 = *v9;
      if (!*v9)
      {
        break;
      }

      v13 = *&(*a2)[8 * v8];
      v14 = (a1 + 40);
      do
      {
        if (v12[4] >= v13)
        {
          v14 = v12;
        }

        v12 = v12[v12[4] < v13];
      }

      while (v12);
      if (v14 == v9 || v13 < v14[4])
      {
        break;
      }

      DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a1, *(v14 + 10));
      memcpy(v10, DataForKthDescriptor, v5);
      *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6 + 32, *&(*a2)[8 * v8]) + 10) = v8;
      ++v8;
      v10 += *(a1 + 8);
      if (v8 == v11)
      {
        return v6;
      }
    }

    if (v6)
    {
      (*(*v6 + 8))(v6);
      return 0;
    }
  }

  return v6;
}

void *std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void vision::mod::ImageDescriptorBufferAbstract::createEmptyCopy(vision::mod::ImageDescriptorBufferAbstract *this)
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = 3711;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

uint64_t vision::mod::ImageDescriptorBufferAbstract::initBufferWithData(vision::mod::ImageDescriptorBufferAbstract *this, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a2)
  {
    return 3709;
  }

  v10 = this + 40;
  v9 = *(this + 5);
  *(v10 - 3) = *(v10 - 4);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v9);
  *(v10 - 1) = v10;
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = a2;
  *(v10 + 3) = a3;
  *(v10 + 4) = a4;
  *(v10 + 5) = a4;
  result = 3712;
  v10[48] = a5;
  return result;
}

vision::mod::ImageDescriptorBufferAbstract *vision::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(vision::mod::ImageDescriptorBufferAbstract *this, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(this + 1) = 0;
  *this = &unk_1F1975D68;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = this + 40;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = a5;
  inited = vision::mod::ImageDescriptorBufferAbstract::initBufferWithData(this, a2, a3, a4, a5);
  if ((inited & 0x80) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = inited;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  return this;
}

void sub_1A5D87CBC(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*v3);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t vision::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(a1 + 8) = 0;
  v8 = a1 + 8;
  *a1 = &unk_1F1975D68;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  v9 = a1 + 40;
  *(a1 + 48) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = a6;
  inited = vision::mod::ImageDescriptorBufferAbstract::initBufferWithData(a1, a3, a4, a5, a6);
  if ((inited & 0x80) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = inited;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  if (*(a1 + 72) == (*(a2 + 8) - *a2) >> 3)
  {
    *(a1 + 16) = *(a1 + 8);
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(a1 + 40));
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = v9;
    v12 = *a2;
    v11 = *(a2 + 8);
    while (v12 != v11)
    {
      std::vector<long long>::push_back[abi:ne200100](v8, v12++);
    }

    v27 = 0;
    v28 = 0;
    v26 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v26, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    v14 = v26;
    if (((v27 - v26) >> 3) >= 1)
    {
      v15 = 0;
      if (((v27 - v26) >> 3) <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = ((v27 - v26) >> 3);
      }

      v17 = v26;
      do
      {
        v32 = v17;
        v18 = *v17++;
        *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&v29, v18) + 10) = v15++;
        --v16;
      }

      while (v16);
    }

    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(a1 + 40));
    v19 = v30;
    *(a1 + 32) = v29;
    *(a1 + 40) = v19;
    v20 = v31;
    *(a1 + 48) = v31;
    if (v20)
    {
      v19[2] = v9;
      v29 = &v30;
      v30 = 0;
      v31 = 0;
      v19 = 0;
    }

    else
    {
      *(a1 + 32) = v9;
    }

    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v19);
    if (v14)
    {
      operator delete(v14);
    }

    v13 = &CVML_status_ok;
  }

  else
  {
    syslog(5, "ERROR: the number of descriptor ids should match the number of descriptors in the buffer");
    v13 = &CVML_status_invalidParameter;
  }

  v21 = *v13;
  if ((v21 & 0x80) != 0)
  {
    v24 = (v21 + 128) | 0xE00;
    v25 = __cxa_allocate_exception(8uLL);
    *v25 = v24;
    __cxa_throw(v25, MEMORY[0x1E69E54B0], 0);
  }

  return a1;
}

void sub_1A5D87F08(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*v3);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

vision::mod::ImageDescriptorBufferAbstract *vision::mod::ImageDescriptorBufferAbstract::setDescriptorIdForKthDescriptor(vision::mod::ImageDescriptorBufferAbstract *this, int a2, uint64_t a3)
{
  v9[0] = a3;
  v3 = *(this + 1);
  if (v3 == *(this + 2))
  {
    syslog(5, "ERROR: Can't set descriptor id - ids vector is empty\n", v9[0]);
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3708;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__erase_unique<long long>(this + 4, *(v3 + 8 * a2));
  *(*(this + 1) + 8 * a2) = a3;
  v9[1] = v9;
  *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(this + 32, a3) + 10) = a2;
  return this;
}

uint64_t vision::mod::ObjectTrackerCorrelation::free(void **this)
{
  ctrTrackerInitialization_freeContext(this[4]);
  this[4] = 0;
  return 6784;
}

uint64_t vision::mod::ObjectTrackerCorrelation::init(vision::mod::ObjectTrackerCorrelation *this)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x20040769AC3DAuLL);
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x10000407D226C2BuLL);
    v2[1] = v3;
    if (v3)
    {
      v4 = malloc_type_calloc(1uLL, 0x860uLL, 0x1080040EFF975D0uLL);
      *v2 = v4;
      if (v4)
      {
        v5 = 2048;
        while (1)
        {
          v6 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
          *(*v2 + v5) = v6;
          if (!v6)
          {
            break;
          }

          v7 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
          *(*v2 + v5 + 8) = v7;
          if (!v7)
          {
            break;
          }

          v5 += 16;
          if (v5 == 2112)
          {
            v8 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
            *(*v2 + 2112) = v8;
            if (v8)
            {
              v9 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
              v10 = *v2;
              *(*v2 + 2120) = v9;
              if (v9)
              {
                bzero(v10, 0x400uLL);
                bzero((*v2 + 1024), 0x400uLL);
                v11 = malloc_type_calloc(1uLL, 0x3D160uLL, 0x10A004026F24330uLL);
                v2[2] = v11;
                if (v11)
                {
                  bzero(v11, 0x4000uLL);
                  bzero((v2[2] + 0x4000), 0x4000uLL);
                  bzero((v2[2] + 0x8000), 0x4000uLL);
                  bzero((v2[2] + 49152), 0x4000uLL);
                  bzero((v2[2] + 0x10000), 0x4000uLL);
                  bzero((v2[2] + 81920), 0x4000uLL);
                  bzero((v2[2] + 98304), 0x4000uLL);
                  bzero((v2[2] + 246072), 0x400uLL);
                  bzero((v2[2] + 247096), 0x400uLL);
                  bzero((v2[2] + 248120), 0x400uLL);
                  bzero((v2[2] + 249144), 0x400uLL);
                  v12 = 0;
                  v13 = 1;
                  while (1)
                  {
                    v14 = v13;
                    v15 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
                    *(v2[2] + 16 * v12 + 245992) = v15;
                    if (!v15)
                    {
                      break;
                    }

                    v16 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
                    *(v2[2] + 16 * v12 + 246000) = v16;
                    if (!v16)
                    {
                      break;
                    }

                    v13 = 0;
                    v12 = 1;
                    if ((v14 & 1) == 0)
                    {
                      v17 = 4;
                      v18 = 245936;
                      while (1)
                      {
                        v19 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
                        *(v2[2] + v18 - 8) = v19;
                        if (!v19)
                        {
                          goto LABEL_35;
                        }

                        v20 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
                        *(v2[2] + v18) = v20;
                        if (!v20)
                        {
                          goto LABEL_35;
                        }

                        v18 += 16;
                        if (!--v17)
                        {
                          v21 = 246032;
                          v22 = 3;
                          while (1)
                          {
                            v23 = malloc_type_calloc(0x40uLL, 4uLL, 0x100004052888210uLL);
                            *(v2[2] + v21 - 8) = v23;
                            if (!v23)
                            {
                              goto LABEL_35;
                            }

                            v24 = malloc_type_calloc(0x40uLL, 4uLL, 0x100004052888210uLL);
                            v25 = v2[2];
                            *(v25 + v21) = v24;
                            if (!v24)
                            {
                              goto LABEL_35;
                            }

                            v21 += 16;
                            if (!--v22)
                            {
                              *(v25 + 250184) = 0;
                              *(v2[2] + 250200) = vDSP_create_fftsetup(7uLL, 0);
                              v2[3] = tplTrackerResampler_alloc(128, 128);
                              v26 = malloc_type_calloc(1uLL, 0x10070uLL, 0x10C0040E2B89275uLL);
                              v2[4] = v26;
                              if (v26)
                              {
                                generate_size_search_stablizer(v26);
                                v27 = 0;
                                v28 = xmmword_1A6027770;
                                v29 = xmmword_1A6027760;
                                v30 = v2[4] + 96;
                                v31 = vdupq_n_s64(0x4001uLL);
                                v32 = vdupq_n_s64(4uLL);
                                do
                                {
                                  v33.i32[0] = v27;
                                  v33.i32[1] = v27 + 1;
                                  v33.u64[1] = vorr_s8(vdup_n_s32(v27), 0x300000002);
                                  v34 = vsqrtq_f32(vcvtq_f32_u32(v33));
                                  if (vuzp1_s16(vmovn_s64(vcgtq_u64(v31, v29)), *v28.i8).u8[0])
                                  {
                                    *(v30 - 12) = v34.i32[0];
                                  }

                                  if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4001uLL), *&v29)), *&v28).i8[2])
                                  {
                                    *(v30 - 8) = v34.i32[1];
                                  }

                                  if (vuzp1_s16(*&v28, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4001uLL), *&v28))).i32[1])
                                  {
                                    *(v30 - 4) = v34.i64[1];
                                  }

                                  v27 += 4;
                                  v28 = vaddq_s64(v28, v32);
                                  v29 = vaddq_s64(v29, v32);
                                  v30 += 16;
                                }

                                while (v27 != 16388);
                                v35 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
                                *(v2[4] + 65632) = v35;
                                if (v35)
                                {
                                  v36 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
                                  v37 = v2[4] + 0x10000;
                                  *(v2[4] + 65640) = v36;
                                  if (v36)
                                  {
                                    *(v37 + 88) = &cosineWindow;
                                    goto LABEL_36;
                                  }
                                }
                              }

                              goto LABEL_35;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            break;
          }
        }
      }
    }
  }

LABEL_35:
  ctrTrackerInitialization_freeContext(v2);
  v2 = 0;
LABEL_36:
  *(this + 4) = v2;
  if (v2)
  {
    return 6784;
  }

  else
  {
    return 6751;
  }
}

uint64_t vision::mod::ObjectTrackerCorrelation::update(uint64_t a1, CVPixelBufferRef pixelBuffer, float32x2_t **a3)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    return 6751;
  }

  v6 = *a3;
  if (a3[1] - *a3 != 80)
  {
    return 6780;
  }

  v11 = v3;
  v12 = v4;
  v7 = v6[3];
  v8 = vcvtq_f64_f32(vadd_f32(vrev64_s32(v7), v6[4]));
  v10 = v6[7].f32[1];
  result = ctrTrackerComputation_updateHistory(pixelBuffer, v5, *(a1 + 104), &v10, vcvtq_f64_f32(v7), vextq_s8(v8, v8, 8uLL));
  if (result == 128)
  {
    return 6784;
  }

  return result;
}

uint64_t vision::mod::ObjectTrackerCorrelation::track(uint64_t a1, __CVBuffer *a2, uint64_t *a3)
{
  v125 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 6751;
  }

  v7 = a1 + 40;
  v8 = *(a1 + 40);
  v119 = 0.0;
  v9 = *(a1 + 72);
  v10 = vsubq_f64(v9, v8);
  __asm { FMOV            V3.2D, #0.5 }

  v16 = vmulq_f64(vaddq_f64(v9, v8), _Q3);
  v17 = vmulq_f64(vmulq_f64(v10, vdupq_n_s64(0x40047AE140000000uLL)), _Q3);
  *__p = vsubq_f64(v16, v17);
  v121 = __p[0];
  v114 = _Q3;
  v115 = vaddq_f64(v16, v17);
  v122 = vextq_s8(v115, v115, 8uLL);
  v123 = v122;
  v117 = *__p;
  v124 = __p[1];
  v18 = v3[2];
  updated = tplTrackerResampler_setImage(v3[3], a2, __p);
  if (updated != 128)
  {
    goto LABEL_61;
  }

  v20 = vsubq_f64(v115, v117);
  v21 = v20.f64[0] / 127.0;
  *v20.f64 = v20.f64[1] / 127.0;
  v22 = v21;
  tplTrackerResampler_resample(v3[3], __p, 0x80u, 128, v3[2], &v3[2][1024], &v3[2][2048], v18 + 62542, *v20.f64, v22);
  if (v18[62542] > 0 || v18[62543] > 0 || v18[62544] < 127 || v18[62545] <= 126)
  {
    ctrTrackerComputation_repairNonValidRegion(v3[2], &v3[2][1024], &v3[2][2048], v18 + 62542);
  }

  ctrTrackerComputation_YCbCr2nRGB(v3[2], &v3[2][1024], &v3[2][2048], &v3[2][3072], &v3[2][4096], &v3[2][5120]);
  ctrTrackerComputation_normedGradient(&v3[2][3072], &v3[2][4096], &v3[2][5120], &v3[2][6144]);
  v23 = v3[2];
  v24 = ctrTrackerAlgorithm_computeFFTx(&v23[3072], &v23[4096], &v23[5120], &v23[6144], v3[4][4101].imagp, &v23[7178].imagp, &v23[15370].imagp, v23[15637].imagp);
  if (v24 != 128 || (v25 = v3[2], v24 = ctrTrackerAlgorithm_GaussianCorrelation(&v25[15370].imagp, &(*v3)[128], &v25[15374].imagp, (v25 + 246024), &v25[7178].imagp, &v25[11274].imagp, v25[15637].imagp), v24 != 128))
  {
    updated = v24;
LABEL_61:
    v54 = 0;
    goto LABEL_62;
  }

  v26 = v3[2];
  p_imagp = &v26[15374].imagp;
  v28 = *v3;
  imagp = v26[15637].imagp;
  vDSP_zvcmul((v26 + 245992), 1, *v3 + 132, 1, (v26 + 246008), 1, 0x2000uLL);
  v30 = 0;
  v31 = v26[15375].imagp;
  realp = v26[15376].realp;
  do
  {
    v31[v30] = v31[v30] * 0.5;
    realp[v30] = realp[v30] * 0.5;
    ++v30;
  }

  while (v30 != 0x2000);
  v33 = 0;
  v34 = v28[132].realp;
  v35 = *p_imagp;
  *v31 = (*v34 * **p_imagp) * 0.5;
  v36 = v28[132].imagp;
  v37 = v26[15375].realp;
  *realp = (*v36 * *v37) * 0.5;
  v31[64] = (v34[64] * v35[64]) * 0.5;
  v38 = v36[64] * v37[64];
  v39 = v34 + 192;
  v40 = v36 + 192;
  realp[64] = v38 * 0.5;
  v41 = v35 + 192;
  v42 = v37 + 192;
  v43 = v31 + 192;
  v44 = realp + 192;
  do
  {
    v45 = *(v39 - 64);
    v46 = *(v40 - 64);
    v47 = *v39;
    v48 = *v40;
    v49 = *(v41 - 64);
    v50 = *(v42 - 64);
    v51 = *v41;
    v52 = *v42;
    *(v43 - 64) = ((v45 * v49) - (*v39 * *v41)) * 0.5;
    *(v44 - 64) = ((v46 * v50) - (v48 * v52)) * 0.5;
    *v43 = ((v47 * v49) + (v45 * v51)) * 0.5;
    v33 += 2;
    v39 += 128;
    v40 += 128;
    v41 += 128;
    *v44 = ((v48 * v50) + (v46 * v52)) * 0.5;
    v42 += 128;
    v43 += 128;
    v44 += 128;
  }

  while (v33 < 0x7E);
  vDSP_fft2d_zrip(imagp, (v26 + 246008), 1, 0, 7uLL, 7uLL, -1);
  vDSP_ztoc((v26 + 246008), 1, &v26[11274].imagp, 2, 0x2000uLL);
  v53 = malloc_type_malloc(0xCuLL, 0x10000403E1C8BA9uLL);
  if (!v53)
  {
    return 6779;
  }

  v54 = v53;
  v55 = 0;
  v56 = 0;
  v57 = v3[1];
  v58 = &v3[2][11274].imagp;
  v59 = 0.0;
  do
  {
    if (*(v58 + 4 * v55) > v59)
    {
      v56 = v55;
      v59 = *(v58 + 4 * v55);
    }

    ++v55;
  }

  while (v55 != 0x4000);
  v60 = 0;
  *v53 = v59;
  if (v56 >= 0)
  {
    v61 = v56;
  }

  else
  {
    v61 = v56 + 127;
  }

  v62 = v56 - (v61 & 0xFFFFFF80);
  v53[1] = v61 >> 7;
  v53[2] = v62;
  if (v56 >= 8832)
  {
    v63 = -128;
  }

  else
  {
    v63 = 0;
  }

  v64 = v63 + (v61 >> 7) - 5;
  if (v56 >= 7552)
  {
    v65 = -128;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65 + (v61 >> 7) + 5;
  if (v62 >= 69)
  {
    v67 = -128;
  }

  else
  {
    v67 = 0;
  }

  v68 = v62 + v67 - 5;
  if (v62 >= 59)
  {
    v69 = -128;
  }

  else
  {
    v69 = 0;
  }

  v70 = v62 + v69 + 5;
  v71 = 0.0;
  v72 = 0.0;
  do
  {
    v73 = 0;
    if (v60 >= 0x40)
    {
      v74 = -128;
    }

    else
    {
      v74 = 0;
    }

    v75 = v74 + v60;
    v77 = v75 < v64 || v75 > v66;
    do
    {
      if (v77 || (v73 >= 0x40 ? (v78 = -128) : (v78 = 0), (v79 = v73 + v78, v79 >= v68) ? (v80 = v79 <= v70) : (v80 = 0), !v80))
      {
        v81 = *(v58 + 4 * v73);
        v71 = v71 + v81;
        v72 = v72 + (v81 * v81);
      }

      ++v73;
    }

    while (v73 != 128);
    ++v60;
    v58 += 512;
  }

  while (v60 != 128);
  v82 = v71 / 16263.0;
  v83 = sqrtf((v72 / 16263.0) - (v82 * v82));
  if (v83 == 0.0)
  {
    v84 = 0.0;
    if (LOBYTE(v57->imagp) != 1)
    {
LABEL_68:
      HIDWORD(v57->imagp) = 1098907648;
      v87 = v84 * 0.0625;
      *&v57->realp = v84 * 0.0625;
      LOBYTE(v57->imagp) = 1;
      goto LABEL_69;
    }
  }

  else
  {
    v84 = (v59 - v82) / v83;
    if ((v57->imagp & 1) == 0)
    {
      if (v84 >= 8.0)
      {
        *(&v57->imagp + 1) = v84;
        LODWORD(v57->realp) = 1065353216;
        LOBYTE(v57->imagp) = 1;
        v85 = 1.0;
LABEL_71:
        HIDWORD(v57->realp) = 0;
        *(a1 + 104) = 1;
        v119 = v85;
        v87 = v85;
        goto LABEL_72;
      }

      goto LABEL_68;
    }
  }

  v87 = v84 / *(&v57->imagp + 1);
  *&v57->realp = v87;
  v85 = 1.0;
  if (v87 > 1.0)
  {
    LODWORD(v57->realp) = 1065353216;
    goto LABEL_71;
  }

LABEL_69:
  if (v87 > 0.2)
  {
    v85 = v87;
    goto LABEL_71;
  }

  realp_high = HIDWORD(v57->realp);
  HIDWORD(v57->realp) = realp_high + 1;
  *(a1 + 104) = 0;
  v119 = v87;
  if (realp_high >= 30)
  {
    *(a1 + 105) = 1;
  }

LABEL_72:
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v90 = *(a1 + 40);
  v91 = *(a1 + 48);
  v92 = 0.0;
  if (v90 >= 0.0)
  {
    v93 = *(a1 + 40);
  }

  else
  {
    v93 = 0.0;
  }

  v94 = Width;
  v95 = v93;
  v96 = *(a1 + 72);
  v97 = *(a1 + 80);
  if (v96 < Width)
  {
    v94 = *(a1 + 72);
  }

  v98 = v94;
  if (v91 >= 0.0)
  {
    v92 = *(a1 + 48);
  }

  v99 = v92;
  v100 = Height;
  if (v97 < Height)
  {
    v100 = *(a1 + 80);
  }

  v101 = v100;
  if ((v96 - v90) * 0.5 * (v97 - v91) >= ((v98 - v95) * (v101 - v99)))
  {
    if (*(a1 + 104) == 1)
    {
      ctrTrackerComputation_updateLocation(&v3[2][11274].imagp, v7, v54[1], v54[2], *&(*v3)[133].realp, *&(*v3)[133].imagp);
    }

    goto LABEL_87;
  }

  ctrTrackerComputation_updateLocation(&v3[2][11274].imagp, v7, v54[1], v54[2], *&(*v3)[133].realp, *&(*v3)[133].imagp);
  if (*(a1 + 104) == 1)
  {
    v102 = *(a1 + 72);
    v103 = *(a1 + 40);
    v104 = vsubq_f64(v102, v103);
    v105 = vmulq_f64(vaddq_f64(v102, v103), v114);
    v106 = vmulq_f64(vmulq_f64(v104, vdupq_n_s64(0x3FF3333340000000uLL)), v114);
    *__p = vsubq_f64(v105, v106);
    v121 = __p[0];
    v116 = vaddq_f64(v105, v106);
    v118 = *__p;
    v122 = vextq_s8(v116, v116, 8uLL);
    v123 = v122;
    v124 = __p[1];
    updated = tplTrackerResampler_setImage(v3[3], a2, __p);
    if (updated == 128)
    {
      v107 = vsubq_f64(v116, v118);
      v108 = v107.f64[0] / 127.0;
      *v107.f64 = v107.f64[1] / 127.0;
      *&v108 = v108;
      tplTrackerResampler_resample(v3[3], __p, 0x80u, 128, v3[2], &v3[2][1024], &v3[2][2048], v18 + 62542, *v107.f64, *&v108);
      ctrTrackerComputation_YCbCr2nRGB(v3[2], &v3[2][1024], &v3[2][2048], &v3[2][3072], &v3[2][4096], &v3[2][5120]);
      ctrTrackerComputation_sizeAdaption(v3[2], *v3, v3[4], &v3[4][5].realp + 4, v7);
      goto LABEL_87;
    }

LABEL_62:
    free(v54);
    return updated;
  }

LABEL_87:
  free(v54);
  updated = ctrTrackerComputation_updateHistory(a2, *(a1 + 32), *(a1 + 104), &v119, *(a1 + 40), *(a1 + 72));
  if (updated == 128)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "unknown");
    v123.i32[3] = 0;
    LOBYTE(v124) = 0;
    HIDWORD(v124) = 0;
    v123.i64[0] = 0;
    v123.i16[4] = 0;
    v109.f64[0] = *(a1 + 88);
    v109.f64[1] = *(a1 + 64);
    v122.u64[1] = vrev64_s32(vcvt_f32_f64(vsubq_f64(v109, *(a1 + 40))));
    *v109.f64 = *(a1 + 56);
    v122.i64[0] = LODWORD(v109.f64[0]) | 0x7FC0000000000000;
    *&v110 = CVPixelBufferGetHeight(a2) - *(a1 + 64);
    v122.i32[1] = v110;
    *(&v124 + 1) = v87;
    v111 = a3[1];
    if (v111 >= a3[2])
    {
      v112 = std::vector<vision::mod::DetectedObject>::__emplace_back_slow_path<vision::mod::DetectedObject const&>(a3, __p);
    }

    else
    {
      vision::mod::DetectedObject::DetectedObject(a3[1], __p);
      v112 = v111 + 80;
      a3[1] = v111 + 80;
    }

    a3[1] = v112;
    if (SHIBYTE(v121) < 0)
    {
      operator delete(__p[0]);
    }

    return 6784;
  }

  return updated;
}

void sub_1A5D88EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v22 + 8) = v23;
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::DetectedObject::DetectedObject(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, "unknown");
  *(v4 + 3) = vneg_f32(0x3F0000003FLL);
  v5 = v4 + 24;
  *(v4 + 13) = 0;
  v4[56] = 0;
  *(v4 + 15) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  *(v4 + 24) = 0;
  *(v4 + 4) = *(a2 + 64);
  std::string::operator=(v4, a2);
  *v5 = *(a2 + 24);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

void sub_1A5D88FB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<vision::mod::DetectedObject>::__emplace_back_slow_path<vision::mod::DetectedObject const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  v18 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DetectedObject>>(v5);
  }

  v15 = 0;
  v16 = 80 * v2;
  vision::mod::DetectedObject::DetectedObject(80 * v2, a2);
  v17 = 80 * v2 + 80;
  v7 = *a1;
  v6 = a1[1];
  v19[0] = a1;
  v19[1] = &v21;
  v19[2] = &v22;
  v20 = 0;
  v8 = v16 + v7 - v6;
  v21 = v8;
  v22 = v8;
  if (v7 == v6)
  {
    v20 = 1;
  }

  else
  {
    v9 = v16 + v7 - v6;
    v10 = v7;
    do
    {
      vision::mod::DetectedObject::DetectedObject(v9, v10);
      v10 += 80;
      v9 = v22 + 80;
      v22 += 80;
    }

    while (v10 != v6);
    v20 = 1;
    do
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v7 += 80;
    }

    while (v7 != v6);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vision::mod::DetectedObject>,vision::mod::DetectedObject*>>::~__exception_guard_exceptions[abi:ne200100](v19);
  v11 = *a1;
  *a1 = v8;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<vision::mod::DetectedObject>::~__split_buffer(&v15);
  return v14;
}

void sub_1A5D8915C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<vision::mod::DetectedObject>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DetectedObject>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<vision::mod::DetectedObject>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 10;
      *(a1 + 16) = v2 - 10;
      if (*(v2 - 57) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vision::mod::DetectedObject>,vision::mod::DetectedObject*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 57);
      v3 -= 10;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t vision::mod::ObjectTrackerCorrelation::setTargetObjects(uint64_t a1, __CVBuffer *a2, float32x2_t **a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 6751;
  }

  for (i = 2048; i != 2112; i += 16)
  {
    bzero(*(*v3 + i), 0x8000uLL);
    bzero(*(*v3 + i + 8), 0x8000uLL);
  }

  bzero(*(*v3 + 2112), 0x8000uLL);
  bzero(*(*v3 + 2120), 0x8000uLL);
  bzero(*v3, 0x400uLL);
  bzero((*v3 + 1024), 0x400uLL);
  bzero(*(v3 + 16), 0x4000uLL);
  bzero((*(v3 + 16) + 0x4000), 0x4000uLL);
  bzero((*(v3 + 16) + 0x8000), 0x4000uLL);
  bzero((*(v3 + 16) + 49152), 0x4000uLL);
  bzero((*(v3 + 16) + 0x10000), 0x4000uLL);
  bzero((*(v3 + 16) + 81920), 0x4000uLL);
  bzero((*(v3 + 16) + 98304), 0x4000uLL);
  bzero((*(v3 + 16) + 246072), 0x400uLL);
  bzero((*(v3 + 16) + 247096), 0x400uLL);
  bzero((*(v3 + 16) + 248120), 0x400uLL);
  bzero((*(v3 + 16) + 249144), 0x400uLL);
  v8 = *(v3 + 16) + 250184;
  *(v8 + 8) = 0;
  *v8 = 0;
  bzero(*(*(v3 + 16) + 245992), 0x8000uLL);
  bzero(*(*(v3 + 16) + 246000), 0x8000uLL);
  bzero(*(*(v3 + 16) + 246008), 0x8000uLL);
  bzero(*(*(v3 + 16) + 246016), 0x8000uLL);
  v9 = 4;
  v10 = 245936;
  do
  {
    bzero(*(*(v3 + 16) + v10 - 8), 0x8000uLL);
    bzero(*(*(v3 + 16) + v10), 0x8000uLL);
    v10 += 16;
    --v9;
  }

  while (v9);
  v11 = 246032;
  v12 = 3;
  do
  {
    v13 = *(*(v3 + 16) + v11 - 8);
    v13[14] = 0uLL;
    v13[15] = 0uLL;
    v13[12] = 0uLL;
    v13[13] = 0uLL;
    v13[10] = 0uLL;
    v13[11] = 0uLL;
    v13[8] = 0uLL;
    v13[9] = 0uLL;
    v13[6] = 0uLL;
    v13[7] = 0uLL;
    v13[4] = 0uLL;
    v13[5] = 0uLL;
    v13[2] = 0uLL;
    v13[3] = 0uLL;
    *v13 = 0uLL;
    v13[1] = 0uLL;
    v14 = *(*(v3 + 16) + v11);
    v14[14] = 0uLL;
    v14[15] = 0uLL;
    v14[12] = 0uLL;
    v14[13] = 0uLL;
    v14[10] = 0uLL;
    v14[11] = 0uLL;
    v14[8] = 0uLL;
    v14[9] = 0uLL;
    v14[6] = 0uLL;
    v14[7] = 0uLL;
    v14[4] = 0uLL;
    v14[5] = 0uLL;
    v14[2] = 0uLL;
    v14[3] = 0uLL;
    *v14 = 0uLL;
    v14[1] = 0uLL;
    v11 += 16;
    --v12;
  }

  while (v12);
  bzero(*(*(v3 + 32) + 65632), 0x8000uLL);
  bzero(*(*(v3 + 32) + 65640), 0x8000uLL);
  v15 = *a3;
  if (a3[1] - *a3 != 80)
  {
    return 6780;
  }

  v16 = v15[3];
  v17 = vrev64_s32(v16);
  v18 = vcvtq_f64_f32(v16);
  v19 = vcvtq_f64_f32(vadd_f32(v17, v15[4]));
  *(a1 + 40) = v18;
  *(a1 + 56) = v18.f64[0];
  *(a1 + 64) = v19;
  *(a1 + 80) = v19;
  *(a1 + 96) = v18.f64[1];
  v20 = *(a1 + 32);
  v21 = vextq_s8(v19, v19, 8uLL);
  v22 = vsubq_f64(v21, v18);
  v23 = vaddq_f64(v21, v18);
  __asm { FMOV            V1.2D, #0.5 }

  v29 = vmulq_f64(v23, _Q1);
  v30 = vmulq_f64(vmulq_f64(v22, vdupq_n_s64(0x40047AE140000000uLL)), _Q1);
  v51 = vsubq_f64(v29, v30);
  v52 = v51.f64[0];
  v31 = vaddq_f64(v29, v30);
  *v53 = vextq_s8(v31, v31, 8uLL);
  *&v53[16] = *v53;
  v54 = v51.f64[1];
  *(*v20 + 2128) = vdivq_f64(vsubq_f64(*&v53[8], v51), vdupq_n_s64(0x405FC00000000000uLL));
  v32 = v20[2];
  result = tplTrackerResampler_setImage(v20[3], a2, &v51);
  if (result == 128)
  {
    v34 = *(*v20 + 2136);
    v35 = *(*v20 + 2128);
    tplTrackerResampler_resample(v20[3], v51.f64, 0x80u, 128, v20[2], (v20[2] + 0x4000), (v20[2] + 0x8000), v32 + 62542, v34, v35);
    if (v32[62542] > 0 || v32[62543] > 0 || v32[62544] < 127 || v32[62545] <= 126)
    {
      ctrTrackerComputation_repairNonValidRegion(v20[2], v20[2] + 0x4000, v20[2] + 0x8000, v32 + 62542);
    }

    ctrTrackerComputation_YCbCr2nRGB(v20[2], v20[2] + 0x4000, v20[2] + 0x8000, v20[2] + 49152, v20[2] + 0x10000, v20[2] + 81920);
    ctrTrackerComputation_normedGradient(v20[2] + 49152, v20[2] + 0x10000, v20[2] + 81920, v20[2] + 98304);
    v36 = v20[2];
    result = ctrTrackerAlgorithm_computeFFTx(v36 + 49152, v36 + 0x10000, v36 + 81920, v36 + 98304, *(v20[4] + 65624), (v36 + 114856), (*v20 + 2048), *(v36 + 250200));
    if (result == 128)
    {
      result = ctrTrackerAlgorithm_GaussianCorrelation(*v20 + 2048, *v20 + 2048, (v20[2] + 245992), (v20[2] + 246024), (v20[2] + 114856), (v20[2] + 180392), *(v20[2] + 250200));
      if (result == 128)
      {
        v49 = v20[4];
        v50 = v20;
        v37 = v20[2];
        v38 = (v37 + 115368);
        v39 = (v37 + 114856);
        __Setup = *(v37 + 250200);
        bzero((v37 + 114856), 0x10000uLL);
        v40 = 0;
        v41 = v37 + 180392;
        v42 = v37 + 114856;
        while (1)
        {
          v43 = 0;
          v44 = v38;
          do
          {
            v45 = (v40 * v40 + v43 * v43) * -0.5 / 25.0;
            v46 = expf(v45);
            *(v42 + 4 * v43) = v46;
            if (v40)
            {
              *(v41 + 4 * v43) = v46;
              if (!v43)
              {
                goto LABEL_24;
              }

              *v44 = v46;
              v47 = v39 + 0x4000 - (v40 << 7) + 128 - v43;
            }

            else
            {
              v47 = v44;
              if (!v43)
              {
                goto LABEL_24;
              }
            }

            *v47 = v46;
LABEL_24:
            ++v43;
            --v44;
          }

          while (v43 != 64);
          ++v40;
          v38 += 128;
          v41 -= 512;
          v42 += 512;
          if (v40 == 64)
          {
            vDSP_ctoz(v39, 2, v49 + 4102, 1, 0x2000uLL);
            vDSP_fft2d_zrip(__Setup, v49 + 4102, 1, 0, 7uLL, 7uLL, 1);
            result = ctrTrackerAlgorithm_packedDivision(v50[2] + 30749, v50[4] + 8204, *v50 + 264);
            if (result == 128)
            {
              *v50[1] = 0;
              ctrTrackerComputation_colorHistogram((v50[2] + 49152), (v50[2] + 0x10000), (v50[2] + 81920), *v50, *v50 + 1024);
              result = 6784;
            }

            break;
          }
        }
      }
    }
  }

  if (result == 128)
  {
    return 6784;
  }

  return result;
}

void vision::mod::ObjectTrackerCorrelation::~ObjectTrackerCorrelation(void **this)
{
  vision::mod::ObjectTrackerCorrelation::~ObjectTrackerCorrelation(this);

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1971770;
  ctrTrackerInitialization_freeContext(this[4]);
  this[4] = 0;
  *this = &unk_1F19763B0;
  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1A5D89CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v28 + 8);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::tuple<simd_float3x3,float>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v9 = *a1;
    v10 = v3 - *a1;
    v11 = v10 >> 6;
    v12 = (v10 >> 6) + 1;
    if (v12 >> 58)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = v4 - v9;
    if (v13 >> 5 > v12)
    {
      v12 = v13 >> 5;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFC0)
    {
      v14 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = (v11 << 6);
    v16 = a2[1];
    *v15 = *a2;
    v15[1] = v16;
    v17 = a2[3];
    v15[2] = a2[2];
    v15[3] = v17;
    v8 = (v11 << 6) + 64;
    v18 = &v15[-4 * (v10 >> 6)];
    memcpy(v18, v9, v10);
    *a1 = v18;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v3[2] = a2[2];
    v3[3] = v7;
    *v3 = v5;
    v3[1] = v6;
    v8 = (v3 + 4);
  }

  *(a1 + 8) = v8;
}

void sub_1A5D89F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNHomographyTrackerState;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5D8A040(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void *apple::vision::GreedyClusteringParamsWrapper::createClusteringHacksWrapper(void *result, int a2, int a3)
{
  *result = 0;
  result[1] = 0;
  if (a2 == -557125629 && (a3 == 1 || a3 == -557125630))
  {
    operator new();
  }

  return result;
}

void sub_1A5D8A8F0(_Unwind_Exception *a1)
{
  shared_owners = v1[3].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

BOOL apple::vision::GreedyClusteringParamsWrapper::isTorsoAvailable(apple::vision::GreedyClusteringParamsWrapper *this)
{
  v2 = [@"VNClusteringAlgorithm_GreedyWithTorso" UTF8String];
  v3 = strlen(v2);
  v4 = *(this + 5);
  if (v3 >= v4)
  {
    v5 = *(this + 5);
  }

  else
  {
    v5 = v3;
  }

  return !memcmp(*(this + 4), v2, v5) && v4 == v3;
}

void std::__shared_ptr_emplace<apple::vision::GreedyClusteringParamsWrapperRevision5Concrete>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_1F1971800;
  v1 = *(a1 + 80);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<apple::vision::GreedyClusteringParamsWrapperRevision5Concrete>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1971850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5D8B164(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

__CVBuffer *VNCropAndScalePixelBufferToPixelBuffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10)
{
  v35[1] = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = [VNImageBuffer alloc];
    v34 = @"VNImageBufferOption_DoNotCacheRepresentations";
    v35[0] = MEMORY[0x1E695E118];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v23 = objc_alloc_init(VNSession);
    v24 = [(VNImageBuffer *)v21 initWithCVPixelBuffer:a1 orientation:1 options:v22 session:v23];

    if (v24)
    {
      if (a9 <= 1.0 && a10 <= 1.0)
      {
        v25 = [(VNImageBuffer *)v24 width];
        v26 = [(VNImageBuffer *)v24 height];
        a7 = a7 * v25;
        a9 = a9 * v25;
        a8 = a8 * v26;
        a10 = a10 * v26;
      }

      if (a5)
      {
        v33 = 0;
        v27 = [(VNImageBuffer *)v24 augmentedCroppedBuffersWithWidth:a2 height:a3 format:a4 cropRect:0 options:a5 augmentationOptions:&v33 error:a7, a8, a9, a10];
        v28 = v33;
      }

      else
      {
        v31 = 0;
        v27 = [(VNImageBuffer *)v24 croppedBufferWithWidth:a2 height:a3 format:a4 cropRect:0 options:&v31 error:a7, a8, a9, a10];
        v28 = v31;
        values = v27;
        if (v27)
        {
          v27 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
          CVPixelBufferRelease(values);
        }
      }

      if (!a6 || !v28)
      {
        goto LABEL_22;
      }

      v29 = v28;
      v28 = v29;
    }

    else
    {
      if (!a6)
      {
        v27 = 0;
        v28 = 0;
        goto LABEL_22;
      }

      v29 = [VNError errorWithCode:-1 message:@"The image is invalid"];
      v27 = 0;
      v28 = 0;
    }

    *a6 = v29;
LABEL_22:

    objc_autoreleasePoolPop(v20);
    return v27;
  }

  v27 = 0;
  if (a6)
  {
    *a6 = _createInvalidArgumentError(0);
  }

  return v27;
}

uint64_t _createInvalidArgumentError(NSString *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"Invalid argument";
  }

  v3 = [VNError errorWithCode:-1 message:v2];

  return v3;
}

id _VNScenePrintsFromPixelBuffers(__CVBuffer *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, __CFError **a5)
{
  if (a1)
  {
    v10 = objc_autoreleasePoolPush();
    v33 = 0;
    v34 = 0;
    ConfiguredSceneprintRequest = _getConfiguredSceneprintRequest(a2, a4, &v34, &v33, a5);
    v12 = v34;
    v13 = v33;
    v14 = v13;
    v15 = 0;
    if (ConfiguredSceneprintRequest)
    {
      v16 = [v13 pixelsWideRange];
      v17 = [v16 idealDimension];

      v18 = [v14 pixelsHighRange];
      v19 = [v18 idealDimension];

      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      v22 = v17 / Width;
      v23 = v19 / Height;
      v24 = v22 < v23;
      v25 = 1.0 / v22 * v19;
      v26 = 1.0 / v23 * v17;
      if (v24)
      {
        v27 = Height;
      }

      else
      {
        v27 = v25;
      }

      if (v24)
      {
        v28 = v26;
      }

      else
      {
        v28 = Width;
      }

      if (v24)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = (Height - v25) * 0.5 + 0.0;
      }

      if (v24)
      {
        v30 = (Width - v26) * 0.5 + 0.0;
      }

      else
      {
        v30 = 0.0;
      }

      v31 = VNCropAndScalePixelBufferToPixelBuffers(a1, v17, v19, [v14 idealImageFormat], a3, a5, v30, v29, v28, v27);
      if (v31)
      {
        v15 = _performSceneprintRequestOnAugmentedBuffers(v12, v31, a5);
      }

      else
      {
        v15 = 0;
      }
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v15 = 0;
    if (a5)
    {
      *a5 = _createInvalidArgumentError(&cfstr_NoInputBuffer.isa);
    }
  }

  return v15;
}

BOOL _getConfiguredSceneprintRequest(uint64_t a1, uint64_t a2, VNCreateSceneprintRequest **a3, void *a4, uint64_t *a5)
{
  v10 = objc_alloc_init(VNCreateSceneprintRequest);
  [(VNRequest *)v10 setUsesCPUOnly:a2];
  if (a1 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = -a1;
  }

  v12 = v11 + 3737841664;
  if (a1 >= 1)
  {
    v13 = a1;
  }

  else
  {
    v13 = v12;
  }

  v24 = 0;
  v14 = [(VNRequest *)v10 setRevision:v13 error:&v24];
  v15 = v24;
  if (v14)
  {
    v16 = [(VNCreateSceneprintRequest *)v10 supportedImageSizeSet];
    v17 = [v16 count];
    v18 = v17 != 0;
    if (v17)
    {
      v19 = v10;
      *a3 = v10;
      *a4 = [v16 firstObject];
    }

    else if (a5)
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = [(VNRequest *)v10 specifier];
      v22 = [v20 stringWithFormat:@"could not obtain a supported image size for %@", v21];
      *a5 = [VNError errorWithCode:-1 message:v22];
    }
  }

  else
  {
    v18 = 0;
    if (a5)
    {
      *a5 = _createInvalidRequestRevisionError(a1, v15);
    }
  }

  return v18;
}

id _performSceneprintRequestOnAugmentedBuffers(VNCreateSceneprintRequest *a1, NSArray *a2, __CFError **a3)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v24 = a1;
  v27 = a2;
  v4 = [(NSArray *)v27 count];
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  if (v23)
  {
    v29[0] = v24;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = objc_autoreleasePoolPush();
        v7 = [(NSArray *)v27 objectAtIndex:v5];
        v8 = [VNImageRequestHandler alloc];
        v9 = [(VNImageRequestHandler *)v8 initWithCVPixelBuffer:v7 options:MEMORY[0x1E695E0F8]];
        v28 = 0;
        v10 = [(VNImageRequestHandler *)v9 performRequests:v26 error:&v28];
        v11 = v28;
        v12 = v11;
        if (v10)
        {
          v13 = [(VNRequest *)v24 results];
          v14 = [v13 firstObject];
          v15 = [v14 sceneprints];
          v16 = [v15 firstObject];

          if (v16)
          {
            v17 = [v16 descriptorData];
            [v23 addObject:v17];
          }
        }

        else if (a3)
        {
          *a3 = v11;
        }

        objc_autoreleasePoolPop(v6);
        if (!v10)
        {
          break;
        }

        if (v4 == ++v5)
        {
          goto LABEL_12;
        }
      }

      v18 = 0;
    }

    else
    {
LABEL_12:
      v18 = v23;
    }
  }

  else
  {
    if (a3)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
      v21 = [v19 stringWithFormat:@"unable to allocate results array for %@ elements", v20];
      *a3 = [VNError errorWithCode:-1 message:v21];
    }

    v18 = 0;
  }

  return v18;
}

uint64_t _createInvalidRequestRevisionError(uint64_t a1, NSError *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid requestRevision %d requested", a1];
  v5 = [VNError errorWithCode:-1 message:v4 underlyingError:v3];

  return v5;
}

__CVBuffer *VNCropAndScaleFromURLToPixelBuffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10)
{
  v35[1] = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = [VNImageBuffer alloc];
    v34 = @"VNImageBufferOption_DoNotCacheRepresentations";
    v35[0] = MEMORY[0x1E695E118];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v23 = objc_alloc_init(VNSession);
    v24 = [(VNImageBuffer *)v21 initWithURL:a1 orientation:0 options:v22 session:v23];

    if (v24 && [(VNImageBuffer *)v24 width]&& [(VNImageBuffer *)v24 height])
    {
      if (a9 <= 1.0 && a10 <= 1.0)
      {
        v25 = [(VNImageBuffer *)v24 width];
        v26 = [(VNImageBuffer *)v24 height];
        a7 = a7 * v25;
        a9 = a9 * v25;
        a8 = a8 * v26;
        a10 = a10 * v26;
      }

      if (a5)
      {
        v33 = 0;
        v27 = [(VNImageBuffer *)v24 augmentedCroppedBuffersWithWidth:a2 height:a3 format:a4 cropRect:0 options:a5 augmentationOptions:&v33 error:a7, a8, a9, a10];
        v28 = v33;
      }

      else
      {
        v31 = 0;
        v27 = [(VNImageBuffer *)v24 croppedBufferWithWidth:a2 height:a3 format:a4 cropRect:0 options:&v31 error:a7, a8, a9, a10];
        v28 = v31;
        values = v27;
        if (v27)
        {
          v27 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
          CVPixelBufferRelease(values);
        }
      }

      if (!a6 || !v28)
      {
        goto LABEL_24;
      }

      v29 = v28;
      v28 = v29;
    }

    else
    {
      if (!a6)
      {
        v27 = 0;
        v28 = 0;
LABEL_24:

        objc_autoreleasePoolPop(v20);
        return v27;
      }

      v29 = [VNError errorWithCode:-1 message:@"The image is invalid"];
      v27 = 0;
      v28 = 0;
    }

    *a6 = v29;
    goto LABEL_24;
  }

  v27 = 0;
  if (a6)
  {
    *a6 = _createInvalidArgumentError(0);
  }

  return v27;
}

id _VNScenePrintsFromURL(const __CFURL *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, __CFError **a5)
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = objc_autoreleasePoolPush();
    v36 = 0;
    v37 = 0;
    LODWORD(a4) = _getConfiguredSceneprintRequest(a2, a4, &v37, &v36, a5);
    v35 = v37;
    v11 = v36;
    v12 = v11;
    if (a4)
    {
      v13 = [v11 pixelsWideRange];
      v14 = [v13 idealDimension];

      v15 = [v12 pixelsHighRange];
      v16 = [v15 idealDimension];

      v17 = [VNImageBuffer alloc];
      v38 = @"VNImageBufferOption_DoNotCacheRepresentations";
      v39[0] = MEMORY[0x1E695E118];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      v19 = objc_alloc_init(VNSession);
      v20 = [(VNImageBuffer *)v17 initWithURL:a1 orientation:0 options:v18 session:v19];

      if (v20)
      {
        v21 = [(VNImageBuffer *)v20 width];
        v22 = [(VNImageBuffer *)v20 height];
        v23 = v14 / v21;
        v24 = v16 / v22;
        v25 = v23 < v24;
        v26 = 1.0 / v23 * v16;
        v27 = 1.0 / v24 * v14;
        if (v25)
        {
          v28 = v22;
        }

        else
        {
          v28 = v26;
        }

        if (v25)
        {
          v29 = v27;
        }

        else
        {
          v29 = v21;
        }

        if (v25)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = (v22 - v26) * 0.5 + 0.0;
        }

        if (v25)
        {
          v31 = (v21 - v27) * 0.5 + 0.0;
        }

        else
        {
          v31 = 0.0;
        }

        v32 = VNCropAndScaleFromURLToPixelBuffers(a1, v14, v16, [v12 idealImageFormat], a3, a5, v31, v30, v29, v28);
        if (v32)
        {
          v33 = _performSceneprintRequestOnAugmentedBuffers(v35, v32, a5);
        }

        else
        {
          v33 = 0;
        }
      }

      else if (a5)
      {
        [VNError errorWithCode:-1 message:@"The image is invalid", v35];
        *a5 = v33 = 0;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v33 = 0;
    if (a5)
    {
      *a5 = _createInvalidArgumentError(&cfstr_InvalidUrl.isa);
    }
  }

  return v33;
}

id VNScenePrintsFromURLUsesCPUOnly(const __CFURL *a1, uint64_t a2, const __CFDictionary *a3, __CFError **a4)
{
  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = -a2;
  }

  v5 = v4 + 3737841664;
  if (a2 >= 1)
  {
    a2 = a2;
  }

  else
  {
    a2 = v5;
  }

  return _VNScenePrintsFromURL(a1, a2, a3, 1, a4);
}

id VNScenePrintsFromURL(const __CFURL *a1, uint64_t a2, const __CFDictionary *a3, __CFError **a4)
{
  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = -a2;
  }

  v5 = v4 + 3737841664;
  if (a2 >= 1)
  {
    a2 = a2;
  }

  else
  {
    a2 = v5;
  }

  return _VNScenePrintsFromURL(a1, a2, a3, 0, a4);
}

uint64_t VNElementCountForScenePrintRequestRevision(int a1)
{
  if (a1 >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = -a1;
  }

  v2 = v1 + 3737841664;
  if (a1 >= 1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 != 1)
  {
    v5 = objc_alloc_init(VNCreateSceneprintRequest);
    if (![(VNRequest *)v5 setRevision:v3 error:0])
    {
      goto LABEL_14;
    }

    if ((v3 - 3737841671) < 2)
    {
      goto LABEL_13;
    }

    if (v3 == 2)
    {
      v4 = 2048;
      goto LABEL_15;
    }

    if (v3 == 3)
    {
LABEL_13:
      v4 = 768;
    }

    else
    {
LABEL_14:
      v4 = 0;
    }

LABEL_15:

    return v4;
  }

  return 2048;
}

uint64_t VNLengthInBytesForScenePrintRequestRevision(int a1)
{
  if (a1 >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = -a1;
  }

  v2 = v1 + 3737841664;
  if (a1 >= 1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 != 1)
  {
    v5 = objc_alloc_init(VNCreateSceneprintRequest);
    if (![(VNRequest *)v5 setRevision:v3 error:0])
    {
      goto LABEL_14;
    }

    if ((v3 - 3737841671) < 2)
    {
      goto LABEL_13;
    }

    if (v3 == 2)
    {
      v4 = 0x2000;
      goto LABEL_15;
    }

    if (v3 == 3)
    {
LABEL_13:
      v4 = 3072;
    }

    else
    {
LABEL_14:
      v4 = 0;
    }

LABEL_15:

    return v4;
  }

  return 0x2000;
}

CFMutableArrayRef VNSceneprintSupportedRevisions()
{
  v0 = objc_opt_class();

  return _createSupportedRevisionsArrayForRequestClass(v0);
}

CFMutableArrayRef _createSupportedRevisionsArrayForRequestClass(objc_class *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [(objc_class *)a1 supportedRevisions];
  v4 = [v3 count];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v4, MEMORY[0x1E695E9C0]);
  v6 = Mutable;
  if (Mutable)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___ZL45_createSupportedRevisionsArrayForRequestClassP10objc_class_block_invoke;
    v8[3] = &__block_descriptor_40_e12_v24__0Q8_B16l;
    v8[4] = Mutable;
    [v3 enumerateIndexesUsingBlock:v8];
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

void ___ZL45_createSupportedRevisionsArrayForRequestClassP10objc_class_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];

  CFArrayAppendValue(v2, v3);
}

CFMutableArrayRef VNDetectionPrintSupportedRevisions()
{
  v0 = objc_opt_class();

  return _createSupportedRevisionsArrayForRequestClass(v0);
}

id VNDetectionPrintShapes(int a1, uint64_t *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = -a1;
  }

  v3 = v2 + 3737841664;
  if (a1 >= 1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3;
  }

  v31 = 0;
  v22 = [VNDetectionprint knownTensorKeysForRequestRevision:v4 error:&v31];
  v5 = v31;
  if (v22)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v22, "count")}];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v22;
    v25 = v6;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v7)
    {
      v24 = *v28;
      while (2)
      {
        v8 = 0;
        v9 = v5;
        do
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * v8);
          v26 = v9;
          v11 = [VNDetectionprint tensorShapeForKey:v10 error:&v26];
          v5 = v26;

          if (!v11)
          {
            if (a2)
            {
              *a2 = _createInvalidRequestRevisionError(a1, v5);
            }

            v18 = 0;
            v17 = v25;
            goto LABEL_23;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v12, "channels")}];
            v32[0] = v13;
            v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v12, "height")}];
            v32[1] = v14;
            v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v12, "width")}];
            v32[2] = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
            [v25 setObject:v16 forKeyedSubscript:v10];
          }

          else
          {
            v12 = [v11 sizesAsNSNumberArray];
            [v25 setObject:v12 forKeyedSubscript:v10];
          }

          ++v8;
          v9 = v5;
        }

        while (v7 != v8);
        v7 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v17 = v25;
    v18 = v25;
LABEL_23:
  }

  else
  {
    v18 = 0;
    if (a2)
    {
      *a2 = _createInvalidRequestRevisionError(a1, v5);
    }
  }

  return v18;
}

id _VNDetectionPrintsFromPixelBuffers(__CVBuffer *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, __CFError **a5)
{
  v67[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = VNDetectionPrintShapes(a2, a5);
    v52 = v9;
    if (!v9)
    {
      v40 = 0;
LABEL_50:

      return v40;
    }

    v51 = [v9 allKeys];
    v46 = [v51 count];
    v10 = objc_alloc_init(VNCreateDetectionprintRequest);
    if (a2 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = -a2;
    }

    v12 = v11 + 3737841664;
    if (a2 >= 1)
    {
      v13 = a2;
    }

    else
    {
      v13 = v12;
    }

    v65 = 0;
    v56 = v10;
    v14 = [(VNRequest *)v10 setRevision:v13 error:&v65];
    v53 = v65;
    if (!v14)
    {
      v40 = 0;
      if (a5)
      {
        *a5 = _createInvalidRequestRevisionError(a2, v53);
      }

      goto LABEL_49;
    }

    [(VNRequest *)v56 setUsesCPUOnly:a4];
    v15 = [(VNImageBasedRequest *)v56 supportedImageSizeSet];
    v47 = [v15 firstObject];

    if (v47)
    {
      v16 = [v47 pixelsWideRange];
      v17 = [v16 idealDimension];

      v18 = [v47 pixelsHighRange];
      v19 = [v18 idealDimension];

      v20 = [v47 idealImageFormat];
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      v23 = VNCropAndScalePixelBufferToPixelBuffers(a1, v17, v19, v20, a3, a5, 0.0, 0.0, Width, Height);
      v50 = v23;
      if (v23)
      {
        v49 = [(__CVBuffer *)v23 count];
        v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v49];
        v67[0] = v56;
        v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
        if (v49)
        {
          v58 = 0;
          while (1)
          {
            context = objc_autoreleasePoolPush();
            v24 = [(__CVBuffer *)v50 objectAtIndex:v58];
            v25 = [VNImageRequestHandler alloc];
            v26 = [(VNImageRequestHandler *)v25 initWithCVPixelBuffer:v24 options:MEMORY[0x1E695E0F8]];
            v64 = 0;
            v54 = v26;
            LOBYTE(v24) = [(VNImageRequestHandler *)v26 performRequests:v48 error:&v64];
            v27 = v64;
            v28 = v27;
            if (v24)
            {
              v44 = [(VNRequest *)v56 results];
              v45 = [v44 firstObject];
              v29 = [v45 detectionprint];
              v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v46];
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              v31 = v51;
              v32 = [v31 countByEnumeratingWithState:&v60 objects:v66 count:16];
              if (v32)
              {
                v33 = *v61;
                while (2)
                {
                  v34 = 0;
                  v35 = v28;
                  do
                  {
                    if (*v61 != v33)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v36 = *(*(&v60 + 1) + 8 * v34);
                    v59 = v35;
                    v37 = [v29 tensorForKey:v36 error:&v59];
                    v28 = v59;

                    if (!v37)
                    {
                      if (a5)
                      {
                        *a5 = CFRetain(v28);
                      }

                      v39 = 0;
                      goto LABEL_29;
                    }

                    v38 = [v37 descriptorData];
                    [v30 setObject:v38 forKeyedSubscript:v36];

                    ++v34;
                    v35 = v28;
                  }

                  while (v32 != v34);
                  v32 = [v31 countByEnumeratingWithState:&v60 objects:v66 count:16];
                  if (v32)
                  {
                    continue;
                  }

                  break;
                }
              }

              [v43 addObject:v30];
              v39 = 1;
LABEL_29:
            }

            else
            {
              v39 = 0;
              if (a5)
              {
                *a5 = CFRetain(v27);
              }
            }

            objc_autoreleasePoolPop(context);
            if ((v39 & 1) == 0)
            {
              break;
            }

            if (++v58 == v49)
            {
              goto LABEL_32;
            }
          }

          v40 = 0;
        }

        else
        {
LABEL_32:
          v40 = v43;
        }
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      if (a5)
      {
        v41 = 0;
        [VNError errorWithCode:-1 message:@"no supported image size available"];
        *a5 = v40 = 0;
LABEL_48:

LABEL_49:
        goto LABEL_50;
      }

      v40 = 0;
    }

    v41 = v47;
    goto LABEL_48;
  }

  v40 = 0;
  if (a5)
  {
    *a5 = _createInvalidArgumentError(&cfstr_NoInputBuffer.isa);
  }

  return v40;
}

uint64_t __Block_byref_object_copy__870(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5D8E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  vision::mod::ImageAnalyzer_Options::~ImageAnalyzer_Options(va);

  _Unwind_Resume(a1);
}

vision::mod::ImageAnalyzer_Options *vision::mod::ImageAnalyzer_Options::ImageAnalyzer_Options(vision::mod::ImageAnalyzer_Options *this)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = xmmword_1A6038B40;
  *(this + 10) = 0;
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
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 192) = 0;
  *(this + 104) = 0;
  *(this + 51) = 0;
  *(this + 392) = 0u;
  *(this + 424) = 0u;
  *(this + 55) = 0x12B00000200;
  *(this + 56) = 0x3D4CCCCD3EE66666;
  *(this + 114) = 0;
  *(this + 230) = 1;
  v3 = xmmword_1A6038B50;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 58) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(this + 464, &v3, v4, 4uLL);
  *(this + 568) = 0u;
  *(this + 69) = 0;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 70) = this + 568;
  *(this + 73) = 0;
  *(this + 74) = 0x12000000200;
  return this;
}

void sub_1A5D8EB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 + 415) < 0)
  {
    operator delete(*v11);
  }

  if (*(v9 + 383) < 0)
  {
    operator delete(*(v9 + 360));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 335) < 0)
  {
    operator delete(*(v9 + 312));
  }

  if (*(v9 + 311) < 0)
  {
    operator delete(*(v9 + 288));
  }

  if (*(v9 + 287) < 0)
  {
    operator delete(*(v9 + 264));
  }

  if (*(v9 + 263) < 0)
  {
    operator delete(*(v9 + 240));
  }

  if (*(v9 + 239) < 0)
  {
    operator delete(*(v9 + 216));
  }

  if (*(v9 + 215) < 0)
  {
    operator delete(*(v9 + 192));
  }

  if (*(v9 + 191) < 0)
  {
    operator delete(*(v9 + 168));
  }

  if (*(v9 + 167) < 0)
  {
    operator delete(*(v9 + 144));
  }

  if (*(v9 + 143) < 0)
  {
    operator delete(*(v9 + 120));
  }

  if (*(v9 + 119) < 0)
  {
    operator delete(*(v9 + 96));
  }

  if (*(v9 + 95) < 0)
  {
    operator delete(*(v9 + 72));
  }

  if (*(v9 + 71) < 0)
  {
    operator delete(*v10);
  }

  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}