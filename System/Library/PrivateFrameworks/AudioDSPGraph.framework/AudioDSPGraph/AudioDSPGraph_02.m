uint64_t boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **boost::container::dtl::value_init<applesauce::CF::DictionaryRef>::~value_init(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t boost::container::dtl::value_destructor<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>::~value_destructor(uint64_t a1)
{
  v2 = *(*a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>*,boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>>(boost::container *a1, char *a2, void *a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  if (v4 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x7FFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0x7FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 59)
  {
LABEL_31:
    boost::container::throw_length_error(a1, a2);
  }

  v14 = *a2;
  v15 = operator new(16 * v9);
  v16 = v15;
  v17 = *a2;
  v18 = *(a2 + 1);
  v19 = *a2 + 16 * v18;
  v20 = v15;
  if (*a2 != a3)
  {
    v21 = *a2;
    v20 = v15;
    do
    {
      *v20 = *v21;
      *(v20 + 1) = v21[1];
      v21[1] = 0;
      v21 += 2;
      v20 += 16;
    }

    while (v21 != a3);
  }

  *v20 = *a4;
  *(v20 + 1) = *(a4 + 8);
  *(a4 + 8) = 0;
  if (v19 != a3)
  {
    v22 = v20 + 24;
    v23 = a3;
    do
    {
      *(v22 - 2) = *v23;
      *v22 = v23[1];
      v22 += 2;
      v23[1] = 0;
      v23 += 2;
    }

    while (v23 != v19);
  }

  if (v17)
  {
    if (v18)
    {
      v24 = (v17 + 8);
      do
      {
        if (*v24)
        {
          CFRelease(*v24);
        }

        v24 += 2;
        --v18;
      }

      while (v18);
    }

    if (a2 + 24 != *a2)
    {
      operator delete(*a2);
    }
  }

  v25 = *(a2 + 1) + 1;
  *a2 = v16;
  *(a2 + 1) = v25;
  *(a2 + 2) = v9;
  *a1 = &v16[a3 - v14];
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::priv_insert_unique_prepare(unsigned int *a1, unsigned int **a2, unsigned int a3, unsigned int **a4)
{
  if (*a2 != a1)
  {
    v4 = (*a2 - a1) >> 4;
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[4 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 4;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

void *CA::DSP::AUDSPGraph::GraphPropertyCache::Find(CA::DSP::AUDSPGraph::GraphPropertyCache *this, uint64_t *a2, unsigned int a3)
{
  v10 = a3;
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::find(&v9, a2, &v10);
  v6 = a2[1];
  if (*a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v9 == (*a2 + (v6 << 6)))
  {
    v8 = 0;
    *this = -10879;
  }

  else
  {
    *this = v9 + 2;
    v8 = 1;
  }

  *(this + 8) = v8;
  return result;
}

{
  v3 = *a2;
  v4 = a2[1];
  v16 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,true>,unsigned int>(&v15, &v16, v3 + (v4 << 6), a3);
  v10 = a2[1];
  if (*a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = (*a2 + (v10 << 6));
  v13 = v15;
  if (v15 != v12)
  {
    if (!v15)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*v15 > a3)
    {
      v13 = v12;
    }
  }

  if (v13 == v12)
  {
    v14 = 0;
    *this = -10879;
  }

  else
  {
    *this = v13 + 2;
    v14 = 1;
  }

  *(this + 8) = v14;
  return result;
}

void CA::DSP::AUDSPGraph::GraphPropertyValue::SetCF(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    *a1 = -10851;
    *(a1 + 16) = 0;
    return;
  }

  CFRetain(*a3);
  v7 = CFGetTypeID(v4);
  if (v7 != CFDictionaryGetTypeID())
  {
    cf = 0;
    CFRelease(v4);
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  cf = v4;
  v8 = applesauce::CF::details::at_key<__CFString const*>(v4, @"UInt32");
  if (v8)
  {
    v9 = applesauce::CF::convert_as<unsigned int,0>(v8);
    __src = v9;
    v35[0] = BYTE4(v9);
    if ((v9 & 0x100000000) != 0)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a2 + 16), &__src, v35, 4uLL);
LABEL_25:
      v22 = CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(a2);
      CA::DSP::ReferenceCounted<__CFDictionary const*>::ReferenceCounted(v22, *a3);
      *(a2 + 8) = 1;
      *(a2 + 48) = 1;
      v23 = *(a2 + 16);
      v24 = *(a2 + 24) - v23;
      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 16) = 1;
      goto LABEL_26;
    }
  }

  else
  {
    v35[0] = 0;
    __src = 0;
  }

  v10 = applesauce::CF::details::at_key<__CFString const*>(v4, @"UInt64");
  if (v10)
  {
    v32 = applesauce::CF::convert_as<unsigned long long,0>(v10);
    v33[0] = v11;
    if (v11)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a2 + 16), &v32, v33, 8uLL);
      goto LABEL_25;
    }
  }

  else
  {
    v32 = 0;
    v33[0] = 0;
  }

  v12 = applesauce::CF::details::at_key<__CFString const*>(v4, @"Float32");
  if (v12)
  {
    v13 = applesauce::CF::convert_as<float,0>(v12);
    v30 = v13;
    v31[0] = BYTE4(v13);
    if (HIDWORD(v13))
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a2 + 16), &v30, v31, 4uLL);
      goto LABEL_25;
    }
  }

  else
  {
    v31[0] = 0;
    v30 = 0;
  }

  v14 = applesauce::CF::details::at_key<__CFString const*>(v4, @"Float64");
  if (v14)
  {
    v28 = applesauce::CF::convert_as<double,0>(v14);
    v29[0] = v15;
    if (v15)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a2 + 16), &v28, v29, 8uLL);
      goto LABEL_25;
    }
  }

  else
  {
    v28 = 0;
    v29[0] = 0;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,__CFString const*>(&v37, v4, @"Data");
  if (v38 == 1)
  {
    v16 = v37;
    if (v37)
    {
      CFRetain(v37);
      CFRelease(v16);
      CFRelease(v16);
      BytePtr = CFDataGetBytePtr(v16);
      v18 = CFDataGetBytePtr(v16);
      Length = CFDataGetLength(v16);
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((a2 + 16), BytePtr, &v18[Length], &v18[Length] - BytePtr);
      goto LABEL_25;
    }
  }

  v20 = applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(&v37, &cf);
  v26 = 0;
  applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(v20, *v37, @"Value", &v26);
  v21 = v37;
  applesauce::CF::TypeRef::~TypeRef(&v37);
  applesauce::CF::TypeRef::~TypeRef(&v26);
  v27 = v21;
  if (v21)
  {
    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a2 + 16), &v27, &v28, 8uLL);
    goto LABEL_25;
  }

  *a1 = -10851;
  *(a1 + 16) = 0;
LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }
}

const void **CA::DSP::Graph::SetProperty(CA::DSP::Graph *this, uint64_t a2, const void *a3, void *a4, uint64_t a5)
{
  v11 = 0;
  v6 = 0;
  if (!CADSPGraphSetProperty(a2, a3, a4, a5))
  {
    v6 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
    v11 = v6;
  }

  v10 = v6;
  if (v6)
  {
    v10 = 0;
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v8 = 0;
    v11 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v9 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *(this + 8) = 1;
  }

  return result;
}

uint64_t boost::container::flat_map<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,void,void>>::priv_subscript(uint64_t a1, unsigned int *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v46 = *a1;
  if (v46)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,false>,unsigned int>(v43, &v46, v46 + (v2 << 6), *a2);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = v6 + (v7 << 6);
  v10 = v43[0];
  if (v43[0] == v9)
  {
    goto LABEL_14;
  }

  if (!v43[0])
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*a2 < *v43[0])
  {
LABEL_14:
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v11 = *MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    *&v42 = *MEMORY[0x1E69E3C08];
    v12 = *a2;
    v31 = v12;
    v33 = 0;
    v39 = 0;
    *(&v40 + 1) = 0;
    v41 = 0uLL;
    v38 = 0;
    LODWORD(v46) = v12;
    v32 = 0;
    v47 = 0;
    v48 = 0;
    v50 = 0;
    v51 = v11;
    v49 = 0uLL;
    v13 = "this->priv_in_range_or_end(hint)";
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = v11;
    v52 = 0;
    v14 = "flat_tree.hpp";
    v15 = 879;
    v16 = "insert_unique";
    v43[1] = &v46;
    v43[2] = a1;
    if (v6 <= v43[0] && v43[0] <= v9)
    {
      v44 = 0;
      if (v43[0] == v9)
      {
        goto LABEL_20;
      }

      if (!v43[0])
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (v12 < *v43[0])
      {
LABEL_20:
        v44 = v43[0];
        if (v43[0] != v6)
        {
          if (!v43[0])
          {
            __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
          }

          v17 = *(v43[0] - 64);
          if (v17 >= v12)
          {
            if (v12 >= v17)
            {
              v44 = (v43[0] - 64);
              goto LABEL_40;
            }

            v45 = v43[0] - 64;
            if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_insert_unique_prepare(v6, &v45, &v46, &v44))
            {
LABEL_40:
              if (!*a1 && v44)
              {
                __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
              }

              v30 = v44;
LABEL_43:
              if (v49)
              {
                *(&v49 + 1) = v49;
                (*(*v51 + 24))(v51, v49, v50 - v49, 1);
              }

              CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v47);
              v10 = v30;
              v43[0] = v30;
              if (v34)
              {
                v35 = v34;
                (*(*v37 + 24))(v37, v34, v36 - v34, 1);
              }

              CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v32);
              if (*(&v40 + 1))
              {
                *&v41 = *(&v40 + 1);
                (*(*v42 + 24))(v42, *(&v40 + 1), *(&v41 + 1) - *(&v40 + 1), 1);
              }

              CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v39);
              if (!v10)
              {
                __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
              }

              goto LABEL_50;
            }
          }
        }
      }

      else
      {
        v45 = v9;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_insert_unique_prepare(v43[0], &v45, &v46, &v44))
        {
          goto LABEL_40;
        }
      }

      v18 = v44;
      v19 = *a1;
      if (*a1 > v44)
      {
        goto LABEL_53;
      }

      v20 = *(a1 + 8);
      if (!v19 && v20)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v21 = v19 + (v20 << 6);
      if (v44 > v21)
      {
LABEL_53:
        v13 = "this->priv_in_range_or_end(position)";
        v15 = 1862;
        v14 = "vector.hpp";
        v16 = "emplace";
      }

      else
      {
        v22 = *(a1 + 16);
        if (v22 >= v20)
        {
          if (v22 == v20)
          {
            boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>>(&v30, a1, v44, &v46);
          }

          else
          {
            if (v21 == v44)
            {
              *v21 = v46;
              v27 = v47;
              v47 = 0;
              *(v21 + 8) = v27;
              *(v21 + 16) = v48;
              *(v21 + 32) = 0;
              *(v21 + 40) = 0;
              *(v21 + 24) = 0;
              *(v21 + 48) = v51;
              *(v21 + 24) = v49;
              *(v21 + 40) = v50;
              v50 = 0;
              v49 = 0uLL;
              *(v21 + 56) = v52;
              ++*(a1 + 8);
            }

            else
            {
              v23 = v21 - 64;
              *v21 = *(v21 - 64);
              v24 = *(v21 - 56);
              *(v21 - 56) = 0;
              *(v21 + 8) = v24;
              *(v21 + 16) = *(v21 - 48);
              *(v21 + 24) = *(v21 - 40);
              v25 = *(v21 - 16);
              *(v21 + 40) = *(v21 - 24);
              *(v21 + 48) = v25;
              *(v21 - 40) = 0;
              *(v21 - 32) = 0;
              *(v21 - 24) = 0;
              *(v21 + 56) = *(v21 - 8);
              ++*(a1 + 8);
              if ((v21 - 64) != v18)
              {
                do
                {
                  v26 = (v23 - 64);
                  boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>::operator=(v23, v23 - 64);
                  v23 = v26;
                }

                while (v26 != v18);
              }

              boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>::operator=(v18, &v46);
            }

            v30 = v18;
          }

          goto LABEL_43;
        }

        v13 = "this->m_holder.capacity() >= this->m_holder.m_size";
        v15 = 2821;
        v14 = "vector.hpp";
        v16 = "priv_insert_forward_range";
      }
    }

    __assert_rtn(v16, v14, v15, v13);
  }

LABEL_50:
  v28 = *MEMORY[0x1E69E9840];
  return v10 + 8;
}

void sub_1C91CB520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*(a1 + 48), v2, *(a1 + 40) - v2);
  }

  CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted((a1 + 8));
  return a1;
}

const void **boost::container::dtl::value_init<CA::DSP::AUDSPGraph::GraphPropertyValue>::~value_init(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*(a1 + 40), v2, *(a1 + 32) - v2);
  }

  return CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(a1);
}

uint64_t *boost::container::dtl::value_destructor<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>::~value_destructor(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    *(v2 + 32) = v3;
    std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*(v2 + 48), v3, *(v2 + 40) - v3);
  }

  CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted((v2 + 8));
  return a1;
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>>(boost::container *a1, char *a2, char *a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  if (v4 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x1FFFFFFFFFFFFFFLL;
  if (v4 == 0x1FFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0x1FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 57)
  {
LABEL_31:
    boost::container::throw_length_error(a1, a2);
  }

  v14 = *a2;
  v15 = operator new(v9 << 6);
  v16 = v15;
  v17 = *a2;
  v18 = (*a2 + (*(a2 + 1) << 6));
  v19 = v15;
  if (*a2 != a3)
  {
    v20 = *a2;
    v19 = v15;
    do
    {
      *v19 = *v20;
      v21 = *(v20 + 1);
      *(v20 + 1) = 0;
      *(v19 + 1) = v21;
      v19[16] = v20[16];
      *(v19 + 6) = *(v20 + 6);
      *(v19 + 24) = *(v20 + 24);
      *(v19 + 5) = *(v20 + 5);
      *(v20 + 3) = 0;
      *(v20 + 4) = 0;
      *(v20 + 5) = 0;
      v19[56] = v20[56];
      v20 += 64;
      v19 += 64;
    }

    while (v20 != a3);
  }

  *v19 = *a4;
  v22 = *(a4 + 8);
  *(a4 + 8) = 0;
  *(v19 + 1) = v22;
  v19[16] = *(a4 + 16);
  *(v19 + 4) = 0;
  *(v19 + 5) = 0;
  *(v19 + 3) = 0;
  *(v19 + 6) = *(a4 + 48);
  *(v19 + 24) = *(a4 + 24);
  *(v19 + 5) = *(a4 + 40);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  v19[56] = *(a4 + 56);
  if (v18 != a3)
  {
    v23 = 0;
    do
    {
      v24 = &a3[v23];
      v25 = &v19[v23];
      *(v25 + 16) = *&a3[v23];
      v26 = *&a3[v23 + 8];
      *(v24 + 1) = 0;
      *(v25 + 9) = v26;
      v25[80] = a3[v23 + 16];
      *(v25 + 12) = 0;
      *(v25 + 13) = 0;
      *(v25 + 11) = 0;
      *(v25 + 14) = *&a3[v23 + 48];
      *(v25 + 88) = *&a3[v23 + 24];
      *(v25 + 13) = *&a3[v23 + 40];
      *(v24 + 4) = 0;
      *(v24 + 5) = 0;
      *(v24 + 3) = 0;
      v25[120] = a3[v23 + 56];
      v23 += 64;
    }

    while (v24 + 64 != v18);
  }

  if (v17)
  {
    v27 = *(a2 + 1);
    if (v27)
    {
      v28 = (v17 + 48);
      do
      {
        v29 = *(v28 - 3);
        if (v29)
        {
          *(v28 - 2) = v29;
          std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*v28, v29, *(v28 - 1) - v29);
        }

        --v27;
        CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(v28 - 5);
        v28 += 8;
      }

      while (v27);
    }

    if (a2 + 24 != *a2)
    {
      operator delete(*a2);
    }
  }

  v30 = *(a2 + 1) + 1;
  *a2 = v16;
  *(a2 + 1) = v30;
  *(a2 + 2) = v9;
  *a1 = &v16[a3 - v14];
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,true>,unsigned int>(&v10, &v9, *a2, *a3);
  v7 = v10;
  *a4 = v10;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a3 < *v7;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,true>,unsigned int>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 6;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[16 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 16;
        *a2 = v7 + 16;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void *std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  v10 = v8 - *result;
  if (v10 >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      i = &v9[v20];
    }

    else
    {
      if (v15 != v9)
      {
        result = memmove(*result, __src, v15 - v9);
        v15 = v7[1];
      }

      v17 = &v6[v16];
      v18 = v15;
      if (&v6[v16] != a3)
      {
        v18 = v15;
        do
        {
          v19 = *v17++;
          *v18++ = v19;
        }

        while (v17 != a3);
      }

      i = v18;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](result[3], v9, v10);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v11 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v11 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    result = std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__vallocate[abi:ne200100](v7, v12);
    for (i = v7[1]; v6 != a3; ++i)
    {
      v14 = *v6++;
      *i = v14;
    }
  }

  v7[1] = i;
  return result;
}

void *std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  v10 = v8 - *result;
  if (v10 >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v13 = &v9[v20];
    }

    else
    {
      if (v15 != v9)
      {
        result = memmove(*result, __src, v15 - v9);
        v15 = v7[1];
      }

      v17 = &v6[v16];
      v18 = v15;
      if (&v6[v16] != a3)
      {
        v18 = v15;
        do
        {
          v19 = *v17++;
          *v18++ = v19;
        }

        while (v17 != a3);
      }

      v13 = v18;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](result[3], v9, v10);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v11 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    result = std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__vallocate[abi:ne200100](v7, v12);
    v13 = v7[1];
    while (v6 != a3)
    {
      v14 = *v6++;
      *v13++ = v14;
    }
  }

  v7[1] = v13;
  return result;
}

void *applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(void *this, const applesauce::CF::DictionaryRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return this;
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *CA::DSP::ReferenceCounted<__CFDictionary const*>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDataGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

unint64_t applesauce::CF::convert_as<double,0>(unint64_t result)
{
  if (*&result != 0.0)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0;
          v9 = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_22;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_25:
          v7 = Value == 0;
          v12 = valuePtr;
          goto LABEL_30;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_20:
          v7 = v11 == 0;
          v12 = valuePtr;
          goto LABEL_30;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_29:
          v7 = v10 == 0;
          v12 = valuePtr;
LABEL_30:
          v8 = v12;
          goto LABEL_31;
        case kCFNumberLongType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_12:
          v7 = v6 == 0;
          v8 = *&valuePtr;
          goto LABEL_31;
        case kCFNumberDoubleType:
          valuePtr = 0;
          v9 = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_22;
        case kCFNumberCFIndexType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_27:
          v7 = v5 == 0;
          v8 = valuePtr;
LABEL_31:
          v13 = v8;
          goto LABEL_32;
        case kCFNumberCGFloatType:
          valuePtr = 0;
          v9 = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_22:
          v7 = v9 == 0;
          v13 = *&valuePtr;
LABEL_32:
          if (v7)
          {
            v13 = 0.0;
          }

          v14 = *&v13 & 0xFFFFFFFFFFFFFF00;
          break;
        default:
          v14 = 0;
          LOBYTE(v13) = 0;
          break;
      }

      return LOBYTE(v13) | v14;
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        *&result = CFBooleanGetValue(v1);
      }

      else
      {
        *&result = 0.0;
      }
    }
  }

  return result;
}

