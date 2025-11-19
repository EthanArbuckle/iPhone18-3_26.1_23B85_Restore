void std::__list_imp<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,0>((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__list_imp<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>>::clear(id *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 1);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        objc_storeWeak(v2 + 7, 0);
        objc_destroyWeak(v2 + 7);
        v2[2] = &unk_1F15B20D0;

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F15B20D0;

  JUMPOUT(0x1A58E9730);
}

uint64_t geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F15B20D0;

  return a1;
}

void std::__destroy_at[abi:ne200100]<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,0>(uint64_t a1)
{
  *(a1 + 40) = &unk_1F15B2100;

  *a1 = &unk_1F15B20D0;
  v2 = *(a1 + 8);
}

void geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F15B2100;

  JUMPOUT(0x1A58E9730);
}

uint64_t geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F15B2100;

  return a1;
}

void std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      *(v1 + 2) = &unk_1F15B20D0;

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_1A30AC4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, id a14)
{
  std::mutex::unlock((v18 + 8));
  objc_storeWeak(&a9, 0);
  objc_destroyWeak(&a9);
  a13 = &unk_1F15B20D0;

  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F15B20D0;
  a1[1] = v3;
  return a1;
}

uint64_t geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;

  return a1;
}

id *geo::_geo_weak_ptr<NSDictionary * {__strong}>::operator=(id *a1, id *location)
{
  if (a1 != location)
  {
    WeakRetained = objc_loadWeakRetained(location);
    objc_storeWeak(a1, WeakRetained);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__emplace_unique_key_args<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::piecewise_construct_t const&,std::tuple<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = [*(a2 + 8) hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(v11[3], a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 8);
  v5 = v3;
  v6 = v4;
  if (v6 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

void *geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F15B20D0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::find<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(void *a1, uint64_t a2)
{
  v4 = [*(a2 + 8) hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(i[3], a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t **std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__emplace_unique_key_args<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::piecewise_construct_t const&,std::tuple<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = [*(a2 + 8) hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(v11[3], a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    *(a2 + 16) = &unk_1F15B20D0;
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1A30AD540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::mutex::unlock((v17 + 8));

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__erase_unique<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::find<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>( a1,  a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 = (v5 % *&v4);
      }
    }

    else
    {
      v5 = ((*&v4 - 1) & v5);
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 = (v9 % *&v4);
      }
    }

    else
    {
      v9 = (v9 & (*&v4 - 1));
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = (*v3)[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = v11[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 = (v12 % *&v4);
        }
      }

      else
      {
        v12 = (v12 & (*&v4 - 1));
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,void *>>>::operator()[abi:ne200100](1, v3);
  }
}

void sub_1A30AED6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t containsKey(void *a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v6)
  {
    v7 = *v37;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        v10 = v4;
        v11 = v9;
        v12 = [v10 keyType];
        if (v12 == [v11 keyType])
        {
          v13 = [v10 keyType];
          if ((v13 - 4) < 2)
          {
            v30 = [v10 imageName];
            v31 = [v11 imageName];
            v32 = [v30 isEqualToString:v31];

            if (v32)
            {
              goto LABEL_26;
            }
          }

          else if (v13 == 2)
          {
            v33 = [v10 iconAttributeKey];
            if (v33 == [v11 iconAttributeKey])
            {
              v34 = [v10 iconAttributeValue];
              if (v34 == [v11 iconAttributeValue])
              {
                goto LABEL_26;
              }
            }
          }

          else if (v13 != 1 || (v14 = [v10 shieldType], v14 == objc_msgSend(v11, "shieldType")) && (objc_msgSend(v10, "shieldText"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "shieldText"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, v17) && (objc_msgSend(v10, "shieldTextLocale"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "shieldTextLocale"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqualToString:", v19), v19, v18, v20) && ((objc_msgSend(v10, "transitLineColor"), v42 = __PAIR64__(v22, v21), v43 = __PAIR64__(v24, v23), objc_msgSend(v11, "transitLineColor"), v40 = __PAIR64__(v28, v27), v41 = __PAIR64__(v26, v25), v42 == __PAIR64__(v28, v27)) ? (v29 = v43 == __PAIR64__(v26, v25)) : (v29 = 0), v29))
          {
LABEL_26:

            v6 = 1;
            goto LABEL_27;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  return v6;
}

void fillTemplate(void *a1, void *a2, uint64_t a3)
{
  v7 = a1;
  v5 = a2;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", a3];
  [v7 replaceOccurrencesOfString:v5 withString:v6 options:0 range:{0, objc_msgSend(v7, "length")}];
}

id _MKMarkerAnnotationViewSelectionSwayAnimation()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = vcvts_n_f32_u32(arc4random(), 0x20uLL);
  if (v0 >= 0.5)
  {
    v1 = (v0 * 0.05) + 0.05;
  }

  else
  {
    v1 = -((v0 * 0.05) + 0.05);
  }

  v2 = _MKCreateSpringAnimationForSwaying(v1);
  v3 = [MEMORY[0x1E6979308] animation];
  v9 = v2;
  v4 = _MKCreateSpringAnimationForSwaying(0.0);
  v10 = v4;
  v5 = _MKCreateSpringAnimationForSwaying(-v1);
  v11 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:3];
  [v3 setAnimations:{v6, v9, v10}];

  [v2 settlingDuration];
  [v3 setDuration:?];
  v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
  [v3 setTimingFunction:v7];

  return v3;
}

id _MKCreateSpringAnimationForSwaying(float a1)
{
  v2 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.rotation.z"];
  [v2 setStiffness:127.152748];
  [v2 setDamping:5.0];
  [v2 setMass:1.0];
  [v2 setInitialVelocity:0.0];
  *&v3 = a1;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  [v2 setToValue:v4];

  [v2 setFillMode:*MEMORY[0x1E69797E0]];
  [v2 setAdditive:1];

  return v2;
}

uint64_t _MKMarkerAnnotationViewSelectionShouldSway()
{
  if (!MapsFeature_IsEnabled_ShelbyvilleMapKit() || !_MKLinkedOnOrAfterReleaseSet(3081))
  {
    return 0;
  }

  v0 = +[MKSystemController sharedInstance];
  v1 = [v0 reduceMotionEnabled] ^ 1;

  return v1;
}

uint64_t _MKPointInPolygon(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = 0;
  if (a2)
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      if (v5 < a2 - 1)
      {
        v7 = v5 + 1;
      }

      else
      {
        v7 = 0;
      }

      v8 = (a1 + 16 * v7);
      v9 = v8[1];
      if (*v6 > v9 || *v6 == v9 && *(v6 - 1) > *v8)
      {
        v10 = v7;
        v7 = v5;
      }

      else
      {
        v9 = *v6;
        v10 = v5;
      }

      if (a4 >= v9)
      {
        v11 = (a1 + 16 * v7);
        v12 = v11[1];
        if (a4 < v12)
        {
          v13 = v12 - v9;
          if (v13 != 0.0 && a3 < *(a1 + 16 * v10) + (*v11 - *(a1 + 16 * v10)) / v13 * (a4 - v9))
          {
            v4 ^= 1u;
          }
        }
      }

      ++v5;
      v6 += 2;
    }

    while (a2 != v5);
  }

  return v4 & 1;
}

void sub_1A30BBA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSSearchableItemAttributeSetClass_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = CoreSpotlightLibraryCore_frameworkLibrary;
  v11 = CoreSpotlightLibraryCore_frameworkLibrary;
  if (!CoreSpotlightLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreSpotlightLibraryCore_block_invoke;
    v5[4] = &unk_1E76CD5E0;
    v6 = &v8;
    v7 = v5;
    v12 = xmmword_1E76CD5B0;
    v13 = *off_1E76CD5C0;
    v14 = 0;
    v9[3] = _sl_dlopen();
    CoreSpotlightLibraryCore_frameworkLibrary = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  v3 = v5[0];
  if (v2)
  {
    if (!v5[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = abort_report_np();
    __break(1u);
  }

  free(v3);
LABEL_5:
  result = objc_getClass("CSSearchableItemAttributeSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCSSearchableItemAttributeSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A30BBC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreSpotlightLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreSpotlightLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL MKTransitArtworkDataSourceAllowMasking(void *a1)
{
  v1 = a1;
  if ([v1 artworkSourceType] == 1)
  {
    v2 = [v1 shieldDataSource];
    if (!v2)
    {
      goto LABEL_6;
    }

    if (MKTransitArtworkDataSourceAllowMasking_onceToken != -1)
    {
      dispatch_once(&MKTransitArtworkDataSourceAllowMasking_onceToken, &__block_literal_global_45428);
    }

    v3 = MKTransitArtworkDataSourceAllowMasking_unmaskableShieldIDs;
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "shieldType")}];
    LOBYTE(v3) = [v3 containsObject:v4];

    if ((v3 & 1) == 0)
    {
      v6 = [v2 shieldText];
      if (v6)
      {
        v5 = 0;
      }

      else
      {
        v7 = [v2 shieldColorString];
        v5 = v7 == 0;
      }
    }

    else
    {
LABEL_6:
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __MKTransitArtworkDataSourceAllowMasking_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F1611D58, 0}];
  v1 = MKTransitArtworkDataSourceAllowMasking_unmaskableShieldIDs;
  MKTransitArtworkDataSourceAllowMasking_unmaskableShieldIDs = v0;
}

void sub_1A30C0324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MKSnappedRouteFillWithElements(uint64_t a1, uint64_t a2, _OWORD *a3, unsigned int a4)
{
  v6 = a2;
  v40 = *MEMORY[0x1E69E9840];
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  *(a3 + 4) = &kMKSnappedRouteEntryElement;
  for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:a2];
  {
    if (*(a1 + 8) != 1)
    {
      v9 = [MEMORY[0x1E696B098] valueWithPointer:a1];
      [i addObject:v9];
    }

    a1 += 16;
  }

  [i sortUsingComparator:&__block_literal_global_45876];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = i;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      v14 = 0;
      do
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v35 + 1) + 8 * v14) pointerValue];
        v16 = 0;
        v17 = (**(a3 + 4) - 180) % 360;
        v18 = (*v15 - (v17 + (v17 < 0 ? 0x168uLL : 0))) % 360;
        v19 = v18 + 360;
        if (v18 >= 0)
        {
          v19 = v18;
        }

        v20 = v15[2];
        v21 = v20 == 2;
        v22 = a4 & v21;
        v23 = v21 & (a4 >> 1);
        v24 = -v19;
        v25 = -1;
        v26 = 0x7FFFFFFFFFFFFFFFLL;
        v27 = 0x7FFFFFFFFFFFFFFFLL;
        v28 = -1;
        do
        {
          if (!v22 || v16 == 5 || (v16 - 8) >= 0xFFFFFFFFFFFFFFFELL)
          {
            v29 = (v16 - 4) < 0xFFFFFFFFFFFFFFFDLL ? v23 : 0;
            if ((v29 & 1) == 0)
            {
              v30 = *(a3 + v16);
              if (!v30 || !*(v30 + 8))
              {
                v31 = v19 % 360 + (v19 % 360 < 0 ? 0x168uLL : 0);
                if (v31 >= v24 % 360 + (v24 % 360 < 0 ? 0x168uLL : 0))
                {
                  v31 = v24 % 360 + (v24 % 360 < 0 ? 0x168uLL : 0);
                }

                if (v31 < v26)
                {
                  v25 = v16;
                  v26 = v31;
                }

                v32 = v31 >= v27 || v31 > 0x18;
                if (!v32 && !v30)
                {
                  v28 = v16;
                  v27 = v31;
                }
              }
            }
          }

          ++v16;
          v24 += 45;
          v19 -= 45;
        }

        while (v16 != 8);
        if (v28 != -1)
        {
          v33 = a3 + v25;
LABEL_35:
          *v33 = v15;
          goto LABEL_36;
        }

        if (v25 != -1)
        {
          v33 = a3 + v25;
          if (!*v33 || v20 == 2)
          {
            goto LABEL_35;
          }
        }

LABEL_36:
        ++v14;
      }

      while (v14 != v12);
      v34 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
      v12 = v34;
    }

    while (v34);
  }
}

uint64_t __MKJunctionManeuverShouldShowNAElementsForManeuverTypeInSnappedJunction_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    v4 = *(a3 + 8);
    if (v4 != 1)
    {
      ++*(*(*(result + 32) + 8) + 24);
      if (v4 == 2)
      {
        *a4 = 1;
      }
    }
  }

  return result;
}

uint64_t __MKSnappedRouteFillWithElements_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 pointerValue];
  v6 = [v4 pointerValue];

  LODWORD(v7) = *v5 % 360;
  if ((v7 & 0x80000000) == 0)
  {
    v7 = v7;
  }

  else
  {
    v7 = v7 + 360;
  }

  LODWORD(v8) = *v6 % 360;
  if ((v8 & 0x80000000) == 0)
  {
    v8 = v8;
  }

  else
  {
    v8 = v8 + 360;
  }

  v9 = v7 >= v8;
  v10 = v7 > v8;
  if (v9)
  {
    return v10;
  }

  else
  {
    return -1;
  }
}