const __CFNumber *applesauce::CF::convert_as<unsigned long long,0>(const __CFNumber *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_38;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_33;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_22;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_25:
          v15 = Value != 0;
          if (Value)
          {
            LOBYTE(v16) = LOBYTE(valuePtr);
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          v17 = SLOBYTE(valuePtr) < 0 && v15;
          v18 = v17 << 63 >> 63;
          return (v16 | (v18 << 8));
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_20:
          v12 = v11 == 0;
          v13 = LOBYTE(valuePtr);
          v14 = SLOWORD(valuePtr);
          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_38:
          v12 = v10 == 0;
          v13 = LOBYTE(valuePtr);
          v14 = SLODWORD(valuePtr);
LABEL_39:
          v19 = v14 & 0xFFFFFFFFFFFFFF00 | v13;
          if (v12)
          {
            v16 = 0;
          }

          else
          {
            v16 = v19;
          }

          goto LABEL_42;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_33;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_33;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_12:
          v7 = v6 == 0;
          v8 = *&valuePtr;
          goto LABEL_34;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_22;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_33;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_33:
          v7 = v5 == 0;
          v8 = *&valuePtr;
          goto LABEL_34;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_22:
          v7 = v9 == 0;
          v8 = valuePtr;
LABEL_34:
          if (v7)
          {
            v16 = 0;
          }

          else
          {
            v16 = v8;
          }

LABEL_42:
          v18 = v16 >> 8;
          break;
        default:
          v18 = 0;
          LOBYTE(v16) = 0;
          break;
      }

      return (v16 | (v18 << 8));
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        return CFBooleanGetValue(v1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      switch(CFNumberGetType(a1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_13;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_28:
          LOBYTE(v11) = LOBYTE(valuePtr);
          if (!Value)
          {
            LOBYTE(v11) = 0;
          }

          v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
          v13.i64[0] = Value != 0;
          v13.i64[1] = v12 << 63 >> 63;
          break;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_21:
          if (v10)
          {
            v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_13:
          v9 = *&valuePtr;
          goto LABEL_37;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_25;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_36;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_36:
          v9 = LODWORD(valuePtr);
          goto LABEL_37;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_25:
          v9 = valuePtr;
LABEL_37:
          v11 = v9 | 0x100000000;
          if (!v8)
          {
            v11 = 0;
          }

LABEL_39:
          v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_1C925F120);
          break;
        default:
          LOBYTE(v11) = 0;
          v13 = 0uLL;
          break;
      }

      v14 = vandq_s8(vshlq_u64(v13, xmmword_1C925F130), xmmword_1C925F140);
      v4 = v14.i64[0] | v11 | v14.i64[1];
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(a1))
      {
        v6 = CFBooleanGetValue(a1);
        v7 = 0x100000000;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v4 = v7 | v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

const void **applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(void *result, void *a2)
{
  v2 = a2[1];
  if ((v2 & 0x8000000000000000) != 0 || (v4 = a2[2], v2 >= (a2[3] - v4) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "DictionaryRef_iterator iterator out of range.");
  }

  v5 = result;
  v6 = *(v4 + 8 * v2);
  if (v6)
  {
    result = CFRetain(*(v4 + 8 * v2));
    v2 = a2[1];
  }

  v7 = a2[5];
  v8 = *(v7 + 8 * v2);
  if (v8)
  {
    result = CFRetain(*(v7 + 8 * v2));
  }

  *v5 = v6;
  v5[1] = v8;
  return result;
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void std::vector<void const*>::resize(uint64_t *a1, unint64_t a2)
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

        std::allocator<void const*>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t CA::DSP::AUDSPGraph::GetProperty(CA::DSP::AUDSPGraph *this, int a2, int a3, void *a4, void *a5)
{
  v31 = a4;
  if (a3)
  {
    return 4294956417;
  }

  v5 = 4294956417;
  if (a2 > 1735554167)
  {
    if (a2 <= 1886416227)
    {
      if (a2 <= 1836347500)
      {
        if (a2 != 1735554168)
        {
          if (a2 == 1752133730)
          {
            if (!a4)
            {
              if (*(this + 3304))
              {
                CA::DSP::AUDSPGraph::RPBConnection::GetHost(&v27, *(this + 412));
                v28 = 1;
                v17 = v27;
                v27 = 0;
              }

              else
              {
                v17 = 0;
                LOBYTE(v27) = 0;
                v28 = 0;
              }

              v26 = v17;
              CA::DSP::AU::DSPGraph::Serialize<__RPBHost *>(a5, v17);
              CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(&v26);
              if (v28 == 1)
              {
                CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(&v27);
              }

              return 0;
            }

            return 4294956419;
          }

          if (a2 != 1835758191)
          {
            return v5;
          }

          goto LABEL_48;
        }

        if (a4)
        {
          return 4294956419;
        }

        v8 = *(this + 84);
        goto LABEL_68;
      }

      if (a2 == 1836347501)
      {
        if (!a4)
        {
          applesauce::CF::DictionaryRef::DictionaryRef(&v22, *(this + 410));
          v18 = v22;
          v22 = 0;
          *a5 = v18;
          v10 = &v22;
          goto LABEL_85;
        }

        return 4294956419;
      }

      if (a2 != 1852797026)
      {
        if (a2 != 1886415216)
        {
          return v5;
        }

        if (a4)
        {
          return 4294956419;
        }

        v11 = applesauce::CF::ArrayRef::ArrayRef(&v30, *(this + 86));
        v12 = v30;
        v30 = 0;
        *a5 = v12;
        applesauce::CF::ArrayRef::~ArrayRef(v11);
        return 0;
      }

      if (a4)
      {
        return 4294956419;
      }

      v5 = 0;
      v14 = *(this + 3312);
LABEL_65:
      *a5 = v14;
      return v5;
    }

    if (a2 > 1886548852)
    {
      if (a2 == 1886548853)
      {
        if (!a4)
        {
          applesauce::CF::DictionaryRef::DictionaryRef(&v23, *(this + 99));
          v19 = v23;
          v23 = 0;
          *a5 = v19;
          v10 = &v23;
          goto LABEL_85;
        }

        return 4294956419;
      }

      if (a2 == 1920169063)
      {
        if (a4)
        {
          return 4294956419;
        }

        v5 = 0;
        v14 = *(this + 3289);
        goto LABEL_65;
      }

      if (a2 != 1937010279)
      {
        return v5;
      }

      if (a4)
      {
        return 4294956419;
      }

      applesauce::CF::DictionaryRef::DictionaryRef(&v21, *(this + 415));
      v13 = v21;
      v21 = 0;
      *a5 = v13;
      v10 = &v21;
LABEL_85:
      applesauce::CF::DictionaryRef::~DictionaryRef(v10);
      return 0;
    }

    if (a2 == 1886416228)
    {
LABEL_48:
      if (!a4)
      {
        v10 = applesauce::CF::DictionaryRef::DictionaryRef(&v29, *(this + 87));
        v15 = v29;
        v29 = 0;
        *a5 = v15;
        goto LABEL_85;
      }

      return 4294956419;
    }

    if (a2 != 1886548592)
    {
      if (a2 != 1886548848)
      {
        return v5;
      }

      boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::find(&v27, this + 93, &v31);
      boost::container::flat_map<unsigned int,applesauce::CF::DictionaryRef,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,void,void>>::end(&v26, *(this + 93), *(this + 94));
      if (v27 != v26)
      {
        applesauce::CF::DictionaryRef::DictionaryRef(&v24, v27[1]);
        v9 = v24;
        v24 = 0;
        *a5 = v9;
        v10 = &v24;
        goto LABEL_85;
      }

LABEL_82:
      *a5 = 0;
      return 0;
    }

    if (a4)
    {
      return 4294956419;
    }

    v8 = *(this + 98);
    goto LABEL_68;
  }

  if (a2 <= 1733321573)
  {
    if (a2 <= 1635087215)
    {
      if (a2 == 37)
      {
        if (a4)
        {
          return 4294956419;
        }

        v5 = 0;
        v14 = *(this + 3368);
      }

      else
      {
        if (a2 != 3700)
        {
          return v5;
        }

        if (a4)
        {
          return 4294956419;
        }

        v5 = 0;
        v14 = *(this + 376);
      }

      goto LABEL_65;
    }

    if (a2 == 1635087216)
    {
      boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::find(&v27, this + 88, &v31);
      boost::container::flat_map<unsigned int,applesauce::CF::DictionaryRef,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,void,void>>::end(&v26, *(this + 88), *(this + 89));
      if (v27 != v26)
      {
        applesauce::CF::DictionaryRef::DictionaryRef(&v25, v27[1]);
        v16 = v25;
        v25 = 0;
        *a5 = v16;
        v10 = &v25;
        goto LABEL_85;
      }

      goto LABEL_82;
    }

    if (a2 == 1685283431)
    {
      if (a4)
      {
        return 4294956419;
      }

      v5 = 0;
      v14 = *(this + 3288);
      goto LABEL_65;
    }

    if (a2 != 1685287015)
    {
      return v5;
    }

    if (a4)
    {
      return 4294956419;
    }

    v8 = *(this + 83);
LABEL_68:
    CA::DSP::AU::DSPGraph::Serialize<CA::DSP::String>(a5, v8);
    return 0;
  }

  if (a2 > 1735418725)
  {
    if (a2 != 1735418726)
    {
      if (a2 == 1735423585)
      {
        CA::DSP::AUDSPGraph::GetGraphParameter(&v27, this, a4);
        v5 = v27;
        if (BYTE4(v27) != 1)
        {
          return v5;
        }

        *a5 = v27;
      }

      else
      {
        if (a2 != 1735549286)
        {
          return v5;
        }

        if (a4)
        {
          return 4294956419;
        }

        CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Graph>(a5, *(this + 81));
      }

      return 0;
    }

    CA::DSP::AUDSPGraph::GetGraphParameter(&v26, this, a4);
    if (BYTE4(v26))
    {
      CA::DSP::Number::Create<float>(&v27, *MEMORY[0x1E695E480], *&v26);
      v28 = 1;
      v5 = CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Reference<CA::DSP::Number>>(a5, &v27);
      CA::DSP::ReferenceCounted<__CFNumber const*>::~ReferenceCounted(&v27);
    }

    else
    {
      LODWORD(v27) = v26;
      v28 = 0;
      return CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Reference<CA::DSP::Number>>(a5, &v27);
    }
  }

  else
  {
    switch(a2)
    {
      case 1733321574:
        CA::DSP::AUDSPGraph::GetGraphProperty(&v27, this, a4);
        v5 = CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Reference<CA::DSP::Dictionary<CA::DSP::String,CA::DSP::Type>>>(a5, &v27);
        if (v28 == 1)
        {
          CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v27);
        }

        break;
      case 1733326433:
        CA::DSP::AUDSPGraph::GetGraphProperty(&v27, this, a4, a5);
        if (BYTE4(v27))
        {
          return 0;
        }

        else
        {
          return v27;
        }

      case 1735287149:
        if (a4)
        {
          return 4294956419;
        }

        v8 = *(this + 85);
        goto LABEL_68;
      default:
        return v5;
    }
  }

  return v5;
}

CFTypeRef CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Graph>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    result = CFRetain(cf);
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

CFTypeRef CA::DSP::AU::DSPGraph::Serialize<CA::DSP::String>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    result = CFRetain(cf);
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

applesauce::CF::ArrayRef *applesauce::CF::ArrayRef::ArrayRef(applesauce::CF::ArrayRef *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *this = cf;
  return this;
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **CA::DSP::Number::Create<float>(CFNumberRef *a1, CFAllocatorRef allocator, float a3)
{
  valuePtr = a3;
  v4 = 0;
  *a1 = CFNumberCreate(allocator, kCFNumberFloat32Type, &valuePtr);
  return CA::DSP::ReferenceCounted<__CFNumber const*>::~ReferenceCounted(&v4);
}

uint64_t CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Reference<CA::DSP::Number>>(void *a1, _BYTE *a2)
{
  if (a2[8] != 1)
  {
    return *a2;
  }

  v3 = *a2;
  if (*a2)
  {
    v3 = CFRetain(v3);
  }

  v4 = 0;
  *a1 = v3;
  return v4;
}

const void **CA::DSP::ReferenceCounted<__CFNumber const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t CA::DSP::AUDSPGraph::GetGraphProperty(CA::DSP::AUDSPGraph *this, uint64_t a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a2 + 17) == 1)
  {
    result = caulk::shared_semaphore_mutex::try_lock_shared((a2 + 608));
    if (!result)
    {
      *this = -10863;
      *(this + 4) = 0;
LABEL_30:
      v18 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (!*(a2 + 648))
    {
      *this = -10863;
      *(this + 4) = 0;
      goto LABEL_29;
    }

    CA::DSP::AUDSPGraph::GetCachedGraphProperty(&v25, a2, a3, a4);
    if (BYTE4(v25) == 1)
    {
      *(this + 4) = BYTE4(v25);
LABEL_29:
      result = caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
      goto LABEL_30;
    }

    CA::DSP::Graph::GetPropertyInfo(&v26, *(a2 + 648), a3);
    if (v27)
    {
      *buf = v26;
      CA::DSP::Graph::GetProperty(&v28, *(a2 + 648), a3, a4, &buf[4]);
      if (v29)
      {
        *(this + 4) = 1;
LABEL_27:
        if ((v27 & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v26);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v10 = v26;
      v26 = 0;
      v28 = v10;
      v29 = 0;
    }

    v11 = *(a2 + 680);
    if (v11)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v13 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v14 = *(a2 + 680);
      v15 = bswap32(a3);
      *&buf[1] = v15;
      if ((v15 - 32) > 0x5E || ((v15 >> 8) - 32) > 0x5E || ((v15 << 8 >> 24) - 32) > 0x5E || ((v15 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v30, a3);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v30, buf);
      }

      v19 = &v30;
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v30.__r_.__value_.__r.__words[0];
      }

      *buf = 134218754;
      *&buf[4] = a2;
      v32 = 2112;
      v33 = v14;
      v34 = 2080;
      v35 = v19;
      v36 = 2112;
      v37 = v28;
      v20 = "[%p|%@] failed to get DSP graph property %s - %@";
      v21 = v13;
      v22 = 42;
    }

    else
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v16 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v23 = bswap32(a3);
      *&buf[1] = v23;
      if ((v23 - 32) > 0x5E || ((v23 >> 8) - 32) > 0x5E || ((v23 << 8 >> 24) - 32) > 0x5E || ((v23 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v30, a3);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v30, buf);
      }

      v24 = &v30;
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v30.__r_.__value_.__r.__words[0];
      }

      *buf = 134218498;
      *&buf[4] = a2;
      v32 = 2080;
      v33 = v24;
      v34 = 2112;
      v35 = v28;
      v20 = "[%p] failed to get DSP graph property %s - %@";
      v21 = v16;
      v22 = 32;
    }

    _os_log_error_impl(&dword_1C91AE000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

LABEL_25:
    *this = -10863;
    v17 = v29;
    *(this + 4) = 0;
    if ((v17 & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v28);
    }

    goto LABEL_27;
  }

  caulk::shared_semaphore_mutex::lock_shared((a2 + 608));
  CA::DSP::AUDSPGraph::GetCachedGraphProperty(this, a2, a3, a4);
  v9 = *MEMORY[0x1E69E9840];

  return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
}

void sub_1C91CD4F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CA::DSP::AUDSPGraph::GetGraphProperty(CA::DSP::AUDSPGraph *this, uint64_t a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*(a2 + 17) == 1)
  {
    result = caulk::shared_semaphore_mutex::try_lock_shared((a2 + 608));
    if (!result)
    {
      *this = -10863;
      *(this + 8) = 0;
LABEL_42:
      v25 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (!*(a2 + 648))
    {
      *this = -10863;
      *(this + 8) = 0;
LABEL_41:
      result = caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
      goto LABEL_42;
    }

    CA::DSP::AUDSPGraph::GetCachedGraphProperty(&v32, a2, a3);
    if (v33)
    {
      v7 = v32;
      v32 = 0;
      *this = v7;
      *(this + 8) = 1;
LABEL_40:
      CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v32);
      goto LABEL_41;
    }

    CA::DSP::Graph::GetPropertyInfo(&v34, *(a2 + 648), a3);
    if (v35 == 1)
    {
      v43 = v34;
      v9 = HIDWORD(v34);
      v10 = *MEMORY[0x1E695E480];
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], HIDWORD(v34));
      *buf = 0;
      theData = Mutable;
      CA::DSP::ReferenceCounted<__CFData *>::~ReferenceCounted(buf);
      CFDataSetLength(theData, v9);
      MutableBytePtr = CFDataGetMutableBytePtr(theData);
      CA::DSP::Graph::GetProperty(&v46, *(a2 + 648), a3, MutableBytePtr, &v43 + 1);
      v13 = theData;
      v14 = v43;
      v40 = v43;
      v41 = theData;
      if (theData)
      {
        CFRetain(theData);
      }

      if (v46.__r_.__value_.__s.__data_[8])
      {
        CFDataSetLength(v13, HIDWORD(v14));
        CFRetain(@"Data");
        v44 = 0;
        v45 = 0;
        *buf = @"Data";
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v45);
        *&buf[8] = v13;
        if (v13)
        {
          CFRetain(v13);
        }

        v15 = 1;
        CA::DSP::Dictionary<CA::DSP::String,CA::DSP::Data>::Create<CA::DSP::Reference<CA::DSP::String>,CA::DSP::Reference<CA::DSP::Data>>(&v36, v10, buf, 1);
        CA::DSP::ReferenceCounted<__CFData const*>::~ReferenceCounted(&buf[8]);
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v44);
      }

      else
      {
        v15 = 0;
        v17 = v46.__r_.__value_.__r.__words[0];
        v46.__r_.__value_.__r.__words[0] = 0;
        v36 = v17;
      }

      v37 = v15;
      CA::DSP::ReferenceCounted<__CFData *>::~ReferenceCounted(&v41);
      if ((v46.__r_.__value_.__s.__data_[8] & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v46.__r_.__value_.__l.__data_);
      }

      CA::DSP::ReferenceCounted<__CFData *>::~ReferenceCounted(&theData);
      if (v15)
      {
        v18 = v36;
        v36 = 0;
        v39 = 1;
        v38 = 0;
        *this = v18;
        *(this + 8) = 1;
        CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v38);
        goto LABEL_35;
      }
    }

    else
    {
      v16 = v34;
      v34 = 0;
      v36 = v16;
      v37 = 0;
    }

    v19 = *(a2 + 680);
    if (v19)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v21 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a2 + 680);
        v23 = bswap32(a3);
        *&buf[1] = v23;
        if ((v23 - 32) > 0x5E || ((v23 >> 8) - 32) > 0x5E || ((v23 << 8 >> 24) - 32) > 0x5E || ((v23 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v46, a3);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v46, buf);
        }

        v26 = &v46;
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v26 = v46.__r_.__value_.__r.__words[0];
        }

        *buf = 134218754;
        *&buf[4] = a2;
        *&buf[12] = 2112;
        *&buf[14] = v22;
        v48 = 2080;
        v49 = v26;
        v50 = 2112;
        v51 = v36;
        v27 = "[%p|%@] failed to get DSP graph property %s - %@";
        v28 = v21;
        v29 = 42;
LABEL_56:
        _os_log_error_impl(&dword_1C91AE000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v24 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        v30 = bswap32(a3);
        *&buf[1] = v30;
        if ((v30 - 32) > 0x5E || ((v30 >> 8) - 32) > 0x5E || ((v30 << 8 >> 24) - 32) > 0x5E || ((v30 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v46, a3);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v46, buf);
        }

        v31 = &v46;
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v46.__r_.__value_.__r.__words[0];
        }

        *buf = 134218498;
        *&buf[4] = a2;
        *&buf[12] = 2080;
        *&buf[14] = v31;
        v48 = 2112;
        v49 = v36;
        v27 = "[%p] failed to get DSP graph property %s - %@";
        v28 = v24;
        v29 = 32;
        goto LABEL_56;
      }
    }

    LODWORD(v38) = -10863;
    v39 = 0;
    *this = -10863;
    *(this + 8) = 0;
    if ((v37 & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v36);
LABEL_37:
      if ((v35 & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v34);
      }

      if ((v33 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

LABEL_35:
    CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v36);
    goto LABEL_37;
  }

  caulk::shared_semaphore_mutex::lock_shared((a2 + 608));
  CA::DSP::AUDSPGraph::GetCachedGraphProperty(this, a2, a3);
  v8 = *MEMORY[0x1E69E9840];

  return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
}

void sub_1C91CDAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Reference<CA::DSP::Dictionary<CA::DSP::String,CA::DSP::Type>>>(void *a1, _BYTE *a2)
{
  if (a2[8] != 1)
  {
    return *a2;
  }

  v3 = *a2;
  if (*a2)
  {
    v3 = CFRetain(v3);
  }

  v4 = 0;
  *a1 = v3;
  return v4;
}

void *boost::container::flat_map<unsigned int,applesauce::CF::DictionaryRef,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,void,void>>::end(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  *result = a2 + 16 * a3;
  return result;
}

CFTypeRef CA::DSP::AU::DSPGraph::Serialize<__RPBHost *>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    result = CFRetain(cf);
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

const void **CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *CA::DSP::AUDSPGraph::GetCachedGraphProperty(CA::DSP::AUDSPGraph *this, uint64_t a2, unsigned int a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  result = CA::DSP::AUDSPGraph::GraphPropertyCache::Find(&v12, (a2 + 1208), a3);
  if (v13 != 1)
  {
    v9 = 0;
    v10 = v12;
LABEL_8:
    *this = v10;
    goto LABEL_9;
  }

  v5 = v12;
  if ((*(v12 + 48) & 1) == 0)
  {
    v9 = 0;
    v10 = -10850;
    goto LABEL_8;
  }

  if ((*(v12 + 8) & 1) == 0)
  {
    CFRetain(@"Data");
    v6 = *MEMORY[0x1E695E480];
    v7 = CFDataCreate(*MEMORY[0x1E695E480], *(v5 + 16), *(v5 + 24) - *(v5 + 16));
    v17 = 0;
    CA::DSP::ReferenceCounted<__CFData const*>::~ReferenceCounted(&v17);
    v15 = 0;
    v16 = 0;
    v17 = @"Data";
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v16);
    v14 = 0;
    v18[0] = v7;
    CA::DSP::Dictionary<CA::DSP::String,CA::DSP::Type>::Create<CA::DSP::Reference<CA::DSP::String>,CA::DSP::Reference<CA::DSP::Type>>(&v16, v6, &v17, 1);
    CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(v5);
    v8 = v16;
    v16 = 0;
    *v5 = v8;
    CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v16);
    CA::DSP::ReferenceCounted<void const*>::~ReferenceCounted(v18);
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v17);
    CA::DSP::ReferenceCounted<__CFData const*>::~ReferenceCounted(&v14);
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v15);
    *(v5 + 8) = 1;
  }

  result = CA::DSP::ReferenceCounted<__CFDictionary const*>::ReferenceCounted(this, *v5);
  v9 = 1;
LABEL_9:
  *(this + 8) = v9;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C91CDD9C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void **CA::DSP::Graph::GetPropertyInfo(CA::DSP::Graph *this, uint64_t a2, unsigned int a3)
{
  *v13 = 0;
  v11 = 0;
  v4 = 0;
  if (CADSPGraphGetPropertyInfo(a2, a3, v13))
  {
    v5 = 0;
  }

  else
  {
    v5 = v11 == 0;
  }

  if (v5)
  {
    v4 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
    v11 = v4;
  }

  v10 = v4;
  if (v4)
  {
    v10 = 0;
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v8 = 0;
    v12 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    *this = v4;
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v6 = *v13;
    v9 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *this = v6;
    *(this + 8) = 1;
  }

  return result;
}

const void **CA::DSP::Graph::GetProperty(CA::DSP::Graph *this, uint64_t a2, void *a3, unsigned int *a4, unsigned int *a5)
{
  v11 = 0;
  v6 = 0;
  if (!CADSPGraphGetProperty(a2, a3, a4, a5))
  {
    v6 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
    v11 = v6;
  }

  v10 = v6;
  if (v6)
  {
    v10 = 0;
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v8 = 0;
    v11 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v9 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *(this + 8) = 1;
  }

  return result;
}

const void **CA::DSP::Dictionary<CA::DSP::String,CA::DSP::Data>::Create<CA::DSP::Reference<CA::DSP::String>,CA::DSP::Reference<CA::DSP::Data>>(CFDictionaryRef *a1, const __CFAllocator *a2, uint64_t *a3, CFIndex a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = 8 * a4 + 8;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v24 - ((v9 + 23) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v8);
  if (a4)
  {
    v12 = 16 * a4;
    v13 = 16 * a4;
    v14 = a3;
    v15 = v10;
    do
    {
      v16 = *v14;
      v14 += 2;
      *v15++ = v16;
      v13 -= 16;
    }

    while (v13);
    MEMORY[0x1EEE9AC00](v11);
    v17 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
    v18 = a3 + 1;
    v19 = v17;
    do
    {
      v20 = *v18;
      v18 += 2;
      *v19++ = v20;
      v12 -= 16;
    }

    while (v12);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    v17 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
  }

  v21 = CFDictionaryCreate(a2, v10, v17, a4, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v24[0] = 0;
  *a1 = v21;
  result = CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(v24);
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C91CE0EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **CA::DSP::ReferenceCounted<__CFData const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFData *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::Dictionary<CA::DSP::String,CA::DSP::Type>::Create<CA::DSP::Reference<CA::DSP::String>,CA::DSP::Reference<CA::DSP::Type>>(CFDictionaryRef *a1, const __CFAllocator *a2, uint64_t *a3, CFIndex a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = 8 * a4 + 8;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v24 - ((v9 + 23) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v8);
  if (a4)
  {
    v12 = 16 * a4;
    v13 = 16 * a4;
    v14 = a3;
    v15 = v10;
    do
    {
      v16 = *v14;
      v14 += 2;
      *v15++ = v16;
      v13 -= 16;
    }

    while (v13);
    MEMORY[0x1EEE9AC00](v11);
    v17 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
    v18 = a3 + 1;
    v19 = v17;
    do
    {
      v20 = *v18;
      v18 += 2;
      *v19++ = v20;
      v12 -= 16;
    }

    while (v12);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    v17 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
  }

  v21 = CFDictionaryCreate(a2, v10, v17, a4, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v24[0] = 0;
  *a1 = v21;
  result = CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(v24);
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C91CE428(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **CA::DSP::ReferenceCounted<void const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *CA::DSP::AUDSPGraph::GetCachedGraphProperty(CA::DSP::AUDSPGraph *this, uint64_t a2, void *a3, void *a4)
{
  result = CA::DSP::AUDSPGraph::GraphPropertyCache::Find(&v9, (a2 + 1208), a3);
  if (v10 != 1)
  {
    v7 = 0;
    v8 = v9;
LABEL_6:
    *this = v8;
    goto LABEL_7;
  }

  if ((*(v9 + 48) & 1) == 0)
  {
    v7 = 0;
    v8 = -10850;
    goto LABEL_6;
  }

  result = memcpy(a4, *(v9 + 16), *(v9 + 24) - *(v9 + 16));
  v7 = 1;
LABEL_7:
  *(this + 4) = v7;
  return result;
}

uint64_t CA::DSP::AUDSPGraph::GetPropertyInfo(CA::DSP::AUDSPGraph *this, int a2, int a3, uint64_t a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v20 = v6;
  v21 = v7;
  result = 4294956417;
  if (a2 <= 1735554167)
  {
    if (a2 > 1733321573)
    {
      if (a2 <= 1735418725)
      {
        if (a2 == 1733321574)
        {
          CA::DSP::AUDSPGraph::GetGraphPropertyInfo(&v17, this, a4);
          result = v17;
          if (v19 != 1)
          {
            return result;
          }

          *a6 = (v17 & 2) != 0;
          v16 = 8;
        }

        else
        {
          if (a2 != 1733326433)
          {
            v12 = 1735287149;
            goto LABEL_29;
          }

          CA::DSP::AUDSPGraph::GetGraphPropertyInfo(&v17, this, a4);
          result = v17;
          if (v19 != 1)
          {
            return result;
          }

          *a6 = (v17 & 2) != 0;
          v16 = v18;
        }

        *a5 = v16;
        return 0;
      }

      switch(a2)
      {
        case 1735418726:
          CA::DSP::AUDSPGraph::IsGraphParameterWritable(&v17, this, a4);
          if (v18)
          {
            result = 0;
            v13 = v17;
            goto LABEL_44;
          }

          break;
        case 1735423585:
          CA::DSP::AUDSPGraph::IsGraphParameterWritable(&v17, this, a4);
          if (v18)
          {
            result = 0;
            v14 = v17;
            goto LABEL_57;
          }

          break;
        case 1735549286:
          goto LABEL_35;
        default:
          return result;
      }

      return v17;
    }

    if (a2 <= 1635087215)
    {
      if (a2 == 37 || a2 == 3700)
      {
        if (a4)
        {
          return 4294956419;
        }

        result = 0;
        v14 = *(this + 17) ^ 1;
        goto LABEL_57;
      }

      return result;
    }

    if (a2 != 1635087216)
    {
      if (a2 != 1685283431)
      {
        v12 = 1685287015;
        goto LABEL_29;
      }

LABEL_37:
      if (a4)
      {
        return 4294956419;
      }

      result = 0;
      v14 = 1;
LABEL_57:
      *a6 = v14;
      v15 = 4;
      goto LABEL_58;
    }

LABEL_43:
    result = 0;
    v13 = 1;
    goto LABEL_44;
  }

  if (a2 <= 1886416227)
  {
    if (a2 <= 1836347500)
    {
      if (a2 == 1735554168)
      {
        goto LABEL_30;
      }

      if (a2 != 1752133730)
      {
        v12 = 1835758191;
        goto LABEL_29;
      }

LABEL_35:
      if (!a4)
      {
        result = 0;
        *a6 = 0;
LABEL_45:
        v15 = 8;
LABEL_58:
        *a5 = v15;
        return result;
      }

      return 4294956419;
    }

    if (a2 == 1836347501)
    {
      goto LABEL_30;
    }

    if (a2 != 1852797026)
    {
      v12 = 1886415216;
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if (a2 > 1886548852)
  {
    if (a2 == 1886548853)
    {
      goto LABEL_30;
    }

    if (a2 != 1920169063)
    {
      v12 = 1937010279;
LABEL_29:
      if (a2 != v12)
      {
        return result;
      }

LABEL_30:
      if (!a4)
      {
        result = 0;
        v13 = *(this + 17) ^ 1;
LABEL_44:
        *a6 = v13;
        goto LABEL_45;
      }

      return 4294956419;
    }

    goto LABEL_37;
  }

  if (a2 == 1886416228 || a2 == 1886548592)
  {
    goto LABEL_30;
  }

  if (a2 == 1886548848)
  {
    goto LABEL_43;
  }

  return result;
}

BOOL *CA::DSP::AUDSPGraph::IsGraphParameterWritable(BOOL *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v33 = *MEMORY[0x1E69E9840];
  if (*(a2 + 17) != 1)
  {
    *this = 1;
    this[4] = 1;
    goto LABEL_20;
  }

  caulk::shared_semaphore_mutex::lock_shared((a2 + 608));
  CA::DSP::Graph::GetParameterDirection(&v21, *(a2 + 648), a3);
  if (v22 != 1)
  {
    v6 = v21;
    v21 = 0;
    v23 = v6;
    v24 = 0;
    v7 = *(a2 + 680);
    if (v7)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v9 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v10 = *(a2 + 680);
      v11 = bswap32(a3);
      *&buf[1] = v11;
      if ((v11 - 32) > 0x5E || ((v11 >> 8) - 32) > 0x5E || ((v11 << 8 >> 24) - 32) > 0x5E || ((v11 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v25, a3);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v25, buf);
      }

      v15 = &v25;
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v25.__r_.__value_.__r.__words[0];
      }

      *buf = 134218754;
      *&buf[4] = a2;
      v27 = 2112;
      v28 = v10;
      v29 = 2080;
      v30 = v15;
      v31 = 2112;
      v32 = v23;
      v16 = "[%p|%@] failed to set DSP graph parameter %s direction - %@";
      v17 = v9;
      v18 = 42;
    }

    else
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v12 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v19 = bswap32(a3);
      *&buf[1] = v19;
      if ((v19 - 32) > 0x5E || ((v19 >> 8) - 32) > 0x5E || ((v19 << 8 >> 24) - 32) > 0x5E || ((v19 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v25, a3);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v25, buf);
      }

      v20 = &v25;
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v25.__r_.__value_.__r.__words[0];
      }

      *buf = 134218498;
      *&buf[4] = a2;
      v27 = 2080;
      v28 = v20;
      v29 = 2112;
      v30 = v23;
      v16 = "[%p] failed to set DSP graph parameter %s direction - %@";
      v17 = v12;
      v18 = 32;
    }

    _os_log_error_impl(&dword_1C91AE000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

LABEL_15:
    *v3 = -10863;
    v13 = v24;
    v3[4] = 0;
    if ((v13 & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v23);
    }

    goto LABEL_17;
  }

  LOBYTE(v23) = v21 == 0;
  v24 = 1;
  *v3 = v21 == 0;
  v3[4] = 1;
LABEL_17:
  if ((v22 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v21);
  }

  this = caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
LABEL_20:
  v14 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1C91CEBB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CA::DSP::AUDSPGraph::GetGraphPropertyInfo(CA::DSP::AUDSPGraph *this, uint64_t a2, unsigned int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a2 + 17) == 1)
  {
    result = caulk::shared_semaphore_mutex::try_lock_shared((a2 + 608));
    if (!result)
    {
      *this = -10863;
      *(this + 8) = 0;
LABEL_18:
      v11 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (*(a2 + 648))
    {
      CA::DSP::AUDSPGraph::GetCachedGraphPropertyInfo(&v25, a2, a3);
      if (v26 == 1)
      {
        v7 = v25;
LABEL_14:
        *this = v7;
        *(this + 8) = 1;
LABEL_17:
        result = caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
        goto LABEL_18;
      }

      v10 = *(a2 + 648);
      if (std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((*(v10 + 8) + 624), a3))
      {
        CA::DSP::Graph::GetPropertyInfo(&v27, v10, a3);
        if (v28)
        {
          v7 = v27;
          goto LABEL_14;
        }

        v12 = *(a2 + 680);
        if (v12)
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v14 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          v15 = *(a2 + 680);
          v16 = bswap32(a3);
          *&buf[1] = v16;
          if ((v16 - 32) > 0x5E || ((v16 >> 8) - 32) > 0x5E || ((v16 << 8 >> 24) - 32) > 0x5E || ((v16 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v29, a3);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v29, buf);
          }

          v19 = &v29;
          if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v19 = v29.__r_.__value_.__r.__words[0];
          }

          *buf = 134218754;
          *&buf[4] = a2;
          v31 = 2112;
          v32 = v15;
          v33 = 2080;
          v34 = v19;
          v35 = 2112;
          v36 = v27;
          v20 = "[%p|%@] failed to get DSP graph property %s info - %@";
          v21 = v14;
          v22 = 42;
        }

        else
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v17 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          v23 = bswap32(a3);
          *&buf[1] = v23;
          if ((v23 - 32) > 0x5E || ((v23 >> 8) - 32) > 0x5E || ((v23 << 8 >> 24) - 32) > 0x5E || ((v23 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v29, a3);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v29, buf);
          }

          v24 = &v29;
          if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v24 = v29.__r_.__value_.__r.__words[0];
          }

          *buf = 134218498;
          *&buf[4] = a2;
          v31 = 2080;
          v32 = v24;
          v33 = 2112;
          v34 = v27;
          v20 = "[%p] failed to get DSP graph property %s info - %@";
          v21 = v17;
          v22 = 32;
        }

        _os_log_error_impl(&dword_1C91AE000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

LABEL_29:
        *this = -10863;
        v18 = v28;
        *(this + 8) = 0;
        if ((v18 & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v27);
        }

        goto LABEL_17;
      }

      v9 = -10879;
    }

    else
    {
      v9 = -10863;
    }

    *this = v9;
    *(this + 8) = 0;
    goto LABEL_17;
  }

  caulk::shared_semaphore_mutex::lock_shared((a2 + 608));
  CA::DSP::AUDSPGraph::GetCachedGraphPropertyInfo(this, a2, a3);
  v8 = *MEMORY[0x1E69E9840];

  return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
}

void sub_1C91CEFF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *CA::DSP::AUDSPGraph::GetCachedGraphPropertyInfo(CA::DSP::AUDSPGraph *this, uint64_t a2, unsigned int a3)
{
  result = CA::DSP::AUDSPGraph::GraphPropertyCache::Find(&v7, (a2 + 1208), a3);
  if (v8 != 1)
  {
    v5 = 0;
    v6 = v7;
LABEL_6:
    *this = v6;
    goto LABEL_7;
  }

  if ((*(v7 + 48) & 1) == 0)
  {
    v5 = 0;
    v6 = -10850;
    goto LABEL_6;
  }

  *this = ((*(v7 + 24) - *(v7 + 16)) << 32) | 3;
  v5 = 1;
LABEL_7:
  *(this + 8) = v5;
  return result;
}

uint64_t CA::DSP::AUDSPGraph::Reset(CA::DSP::AUDSPGraph *this)
{
  v22 = *MEMORY[0x1E69E9840];
  caulk::shared_semaphore_mutex::lock_shared((this + 608));
  v2 = *(this + 81);
  if (v2)
  {
    v3 = CA::DSP::Graph::Reset(&v14, v2);
    if ((v15 & 1) == 0)
    {
      v7 = *(this + 85);
      Log = CA::DSP::AU::DSPGraph::GetLog(v3);
      v9 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        if (v9)
        {
          v10 = *(this + 85);
          *buf = 134218498;
          v17 = this;
          v18 = 2112;
          v19 = v10;
          v20 = 2112;
          v21 = v14;
          v11 = "[%p|%@] failed to reset DSP graph - %@";
          v12 = Log;
          v13 = 32;
LABEL_11:
          _os_log_error_impl(&dword_1C91AE000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
        }
      }

      else if (v9)
      {
        *buf = 134218242;
        v17 = this;
        v18 = 2112;
        v19 = v14;
        v11 = "[%p] failed to reset DSP graph - %@";
        v12 = Log;
        v13 = 22;
        goto LABEL_11;
      }

      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14);
      v4 = 4294956433;
      goto LABEL_4;
    }
  }

  v4 = 0;
LABEL_4:
  caulk::shared_semaphore_mutex::unlock_shared((this + 608));
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CA::DSP::AUDSPGraph::Cleanup(CA::DSP::AUDSPGraph *this)
{
  v24 = *MEMORY[0x1E69E9840];
  caulk::shared_semaphore_mutex::lock((this + 608));
  v2 = *(this + 85);
  if (v2)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v4 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 85);
      v20 = 134218242;
      v21 = this;
      v22 = 2112;
      v23 = v5;
      v6 = "[%p|%@] will uninitialize";
      v7 = v4;
      v8 = 22;
LABEL_8:
      _os_log_impl(&dword_1C91AE000, v7, OS_LOG_TYPE_DEFAULT, v6, &v20, v8);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v9 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      v21 = this;
      v6 = "[%p] will uninitialize";
      v7 = v9;
      v8 = 12;
      goto LABEL_8;
    }
  }

  if (*(this + 3304) == 1)
  {
    CA::DSP::AUDSPGraph::RPBConnection::Suspend(*(this + 412));
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 81);
  *(this + 81) = 0;
  v10 = *(this + 85);
  if (v10)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v12 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(this + 85);
      v20 = 134218242;
      v21 = this;
      v22 = 2112;
      v23 = v13;
      v14 = "[%p|%@] did uninitialize";
      v15 = v12;
      v16 = 22;
LABEL_18:
      _os_log_impl(&dword_1C91AE000, v15, OS_LOG_TYPE_DEFAULT, v14, &v20, v16);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v17 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      v21 = this;
      v14 = "[%p] did uninitialize";
      v15 = v17;
      v16 = 12;
      goto LABEL_18;
    }
  }

  result = caulk::shared_semaphore_mutex::unlock((this + 608));
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CA::DSP::AUDSPGraph::Initialize(CA::DSP::AUDSPGraph *this)
{
  v552 = *MEMORY[0x1E69E9840];
  caulk::shared_semaphore_mutex::lock((this + 608));
  v509 = this;
  v2 = *(this + 85);
  if (v2)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v4 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 85);
      *buf = 134218242;
      *&buf[4] = this;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      v6 = "[%p|%@] will initialize";
      v7 = v4;
      v8 = 22;