void sub_1A30C186C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A30C1D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A30C2FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, char a24)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

void ___snapshotQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.maps.snapshotter", v2);
  v1 = _snapshotQueue_snapshotQueue;
  _snapshotQueue_snapshotQueue = v0;
}

uint64_t ChronoServicesLibraryCore()
{
  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    ChronoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return ChronoServicesLibraryCore_frameworkLibrary;
}

uint64_t getCHSIsWidgetExtensionPointSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCHSIsWidgetExtensionPointSymbolLoc_ptr;
  v6 = getCHSIsWidgetExtensionPointSymbolLoc_ptr;
  if (!getCHSIsWidgetExtensionPointSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getCHSIsWidgetExtensionPointSymbolLoc_block_invoke;
    v2[3] = &unk_1E76CD7B0;
    v2[4] = &v3;
    __getCHSIsWidgetExtensionPointSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A30C55A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCHSIsWidgetExtensionPointSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ChronoServicesLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "CHSIsWidgetExtensionPoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHSIsWidgetExtensionPointSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ChronoServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A30C5BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1A58E9F30](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void ___gate_block_invoke()
{
  Integer = GEOConfigGetInteger();
  GEOConfigGetDouble();
  if (v1 <= 0.0)
  {
    v1 = 60.0;
  }

  v2 = Integer / fmax(v1, 1.0);
  v3 = [MKThrottledGate alloc];
  v6 = _snapshotQueue();
  v4 = [(MKThrottledGate *)v3 initWithMax:Integer refreshRate:v6 queue:fmax(v2, 0.1)];
  v5 = _gate_gate;
  _gate_gate = v4;
}

void sub_1A30C63EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A30C665C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46251(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A30C67E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x1EEDB9528](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  MEMORY[0x1EEDBAC40](path);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}