LABEL_8:
      _os_log_impl(&dword_1C91AE000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v9 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = this;
      v6 = "[%p] will initialize";
      v7 = v9;
      v8 = 12;
      goto LABEL_8;
    }
  }

  allocator = *MEMORY[0x1E695E480];
  v10 = [+[CADSPLanguageV1Interpreter allocWithZone:](CADSPLanguageV1Interpreter init];
  *buf = 0;
  __t.__d_.__rep_ = v10;
  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(buf);
  v11 = *(this + 86);
  if (v11)
  {
    CFRetain(*(this + 86));
  }

  *buf = 0;
  *value = v11;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
  [__t.__d_.__rep_ setPreprocessorIncludePaths:v11];
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(value);
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  *buf = 0;
  theDict[0] = Mutable;
  CA::DSP::ReferenceCounted<__CFDictionary *>::~ReferenceCounted(buf);
  *buf = @"sampleRate";
  CFRetain(@"sampleRate");
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  CA::DSP::String::Create(allocator, value, *(Element + 80));
  CFDictionarySetValue(theDict[0], *buf, *value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
  *buf = @"numIns";
  CFRetain(@"numIns");
  v14 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v14)
  {
    ausdk::Throw(0xFFFFD583);
  }

  CA::DSP::String::Create(allocator, value, *(v14 + 108));
  CFDictionarySetValue(theDict[0], *buf, *value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
  v15 = *(this + 21);
  if (v15)
  {
    if (!(*(*v15 + 24))(v15))
    {
      goto LABEL_19;
    }
  }

  else if (!((*(this + 19) - *(this + 18)) >> 3))
  {
    goto LABEL_19;
  }

  *buf = @"numOuts";
  CFRetain(@"numOuts");
  v16 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v16)
  {
    ausdk::Throw(0xFFFFD583);
  }

  CA::DSP::String::Create(allocator, value, *(v16 + 108));
  CFDictionarySetValue(theDict[0], *buf, *value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
LABEL_19:
  *buf = @"blockSize";
  CFRetain(@"blockSize");
  if (*(this + 376) == 1)
  {
    v17 = *(this + 84);
  }

  else
  {
    v17 = 1;
  }

  CA::DSP::String::Create(allocator, value, v17);
  CFDictionarySetValue(theDict[0], *buf, *value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(value);
  v18 = CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
  v19 = *(this + 87);
  if (v19)
  {
    applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::StringRef>::DictionaryRef_iterator(v18, v19);
    applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::StringRef>::DictionaryRef_iterator(value, *(this + 87));
    *&value[8] = (*&value[24] - *&value[16]) >> 3;
    while (1)
    {
      if (*buf && (v20 = *&buf[8], *&buf[8] != (*&buf[24] - *&buf[16]) >> 3))
      {
        v21 = *value;
      }

      else
      {
        v21 = *value;
        if (!*value || *&value[8] == (*&value[24] - *&value[16]) >> 3)
        {
          break;
        }

        v20 = *&buf[8];
      }

      if (*buf == v21 && v20 == *&value[8])
      {
        break;
      }

      if ((v20 & 0x8000000000000000) != 0 || v20 >= (*&buf[24] - *&buf[16]) >> 3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "DictionaryRef_iterator iterator out of range.");
        exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
      }

      applesauce::CF::StringRef::from_get(v549, *(*&buf[16] + 8 * v20));
      applesauce::CF::StringRef::from_get(&cf, *(*&buf[40] + 8 * *&buf[8]));
      v23 = *v549;
      v24 = cf;
      if (*v549)
      {
        CFRetain(*v549);
      }

      cf = v24;
      if (v24)
      {
        CFRetain(v24);
        v25 = cf;
      }

      else
      {
        v25 = 0;
      }

      CFDictionarySetValue(theDict[0], *v549, v25);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&cf);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v549);
      if (v24)
      {
        CFRelease(v24);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      ++*&buf[8];
    }

    if (*&value[40])
    {
      v547 = *&value[40];
      operator delete(*&value[40]);
    }

    if (*&value[16])
    {
      *&value[24] = *&value[16];
      operator delete(*&value[16]);
    }

    if (*&buf[40])
    {
      *&buf[48] = *&buf[40];
      operator delete(*&buf[40]);
    }

    if (*&buf[16])
    {
      *&buf[24] = *&buf[16];
      operator delete(*&buf[16]);
    }
  }

  v539 = theDict[0];
  theDict[0] = 0;
  CA::DSP::ReferenceCounted<__CFDictionary *>::~ReferenceCounted(theDict);
  [__t.__d_.__rep_ setPreprocessorMacroDefinitions:v539];
  CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v539);
  v26 = *(this + 84);
  v27 = *(this + 83);
  if (!v26)
  {
    if (!v27)
    {
      v36 = *(this + 85);
      if (v36)
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v30 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_119;
        }

        v38 = *(this + 85);
        *buf = 134218242;
        *&buf[4] = this;
        *&buf[12] = 2112;
        *&buf[14] = v38;
        v32 = "[%p|%@] neither graph text file path nor graph text were set";
LABEL_72:
        v39 = v30;
        v40 = 22;
LABEL_106:
        _os_log_error_impl(&dword_1C91AE000, v39, OS_LOG_TYPE_ERROR, v32, buf, v40);
        goto LABEL_119;
      }

      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v35 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }

      *buf = 134217984;
      *&buf[4] = this;
      v32 = "[%p] neither graph text file path nor graph text were set";
LABEL_105:
      v39 = v35;
      v40 = 12;
      goto LABEL_106;
    }

    CA::DSP::MutableGraphModel::Create(&cf, allocator);
    theDict[0] = cf;
    if (cf)
    {
      CFRetain(cf);
      v33 = theDict[0];
    }

    else
    {
      v33 = 0;
    }

    CA::DSP::C::API::Call<unsigned char ()(__CADSPLanguageV1Interpreter *,__CFString const*,__CADSPGraphModel *,__CADSPError **)>::operator()<__CADSPLanguageV1Interpreter *,__CFString const*&,__CADSPGraphModel * const&>(buf, CADSPLanguageV1InterpreterInterpretContentsOfFile, __t.__d_.__rep_, v27, v33);
    v41 = buf[8];
    if (buf[8])
    {
      value[8] = buf[8];
    }

    else
    {
      v42 = *buf;
      *buf = 0;
      *v549 = 0;
      *value = v42;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v549);
      value[8] = v41;
      if ((buf[8] & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
      }
    }

    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(theDict);
    if (value[8] == 1)
    {
      v43 = cf;
      cf = 0;
      *v549 = v43;
      v549[8] = 1;
    }

    else
    {
      v416 = CA::DSP::ReferenceCounted<__CADSPError *>::ReferenceCounted(buf, *value);
      v417 = *buf;
      *buf = 0;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v416);
      *v549 = v417;
      v549[8] = 0;
      if ((value[8] & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(value);
      }
    }

    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&cf);
    v44 = v549[8];
    if (v549[8] == 1)
    {
      v45 = *v549;
      v518 = *v549;
      if (!*v549)
      {
        goto LABEL_115;
      }

      goto LABEL_82;
    }

    v46 = *(v509 + 85);
    if (v46)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v48 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      v49 = *(v509 + 85);
      *buf = 134218498;
      *&buf[4] = v509;
      *&buf[12] = 2112;
      *&buf[14] = v49;
      *&buf[22] = 2112;
      *&buf[24] = *v549;
      v50 = "[%p|%@] failed to interpret graph file - %@";
      goto LABEL_101;
    }

    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v59 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    *buf = 134218242;
    *&buf[4] = v509;
    *&buf[12] = 2112;
    *&buf[14] = *v549;
    v50 = "[%p] failed to interpret graph file - %@";
LABEL_113:
    v57 = v59;
    v58 = 22;
    goto LABEL_114;
  }

  if (v27)
  {
    v28 = *(this + 85);
    if (v28)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v30 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }

      v31 = *(this + 85);
      *buf = 134218242;
      *&buf[4] = this;
      *&buf[12] = 2112;
      *&buf[14] = v31;
      v32 = "[%p|%@] graph text file path and graph text cannot be set simultaneously";
      goto LABEL_72;
    }

    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v35 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_119;
    }

    *buf = 134217984;
    *&buf[4] = this;
    v32 = "[%p] graph text file path and graph text cannot be set simultaneously";
    goto LABEL_105;
  }

  CA::DSP::MutableGraphModel::Create(&cf, allocator);
  theDict[0] = cf;
  if (cf)
  {
    CFRetain(cf);
    v34 = theDict[0];
  }

  else
  {
    v34 = 0;
  }

  CA::DSP::C::API::Call<unsigned char ()(__CADSPLanguageV1Interpreter *,__CFString const*,__CADSPGraphModel *,__CADSPError **)>::operator()<__CADSPLanguageV1Interpreter *,__CFString const*&,__CADSPGraphModel * const&>(buf, CADSPLanguageV1InterpreterInterpretString, __t.__d_.__rep_, v26, v34);
  v51 = buf[8];
  if (buf[8])
  {
    value[8] = buf[8];
  }

  else
  {
    v52 = *buf;
    *buf = 0;
    *v549 = 0;
    *value = v52;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v549);
    value[8] = v51;
    if ((buf[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
    }
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(theDict);
  if (value[8] == 1)
  {
    v53 = cf;
    cf = 0;
    *v549 = v53;
    v549[8] = 1;
  }

  else
  {
    v418 = CA::DSP::ReferenceCounted<__CADSPError *>::ReferenceCounted(buf, *value);
    v419 = *buf;
    *buf = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v418);
    *v549 = v419;
    v549[8] = 0;
    if ((value[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(value);
    }
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&cf);
  v44 = v549[8];
  if (v549[8] != 1)
  {
    v54 = *(v509 + 85);
    if (v54)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v48 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      v56 = *(v509 + 85);
      *buf = 134218498;
      *&buf[4] = v509;
      *&buf[12] = 2112;
      *&buf[14] = v56;
      *&buf[22] = 2112;
      *&buf[24] = *v549;
      v50 = "[%p|%@] failed to interpret graph text - %@";
LABEL_101:
      v57 = v48;
      v58 = 32;
LABEL_114:
      _os_log_error_impl(&dword_1C91AE000, v57, OS_LOG_TYPE_ERROR, v50, buf, v58);
      goto LABEL_115;
    }

    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v59 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    *buf = 134218242;
    *&buf[4] = v509;
    *&buf[12] = 2112;
    *&buf[14] = *v549;
    v50 = "[%p] failed to interpret graph text - %@";
    goto LABEL_113;
  }

  v45 = *v549;
  v518 = *v549;
  if (*v549)
  {
LABEL_82:
    CFRetain(v45);
  }

LABEL_115:
  if (v549[8] == 1)
  {
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(v549);
    if (v44)
    {
      goto LABEL_120;
    }
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v549);
    if (v44)
    {
      goto LABEL_120;
    }
  }

LABEL_119:
  v518 = 0;
LABEL_120:
  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&__t);
  v60 = v518;
  if (!v518)
  {
    v61 = 4294956421;
    goto LABEL_727;
  }

  if (*(v509 + 85))
  {
    *buf = v518;
    CFRetain(v518);
    [*buf setName:*(v509 + 85)];
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(buf);
    v60 = v518;
  }

  *buf = v518;
  CFRetain(v60);
  v62 = [*buf options];
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(buf);
  if (*(v509 + 3368))
  {
    v63 = 4;
  }

  else
  {
    v63 = 0;
  }

  *value = v518;
  CFRetain(v518);
  [*value setOptions:v63 | v62 & 0xFFFFFFFB];
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(value);
  v64 = *(v509 + 84);
  v65 = ausdk::AUScope::GetElement((v509 + 80), 0);
  if (!v65)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v66 = *(v65 + 80);
  v67 = *(v509 + 376);
  v68 = *(v509 + 85);
  if (v68)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v70 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v71 = *(v509 + 85);
      v72 = "fixed";
      *buf = 134219010;
      if (v67)
      {
        v72 = "variable";
      }

      *&buf[4] = v509;
      *&buf[12] = 2112;
      *&buf[14] = v71;
      *&buf[22] = 2080;
      *&buf[24] = v72;
      *&buf[32] = 1024;
      *&buf[34] = v64;
      *&buf[38] = 1024;
      *&buf[40] = v66;
      v73 = "[%p|%@] setting %s slice duration with block size %u and sample rate %u";
      v74 = v70;
      v75 = 44;
LABEL_139:
      _os_log_impl(&dword_1C91AE000, v74, OS_LOG_TYPE_DEFAULT, v73, buf, v75);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v76 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v77 = "fixed";
      *buf = 134218754;
      *&buf[12] = 2080;
      *&buf[4] = v509;
      if (v67)
      {
        v77 = "variable";
      }

      *&buf[14] = v77;
      *&buf[22] = 1024;
      *&buf[24] = v64;
      *&buf[28] = 1024;
      *&buf[30] = v66;
      v73 = "[%p] setting %s slice duration with block size %u and sample rate %u";
      v74 = v76;
      v75 = 34;
      goto LABEL_139;
    }
  }

  *buf = v518;
  CFRetain(v518);
  [*buf setSliceDuration:v64 | (v66 << 32)];
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(buf);
  *value = v518;
  CFRetain(v518);
  [*value setSliceDurationCanVary:v67 ^ 1u];
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(value);
  cf = v518;
  CFRetain(v518);
  v78 = [cf audioStreamConfigurationNames];
  *buf = 0;
  *v549 = v78;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&cf);
  v79 = *v549;
  Count = CFArrayGetCount(*v549);
  v81 = *v549;
  if (v79 != *v549 || Count)
  {
    v86 = 0;
    v502 = *v549;
    v503 = Count - 1;
    do
    {
      v87 = v86;
      ValueAtIndex = CFArrayGetValueAtIndex(v79, v86);
      v89 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      *buf = 0;
      theDict[0] = v89;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
      __t.__d_.__rep_ = v518;
      CFRetain(v518);
      if ([__t.__d_.__rep_ getAudioStreamConfiguration:value forName:theDict[0]])
      {
        *buf = *value;
        *&buf[16] = *&value[16];
        *&buf[32] = *&value[32];
        v90 = 1;
      }

      else
      {
        v90 = 0;
        buf[0] = 0;
      }

      buf[48] = v90;
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&__t);
      if (buf[48] != 1)
      {
        goto LABEL_175;
      }

      if (CFStringHasPrefix(theDict[0], @"input"))
      {
        v91 = ausdk::AUScope::GetElement((v509 + 80), 0);
        goto LABEL_153;
      }

      if (CFStringHasPrefix(theDict[0], @"output"))
      {
        v104 = *(v509 + 21);
        if (v104)
        {
          if ((*(*v104 + 24))(v104))
          {
            goto LABEL_179;
          }
        }

        else if (((*(v509 + 19) - *(v509 + 18)) >> 3))
        {
LABEL_179:
          v91 = ausdk::AUScope::GetElement((v509 + 128), 0);
LABEL_153:
          if (!v91)
          {
            ausdk::Throw(0xFFFFD583);
          }

          v92 = v79;
          v93 = *(v91 + 80);
          v94 = *(v91 + 92);
          v95 = *(v91 + 108);
          v96 = *buf;
          v97 = *&buf[8];
          v98 = *&buf[12];
          v100 = *&buf[16];
          v99 = *&buf[20];
          v102 = *&buf[24];
          v101 = *&buf[28];
          v506 = *&buf[32];
          if (!CFStringFind(*theDict, @"FixedChannelCount", 0).length)
          {
            if ((v98 & 0x20) != 0)
            {
              v101 = 1;
            }

            else if (!v101)
            {
              v103 = (v506 + 7) >> 3;
              goto LABEL_164;
            }

            v103 = v102 / v101;
LABEL_164:
            if ((v94 & 0x20) != 0)
            {
              v105 = 1;
            }

            else
            {
              v105 = v95;
            }

            v102 = v103 * v105;
            v98 = v98 & 0xFFFFFFDF | v94 & 0x20;
            v99 = 1;
            v101 = v95;
            v100 = v103 * v105;
          }

          if (CFStringFind(*theDict, @"FixedSampleRate", 0).length)
          {
            v106 = v96;
          }

          else
          {
            v106 = v93;
          }

          *buf = v106;
          *&buf[8] = v97;
          *&buf[12] = v98;
          *&buf[16] = v100;
          *&buf[20] = v99;
          *&buf[24] = v102;
          *&buf[28] = v101;
          *&buf[32] = v506;
          v539 = v518;
          CFRetain(v518);
          v79 = v92;
          v81 = v502;
          if (buf[48])
          {
            v107 = buf;
          }

          else
          {
            v107 = 0;
          }

          [v539 setAudioStreamConfiguration:v107 forName:theDict[0]];
          CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v539);
        }
      }

LABEL_175:
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(theDict);
      v86 = v87 + 1;
    }

    while (v79 != v81 || v503 != v87);
  }

  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v549);
  *buf = 0;
  v82 = MGCopyAnswerWithError();
  v83 = v82;
  if (*buf)
  {
    if (!v82)
    {
      goto LABEL_261;
    }

    v84 = 0;
    v85 = 0;
  }

  else
  {
    if (!v82)
    {
      goto LABEL_261;
    }

    v85 = applesauce::CF::convert_as<BOOL,0>(v82);
    v84 = v85 > 0xFFu;
  }

  CFRelease(v83);
  if ((v84 & v85) == 1)
  {
    CA::DSP::AU::DSPGraph::Settings::Get<__CFString const*>(&cf, v509 + 415, @"com.apple.coreaudio.AUDSPGraph.UserPreferencesSuiteName", @"com.apple.coreaudio");
    if (!CFPreferencesGetAppBooleanValue(@"AUDSPGraphEnableAudioCaptures", cf, 0))
    {
LABEL_259:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_261;
    }

    CA::DSP::AU::DSPGraph::Settings::Get<__CFString const*>(theDict, v509 + 415, @"com.apple.coreaudio.AUDSPGraph.TemporaryDirectoryPath", @"/tmp/AudioCapture/AUDSPGraph");
    if (!theDict[0])
    {
      v421 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v421, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(buf, theDict[0]);
    *value = *buf;
    *&value[16] = *&buf[16];
    std::__fs::filesystem::__status(value, 0);
    if (buf[0] == 255 || !buf[0])
    {
      std::__fs::filesystem::__create_directories(value, 0);
      v108 = *(v509 + 85);
      if (v108)
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v110 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_196;
        }

        v111 = *(v509 + 85);
        v112 = value;
        if (value[23] < 0)
        {
          v112 = *value;
        }

        *buf = 134218498;
        *&buf[4] = v509;
        *&buf[12] = 2112;
        *&buf[14] = v111;
        *&buf[22] = 2080;
        *&buf[24] = v112;
        v113 = "[%p|%@] created '%s' directory";
        v114 = v110;
        v115 = 32;
      }

      else
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v116 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_196;
        }

        v394 = value;
        if (value[23] < 0)
        {
          v394 = *value;
        }

        *buf = 134218242;
        *&buf[4] = v509;
        *&buf[12] = 2080;
        *&buf[14] = v394;
        v113 = "[%p] created '%s' directory";
        v114 = v116;
        v115 = 22;
      }

      _os_log_debug_impl(&dword_1C91AE000, v114, OS_LOG_TYPE_DEBUG, v113, buf, v115);
    }

LABEL_196:
    memset(buf, 0, sizeof(buf));
    __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v539 = std::chrono::system_clock::to_time_t(&__t);
    v117 = localtime(&v539);
    strftime(buf, 0x40uLL, "%Y%m%d.%H%M%S", v117);
    v537 = v518;
    CFRetain(v518);
    v118 = [v518 name];
    *v549 = 0;
    theString = v118;
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v549);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v537);
    v536 = v518;
    CFRetain(v518);
    v119 = [v518 boxes];
    *v549 = 0;
    theArray = v119;
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v549);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v536);
    v120 = theArray;
    v504 = CFArrayGetCount(theArray);
    v507 = theArray;
    if (v120 != theArray || v504)
    {
      v121 = 0;
      do
      {
        v122 = CFArrayGetValueAtIndex(v120, v121);
        v123 = v122;
        if (v122)
        {
          CFRetain(v122);
        }

        *v549 = 0;
        v535 = v123;
        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(v549);
        v124 = v535;
        v533 = v535;
        if (v535)
        {
          CFRetain(v535);
          v124 = v533;
        }

        v125 = [v124 name];
        *v549 = 0;
        appendedString = v125;
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v549);
        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v533);
        for (i = 0; ; ++i)
        {
          v127 = v535;
          v532 = v535;
          if (v535)
          {
            CFRetain(v535);
            v127 = v532;
          }

          v128 = [v127 numberOfOutputs];
          CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v532);
          if (v128 <= i)
          {
            break;
          }

          CA::DSP::MutableRecorderTapPointModel::Create(v549, allocator);
          v531 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
          }

          v129 = CFStringCreateMutable(allocator, 256);
          v130 = v129;
          v530 = v129;
          if (value[23] >= 0)
          {
            v131 = value;
          }

          else
          {
            v131 = *value;
          }

          CFStringAppendCString(v129, v131, 0x8000100u);
          CFStringAppendCString(v130, "/", 0x8000100u);
          CFStringAppendCString(v130, buf, 0x8000100u);
          if (theString && CFStringGetLength(theString))
          {
            CFStringAppend(v130, theString);
          }

          if (appendedString && CFStringGetLength(appendedString))
          {
            CFStringAppendCString(v130, ".", 0x8000100u);
            CFStringAppend(v130, appendedString);
          }

          CFStringAppendFormat(v130, 0, @"[%u].caf", i);
          [v531 setAudioFilePath:v530];
          CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&v530);
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v531);
          v132 = *v549;
          v529 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
            v132 = v529;
          }

          [v132 setBoxName:appendedString];
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v529);
          v133 = *v549;
          v528 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
            v133 = v528;
          }

          [v133 setPortIndex:i];
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v528);
          v527 = v518;
          CFRetain(v518);
          v526 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
            v134 = v526;
          }

          else
          {
            v134 = 0;
          }

          [v527 addRecorderTapPoint:v134];
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(&v526);
          CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v527);
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(v549);
        }

        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&appendedString);
        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v535);
        ++v121;
      }

      while (v120 != v507 || v121 != v504);
    }

    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&theArray);
    v135 = 0;
    theArray = 0x100000000;
    do
    {
      v136 = *&v549[v135 - 8];
      appendedString = v518;
      CFRetain(v518);
      v138 = CADSPGraphModelCopyPorts(appendedString, v136, v137);
      *v549 = 0;
      v535 = v138;
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v549);
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&appendedString);
      v139 = v535;
      v140 = CFArrayGetCount(v535);
      v141 = v535;
      if (v139 != v535 || v140)
      {
        v142 = 0;
        v143 = v140 - 1;
        do
        {
          v144 = v142;
          v145 = CFArrayGetValueAtIndex(v139, v142);
          v146 = v145;
          if (v145)
          {
            CFRetain(v145);
          }

          *v549 = 0;
          v530 = v146;
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(v549);
          v147 = v530;
          v524 = v530;
          if (v530)
          {
            CFRetain(v530);
            v147 = v524;
          }

          v148 = [v147 name];
          *v549 = 0;
          v525 = v148;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v549);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v524);
          CA::DSP::MutableRecorderTapPointModel::Create(v549, allocator);
          v523 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
          }

          v149 = CFStringCreateMutable(allocator, 256);
          v150 = v149;
          v522 = v149;
          if (value[23] >= 0)
          {
            v151 = value;
          }

          else
          {
            v151 = *value;
          }

          CFStringAppendCString(v149, v151, 0x8000100u);
          CFStringAppendCString(v150, "/", 0x8000100u);
          CFStringAppendCString(v150, buf, 0x8000100u);
          if (theString && CFStringGetLength(theString))
          {
            CFStringAppend(v150, theString);
          }

          if (v525 && CFStringGetLength(v525))
          {
            CFStringAppendCString(v150, ".", 0x8000100u);
            CFStringAppend(v150, v525);
          }

          CFStringAppendCString(v150, ".caf", 0x8000100u);
          [v523 setAudioFilePath:v522];
          CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&v522);
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v523);
          v152 = *v549;
          v521 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
            v152 = v521;
          }

          [v152 setBoxName:v525];
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v521);
          v520 = v518;
          CFRetain(v518);
          v519 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
            v153 = v519;
          }

          else
          {
            v153 = 0;
          }

          [v520 addRecorderTapPoint:v153];
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(&v519);
          CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v520);
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(v549);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v525);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v530);
          v142 = v144 + 1;
        }

        while (v139 != v141 || v143 != v144);
      }

      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v535);
      v135 += 4;
    }

    while (v135 != 8);
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&theString);
    if ((value[23] & 0x80000000) != 0)
    {
      operator delete(*value);
    }

    if (theDict[0])
    {
      CFRelease(theDict[0]);
    }

    goto LABEL_259;
  }

LABEL_261:
  theDict[0] = v518;
  CFRetain(v518);
  *v549 = 0;
  v154 = CADSPGraphCreateWithModel(allocator, theDict[0], v549);
  if (v154)
  {
    cf = 0;
    *buf = 0;
    *value = v154;
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(buf);
    value[8] = 1;
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&cf);
  }

  else
  {
    v415 = *v549;
    if (!*v549)
    {
      v415 = [[CADSPError allocWithZone:?]userInfo:"initWithCode:userInfo:", 1970170734, 0];
      *v549 = v415;
    }

    cf = 0;
    *buf = 0;
    *value = v415;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
    value[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&cf);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(theDict);
  v155 = value[8];
  if (value[8] == 1)
  {
    v536 = *value;
    if (*value)
    {
      CFRetain(*value);
    }

    goto LABEL_272;
  }

  v156 = *(v509 + 85);
  if (v156)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v158 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      v159 = *(v509 + 85);
      *buf = 134218498;
      *&buf[4] = v509;
      *&buf[12] = 2112;
      *&buf[14] = v159;
      *&buf[22] = 2112;
      *&buf[24] = *value;
      v160 = "[%p|%@] failed to create graph - %@";
      v161 = v158;
      v162 = 32;
LABEL_729:
      _os_log_error_impl(&dword_1C91AE000, v161, OS_LOG_TYPE_ERROR, v160, buf, v162);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v163 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      *&buf[4] = v509;
      *&buf[12] = 2112;
      *&buf[14] = *value;
      v160 = "[%p] failed to create graph - %@";
      v161 = v163;
      v162 = 22;
      goto LABEL_729;
    }
  }

LABEL_272:
  if (value[8] == 1)
  {
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(value);
    if ((v155 & 1) == 0)
    {
LABEL_274:
      v536 = 0;
      goto LABEL_725;
    }
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(value);
    if ((v155 & 1) == 0)
    {
      goto LABEL_274;
    }
  }

  if (!v536)
  {
    goto LABEL_725;
  }

  CA::DSP::Graph::CopyBoxes(&v539, v536);
  v164 = v539;
  v166 = CA::DSP::end<CA::DSP::Box>(&v539);
  if (v164 != v166 || v165)
  {
    v231 = 0;
    v232 = v165 - 1;
    v233 = "enable";
    v234 = &unk_1EC395000;
    do
    {
      v235 = v231;
      v236 = CFArrayGetValueAtIndex(v164, v231);
      v237 = v236;
      if (v236)
      {
        CFRetain(v236);
      }

      *buf = 0;
      theString = v237;
      CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(buf);
      *&buf[8] = 0;
      theDict[0] = 0;
      PropertyInfo = CADSPBoxGetPropertyInfo(theString, 0x25uLL, 0, &buf[8]);
      v239 = theDict[0];
      if (!PropertyInfo && !theDict[0])
      {
        v239 = _CADSPRealTimeErrorCreate(v234[177], 1970170734, 0);
        theDict[0] = v239;
      }

      __t.__d_.__rep_ = v239;
      if (v239)
      {
        v240 = 0;
        __t.__d_.__rep_ = 0;
      }

      else
      {
        v239 = *&buf[8];
        v240 = 1;
      }

      *value = v239;
      value[8] = v240;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__t);
      v241 = value[8];
      if (value[8] == 1)
      {
        cf = *value;
        v543 = value[8];
      }

      else
      {
        v250 = *value;
        *value = 0;
        *buf = 0;
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
        cf = v250;
        v543 = v241;
        if ((value[8] & 1) != 0 || (CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(value), (v543 & 1) == 0))
        {
          v251 = cf;
          cf = 0;
          *v549 = v251;
          v549[8] = 0;
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v549);
          if (v543)
          {
            goto LABEL_446;
          }

          p_cf = &cf;
          goto LABEL_445;
        }
      }

      if ((cf & 2) == 0)
      {
        goto LABEL_446;
      }

      *buf = *(v509 + 3368);
      CA::DSP::Box::SetProperty(value, theString, 0x25uLL, 0);
      if ((value[8] & 1) == 0)
      {
        v242 = *(v509 + 85);
        if (v242)
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v244 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_443;
          }

          v245 = v233;
          v505 = *(v509 + 85);
          v246 = *(v509 + 3368);
          CA::DSP::Box::GetModel(&v537, theString);
          v247 = [v537 name];
          if (v246)
          {
            v248 = v245;
          }

          else
          {
            v248 = "disable";
          }

          *buf = 0;
          *v549 = v247;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
          *buf = 134219010;
          *&buf[4] = v509;
          *&buf[12] = 2112;
          *&buf[14] = v505;
          *&buf[22] = 2080;
          *&buf[24] = v248;
          v233 = v245;
          *&buf[32] = 2112;
          *&buf[34] = *v549;
          *&buf[42] = 2112;
          *&buf[44] = *value;
          _os_log_error_impl(&dword_1C91AE000, v244, OS_LOG_TYPE_ERROR, "[%p|%@] failed %s offline render mode for '%@' - %@", buf, 0x34u);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v549);
          p_theArray = &v537;
        }

        else
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v253 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_443;
          }

          v254 = *(v509 + 3368);
          CA::DSP::Box::GetModel(&theArray, theString);
          v255 = [(__CFArray *)theArray name];
          if (v254)
          {
            v256 = v233;
          }

          else
          {
            v256 = "disable";
          }

          *buf = 0;
          *v549 = v255;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
          *buf = 134218754;
          *&buf[4] = v509;
          *&buf[12] = 2080;
          *&buf[14] = v256;
          *&buf[22] = 2112;
          *&buf[24] = *v549;
          *&buf[32] = 2112;
          *&buf[34] = *value;
          _os_log_error_impl(&dword_1C91AE000, v253, OS_LOG_TYPE_ERROR, "[%p] failed %s offline render mode for '%@' - %@", buf, 0x2Au);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v549);
          p_theArray = &theArray;
        }

        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(p_theArray);
        v234 = &unk_1EC395000;
      }

LABEL_443:
      if (value[8])
      {
        goto LABEL_446;
      }

      p_cf = value;
LABEL_445:
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(p_cf);
LABEL_446:
      CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(&theString);
      v231 = v235 + 1;
    }

    while (v164 != v166 || v232 != v235);
  }

  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v539);
  CA::DSP::Graph::CopyBoxes(v549, v536);
  v167 = *v549;
  v169 = CA::DSP::end<CA::DSP::Box>(v549);
  if (v167 != v169 || v168)
  {
    v257 = 0;
    v258 = v168 - 1;
    do
    {
      v259 = v257;
      v260 = CFArrayGetValueAtIndex(v167, v257);
      v261 = v260;
      if (v260)
      {
        CFRetain(v260);
      }

      *buf = 0;
      cf = v261;
      CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(buf);
      (*(**(cf + 1) + 216))(buf);
      if (*&buf[4] != 1685287015)
      {
        goto LABEL_474;
      }

      theDict[0] = *(v509 + 99);
      CA::DSP::Box::SetProperty(value, cf, 0x70727375uLL, 0);
      if ((value[8] & 1) == 0)
      {
        v262 = *(v509 + 85);
        if (v262)
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v264 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_472;
          }

          v265 = *(v509 + 85);
          CA::DSP::Box::GetModel(&v539, cf);
          v266 = [v539 name];
          *buf = 0;
          __t.__d_.__rep_ = v266;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
          *buf = 134218754;
          *&buf[4] = v509;
          *&buf[12] = 2112;
          *&buf[14] = v265;
          *&buf[22] = 2112;
          *&buf[24] = __t;
          *&buf[32] = 2112;
          *&buf[34] = *value;
          _os_log_impl(&dword_1C91AE000, v264, OS_LOG_TYPE_DEFAULT, "[%p|%@] failed set property strip substitutions on '%@' - %@", buf, 0x2Au);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&__t);
          p_theString = &v539;
        }

        else
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v268 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_472;
          }

          CA::DSP::Box::GetModel(&theString, cf);
          v269 = [(__CFString *)theString name];
          *buf = 0;
          __t.__d_.__rep_ = v269;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
          *buf = 134218498;
          *&buf[4] = v509;
          *&buf[12] = 2112;
          *&buf[14] = __t;
          *&buf[22] = 2112;
          *&buf[24] = *value;
          _os_log_impl(&dword_1C91AE000, v268, OS_LOG_TYPE_DEFAULT, "[%p] failed set property strip substitutions on '%@' - %@", buf, 0x20u);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&__t);
          p_theString = &theString;
        }

        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(p_theString);
      }

LABEL_472:
      if ((value[8] & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(value);
      }

LABEL_474:
      CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(&cf);
      v257 = v259 + 1;
    }

    while (v167 != v169 || v258 != v259);
  }

  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v549);
  v517 = v536;
  if (v536)
  {
    CFRetain(v536);
  }

  v170 = *(v509 + 93);
  v171 = *(v509 + 94);
  if (!v170 && v171)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v171)
  {
    v172 = v170 + 16 * v171;
    do
    {
      if (!v170)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      std::pair<unsigned int,applesauce::CF::DictionaryRef>::pair[abi:ne200100](buf, *v170, *(v170 + 8));
      v173 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_298;
      }

      *value = v517;
      if (v517)
      {
        CFRetain(v517);
        v173 = *&buf[8];
        v174 = *buf;
        if (!*&buf[8])
        {
          goto LABEL_294;
        }
      }

      else
      {
        v174 = *buf;
      }

      CFRetain(v173);
LABEL_294:
      *v549 = v173;
      CA::DSP::AUDSPGraph::ApplyGraphPropertyStrip(v509, value, v174, v549);
      if (*v549)
      {
        CFRelease(*v549);
      }

      CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(value);
      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }

LABEL_298:
      v170 += 16;
    }

    while (v170 != v172);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v517);
  v516 = v536;
  if (v536)
  {
    CFRetain(v536);
  }

  v175 = *(v509 + 88);
  v176 = *(v509 + 89);
  if (!v175 && v176)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v176)
  {
    v177 = v175 + 16 * v176;
    do
    {
      if (!v175)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      std::pair<unsigned int,applesauce::CF::DictionaryRef>::pair[abi:ne200100](buf, *v175, *(v175 + 8));
      v178 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_316;
      }

      *value = v516;
      if (v516)
      {
        CFRetain(v516);
        v178 = *&buf[8];
        v179 = *buf;
        v180 = *&buf[8] == 0;
        if (!*&buf[8])
        {
          goto LABEL_312;
        }
      }

      else
      {
        v179 = *buf;
        v180 = *&buf[8] == 0;
      }

      CFRetain(v178);
LABEL_312:
      *v549 = v178;
      CA::DSP::AUDSPGraph::ApplyGraphAUStrip(v509, value, v179, v549);
      if (!v180)
      {
        CFRelease(v178);
      }

      CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(value);
      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }

LABEL_316:
      v175 += 16;
    }

    while (v175 != v177);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v516);
  v515 = v536;
  if (v536)
  {
    CFRetain(v536);
  }

  v181 = *(v509 + 100);
  v182 = *(v509 + 101);
  if (!v181 && v182)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v182)
  {
    v183 = v181 + 12 * v182;
    do
    {
      if (!v181)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if ((*(v181 + 4) & 0x100000000) == 0)
      {
        goto LABEL_353;
      }

      v184 = *v181;
      LODWORD(v185) = *(v181 + 4);
      v186 = *(v509 + 85);
      if (v186)
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v188 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
        {
          v189 = *(v509 + 85);
          v190 = bswap32(v184);
          *&buf[1] = v190;
          if ((v190 - 32) > 0x5E || ((v190 >> 8) - 32) > 0x5E || ((v190 << 8 >> 24) - 32) > 0x5E || ((v190 >> 24) - 32) > 0x5E)
          {
            std::to_string(value, v184);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(value, buf);
          }

          if (value[23] >= 0)
          {
            v193 = value;
          }

          else
          {
            v193 = *value;
          }

          *buf = 134218754;
          *&buf[4] = v509;
          *&buf[12] = 2112;
          *&buf[14] = v189;
          *&buf[22] = 2080;
          *&buf[24] = v193;
          *&buf[32] = 2048;
          *&buf[34] = v185;
          v194 = v188;
          v195 = "[%p|%@] setting DSP graph parameter %s to %f";
          v196 = 42;
          goto LABEL_350;
        }
      }

      else
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v191 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
        {
          v192 = bswap32(v184);
          *&buf[1] = v192;
          if ((v192 - 32) > 0x5E || ((v192 >> 8) - 32) > 0x5E || ((v192 << 8 >> 24) - 32) > 0x5E || ((v192 >> 24) - 32) > 0x5E)
          {
            std::to_string(value, v184);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(value, buf);
          }

          if (value[23] >= 0)
          {
            v197 = value;
          }

          else
          {
            v197 = *value;
          }

          *buf = 134218498;
          *&buf[4] = v509;
          *&buf[12] = 2080;
          *&buf[14] = v197;
          *&buf[22] = 2048;
          *&buf[24] = v185;
          v194 = v191;
          v195 = "[%p] setting DSP graph parameter %s to %f";
          v196 = 32;
LABEL_350:
          _os_log_impl(&dword_1C91AE000, v194, OS_LOG_TYPE_DEFAULT, v195, buf, v196);
          if ((value[23] & 0x80000000) != 0)
          {
            operator delete(*value);
          }
        }
      }

      v198 = CA::DSP::AUDSPGraph::ParameterManager::SetParameter(v549, v509 + 416, &v515, v184, v185);
      if ((v549[8] & 1) == 0)
      {
        v395 = *(v509 + 85);
        Log = CA::DSP::AU::DSPGraph::GetLog(v198);
        v397 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
        if (v395)
        {
          if (v397)
          {
            v409 = *(v509 + 85);
            AudioDSPGraph::stringFromFourCharCode<unsigned int>(value, v184);
            if (value[23] >= 0)
            {
              v410 = value;
            }

            else
            {
              v410 = *value;
            }

            *buf = 134218754;
            *&buf[4] = v509;
            *&buf[12] = 2112;
            *&buf[14] = v409;
            *&buf[22] = 2080;
            *&buf[24] = v410;
            *&buf[32] = 2112;
            *&buf[34] = *v549;
            v399 = "[%p|%@] failed to set DSP graph parameter %s - %@";
            v400 = Log;
            v401 = 42;
            goto LABEL_763;
          }
        }

        else if (v397)
        {
          AudioDSPGraph::stringFromFourCharCode<unsigned int>(value, v184);
          if (value[23] >= 0)
          {
            v398 = value;
          }

          else
          {
            v398 = *value;
          }

          *buf = 134218498;
          *&buf[4] = v509;
          *&buf[12] = 2080;
          *&buf[14] = v398;
          *&buf[22] = 2112;
          *&buf[24] = *v549;
          v399 = "[%p] failed to set DSP graph parameter %s - %@";
          v400 = Log;
          v401 = 32;
LABEL_763:
          _os_log_error_impl(&dword_1C91AE000, v400, OS_LOG_TYPE_ERROR, v399, buf, v401);
          if ((value[23] & 0x80000000) != 0)
          {
            operator delete(*value);
          }
        }

        v411 = __cxa_allocate_exception(4uLL);
        *v411 = -10875;
      }

LABEL_353:
      v181 += 12;
    }

    while (v181 != v183);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v515);
  *v514 = v536;
  if (v536)
  {
    CFRetain(v536);
  }

  v199 = *(v509 + 151);
  v200 = *(v509 + 152);
  if (!v199 && v200)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v200)
  {
    v201 = v199 + (v200 << 6);
    do
    {
      if (!v199)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      *buf = *v199;
      v202 = CA::DSP::ReferenceCounted<__CFDictionary const*>::ReferenceCounted(&buf[8], *(v199 + 8));
      buf[16] = *(v199 + 16);
      memset(&buf[24], 0, 24);
      default_resource = std::pmr::get_default_resource(v202);
      *&buf[48] = default_resource;
      v204 = *(v199 + 24);
      v205 = *(v199 + 32);
      *value = &buf[24];
      value[8] = 0;
      v206 = v205 - v204;
      if (v205 != v204)
      {
        if (v206 < 0)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v207 = (*(*default_resource + 16))(default_resource, v205 - v204, 1);
        *&buf[24] = v207;
        *&buf[32] = v207;
        *&buf[40] = &v207[v206];
        do
        {
          v208 = *v204++;
          *v207++ = v208;
        }

        while (v204 != v205);
        *&buf[32] = v207;
      }

      buf[56] = *(v199 + 56);
      v209 = *&buf[24];
      if (buf[56] != 1)
      {
        goto LABEL_400;
      }

      v210 = *buf;
      v211 = *&buf[32];
      v212 = *(v509 + 85);
      if (v212)
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v214 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_398;
        }

        v215 = *(v509 + 85);
        v216 = bswap32(v210);
        *&value[1] = v216;
        if ((v216 - 32) > 0x5E || ((v216 >> 8) - 32) > 0x5E || ((v216 << 8 >> 24) - 32) > 0x5E || ((v216 >> 24) - 32) > 0x5E)
        {
          std::to_string(v549, v210);
        }

        else
        {
          strcpy(&value[5], "'");
          value[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(v549, value);
        }

        v219 = v549;
        if (v549[23] < 0)
        {
          v219 = *v549;
        }

        *value = 134218498;
        *&value[4] = v509;
        *&value[12] = 2112;
        *&value[14] = v215;
        *&value[22] = 2080;
        *&value[24] = v219;
        _os_log_impl(&dword_1C91AE000, v214, OS_LOG_TYPE_DEFAULT, "[%p|%@] setting DSP graph property %s", value, 0x20u);
        if ((v549[23] & 0x80000000) == 0)
        {
          goto LABEL_398;
        }

        v220 = *v549;
      }

      else
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v217 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_398;
        }

        v218 = bswap32(v210);
        *&v549[1] = v218;
        if ((v218 - 32) > 0x5E || ((v218 >> 8) - 32) > 0x5E || ((v218 << 8 >> 24) - 32) > 0x5E || ((v218 >> 24) - 32) > 0x5E)
        {
          std::to_string(value, v210);
        }

        else
        {
          strcpy(&v549[5], "'");
          v549[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(value, v549);
        }

        v221 = value;
        if (value[23] < 0)
        {
          v221 = *value;
        }

        *v549 = 134218242;
        *&v549[4] = v509;
        *&v549[12] = 2080;
        *&v549[14] = v221;
        _os_log_impl(&dword_1C91AE000, v217, OS_LOG_TYPE_DEFAULT, "[%p] setting DSP graph property %s", v549, 0x16u);
        if ((value[23] & 0x80000000) == 0)
        {
          goto LABEL_398;
        }

        v220 = *value;
      }

      operator delete(v220);
LABEL_398:
      v222 = CA::DSP::Graph::SetProperty(&cf, *v514, v210, v209, v211 - v209);
      if ((v543 & 1) == 0)
      {
        v402 = *(v509 + 85);
        v403 = CA::DSP::AU::DSPGraph::GetLog(v222);
        v404 = os_log_type_enabled(v403, OS_LOG_TYPE_ERROR);
        if (v402)
        {
          if (v404)
          {
            v412 = *(v509 + 85);
            AudioDSPGraph::stringFromFourCharCode<unsigned int>(v549, v210);
            if (v549[23] >= 0)
            {
              v413 = v549;
            }

            else
            {
              v413 = *v549;
            }

            *value = 134218754;
            *&value[4] = v509;
            *&value[12] = 2112;
            *&value[14] = v412;
            *&value[22] = 2080;
            *&value[24] = v413;
            *&value[32] = 2112;
            *&value[34] = cf;
            v406 = "[%p|%@] failed to set DSP graph property %s - %@";
            v407 = v403;
            v408 = 42;
            goto LABEL_771;
          }
        }

        else if (v404)
        {
          AudioDSPGraph::stringFromFourCharCode<unsigned int>(v549, v210);
          if (v549[23] >= 0)
          {
            v405 = v549;
          }

          else
          {
            v405 = *v549;
          }

          *value = 134218498;
          *&value[4] = v509;
          *&value[12] = 2080;
          *&value[14] = v405;
          *&value[22] = 2112;
          *&value[24] = cf;
          v406 = "[%p] failed to set DSP graph property %s - %@";
          v407 = v403;
          v408 = 32;
LABEL_771:
          _os_log_error_impl(&dword_1C91AE000, v407, OS_LOG_TYPE_ERROR, v406, value, v408);
          if ((v549[23] & 0x80000000) != 0)
          {
            operator delete(*v549);
          }
        }

        v414 = __cxa_allocate_exception(4uLL);
        *v414 = -10875;
      }

      v209 = *&buf[24];
LABEL_400:
      if (v209)
      {
        *&buf[32] = v209;
        (*(**&buf[48] + 24))(*&buf[48], v209, *&buf[40] - v209, 1);
      }

      CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&buf[8]);
      v199 += 64;
    }

    while (v199 != v201);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v514);
  *v549 = 0;
  v223 = CADSPGraphInitialize(v536, v549);
  v224 = *v549;
  if (!v223 && !*v549)
  {
    goto LABEL_789;
  }

  while (1)
  {
    cf = v224;
    if (v224)
    {
      v225 = 0;
      cf = 0;
      *buf = v224;
    }

    else
    {
      v225 = 1;
    }

    buf[8] = v225;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&cf);
    v226 = buf[8];
    if (buf[8])
    {
      value[8] = buf[8];
LABEL_414:
      theDict[0] = 0;
      goto LABEL_415;
    }

    v270 = *buf;
    *buf = 0;
    *v549 = 0;
    *value = v270;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v549);
    value[8] = v226;
    if ((buf[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
      if (value[8])
      {
        goto LABEL_414;
      }
    }

    v271 = *value;
    *value = 0;
    theDict[0] = v271;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(value);
    if (theDict[0])
    {
      v272 = *(v509 + 85);
      if (v272)
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v274 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          v275 = *(v509 + 85);
          *buf = 134218498;
          *&buf[4] = v509;
          *&buf[12] = 2112;
          *&buf[14] = v275;
          *&buf[22] = 2112;
          *&buf[24] = theDict[0];
          v276 = "[%p|%@] failed to initialize DSP graph - %@";
          v277 = v274;
          v278 = 32;
          goto LABEL_743;
        }
      }

      else
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v391 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          *&buf[4] = v509;
          *&buf[12] = 2112;
          *&buf[14] = theDict[0];
          v276 = "[%p] failed to initialize DSP graph - %@";
          v277 = v391;
          v278 = 22;
LABEL_743:
          _os_log_error_impl(&dword_1C91AE000, v277, OS_LOG_TYPE_ERROR, v276, buf, v278);
        }
      }

      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(theDict);
LABEL_725:
      v61 = 4294956421;
      goto LABEL_726;
    }

LABEL_415:
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(theDict);
    v227 = v536;
    if (v536)
    {
      break;
    }

    *v549 = 0;
    v551 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *value = 134217984;
    *&value[4] = 0;
    LODWORD(v501) = 12;
    v500 = value;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_789:
    v224 = [[CADSPError initWithCode:*MEMORY[0x1E695E4A8] userInfo:v500 allocWithZone:v501], "initWithCode:userInfo:", 1970170734, 0];
    *v549 = v224;
  }

  v228 = v509;
  v229 = *(v509 + 15);
  if (v229)
  {
    LODWORD(v230) = (*(*v229 + 24))(v229);
    v227 = v536;
    v228 = v509;
  }

  else
  {
    v230 = (*(v509 + 13) - *(v509 + 12)) >> 3;
  }

  v279 = v227[1];
  v281 = v279[47];
  v280 = v279[48];
  v282 = *(v228 + 21);
  if (v282)
  {
    LODWORD(v283) = (*(*v282 + 24))(v282);
    v279 = *(v536 + 1);
  }

  else
  {
    v283 = (*(v228 + 19) - *(v228 + 18)) >> 3;
  }

  v284 = (v280 - v281) >> 3;
  v285 = (v279[51] - v279[50]) >> 3;
  v286 = v230 == v284 && v283 == v285;
  v287 = v286;
  allocatora = v287;
  if (!v286)
  {
    v288 = *(v509 + 85);
    if (v288)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v290 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        v291 = *(v509 + 85);
        *buf = 134219266;
        *&buf[4] = v509;
        *&buf[12] = 2112;
        *&buf[14] = v291;
        *&buf[22] = 1024;
        *&buf[24] = v230;
        *&buf[28] = 1024;
        *&buf[30] = v283;
        *&buf[34] = 1024;
        *&buf[36] = v284;
        *&buf[40] = 1024;
        *&buf[42] = v285;
        v292 = "[%p|%@] AudioUnit (%u -> %u) and DSP graph (%u -> %u) I/O bus counts don't match";
        v293 = v290;
        v294 = 46;
        goto LABEL_741;
      }
    }

    else
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v295 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 134219008;
        *&buf[4] = v509;
        *&buf[12] = 1024;
        *&buf[14] = v230;
        *&buf[18] = 1024;
        *&buf[20] = v283;
        *&buf[24] = 1024;
        *&buf[26] = v284;
        *&buf[30] = 1024;
        *&buf[32] = v285;
        v292 = "[%p] AudioUnit (%u -> %u) and DSP graph (%u -> %u) I/O bus counts don't match";
        v293 = v295;
        v294 = 36;
LABEL_741:
        _os_log_error_impl(&dword_1C91AE000, v293, OS_LOG_TYPE_ERROR, v292, buf, v294);
      }
    }
  }

  if (v230 >= v284)
  {
    v296 = v284;
  }

  else
  {
    v296 = v230;
  }

  v297 = &off_1C925E000;
  if (v296)
  {
    for (j = 0; v296 != j; ++j)
    {
      v299 = ausdk::AUScope::GetElement((v509 + 80), j);
      if (!v299)
      {
LABEL_730:
        ausdk::Throw(0xFFFFD583);
      }

      v300 = *(v299 + 96);
      *value = *(v299 + 80);
      *&value[16] = v300;
      *&value[32] = *(v299 + 112);
      CA::DSP::Graph::GetStreamDescription(buf, v536, j, 0);
      *v549 = *buf;
      *&v549[16] = *&buf[16];
      *&v549[32] = *&buf[32];
      if (*value != *buf || *&value[8] != *&v549[8] || *&value[16] != *&v549[16] || *&value[28] != *&v549[28])
      {
LABEL_582:
        v322 = *(v509 + 85);
        if (v322)
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v324 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            v327 = v297;
            v328 = *(v509 + 85);
            CA::StreamDescription::AsString(&cf, value, v325, v326);
            if (v544 >= 0)
            {
              v331 = &cf;
            }

            else
            {
              v331 = cf;
            }

            v332 = *&value[12];
            CA::StreamDescription::AsString(theDict, v549, v329, v330);
            v333 = theDict;
            if (v541 < 0)
            {
              v333 = theDict[0];
            }

            *buf = 134219522;
            *&buf[4] = v509;
            *&buf[12] = 2112;
            *&buf[14] = v328;
            *&buf[22] = 2080;
            *&buf[24] = v331;
            *&buf[32] = 2048;
            *&buf[34] = v332;
            *&buf[42] = 2080;
            *&buf[44] = v333;
            *&buf[52] = 2048;
            *&buf[54] = *&v549[12];
            *&buf[62] = 1024;
            LODWORD(v551) = j;
            _os_log_error_impl(&dword_1C91AE000, v324, OS_LOG_TYPE_ERROR, "[%p|%@] AudioUnit format %s (0x%lX) and DSP graph format %s (0x%lX) for input bus %d don't match", buf, 0x44u);
            if (v541 < 0)
            {
              operator delete(theDict[0]);
            }

            if (v544 < 0)
            {
              operator delete(cf);
            }

            v297 = v327;
          }
        }

        else
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v334 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            CA::StreamDescription::AsString(&cf, value, v335, v336);
            if (v544 >= 0)
            {
              v339 = &cf;
            }

            else
            {
              v339 = cf;
            }

            v340 = *&value[12];
            CA::StreamDescription::AsString(theDict, v549, v337, v338);
            v341 = theDict;
            if (v541 < 0)
            {
              v341 = theDict[0];
            }

            *buf = 134219266;
            *&buf[4] = v509;
            *&buf[12] = 2080;
            *&buf[14] = v339;
            *&buf[22] = 2048;
            *&buf[24] = v340;
            *&buf[32] = 2080;
            *&buf[34] = v341;
            *&buf[42] = 2048;
            *&buf[44] = *&v549[12];
            *&buf[52] = 1024;
            *&buf[54] = j;
            _os_log_error_impl(&dword_1C91AE000, v334, OS_LOG_TYPE_ERROR, "[%p] AudioUnit format %s (0x%lX) and DSP graph format %s (0x%lX) for input bus %d don't match", buf, 0x3Au);
            if (v541 < 0)
            {
              operator delete(theDict[0]);
            }

            if (v544 < 0)
            {
              operator delete(cf);
            }
          }
        }

        continue;
      }

      v301 = *&value[12];
      if (*&value[8] != 1819304813)
      {
        v305 = *&v549[12];
        goto LABEL_581;
      }

      v302 = *&value[12] & 0x7FFFFFFF;
      if ((*&value[12] & 0x7FFFFFFF) == 0)
      {
        v302 = *&value[12];
      }

      if (*&value[24])
      {
        if ((value[12] & 0x20) != 0)
        {
          v303 = 1;
        }

        else
        {
          v303 = *&value[28];
        }

        if (v303)
        {
          v303 = 8 * (*&value[24] / v303);
          v304 = v303 == *&value[32];
          goto LABEL_527;
        }
      }

      else
      {
        v303 = 0;
      }

      v304 = *&value[32] == 0;
LABEL_527:
      v306 = v304;
      v307 = v302 & 0xFFFFFFBF;
      if (v306)
      {
        v308 = v307 | 8;
      }

      else
      {
        v308 = v307;
      }

      v309 = value[32] & 7;
      v310 = v303 == *&value[32] && v309 == 0;
      v301 = v308 & 0xFFFFFFAF;
      if (!v310)
      {
        v301 = v308;
      }

      if (v301)
      {
        v301 &= 0xFFFFFFBB;
      }

      if ((v301 & 8) != 0 && *&value[32] <= 8u)
      {
        v301 &= 2u;
      }

      if (*&value[28] == 1)
      {
        v301 &= ~0x20u;
      }

      if (!v301)
      {
        v301 = 0x80000000;
      }

      v312 = *&v549[24];
      v313 = *&v549[12] & 0x7FFFFFFF;
      if ((*&v549[12] & 0x7FFFFFFF) == 0)
      {
        v313 = *&v549[12];
      }

      if (!*&v549[24])
      {
        goto LABEL_558;
      }

      if ((v549[12] & 0x20) != 0)
      {
        v314 = 1;
      }

      else
      {
        v314 = *&value[28];
      }

      if (!v314)
      {
        v312 = 0;
LABEL_558:
        v315 = *&value[32] == 0;
        goto LABEL_559;
      }

      v312 = 8 * (*&v549[24] / v314);
      v315 = v312 == *&value[32];
LABEL_559:
      v316 = v315;
      v317 = v313 & 0xFFFFFFBF;
      if (v316)
      {
        v317 |= 8u;
      }

      v318 = v312 == *&value[32] && v309 == 0;
      v319 = v317 & 0xFFFFFFAF;
      if (!v318)
      {
        v319 = v317;
      }

      if (v319)
      {
        v319 &= 0xFFFFFFBB;
      }

      v320 = (v319 & 8) == 0 || *&value[32] > 8u;
      v321 = v319 & 2;
      if (v320)
      {
        v321 = v319;
      }

      if (*&value[28] == 1)
      {
        v305 = v321 & 0xFFFFFFDF;
      }

      else
      {
        v305 = v321;
      }

      if (!v305)
      {
        v305 = 0x80000000;
      }

LABEL_581:
      if (v301 != v305)
      {
        goto LABEL_582;
      }
    }
  }

  if (v283 >= v285)
  {
    v342 = v285;
  }

  else
  {
    v342 = v283;
  }

  if (v342)
  {
    v343 = 0;
    v508 = *(v297 + 501);
    do
    {
      v344 = ausdk::AUScope::GetElement((v509 + 128), v343);
      if (!v344)
      {
        goto LABEL_730;
      }

      v345 = *(v344 + 96);
      *value = *(v344 + 80);
      *&value[16] = v345;
      *&value[32] = *(v344 + 112);
      CA::DSP::Graph::GetStreamDescription(buf, v536, v343, 1);
      *v549 = *buf;
      *&v549[16] = *&buf[16];
      *&v549[32] = *&buf[32];
      if (*value != *buf || *&value[8] != *&v549[8] || *&value[16] != *&v549[16] || *&value[28] != *&v549[28])
      {
LABEL_689:
        v367 = *(v509 + 85);
        if (v367)
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v369 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            v372 = *(v509 + 85);
            CA::StreamDescription::AsString(&cf, value, v370, v371);
            if (v544 >= 0)
            {
              v375 = &cf;
            }

            else
            {
              v375 = cf;
            }

            v376 = *&value[12];
            CA::StreamDescription::AsString(theDict, v549, v373, v374);
            v377 = theDict;
            if (v541 < 0)
            {
              v377 = theDict[0];
            }

            *buf = v508;
            *&buf[4] = v509;
            *&buf[12] = 2112;
            *&buf[14] = v372;
            *&buf[22] = 2080;
            *&buf[24] = v375;
            *&buf[32] = 2048;
            *&buf[34] = v376;
            *&buf[42] = 2080;
            *&buf[44] = v377;
            *&buf[52] = 2048;
            *&buf[54] = *&v549[12];
            *&buf[62] = 1024;
            LODWORD(v551) = v343;
            _os_log_error_impl(&dword_1C91AE000, v369, OS_LOG_TYPE_ERROR, "[%p|%@] AudioUnit format %s (0x%lX) and DSP graph format %s (0x%lX) for output bus %d don't match", buf, 0x44u);
            if (v541 < 0)
            {
              operator delete(theDict[0]);
            }

            if (v544 < 0)
            {
              operator delete(cf);
            }
          }
        }

        else
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v378 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            CA::StreamDescription::AsString(&cf, value, v379, v380);
            if (v544 >= 0)
            {
              v383 = &cf;
            }

            else
            {
              v383 = cf;
            }

            v384 = *&value[12];
            CA::StreamDescription::AsString(theDict, v549, v381, v382);
            v385 = theDict;
            if (v541 < 0)
            {
              v385 = theDict[0];
            }

            *buf = 134219266;
            *&buf[4] = v509;
            *&buf[12] = 2080;
            *&buf[14] = v383;
            *&buf[22] = 2048;
            *&buf[24] = v384;
            *&buf[32] = 2080;
            *&buf[34] = v385;
            *&buf[42] = 2048;
            *&buf[44] = *&v549[12];
            *&buf[52] = 1024;
            *&buf[54] = v343;
            _os_log_error_impl(&dword_1C91AE000, v378, OS_LOG_TYPE_ERROR, "[%p] AudioUnit format %s (0x%lX) and DSP graph format %s (0x%lX) for output bus %d don't match", buf, 0x3Au);
            if (v541 < 0)
            {
              operator delete(theDict[0]);
            }

            if (v544 < 0)
            {
              operator delete(cf);
            }
          }
        }

        goto LABEL_704;
      }

      v346 = *&value[12];
      if (*&value[8] != 1819304813)
      {
        v350 = *&v549[12];
        goto LABEL_688;
      }

      v347 = *&value[12] & 0x7FFFFFFF;
      if ((*&value[12] & 0x7FFFFFFF) == 0)
      {
        v347 = *&value[12];
      }

      if (*&value[24])
      {
        if ((value[12] & 0x20) != 0)
        {
          v348 = 1;
        }

        else
        {
          v348 = *&value[28];
        }

        if (v348)
        {
          v348 = 8 * (*&value[24] / v348);
          v349 = v348 == *&value[32];
          goto LABEL_634;
        }
      }

      else
      {
        v348 = 0;
      }

      v349 = *&value[32] == 0;
LABEL_634:
      v351 = v349;
      v352 = v347 & 0xFFFFFFBF;
      if (v351)
      {
        v353 = v352 | 8;
      }

      else
      {
        v353 = v352;
      }

      v354 = value[32] & 7;
      v355 = v348 == *&value[32] && v354 == 0;
      v346 = v353 & 0xFFFFFFAF;
      if (!v355)
      {
        v346 = v353;
      }

      if (v346)
      {
        v346 &= 0xFFFFFFBB;
      }

      if ((v346 & 8) != 0 && *&value[32] <= 8u)
      {
        v346 &= 2u;
      }

      if (*&value[28] == 1)
      {
        v346 &= ~0x20u;
      }

      if (!v346)
      {
        v346 = 0x80000000;
      }

      v357 = *&v549[24];
      v358 = *&v549[12] & 0x7FFFFFFF;
      if ((*&v549[12] & 0x7FFFFFFF) == 0)
      {
        v358 = *&v549[12];
      }

      if (!*&v549[24])
      {
        goto LABEL_665;
      }

      if ((v549[12] & 0x20) != 0)
      {
        v359 = 1;
      }

      else
      {
        v359 = *&value[28];
      }

      if (!v359)
      {
        v357 = 0;
LABEL_665:
        v360 = *&value[32] == 0;
        goto LABEL_666;
      }

      v357 = 8 * (*&v549[24] / v359);
      v360 = v357 == *&value[32];
LABEL_666:
      v361 = v360;
      v362 = v358 & 0xFFFFFFBF;
      if (v361)
      {
        v362 |= 8u;
      }

      v363 = v357 == *&value[32] && v354 == 0;
      v364 = v362 & 0xFFFFFFAF;
      if (!v363)
      {
        v364 = v362;
      }

      if (v364)
      {
        v364 &= 0xFFFFFFBB;
      }

      v365 = (v364 & 8) == 0 || *&value[32] > 8u;
      v366 = v364 & 2;
      if (v365)
      {
        v366 = v364;
      }

      if (*&value[28] == 1)
      {
        v350 = v366 & 0xFFFFFFDF;
      }

      else
      {
        v350 = v366;
      }

      if (!v350)
      {
        v350 = 0x80000000;
      }

LABEL_688:
      if (v346 != v350)
      {
        goto LABEL_689;
      }

LABEL_704:
      ++v343;
    }

    while (v342 != v343);
  }

  if (!allocatora)
  {
    goto LABEL_725;
  }

  v386 = (v509 + 648);
  v387 = CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v509 + 81);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(v387, v536);
  v388 = *(v509 + 100);
  v389 = *(v509 + 101);
  v390 = v388;
  if (!v388)
  {
    goto LABEL_847;
  }

  while (2)
  {
    if (v390 != &v388[12 * v389])
    {
      if (!v390)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v422 = *v390;
      v423 = *v386;
      if (std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((*(*v386 + 8) + 584), *v390))
      {
        CA::DSP::Graph::GetParameterDirection(buf, v423, v422);
        if (*buf)
        {
          v424 = 0;
        }

        else
        {
          v424 = buf[8];
        }

        if ((buf[8] & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
        }

        if ((v424 & 1) == 0)
        {
          LODWORD(v422) = *v390;
          goto LABEL_843;
        }

LABEL_844:
        v390 += 12;
      }

      else
      {
LABEL_843:
        if (std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(v509 + 416, v422))
        {
          goto LABEL_844;
        }

        boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::new_allocator<void>,void>,void>::erase(buf, v509 + 100, v390);
        v390 = *buf;
      }

      v388 = *(v509 + 100);
      v389 = *(v509 + 101);
      if (!v388)
      {
LABEL_847:
        if (v389)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }
      }

      continue;
    }

    break;
  }

  CA::DSP::Graph::GetModel(v549, *v386);
  v425 = [*v549 parameters];
  *buf = 0;
  *value = v425;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v549);
  v426 = *value;
  v428 = CA::DSP::end<CA::DSP::ParameterModel>(value);
  if (v426 != v428 || v427)
  {
    v429 = 0;
    v430 = v427 - 1;
    do
    {
      v431 = v429;
      v432 = CFArrayGetValueAtIndex(v426, v429);
      v433 = v432;
      if (v432)
      {
        CFRetain(v432);
      }

      *buf = 0;
      cf = v433;
      CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(buf);
      v434 = cf;
      theDict[0] = cf;
      if (cf)
      {
        CFRetain(cf);
        v434 = theDict[0];
      }

      v435 = [(__CFDictionary *)v434 ID];
      CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(theDict);
      *buf = v435;
      rep = cf;
      __t.__d_.__rep_ = cf;
      if (cf)
      {
        CFRetain(cf);
        rep = __t.__d_.__rep_;
      }

      v437 = [rep direction];
      CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(&__t);
      if (!v437)
      {
        boost::container::flat_map<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,void,void>>::priv_subscript(v509 + 100, buf);
      }

      CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(&cf);
      v429 = v431 + 1;
    }

    while (v426 != v428 || v430 != v431);
  }

  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(value);
  for (k = *(v509 + 418); k; k = *k)
  {
    *value = *(k + 4);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::find(buf, v509 + 100, value);
    v439 = *(v509 + 100);
    v440 = *(v509 + 101);
    if (v439)
    {
      v441 = 1;
    }

    else
    {
      v441 = v440 == 0;
    }

    if (!v441)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (*buf == v439 + 12 * v440)
    {
      boost::container::flat_map<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,void,void>>::priv_subscript(v509 + 100, value);
    }
  }

  v442 = *(v509 + 151);
  v443 = *(v509 + 152);
  v444 = v442;
  if (!v442)
  {
    goto LABEL_887;
  }

  while (2)
  {
    if (v444 != &v442[16 * v443])
    {
      if (!v444)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v445 = *v444;
      v446 = *v386;
      if (std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((*(*v386 + 8) + 624), *v444))
      {
        CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(buf, CADSPGraphGetPropertyDirection, v446, v445);
        v447 = buf[8];
        if (buf[8] == 1)
        {
          if (!*buf)
          {
LABEL_883:
            v444 += 16;
            goto LABEL_886;
          }
        }

        else
        {
          v448 = *buf;
          *buf = 0;
          *v549 = 0;
          *value = v448;
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v549);
          value[8] = v447;
          if ((buf[8] & 1) != 0 || (CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf), (value[8] & 1) == 0))
          {
            CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(value);
          }

          else if ((value[8] & (*value == 0)) != 0)
          {
            goto LABEL_883;
          }
        }
      }

      boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,void>::erase(buf, v509 + 151, v444);
      v444 = *buf;
LABEL_886:
      v442 = *(v509 + 151);
      v443 = *(v509 + 152);
      if (!v442)
      {
LABEL_887:
        if (v443)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }
      }

      continue;
    }

    break;
  }

  CA::DSP::Graph::GetModel(v549, *v386);
  v449 = [*v549 properties];
  *buf = 0;
  *value = v449;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v549);
  v450 = CFArrayGetCount(*value);
  v451 = *value;
  if (v449 != *value || v450)
  {
    v452 = 0;
    v453 = v450 - 1;
    do
    {
      v454 = v452;
      v455 = CFArrayGetValueAtIndex(v449, v452);
      v456 = v455;
      if (v455)
      {
        CFRetain(v455);
      }

      *buf = 0;
      cf = v456;
      CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(buf);
      v457 = cf;
      theDict[0] = cf;
      if (cf)
      {
        CFRetain(cf);
        v457 = theDict[0];
      }

      v458 = [(__CFDictionary *)v457 ID];
      CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(theDict);
      LODWORD(v539) = v458;
      v459 = cf;
      __t.__d_.__rep_ = cf;
      if (cf)
      {
        CFRetain(cf);
        v459 = __t.__d_.__rep_;
      }

      v460 = [v459 direction];
      CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(&__t);
      if (!v460)
      {
        CA::DSP::Graph::GetPropertyInfo(buf, *v386, v458);
        if (buf[8] != 1 || (boost::container::flat_map<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,void,void>>::priv_subscript(v509 + 1208, &v539), (buf[8] & 1) == 0))
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
        }
      }

      CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(&cf);
      v452 = v454 + 1;
    }

    while (v449 != v451 || v453 != v454);
  }

  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(value);
  if ((*(v509 + 3312) & 1) == 0 && *(v509 + 3304) == 1)
  {
    CA::DSP::AUDSPGraph::RPBConnection::Resume(*(v509 + 412));
  }

  {
    CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
  }

  if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
  {
    v461 = *(v509 + 85);
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v462 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    v463 = os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG);
    if (v461)
    {
      if (v463)
      {
        v464 = *(v509 + 85);
        CA::DSP::Graph::GetLatency(value, v536);
        v465 = 0x7FF8000000000000;
        if (value[8])
        {
          v465 = *value;
        }

        *buf = 134218498;
        *&buf[4] = v509;
        *&buf[12] = 2112;
        *&buf[14] = v464;
        *&buf[22] = 2048;
        *&buf[24] = v465;
        v466 = "[%p|%@] total DSP graph latency is %f seconds";
        v467 = v462;
        v468 = 32;
        goto LABEL_960;
      }
    }

    else if (v463)
    {
      CA::DSP::Graph::GetLatency(value, v536);
      v499 = 0x7FF8000000000000;
      if (value[8])
      {
        v499 = *value;
      }

      *buf = 134218240;
      *&buf[4] = v509;
      *&buf[12] = 2048;
      *&buf[14] = v499;
      v466 = "[%p] total DSP graph latency is %f seconds";
      v467 = v462;
      v468 = 22;
LABEL_960:
      _os_log_debug_impl(&dword_1C91AE000, v467, OS_LOG_TYPE_DEBUG, v466, buf, v468);
      if ((value[8] & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(value);
      }
    }

    CA::DSP::Graph::CopyBoxes(theDict, v536);
    v469 = theDict[0];
    v471 = CA::DSP::end<CA::DSP::Box>(theDict);
    if (v469 == v471 && !v470)
    {
LABEL_918:
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(theDict);
      goto LABEL_919;
    }

    v479 = 0;
    v480 = v470 - 1;
    v481 = &dword_1C91AE000;
    v482 = "[%p|%@] DSP graph latency for box '%@' is %f seconds";
    while (2)
    {
      v483 = v479;
      v484 = CFArrayGetValueAtIndex(v469, v479);
      v485 = v484;
      if (v484)
      {
        CFRetain(v484);
      }

      *buf = 0;
      __t.__d_.__rep_ = v485;
      CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(buf);
      v539 = 0;
      LODWORD(theString) = 8;
      *v549 = 0;
      Property = CADSPBoxGetProperty(__t.__d_.__rep_, 0xCuLL, 0, &v539, &theString);
      v487 = *v549;
      if (!Property && !*v549)
      {
        v487 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
        *v549 = v487;
      }

      cf = v487;
      if (v487)
      {
        v488 = 0;
        cf = 0;
        *buf = v487;
      }

      else
      {
        v488 = 1;
      }

      buf[8] = v488;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&cf);
      v489 = buf[8];
      if (buf[8])
      {
        value[8] = buf[8];
        goto LABEL_937;
      }

      v497 = *buf;
      *buf = 0;
      *v549 = 0;
      *value = v497;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v549);
      value[8] = v489;
      if ((buf[8] & 1) != 0 || (CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf), (value[8] & 1) == 0))
      {
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(value);
        goto LABEL_946;
      }

LABEL_937:
      v490 = *(v509 + 85);
      if (v490)
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v492 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
        {
          v493 = v481;
          v494 = v482;
          v495 = *(v509 + 85);
          CA::DSP::Box::GetModel(&v513, __t.__d_.__rep_);
          CA::DSP::CopyName(value, v513);
          *buf = 134218754;
          *&buf[4] = v509;
          *&buf[12] = 2112;
          *&buf[14] = v495;
          v482 = v494;
          v481 = v493;
          *&buf[22] = 2112;
          *&buf[24] = *value;
          *&buf[32] = 2048;
          *&buf[34] = v539;
          _os_log_debug_impl(v493, v492, OS_LOG_TYPE_DEBUG, v482, buf, 0x2Au);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(value);
          v496 = &v513;
LABEL_950:
          CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(v496);
        }
      }

      else
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v498 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
        {
          CA::DSP::Box::GetModel(&v512, __t.__d_.__rep_);
          CA::DSP::CopyName(value, v512);
          *buf = 134218498;
          *&buf[4] = v509;
          *&buf[12] = 2112;
          *&buf[14] = *value;
          *&buf[22] = 2048;
          *&buf[24] = v539;
          _os_log_debug_impl(v481, v498, OS_LOG_TYPE_DEBUG, "[%p] DSP graph latency for box '%@' is %f seconds", buf, 0x20u);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(value);
          v496 = &v512;
          goto LABEL_950;
        }
      }

LABEL_946:
      CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(&__t);
      v479 = v483 + 1;
      if (v469 == v471 && v480 == v483)
      {
        goto LABEL_918;
      }

      continue;
    }
  }

LABEL_919:
  v472 = *(v509 + 85);
  {
    CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
  }

  v473 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
  v474 = os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT);
  if (v472)
  {
    if (v474)
    {
      v475 = *(v509 + 85);
      *buf = 134218242;
      *&buf[4] = v509;
      *&buf[12] = 2112;
      *&buf[14] = v475;
      v476 = "[%p|%@] did initialize";
      v477 = v473;
      v478 = 22;
      goto LABEL_925;
    }
  }

  else if (v474)
  {
    *buf = 134217984;
    *&buf[4] = v509;
    v476 = "[%p] did initialize";
    v477 = v473;
    v478 = 12;
LABEL_925:
    _os_log_impl(&dword_1C91AE000, v477, OS_LOG_TYPE_DEFAULT, v476, buf, v478);
  }

  v61 = 0;
LABEL_726:
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v536);
LABEL_727:
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v518);
  caulk::shared_semaphore_mutex::unlock((v509 + 608));
  v392 = *MEMORY[0x1E69E9840];
  return v61;
}

void sub_1C91D4770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, const void *a53)
{
  if ((*(v53 - 200) & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted((v53 - 208));
  }

  CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(&a53);
  JUMPOUT(0x1C91D478CLL);
}

const void **CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **CA::DSP::Graph::CopyBoxes(CA::DSP::Graph *this, void *a2)
{
  [a2 boxes];
  *this = v4 = 0;
  return CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v4);
}

const void **CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::Box::GetModel(CA::DSP::Box *this, void *a2)
{
  Model = CADSPBoxGetModel(a2);
  v4 = Model;
  if (Model)
  {
    CFRetain(Model);
  }

  v6 = 0;
  *this = v4;
  return CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v6);
}

const void **CA::DSP::CopyName(uint64_t *a1, void *a2)
{
  [a2 name];
  *a1 = v4 = 0;
  return CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v4);
}

const void **CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void CA::StreamDescription::AsString(CA::StreamDescription *this, void *a2, double a3, int8x8_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  if (v6 == 1718773105)
  {
    caulk::make_string("%2u ch, %6.0f Hz, 'freq'", this, *(a2 + 7), *a2);
    goto LABEL_69;
  }

  if (v6 != 1819304813)
  {
    goto LABEL_19;
  }

  if (*(a2 + 5) != 1)
  {
    goto LABEL_19;
  }

  v7 = *(a2 + 6);
  if (v7 != *(a2 + 4))
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (v7 < v8 >> 3)
  {
    goto LABEL_19;
  }

  v9 = *(a2 + 7);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 3);
  if ((v10 & 0x20) == 0)
  {
    v15 = v7 == v7 / v9 * v9;
    v7 /= v9;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if ((v10 & 2) != 0 || 8 * v7 != v8)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    if ((v10 & 0x1F84) == 0)
    {
      if (v7 == 4)
      {
        v12 = 1;
        goto LABEL_163;
      }

      v15 = v7 == 8;
      v55 = v7 == 8;
      if (v15)
      {
        v12 = 4 * v55;
        goto LABEL_163;
      }
    }

LABEL_19:
    v13 = *(a2 + 7);
    v14 = *a2;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6 == 0;
    }

    if (v15 && v14 == 0.0)
    {
      caulk::make_string("%2u ch, %6.0f Hz", this, 0, *a2);
      goto LABEL_69;
    }

    a4.i32[0] = bswap32(v6);
    v16 = vzip1_s8(a4, *&v14);
    v17.i64[0] = 0x1F0000001FLL;
    v17.i64[1] = 0x1F0000001FLL;
    v18.i64[0] = 0x5F0000005FLL;
    v18.i64[1] = 0x5F0000005FLL;
    *(&v60.__r_.__value_.__s + 23) = 4;
    LODWORD(v60.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL), *&v14).u32[0];
    v60.__r_.__value_.__s.__data_[4] = 0;
    caulk::make_string("%2u ch, %6.0f Hz, %s (0x%08X) ", &v58, v13, *&v14, &v60, *(a2 + 3));
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    v19 = *(a2 + 2);
    if (v19 <= 1819304812)
    {
      if (v19 != 1634492771 && v19 != 1634497332 && v19 != 1718378851)
      {
LABEL_70:
        caulk::make_string("%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", &v60, *(a2 + 8), *(a2 + 4), *(a2 + 5), *(a2 + 6));
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v58;
        }

        else
        {
          v31 = v58.__r_.__value_.__r.__words[0];
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v58.__r_.__value_.__l.__size_;
        }

LABEL_62:
        v33 = std::string::insert(&v60, 0, v31, size);
        v34 = *&v33->__r_.__value_.__l.__data_;
        *(this + 2) = *(&v33->__r_.__value_.__l + 2);
        *this = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v35 = v60.__r_.__value_.__r.__words[0];
LABEL_64:
        operator delete(v35);
LABEL_65:
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        goto LABEL_69;
      }

LABEL_45:
      v28 = *(a2 + 3);
      if ((v28 - 1) < 4 || !v28 && (v19 == 1634497332 || v19 == 1936487278 || v19 == 1936487267))
      {
        caulk::make_string("from %u-bit source, ", &v60, CA::StreamDescription::AsString(void)const::kSourceBits[v28]);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v60;
        }

        else
        {
          v29 = v60.__r_.__value_.__r.__words[0];
        }

        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v60.__r_.__value_.__l.__size_;
        }

        std::string::append(&v58, v29, v30);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v58, "from UNKNOWN source bit depth, ", 0x1FuLL);
      }

      caulk::make_string("%u frames/packet", &v60, *(a2 + 5));
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v58;
      }

      else
      {
        v31 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

      goto LABEL_62;
    }

    if (v19 == 1936487278 || v19 == 1936487267)
    {
      goto LABEL_45;
    }

    if (v19 != 1819304813)
    {
      goto LABEL_70;
    }

    v20 = *(a2 + 3);
    v21 = *(a2 + 6);
    v22 = v20 & 0x20;
    v23 = &byte_1C9279A7A;
    if (!v21)
    {
      goto LABEL_37;
    }

    if ((v20 & 0x20) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = *(a2 + 7);
      if (!v24)
      {
        v22 = 0;
LABEL_37:
        v25 = " signed";
        if ((v20 & 4) == 0)
        {
          v25 = " unsigned";
        }

        if (v20)
        {
          v26 = "float";
        }

        else
        {
          v26 = "integer";
        }

        if (v20)
        {
          v27 = &byte_1C9279A7A;
        }

        else
        {
          v27 = v25;
        }

LABEL_102:
        v60.__r_.__value_.__s.__data_[0] = 0;
        if (v22)
        {
          v41 = ", deinterleaved";
        }

        else
        {
          v41 = &byte_1C9279A7A;
        }

        v42 = *(a2 + 8);
        v38 = &byte_1C9279A7A;
        v43 = &byte_1C9279A7A;
        goto LABEL_106;
      }
    }

    v37 = v21 / v24;
    if (v21 / v24 < 2)
    {
      v40 = " signed";
      if ((v20 & 4) == 0)
      {
        v40 = " unsigned";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = &byte_1C9279A7A;
      }

      else
      {
        v27 = v40;
      }

      if (v24 > v21)
      {
        goto LABEL_102;
      }

      v37 = 1;
      v38 = &byte_1C9279A7A;
    }

    else
    {
      if ((v20 & 2) != 0)
      {
        v38 = " big-endian";
      }

      else
      {
        v38 = " little-endian";
      }

      v39 = " unsigned";
      if ((v20 & 4) != 0)
      {
        v39 = " signed";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = &byte_1C9279A7A;
      }

      else
      {
        v27 = v39;
      }
    }

    v44 = *(a2 + 7);
    if ((v20 & 0x20) != 0)
    {
      v45 = 1;
    }

    else
    {
      v45 = *(a2 + 7);
    }

    if (v45)
    {
      v45 = 8 * (v21 / v45);
    }

    if (v45 == *(a2 + 8))
    {
      v60.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      if ((v20 & 8) != 0)
      {
        v46 = &byte_1C9279A7A;
      }

      else
      {
        v46 = "un";
      }

      snprintf(&v60, 0x20uLL, "%spacked in %u bytes", v46, v37);
      v21 = *(a2 + 6);
      v20 = *(a2 + 3);
      if (!v21)
      {
        v47 = 0;
        v22 = *(a2 + 3) & 0x20;
        goto LABEL_128;
      }

      v44 = *(a2 + 7);
      v22 = *(a2 + 3) & 0x20;
    }

    if (v22)
    {
      v47 = 1;
    }

    else
    {
      v47 = v44;
    }

    if (v47)
    {
      v47 = 8 * (v21 / v47);
    }

LABEL_128:
    v48 = *(a2 + 8);
    v49 = " high-aligned";
    if ((v20 & 0x10) == 0)
    {
      v49 = " low-aligned";
    }

    if ((v48 & 7) == 0 && v47 == v48)
    {
      v43 = &byte_1C9279A7A;
    }

    else
    {
      v43 = v49;
    }

    if (v22)
    {
      v41 = ", deinterleaved";
    }

    else
    {
      v41 = &byte_1C9279A7A;
    }

    if (v60.__r_.__value_.__s.__data_[0])
    {
      v23 = ", ";
LABEL_141:
      if (((v20 >> 7) & 0x3F) != 0)
      {
        snprintf(__str, 0x14uLL, "%u.%u");
      }

      else
      {
        snprintf(__str, 0x14uLL, "%u");
      }

      caulk::make_string("%s-bit%s%s %s%s%s%s%s", &v57, __str, v38, v27, v26, v23, &v60, v43, v41);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v58;
      }

      else
      {
        v51 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v58.__r_.__value_.__l.__size_;
      }

      v53 = std::string::insert(&v57, 0, v51, v52);
      v54 = *&v53->__r_.__value_.__l.__data_;
      *(this + 2) = *(&v53->__r_.__value_.__l + 2);
      *this = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v35 = v57.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

LABEL_106:
    if (*v43)
    {
      v23 = ", ";
    }

    goto LABEL_141;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_19;
  }

  v11 = (v10 >> 7) & 0x3F;
  if (v11 != 24 || v7 != 4)
  {
    if (!v11 && v7 == 4)
    {
      v12 = 5;
      goto LABEL_163;
    }

    if (!v11 && v7 == 2)
    {
      v12 = 2;
      goto LABEL_163;
    }

    goto LABEL_19;
  }

  v12 = 3;
LABEL_163:
  if ((v10 & 0x20) != 0)
  {
    v56 = ", deinterleaved";
  }

  else
  {
    v56 = ", interleaved";
  }

  if (v9 == 1)
  {
    v56 = &byte_1C9279A7A;
  }

  caulk::make_string("%2u ch, %6.0f Hz, %s%s", this, v9, *a2, *(&off_1E8334528 + v12), v56);
LABEL_69:
  v36 = *MEMORY[0x1E69E9840];
}

void sub_1C91D5160(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void caulk::make_string(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::string::resize(a2, (v5 + 1), 0);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = vsnprintf(v7, v8, this, va);
    std::string::resize(a2, v9, 0);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::string *AudioDSPGraph::stringFromFourCharCode<unsigned int>(std::string *retstr, unsigned int __val)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = bswap32(__val);
  v6 = v2;
  if ((v2 - 32) > 0x5E || ((v2 >> 8) - 32) > 0x5E || ((v2 << 8 >> 24) - 32) > 0x5E || ((v2 >> 24) - 32) > 0x5E)
  {
    result = std::to_string(retstr, __val);
  }

  else
  {
    v7 = 39;
    v5 = 39;
    result = std::string::basic_string[abi:ne200100]<0>(retstr, &v5);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C91D5340(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__exception_guard_exceptions<std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v2[1] = v3;
      std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](v2[3], v3, v2[2] - v3);
    }
  }

  return a1;
}

uint64_t std::pair<unsigned int,applesauce::CF::DictionaryRef>::pair[abi:ne200100](uint64_t a1, int a2, CFTypeRef cf)
{
  *a1 = a2;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 8) = cf;
  return a1;
}

uint64_t std::pair<unsigned int,applesauce::CF::DictionaryRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **CA::DSP::Box::SetProperty(CA::DSP::Box *this, const CADSPPropertyAddress *a2, unint64_t a3, unsigned int a4)
{
  v11 = 0;
  v5 = 0;
  if (CADSPBoxSetProperty(a2, a3, a4))
  {
    v6 = 0;
  }

  else
  {
    v6 = v11 == 0;
  }

  if (v6)
  {
    v5 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
    v11 = v5;
  }

  v10 = v5;
  if (v5)
  {
    v10 = 0;
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v8 = 0;
    v11 = 0;
    *this = v5;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v9 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *(this + 8) = 1;
  }

  return result;
}

void CA::DSP::AU::DSPGraph::Settings::Get<__CFString const*>(void *a1, const __CFDictionary **a2, const void *a3, CFTypeRef cf)
{
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
    v8 = CFGetTypeID(v4);
    if (v8 != CFStringGetTypeID())
    {
      CFRelease(v4);
      v4 = 0;
    }
  }

  if (*a2)
  {
    v9 = applesauce::CF::details::at_key<__CFString const*&>(*a2, a3);
    if (v9)
    {
      v10 = v9;
      CFRetain(v9);
      v11 = CFGetTypeID(v10);
      if (v11 == CFStringGetTypeID())
      {
        CFRetain(v10);
        CFRelease(v10);
        if (v4)
        {
          CFRelease(v4);
        }

        v4 = v10;
      }

      else
      {
        CFRelease(v10);
      }
    }
  }

  *a1 = v4;
}

_BYTE *applesauce::CF::convert_to<std::string,0>(_BYTE *a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a2);
    maxBufLen = 0;
    v13.location = 0;
    v13.length = Length;
    CFStringGetBytes(a2, v13, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    v8 = maxBufLen;
    if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (maxBufLen >= 0x17)
    {
      operator new();
    }

    a1[23] = maxBufLen;
    if (v8)
    {
      bzero(a1, v8);
    }

    a1[v8] = 0;
    if (a1[23] >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    v14.location = 0;
    v14.length = Length;
    return CFStringGetBytes(a2, v14, 0x8000100u, 0, 0, v9, maxBufLen, &maxBufLen);
  }
}

void sub_1C91D579C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **CA::DSP::MutableRecorderTapPointModel::Create(CA::DSP::MutableRecorderTapPointModel *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = [[CADSPMutableRecorderTapPointModel allocWithZone:?]];
  return CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v3);
}

const void **CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void *applesauce::CF::details::at_key<__CFString const*&>(const __CFDictionary *a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t applesauce::CF::convert_as<BOOL,0>(const __CFBoolean *a1)
{
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
    v4 = 1;
  }

  else
  {
    v5 = CFNumberGetTypeID();
    if (v5 == CFGetTypeID(a1))
    {
      v3 = applesauce::CF::details::number_convert_as<BOOL>(a1);
      v4 = HIBYTE(v3);
    }

    else
    {
      LOBYTE(v3) = 0;
      v4 = 0;
    }
  }

  return v3 | (v4 << 8);
}

uint64_t applesauce::CF::details::number_convert_as<BOOL>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      v10 = LOBYTE(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      v10 = LOWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      v10 = LODWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0.0;
      goto LABEL_24;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0;
      v10 = valuePtr == 0.0;
LABEL_24:
      if (v10)
      {
        v9 = 0;
      }

      if (Value)
      {
        Value = 256;
      }

      break;
    default:
      v9 = 0;
      Value = 0;
      break;
  }

  return Value | v9;
}

const void **CA::DSP::MutableGraphModel::Create(CA::DSP::MutableGraphModel *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = [[CADSPMutableGraphModel allocWithZone:?]];
  return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v3);
}

void *CA::DSP::ReferenceCounted<__CADSPError *>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **CA::DSP::C::API::Call<unsigned char ()(__CADSPLanguageV1Interpreter *,__CFString const*,__CADSPGraphModel *,__CADSPError **)>::operator()<__CADSPLanguageV1Interpreter *,__CFString const*&,__CADSPGraphModel * const&>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, CADSPError **), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v6 = a2(a3, a4, a5, &v11);
  v7 = v11;
  if (!v6 && !v11)
  {
    v7 = [[CADSPError allocWithZone:?]userInfo:"initWithCode:userInfo:", 1970170734, 0];
    v11 = v7;
  }

  v10 = v7;
  if (v7)
  {
    v8 = 0;
    v10 = 0;
    *a1 = v7;
  }

  else
  {
    v8 = 1;
  }

  *(a1 + 8) = v8;
  return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v10);
}

const void **CA::DSP::ReferenceCounted<__CFDictionary *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::String::Create@<X0>(CA::DSP::String *this@<X0>, const void **a2@<X8>, ...)
{
  va_start(va, a2);
  *a2 = 0;
  va_copy(&v8[1], va);
  v5 = CFStringCreateWithFormatAndArguments(this, 0, @"%u", va);
  v7 = 0;
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(a2);
  v8[0] = 0;
  *a2 = v5;
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v8);
  return CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v7);
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::StringRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::StringRef>::~DictionaryRef_iterator(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void CA::DSP::AUDSPGraph::PreDestructor(CA::DSP::AUDSPGraph *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    (*(*v2 + 16))(*(this + 59));
  }

  if (*(this + 3304) == 1)
  {
    CA::DSP::AUDSPGraph::RPBConnection::~RPBConnection(this + 412);
    *(this + 3304) = 0;
  }

  if (v2)
  {
    v3 = *(*v2 + 24);

    v3(v2);
  }
}

void CA::DSP::AUDSPGraph::PostConstructor(CA::DSP::AUDSPGraph *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    (*(*v2 + 16))(*(this + 59));
  }

  v3 = (this + 3296);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN2CA3DSP10AUDSPGraph15PostConstructorEv_block_invoke;
  v9[3] = &__block_descriptor_tmp;
  v9[4] = this;
  if (*(this + 3304) == 1)
  {
    CA::DSP::AUDSPGraph::RPBConnection::~RPBConnection(this + 412);
    *(this + 3304) = 0;
  }

  v4 = v9;
  *v3 = 0;
  v5 = [MEMORY[0x1E69C6E00] sharedInstance];
  if (v5)
  {
    v6 = [CADSPRPBConnection alloc];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___ZN2CA3DSP10AUDSPGraph13RPBConnectionC2EU13block_pointerFP9__RPBHostvE_block_invoke;
    v11[3] = &unk_1E8334560;
    v12 = v4;
    v7 = [(CADSPRPBConnection *)v6 initWithServer:v5 hostFactory:v11];
    v8 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    CA::DSP::ReferenceCounted<void const*>::~ReferenceCounted(this + 412);
    v10 = 0;
    *v3 = v8;
    CA::DSP::ReferenceCounted<void const*>::~ReferenceCounted(&v10);
  }

  *(this + 3304) = 1;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }
}

CFTypeRef ___ZN2CA3DSP10AUDSPGraph15PostConstructorEv_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v17, *(v1 + 648));
  if (!v17)
  {
    goto LABEL_9;
  }

  v19 = 0;
  v2 = CADSPGraphCreateRemoteProcessingBlockHost(v17, &v19);
  if (v2)
  {
    *buf = 0;
    cf = v2;
    v16 = 1;
    CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(buf);
    v19 = 0;
    goto LABEL_4;
  }

  v6 = v19;
  if (!v19)
  {
    v6 = [[CADSPError allocWithZone:?]userInfo:"initWithCode:userInfo:", 1970170734, 0];
    v19 = v6;
  }

  v18 = 0;
  *buf = 0;
  cf = v6;
  CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
  v16 = 0;
  CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v18);
  v19 = v6;
  if (v6)
  {
    CFRetain(v6);
    v7 = *(v1 + 680);
    if (v7)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v9 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        v10 = *(v1 + 680);
        *buf = 134218498;
        *&buf[4] = v1;
        v21 = 2112;
        v22 = v10;
        v23 = 2112;
        v24 = v19;
        v11 = "[%p|%@] failed to create remote processing block - %@";
        v12 = v9;
        v13 = 32;
LABEL_21:
        _os_log_error_impl(&dword_1C91AE000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      }
    }

    else
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v14 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v1;
        v21 = 2112;
        v22 = v19;
        v11 = "[%p] failed to create remote processing block - %@";
        v12 = v14;
        v13 = 22;
        goto LABEL_21;
      }
    }
  }

LABEL_4:
  CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v19);
  if (v16 != 1)
  {
    *buf = 0;
    CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(buf);
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&cf);
LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  v3 = cf;
  *buf = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *buf = 0;
  CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(buf);
  CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(&cf);
LABEL_10:
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v17);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1C91D6410(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void CA::DSP::AUDSPGraph::~AUDSPGraph(CA::DSP::AUDSPGraph *this)
{
  CA::DSP::AUDSPGraph::~AUDSPGraph(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(this + 85);
  if (v2)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v4 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 85);
      v17 = 134218242;
      v18 = this;
      v19 = 2112;
      v20 = v5;
      v6 = "[%p|%@] destroyed";
      v7 = v4;
      v8 = 22;
LABEL_8:
      _os_log_impl(&dword_1C91AE000, v7, OS_LOG_TYPE_DEFAULT, v6, &v17, v8);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v9 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = this;
      v6 = "[%p] destroyed";
      v7 = v9;
      v8 = 12;
      goto LABEL_8;
    }
  }

  if (*(this + 3304) == 1)
  {
    CA::DSP::AUDSPGraph::RPBConnection::Suspend(*(this + 412));
  }

  std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::~__hash_table(this + 3328);
  v10 = *(this + 415);
  if (v10)
  {
    CFRelease(v10);
  }

  if (*(this + 3304) == 1)
  {
    CA::DSP::AUDSPGraph::RPBConnection::~RPBConnection(this + 412);
  }

  v11 = *(this + 410);
  if (v11)
  {
    CFRelease(v11);
  }

  boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,void>::~vector(this + 151);
  if (*(this + 102))
  {
    v12 = *(this + 100);
    if (this + 824 != v12)
    {
      operator delete(v12);
    }
  }

  v13 = *(this + 99);
  if (v13)
  {
    CFRelease(v13);
  }

  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(this + 98);
  boost::container::vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,void>::~vector(this + 93);
  boost::container::vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,void>::~vector(this + 88);
  v14 = *(this + 87);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 86);
  if (v15)
  {
    CFRelease(v15);
  }

  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(this + 85);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(this + 84);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(this + 83);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 81);
  MEMORY[0x1CCA84490](this + 608);
  *(this + 67) = &unk_1F48CB880;
  std::recursive_mutex::~recursive_mutex((this + 544));
  ausdk::AUBase::~AUBase(this);
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1C91D66E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 48);
    do
    {
      v4 = *(v3 - 3);
      if (v4)
      {
        *(v3 - 2) = v4;
        std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*v3, v4, *(v3 - 1) - v4);
      }

      --v2;
      CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(v3 - 5);
      v3 += 8;
    }

    while (v2);
  }

  if (a1[2] && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 8);
    do
    {
      if (*v3)
      {
        CFRelease(*v3);
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  if (a1[2] && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ausdk::AUMutex::~AUMutex(ausdk::AUMutex *this)
{
  *this = &unk_1F48CB880;
  std::recursive_mutex::~recursive_mutex((this + 8));

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48CB880;
  std::recursive_mutex::~recursive_mutex((this + 8));
}

void sub_1C91D6998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6DA0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C91D6E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CADSPRPBConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id ___ZN2CA3DSP10AUDSPGraph13RPBConnectionC2EU13block_pointerFP9__RPBHostvE_block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

void CA::DSP::AUDSPGraph::RPBConnection::~RPBConnection(id *this)
{
  v2 = *this;
  [v2 disable];

  CA::DSP::ReferenceCounted<void const*>::~ReferenceCounted(this);
}

void CA::DSP::AUDSPGraph::RPBConnection::Resume(CA::DSP::AUDSPGraph::RPBConnection *this)
{
  v1 = this;
  [(CA::DSP::AUDSPGraph::RPBConnection *)v1 enable];
}

void CA::DSP::AUDSPGraph::RPBConnection::Suspend(CA::DSP::AUDSPGraph::RPBConnection *this)
{
  v1 = this;
  [(CA::DSP::AUDSPGraph::RPBConnection *)v1 disable];
}

void CA::DSP::AUDSPGraph::RPBConnection::GetHost(CA::DSP::AUDSPGraph::RPBConnection *this, void *a2)
{
  v3 = a2;
  cf = [v3 host];

  v4 = cf;
  *this = cf;
  if (cf)
  {
    CFRetain(cf);
    v4 = cf;
  }
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,CA::DSP::AUDSPGraph>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F48CC178;
  *(a1 + 8) = a2;
  ausdk::ComponentBase::GetComponentDescription(__str, a2);
  v3 = 0;
  *a1 = off_1F48CBC78;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  *(a1 + 20) = 0x100000001;
  *(a1 + 28) = 0;
  do
  {
    v4 = a1 + v3;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0uLL;
    *(v4 + 64) = 0uLL;
    v3 += 48;
  }

  while (v3 != 192);
  *(a1 + 224) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  info.__r_.__value_.__r.__words[0] = 0;
  mach_timebase_info(&info);
  LODWORD(v5) = HIDWORD(info.__r_.__value_.__r.__words[0]);
  LODWORD(v6) = info.__r_.__value_.__l.__data_;
  *(a1 + 344) = v5 / v6 * 1000000000.0;
  *(a1 + 352) = 0;
  *(a1 + 360) = -1;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  ausdk::ComponentBase::GetComponentDescription(&v45, *(a1 + 8));
  memset(__str, 0, 32);
  snprintf(__str, 0x20uLL, "AU (%p): ", *(a1 + 8));
  v7.i32[0] = bswap32(v45);
  v8 = vzip1_s8(v7, v7);
  v9 = vbsl_s8(vcgt_u16(0x5F005F005F005FLL, (*&vadd_s16(v8, 0xE000E000E000E0) & 0xFF00FF00FF00FFLL)), v8, 0x2E002E002E002ELL);
  *(&v40.__r_.__value_.__s + 23) = 4;
  LODWORD(v40.__r_.__value_.__l.__data_) = vuzp1_s8(v9, v9).u32[0];
  v40.__r_.__value_.__s.__data_[4] = 0;
  v10 = strlen(__str);
  v11 = std::string::insert(&v40, 0, __str, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v41, 47);
  v13.i32[1] = HIDWORD(v41.__r_.__value_.__r.__words[0]);
  v42 = v41;
  memset(&v41, 0, sizeof(v41));
  v13.i32[0] = bswap32(HIDWORD(v45));
  v14 = vzip1_s8(v13, v13);
  v15 = vbsl_s8(vcgt_u16(0x5F005F005F005FLL, (*&vadd_s16(v14, 0xE000E000E000E0) & 0xFF00FF00FF00FFLL)), v14, 0x2E002E002E002ELL);
  v39 = 4;
  *__s = vuzp1_s8(v15, v15).u32[0];
  __s[4] = 0;
  v16 = std::string::append(&v42, __s, 4uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v43, 47);
  v18.i32[1] = HIDWORD(v43.__r_.__value_.__r.__words[0]);
  info = v43;
  memset(&v43, 0, sizeof(v43));
  v18.i32[0] = bswap32(v46);
  v19 = vzip1_s8(v18, v18);
  v20 = vbsl_s8(vcgt_u16(0x5F005F005F005FLL, (*&vadd_s16(v19, 0xE000E000E000E0) & 0xFF00FF00FF00FFLL)), v19, 0x2E002E002E002ELL);
  v37 = 4;
  *v36 = vuzp1_s8(v20, v20).u32[0];
  v36[4] = 0;
  v21 = std::string::append(&info, v36, 4uLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  *(a1 + 456) = *(&v21->__r_.__value_.__l + 2);
  *(a1 + 440) = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (v37 < 0)
  {
    operator delete(*v36);
  }

  if (SHIBYTE(info.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(info.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  *(a1 + 328) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 272) = 0xFFEFFFFFFFFFFFFFLL;
  ausdk::AUScope::Initialize((a1 + 32), a1, 0, 1);
  *(a1 + 360) = -1;
  *(a1 + 368) = @"Untitled";
  CFRetain(@"Untitled");
  *a1 = &unk_1F48CB620;
  {
    if (v34)
    {
      v35 = caulk::concurrent::messenger::shared_logging_priority(v34);
      MEMORY[0x1CCA84430](&CA::DSP::AUDSPGraph::GetMessenger(void)::sMessenger, 0, v35);
    }
  }

  *(a1 + 528) = &CA::DSP::AUDSPGraph::GetMessenger(void)::sMessenger;
  *(a1 + 536) = &unk_1F48CB880;
  MEMORY[0x1CCA847D0](a1 + 544);
  *(a1 + 608) = 0;
  caulk::semaphore::semaphore((a1 + 616));
  v23 = caulk::semaphore::semaphore((a1 + 632));
  *(a1 + 696) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 704) = a1 + 728;
  *(a1 + 712) = 0;
  *(a1 + 720) = 1;
  *(a1 + 744) = a1 + 768;
  *(a1 + 752) = xmmword_1C925F100;
  *(a1 + 784) = 0u;
  *(a1 + 800) = a1 + 824;
  *(a1 + 808) = xmmword_1C925F150;
  *(a1 + 1208) = a1 + 1232;
  *(a1 + 1216) = xmmword_1C925F150;
  *(a1 + 3280) = 0;
  *(a1 + 3288) = 0;
  *(a1 + 3296) = 0;
  *(a1 + 3304) = 0;
  *(a1 + 3312) = 0;
  *(a1 + 3352) = 0;
  *(a1 + 3320) = 0u;
  *(a1 + 3336) = 0u;
  *(a1 + 3360) = 1065353216;
  *(a1 + 3368) = 0;
  MEMORY[0x1CCA844C0](v23);
  *(a1 + 472) = a1 + 536;
  v24 = *(a1 + 680);
  if (v24)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v26 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 680);
      *__str = 134218242;
      *&__str[4] = a1;
      *&__str[12] = 2112;
      *&__str[14] = v27;
      v28 = "[%p|%@] created";
      v29 = v26;
      v30 = 22;
LABEL_25:
      _os_log_impl(&dword_1C91AE000, v29, OS_LOG_TYPE_DEFAULT, v28, __str, v30);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v31 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      *__str = 134217984;
      *&__str[4] = a1;
      v28 = "[%p] created";
      v29 = v31;
      v30 = 12;
      goto LABEL_25;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1C91D77D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  ausdk::AUBase::~AUBase(v47);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,CA::DSP::AUDSPGraph>::Factory()
{
  result = malloc_type_malloc(0xD70uLL, 0x10F304054A42181uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,CA::DSP::AUDSPGraph>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,CA::DSP::AUDSPGraph>::Destruct;
  return result;
}

void CADSPInitialize()
{
  if (CADSPAllocatorInitialize::sInitializeOnce != -1)
  {
    dispatch_once(&CADSPAllocatorInitialize::sInitializeOnce, &__block_literal_global);
  }

  if (CADSPErrorInitialize::sInitializeOnce != -1)
  {

    dispatch_once(&CADSPErrorInitialize::sInitializeOnce, &__block_literal_global_238);
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

uint64_t CADSPBoxGetAudioComponentDescription(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(**(a1 + 8) + 216))(&v4);
    *a2 = v4;
    *(a2 + 16) = v5;
  }

  return 1;
}

void sub_1C91D8228(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a2)
  {
    if (a43 < 0)
    {
      operator delete(__p);
    }

    AudioDSPGraph::BoxRegistry::~BoxRegistry(&a25);
    __cxa_begin_catch(a1);
    if (v43)
    {
      CADSPErrorCreateFromCurrentException(*MEMORY[0x1E695E480]);
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    __cxa_end_catch();
    if (v43)
    {
      v47 = v46;
      *v43 = v46;
    }

    JUMPOUT(0x1C91D7FD0);
  }

  _Unwind_Resume(a1);
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

std::string *caulk::string_from_4cc(std::string *retstr, unsigned int __val)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = bswap32(__val);
  v6 = v2;
  if ((v2 - 32) > 0x5E || ((v2 >> 8) - 32) > 0x5E || ((v2 << 8 >> 24) - 32) > 0x5E || ((v2 >> 24) - 32) > 0x5E)
  {
    result = std::to_string(retstr, __val);
  }

  else
  {
    v7 = 39;
    v5 = 39;
    result = std::string::basic_string[abi:ne200100]<0>(retstr, &v5);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C91D8564(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,std::string,std::string>(void *result, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a3 + 23);
  v6 = v5;
  v7 = *a3;
  v8 = a3[1];
  *result = 13;
  if ((v5 & 0x80u) != 0)
  {
    v5 = v8;
  }

  if (v6 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  *a2 = v9;
  a2[1] = v5;
  v10 = *(a4 + 23);
  v11 = v10;
  v12 = *a4;
  v13 = a4[1];
  *result |= 0x1A0uLL;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v13;
  }

  if (v11 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = v12;
  }

  a2[2] = v14;
  a2[3] = v10;
  v15 = *(a5 + 23);
  v16 = v15;
  v17 = *a5;
  v18 = a5[1];
  *result |= 0x3400uLL;
  if ((v15 & 0x80u) != 0)
  {
    v15 = v18;
  }

  if (v16 >= 0)
  {
    v19 = a5;
  }

  else
  {
    v19 = v17;
  }

  a2[4] = v19;
  a2[5] = v15;
  return result;
}

_BYTE *std::string::basic_string<std::string_view,0>(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}