void *___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_14(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "sortType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 == 2)
  {
    v10 = &unk_1F1509B38;
  }

  else
  {
    v10 = &unk_1F1509BF8;
  }

  return v10;
}

void sub_1A263E7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_13(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "representativeItemExplicit");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v7 numberWithBool:{objc_msgSend(v9, "BOOLValue") ^ 1}];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

id ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_9(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "downloadedDate");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "libraryAdded");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

void ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_7(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = mlcore::AlbumPropertyStoreID(v6);
  v4 = mlcore::AlbumPropertyPersistentID(v3);
  v5 = mlcore::AlbumPropertySyncID(v4);
  _MPMLInsertPredicatesForIdentifierSet(a2, v6, v3, 0, v4, 0, 0, v5, 0, 0);
}

void sub_1A263EBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_4(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v5 = [v4 modelKind];
  v6 = [v5 identityKind];
  v7 = +[MPModelTVSeasonKind identityKind];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyTVSeasonMap()_block_invoke_4"];
    [v25 handleFailureInFunction:v26 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:3285 description:@"Must have TV Season kind to generate TV Season entity query."];
  }

  v9 = a3[1];
  v31 = *a3;
  v32 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 applyToView:&v31 withContext:v4];
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v10 = [v4 allowedEntityIdentifiers];
  v11 = [v10 mutableCopy];

  v12 = [v4 scopedContainers];
  v13 = [v12 mutableCopy];

  v14 = [v13 msv_removeWhere:&__block_literal_global_890];
  v15 = [v14 msv_map:&__block_literal_global_893];
  [v11 addObjectsFromArray:v15];

  v17 = mlcore::AlbumPropertyStoreID(v16);
  v18 = mlcore::AlbumPropertyPersistentID(v17);
  v19 = mlcore::AlbumPropertySyncID(v18);
  _MPMLInsertPredicatesForIdentifierSet(&v33, v11, v17, 0, v18, 0, 0, v19, 0, 0);
  v20 = [v13 firstObject];
  v21 = [v20 identifiers];
  v22 = [v21 library];
  [v22 persistentID];

  memset(v28, 0, sizeof(v28));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v28, v33, v34, (v34 - v33) >> 4);
  mlcore::CreateAndPredicate();
  v36 = v28;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v36);
  v23 = objc_opt_class();
  if (v23 == objc_opt_class())
  {
    __assert_rtn("_MPMLInitPropertyTVSeasonMap_block_invoke_4", "MPMediaLibraryTranslatorSchema.mm", 3306, "0");
  }

  v24 = objc_opt_class();
  if (v24 == objc_opt_class())
  {
    operator new();
  }

  v27 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlcore::EntityQuery::tvSeasonsQuery();
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v29 = &v33;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v29);
}

void sub_1A263EF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a20 = &a24;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a20);

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::TVShow>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B1A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

id ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 identifiers];

  return v2;
}

BOOL ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v3 == objc_opt_class();

  return v4;
}

void ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_11_878(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "canonicalID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_10_874(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocalConstraints");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "intValue")}];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_9_871(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocalStatusReason");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "intValue")}];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_8_868(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocalStatus");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v9 intValue] + 1;
  if (v10 >= 7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - 1;
  }

  v12 = [v7 numberWithInteger:v11];

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_7_865(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocal");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v9 intValue] + 2;
  if (v10 > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1A2741980[v10];
  }

  v12 = [v7 numberWithInteger:v11];

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_6_862(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(v17, "hasNonPurgeableAsset");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, v17);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v9 BOOLValue];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "isStoreRedownloadable");
    v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v12)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    a4 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
    v11 = [(int8x8_t *)a4 BOOLValue];
  }

  v13 = [v7 numberWithBool:v11];
  if ((v10 & 1) == 0)
  {

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  return v13;
}

void sub_1A263FB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_5_859(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "downloadedDate");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_4_856(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "dateReleased");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_3_853(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "datePlayed");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_2_850(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "libraryAdded");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_847(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mediaType");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 unsignedIntValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = 255;
  if (v12 != 0xFF)
  {
    v13 = 0;
  }

  if ((~v12 & 0xFF00) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 | 0xFF00;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "availableArtworkToken");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkToken");
  v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkSourceType");
  v19 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v19)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v20 = MPMediaLibraryPropertyCacheValueForProperty(v19[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = [v6 mediaLibrary];
  v22 = vandq_s8(vshlq_u32(vdupq_n_s32(v12), xmmword_1A273DD80), xmmword_1A273DD90);
  *v22.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
  v23 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, v14 | v22.i32[0] | v12 & 0x3210 | v22.i32[1] | (4 * v12) & 0x400 | (4 * ((v12 >> 1) & 1)) | (2 * v12) & 0x800, 0, 2, 0, v16, v18, v20, v21);

  return v23;
}

void *___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_12(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "episodeType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v9 - 1) >= 6)
  {
    v10 = &unk_1F1509BF8;
  }

  else
  {
    v10 = qword_1E767E110[v9 - 1];
  }

  return v10;
}

void sub_1A26403C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_11(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "trackNumber");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (![v8 integerValue])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "sortID");
    v9 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v9)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v10 = MPMediaLibraryPropertyCacheValueForProperty(v9[5], a4);

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v10;
  }

  return v8;
}

void ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_10(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v8, "sortID");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v8))
  {
    [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(v7, "subOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      std::string::basic_string[abi:ne200100]<0>(__p, "trackNumber");
      if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
      {
        [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
        mlcore::SortDescriptor::SortDescriptor();
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v9, &v10, 3uLL);
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A2640704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_9(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "time");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v8, "longLongValue") / 1000.0}];

  return v9;
}

id ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "title");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_7(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "titleOrder");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
  {
    [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
    mlcore::SortDescriptor::SortDescriptor();
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v7, &v8, 1uLL);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A2640A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_6(void *a1@<X1>, uint64_t a2@<X8>)
{
  v10 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = mlcore::ItemPropertyStoreID(v10);
  v4 = mlcore::ItemPropertySubscriptionStoreItemID(v3);
  v5 = mlcore::ItemPropertyPersistentID(v4);
  v6 = mlcore::ItemPropertyStoreCloudID(v5);
  v7 = mlcore::ItemPropertySyncID(v6);
  v8 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v7);
  v9 = mlcore::ItemPropertyStoreCloudAlbumID(v8);
  _MPMLInsertPredicatesForIdentifierSet(a2, v10, v3, v4, v5, v6, 0, v7, v8, v9);
}

void sub_1A2640B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_5(uint64_t a1, void *a2, uint64_t *a3)
{
  v78[3] = *MEMORY[0x1E69E9840];
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v49 = a2;
  v48 = [v49 modelKind];
  v4 = [v48 identityKind];
  v5 = +[MPModelTVEpisodeKind identityKind];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v46 = [MEMORY[0x1E696AAA8] currentHandler];
    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyTVEpisodeMap()_block_invoke_5"];
    [v46 handleFailureInFunction:v47 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:3026 description:@"Must have TV Episode kind to generate TV Episode entity query."];
  }

  v7 = a3[1];
  v69 = *a3;
  v70 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v48 applyToView:&v69 withContext:v49];
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  v8 = [v49 allowedEntityIdentifiers];
  v9 = mlcore::ItemPropertyStoreID(v8);
  v10 = mlcore::ItemPropertySubscriptionStoreItemID(v9);
  v11 = mlcore::ItemPropertyPersistentID(v10);
  v12 = mlcore::ItemPropertyStoreCloudID(v11);
  v13 = mlcore::ItemPropertySyncID(v12);
  v14 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v13);
  v15 = mlcore::ItemPropertyStoreCloudAlbumID(v14);
  _MPMLInsertPredicatesForIdentifierSet(&v71, v8, v9, v10, v11, v12, 0, v13, v14, v15);

  v16 = [v49 filterText];
  v17 = [v16 length] == 0;

  if (!v17)
  {
    v18 = [v49 filterText];
    v19 = v18;
    std::string::basic_string[abi:ne200100]<0>(&__p, [v18 UTF8String]);

    *&v55 = mlcore::ItemPropertyTitle(v20);
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *,std::string&,0>();
  }

  v78[0] = 0;
  v78[1] = 0;
  v77 = v78;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = [v49 scopedContainers];
  v21 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v21)
  {
    v22 = *v66;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v66 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [*(*(&v65 + 1) + 8 * i) identifiers];
        v25 = [v24 library];
        v26 = [v25 persistentID];

        __p = v26;
        v27 = [v24 universalStore];
        v28 = [v27 adamID];

        v61 = v28;
        v29 = [v24 universalStore];
        v30 = [v29 subscriptionAdamID];

        v60[0] = v30;
        *&v55 = objc_opt_class();
        if (v55 == objc_opt_class())
        {
          if (v26)
          {
            v56 = &v55;
            v33 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v77, v55);
            *&v54 = mlcore::ItemPropertyAlbumPersistentID(v33);
            v56 = &v54;
            v34 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v33 + 40, v54);
            std::vector<long long>::push_back[abi:ne200100]((v34 + 5), &__p);
          }

          else
          {
            if (v28)
            {
              v56 = &v55;
              v37 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v77, v55);
              *&v54 = mlcore::ItemPropertyStorePlaylistID(v37);
              v56 = &v54;
              v38 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v37 + 40, v54);
              std::vector<long long>::push_back[abi:ne200100]((v38 + 5), &v61);
            }

            if (v30)
            {
              v56 = &v55;
              v39 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v77, v55);
              *&v54 = mlcore::ItemPropertyStorePlaylistID(v39);
              v56 = &v54;
              v40 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v39 + 40, v54);
              std::vector<long long>::push_back[abi:ne200100]((v40 + 5), v60);
            }
          }
        }

        else
        {
          v31 = v55;
          if (v31 == objc_opt_class())
          {
            if (v26)
            {
              v56 = &v55;
              v35 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v77, v55);
              *&v54 = mlcore::ItemPropertyItemArtistPersistentID(v35);
              v56 = &v54;
              v36 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v35 + 40, v54);
              std::vector<long long>::push_back[abi:ne200100]((v36 + 5), &__p);
            }
          }

          else
          {
            v32 = objc_opt_class();
            if (v32 == objc_opt_class())
            {
              __assert_rtn("_MPMLInitPropertyTVEpisodeMap_block_invoke_5", "MPMediaLibraryTranslatorSchema.mm", 3066, "0");
            }
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v21);
  }

  v41 = v77;
  if (v77 != v78)
  {
    do
    {
      std::pair<objc_class * const {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long>>,std::vector<std::pair<mlcore::ModelProperty<long long> const,std::allocator<long long>>>>>::pair[abi:ne200100](&__p, v41 + 4);
      std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>::map[abi:ne200100](&v61, v64);
      memset(v60, 0, sizeof(v60));
      if (v61 != &v62)
      {
        v42 = *(v61 + 40);
        v56 = *(v61 + 32);
        v58 = 0;
        v59 = 0;
        v57 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v57, v42, *(v61 + 48), (*(v61 + 48) - v42) >> 3);
        if (v58 - v57 == 8)
        {
          v75 = v56;
          v74 = 0;
          std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
        }

        v75 = v56;
        std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
      }

      memset(v53, 0, sizeof(v53));
      std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v53, 0, 0, 0);
      mlcore::CreateOrPredicate();
      std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](&v71, &v56);
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      *&v55 = v53;
      std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v55);
      v56 = v60;
      std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v56);
      std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::destroy(v62);
      std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::destroy(v64[1]);

      v43 = v41[1];
      if (v43)
      {
        do
        {
          v44 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v44 = v41[2];
          v45 = *v44 == v41;
          v41 = v44;
        }

        while (!v45);
      }

      v41 = v44;
    }

    while (v44 != v78);
  }

  memset(v51, 0, sizeof(v51));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v51, v71, v72, (v72 - v71) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::tvEpisodesQuery();
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  __p = v51;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::destroy(v78[0]);

  __p = &v71;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1A2641338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  __p = &a61;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
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
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
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
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::pair<objc_class * const {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long>>,std::vector<std::pair<mlcore::ModelProperty<long long> const,std::allocator<long long>>>>>::pair[abi:ne200100](void *a1, id *a2)
{
  v3 = a2 + 1;
  *a1 = *a2;
  std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>::map[abi:ne200100](a1 + 1, v3);
  return a1;
}

void *std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>::map[abi:ne200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = v2[4];
      if (v4[4] < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = v3[4];
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

void std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::destroy(*a1);
    std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::destroy(*a1);
    std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
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

void ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_2;
  v15[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v15[4] = a3;
  v15[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v15];

  v12 = [v8 personID];
  if ([v12 length])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_3;
    v14[3] = &__block_descriptor_48_e45_v16__0___MPMutablePersonalStoreIdentifiers__8l;
    v14[4] = a3;
    v14[5] = a4;
    [v9 setPersonalStoreIdentifiersWithPersonID:v12 block:v14];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_4;
  v13[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v13];
}

void ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setCloudID:{objc_msgSend(v6, "unsignedLongLongValue")}];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeCloudAlbumID");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v7, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], *(a1 + 40));
  [v3 setCloudAlbumID:v9];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A2641E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL29_MPMLInitPropertyTVEpisodeMapv_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudUniversalLibraryID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setUniversalCloudLibraryID:v6];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "subscriptionStoreID");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v7, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], *(a1 + 40));
  [v3 setSubscriptionAdamID:{objc_msgSend(v9, "longLongValue")}];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v11 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v10, __p);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = MPMediaLibraryPropertyCacheValueForProperty(v11[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v12, "longLongValue")}];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  [v3 setPurchasedAdamID:{objc_msgSend(v3, "adamID")}];
  v13 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "reportingStoreItemID");
  v14 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v13, __p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v15 = MPMediaLibraryPropertyCacheValueForProperty(v14[5], *(a1 + 40));
  [v3 setReportingAdamID:{objc_msgSend(v15, "longLongValue")}];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "assetStoreItemID");
  v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v16, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], *(a1 + 40));
  [v3 setAssetAdamID:{objc_msgSend(v18, "longLongValue")}];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_22(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocalConstraints");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "intValue")}];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_21(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocalStatusReason");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "intValue")}];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_20(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocalStatus");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v9 intValue] + 1;
  if (v10 >= 7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - 1;
  }

  v12 = [v7 numberWithInteger:v11];

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_19(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocal");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v9 intValue] + 2;
  if (v10 > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1A2741980[v10];
  }

  v12 = [v7 numberWithInteger:v11];

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_18(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(v17, "hasNonPurgeableAsset");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, v17);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v9 BOOLValue];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "isStoreRedownloadable");
    v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v12)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    a4 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
    v11 = [(int8x8_t *)a4 BOOLValue];
  }

  v13 = [v7 numberWithBool:v11];
  if ((v10 & 1) == 0)
  {

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  return v13;
}

void sub_1A2642690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_17(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "datePlayed");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_16(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "downloadedDate");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_15(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "libraryAdded");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_13(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "time");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v8, "longLongValue") / 1000.0}];

  return v9;
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_11(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mediaType");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 unsignedIntValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = 255;
  if (v12 != 0xFF)
  {
    v13 = 0;
  }

  if ((~v12 & 0xFF00) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 | 0xFF00;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "availableArtworkToken");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkToken");
  v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkSourceType");
  v19 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v19)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v20 = MPMediaLibraryPropertyCacheValueForProperty(v19[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = [v6 mediaLibrary];
  v22 = vandq_s8(vshlq_u32(vdupq_n_s32(v12), xmmword_1A273DD80), xmmword_1A273DD90);
  *v22.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
  v23 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, v14 | v22.i32[0] | v12 & 0x3210 | v22.i32[1] | (4 * v12) & 0x400 | (4 * ((v12 >> 1) & 1)) | (2 * v12) & 0x800, 0, 1, 0, v16, v18, v20, v21);

  return v23;
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_10(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "dateReleased");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_9(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "movieInfoPlist");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 length])
  {
    v9 = MEMORY[0x1E696AE40];
    v10 = [v8 dataUsingEncoding:4];
    v11 = [v9 propertyListWithData:v10 options:0 format:0 error:0];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  return v11;
}

id ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "title");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_7(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "titleOrder");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
  {
    [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
    mlcore::SortDescriptor::SortDescriptor();
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v7, &v8, 1uLL);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A26432B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_6(void *a1@<X1>, uint64_t a2@<X8>)
{
  v10 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = mlcore::ItemPropertyStoreID(v10);
  v4 = mlcore::ItemPropertySubscriptionStoreItemID(v3);
  v5 = mlcore::ItemPropertyPersistentID(v4);
  v6 = mlcore::ItemPropertyStoreCloudID(v5);
  v7 = mlcore::ItemPropertySyncID(v6);
  v8 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v7);
  v9 = mlcore::ItemPropertyStoreCloudAlbumID(v8);
  _MPMLInsertPredicatesForIdentifierSet(a2, v10, v3, v4, v5, v6, 0, v7, v8, v9);
}

void sub_1A26433A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_5(uint64_t a1, void *a2, uint64_t *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v5 = [v4 modelKind];
  v6 = [v5 identityKind];
  v7 = +[MPModelMovieKind identityKind];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyMovieMap()_block_invoke_5"];
    [v22 handleFailureInFunction:v23 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2827 description:@"Must have Movie kind to generate Movie entity query."];
  }

  v9 = a3[1];
  v28 = *a3;
  v29 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 applyToView:&v28 withContext:v4];
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v10 = [v4 allowedEntityIdentifiers];
  v11 = mlcore::ItemPropertyStoreID(v10);
  v12 = mlcore::ItemPropertySubscriptionStoreItemID(v11);
  v13 = mlcore::ItemPropertyPersistentID(v12);
  v14 = mlcore::ItemPropertyStoreCloudID(v13);
  v15 = mlcore::ItemPropertySyncID(v14);
  v16 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v15);
  v17 = mlcore::ItemPropertyStoreCloudAlbumID(v16);
  _MPMLInsertPredicatesForIdentifierSet(&v30, v10, v11, v12, v13, v14, 0, v15, v16, v17);

  v18 = [v4 filterText];
  LOBYTE(v11) = [v18 length] == 0;

  if ((v11 & 1) == 0)
  {
    v19 = [v4 filterText];
    v20 = v19;
    std::string::basic_string[abi:ne200100]<0>(__p, [v19 UTF8String]);

    v26 = mlcore::ItemPropertyTitle(v21);
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *,std::string&,0>();
  }

  memset(v24, 0, sizeof(v24));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v24, v30, v31, (v31 - v30) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::moviesQuery();
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  __p[0] = v24;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);

  __p[0] = &v30;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1A26436DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  __p = (v35 - 144);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void ___ZL25_MPMLInitPropertyMovieMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_2;
  v15[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v15[4] = a3;
  v15[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v15];

  v12 = [v8 personID];
  if ([v12 length])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_3;
    v14[3] = &__block_descriptor_48_e45_v16__0___MPMutablePersonalStoreIdentifiers__8l;
    v14[4] = a3;
    v14[5] = a4;
    [v9 setPersonalStoreIdentifiersWithPersonID:v12 block:v14];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_4;
  v13[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v13];
}

void ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setCloudID:{objc_msgSend(v6, "unsignedLongLongValue")}];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeCloudAlbumID");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v7, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], *(a1 + 40));
  [v3 setCloudAlbumID:v9];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A2643BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL25_MPMLInitPropertyMovieMapv_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudUniversalLibraryID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setUniversalCloudLibraryID:v6];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "subscriptionStoreID");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v7, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], *(a1 + 40));
  [v3 setSubscriptionAdamID:{objc_msgSend(v9, "longLongValue")}];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v11 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v10, __p);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = MPMediaLibraryPropertyCacheValueForProperty(v11[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v12, "longLongValue")}];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  [v3 setPurchasedAdamID:{objc_msgSend(v3, "adamID")}];
  v13 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "reportingStoreItemID");
  v14 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v13, __p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v15 = MPMediaLibraryPropertyCacheValueForProperty(v14[5], *(a1 + 40));
  [v3 setReportingAdamID:{objc_msgSend(v15, "longLongValue")}];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "assetStoreItemID");
  v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v16, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], *(a1 + 40));
  [v3 setAssetAdamID:{objc_msgSend(v18, "longLongValue")}];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL40_MPMLInitPropertyPodcastEpisodeAuthorMapv_block_invoke_5(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL40_MPMLInitPropertyPodcastEpisodeAuthorMapv_block_invoke_4(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasName");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "nameOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v8, &v9, 2uLL);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A26440C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL40_MPMLInitPropertyPodcastEpisodeAuthorMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL40_MPMLInitPropertyPodcastEpisodeAuthorMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL40_MPMLInitPropertyPodcastEpisodeAuthorMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL40_MPMLInitPropertyPodcastEpisodeAuthorMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL40_MPMLInitPropertyPodcastEpisodeAuthorMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke_11(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "datePlayed");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke_10(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "userRating");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = MEMORY[0x1E696AD98];
  [v8 floatValue];
  v11 = [v9 numberWithDouble:v10 / 100.0];

  return v11;
}

id ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke_9(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "dateReleased");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateComponentsFromStoredInt64(v9);

  return v10;
}

id _MPMLDateComponentsFromStoredInt64(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a1];
    v2 = [MEMORY[0x1E695DEE8] currentCalendar];
    v3 = [v2 components:3145982 fromDate:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "time");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v8, "longLongValue") / 1000.0}];

  return v9;
}

id ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke_7(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "title");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke_6(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "titleOrder");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
  {
    [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
    mlcore::SortDescriptor::SortDescriptor();
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v7, &v8, 1uLL);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A2644AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke_5(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = mlcore::ItemPropertyStoreID(v6);
  v4 = mlcore::ItemPropertyPersistentID(v3);
  v5 = mlcore::ItemPropertySyncID(v4);
  _MPMLInsertPredicatesForIdentifierSet(a2, v6, v3, 0, v4, 0, 0, v5, 0, 0);
}

void sub_1A2644B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke_4(uint64_t a1, void *a2, uint64_t *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v34 = a2;
  v33 = [v34 modelKind];
  v4 = [v33 identityKind];
  v5 = +[MPModelPodcastEpisodeKind identityKind];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPodcastEpisodeMap()_block_invoke_4"];
    [v31 handleFailureInFunction:v32 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:3702 description:@"Must have Podcast Episode kind to generate Podcast Episode entity query."];
  }

  v7 = a3[1];
  v54 = *a3;
  v55 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v33 applyToView:&v54 withContext:v34];
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  v8 = [v34 allowedEntityIdentifiers];
  v9 = mlcore::ItemPropertyStoreID(v8);
  v10 = mlcore::ItemPropertyPersistentID(v9);
  v11 = mlcore::ItemPropertySyncID(v10);
  _MPMLInsertPredicatesForIdentifierSet(&v56, v8, v9, 0, v10, 0, 0, v11, 0, 0);

  v53[0] = 0;
  v53[1] = 0;
  v52 = v53;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v12 = [v34 scopedContainers];
  v13 = [v12 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v13)
  {
    v14 = *v49;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v48 + 1) + 8 * i) identifiers];
        v17 = [v16 library];
        v18 = [v17 persistentID];

        v46 = v18;
        v19 = [v16 universalStore];
        v20 = [v19 adamID];

        v44 = v20;
        v43[0] = objc_opt_class();
        if (v43[0] == objc_opt_class())
        {
          if (v18)
          {
            v39 = v43;
            v22 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v52, v43[0]);
            *&v38 = mlcore::ItemPropertyAlbumPersistentID(v22);
            v39 = &v38;
            v23 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v22 + 40, v38);
            std::vector<long long>::push_back[abi:ne200100]((v23 + 5), &v46);
          }

          else if (v20)
          {
            v39 = v43;
            v24 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v52, v43[0]);
            *&v38 = mlcore::ItemPropertyStorePlaylistID(v24);
            v39 = &v38;
            v25 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v24 + 40, v38);
            std::vector<long long>::push_back[abi:ne200100]((v25 + 5), &v44);
          }
        }

        else
        {
          v21 = objc_opt_class();
          if (v21 == objc_opt_class())
          {
            __assert_rtn("_MPMLInitPropertyPodcastEpisodeMap_block_invoke_4", "MPMediaLibraryTranslatorSchema.mm", 3726, "0");
          }
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v13);
  }

  v26 = v52;
  if (v52 != v53)
  {
    do
    {
      std::pair<objc_class * const {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long>>,std::vector<std::pair<mlcore::ModelProperty<long long> const,std::allocator<long long>>>>>::pair[abi:ne200100](&v46, v26 + 4);
      std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>::map[abi:ne200100](&v44, v47);
      memset(v43, 0, sizeof(v43));
      if (v44 != &v45)
      {
        v27 = *(v44 + 40);
        v39 = *(v44 + 32);
        v41 = 0;
        v42 = 0;
        __p = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v27, *(v44 + 48), (*(v44 + 48) - v27) >> 3);
        if (v41 - __p == 8)
        {
          v60 = v39;
          v59 = 0;
          std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
        }

        v60 = v39;
        std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
      }

      memset(v37, 0, sizeof(v37));
      std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v37, 0, 0, 0);
      mlcore::CreateOrPredicate();
      std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](&v56, &v39);
      if (__p)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p);
      }

      *&v38 = v37;
      std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v38);
      v39 = v43;
      std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v39);
      std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::destroy(v45);
      std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::destroy(v47[1]);

      v28 = v26[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v26[2];
          v30 = *v29 == v26;
          v26 = v29;
        }

        while (!v30);
      }

      v26 = v29;
    }

    while (v29 != v53);
  }

  memset(v35, 0, sizeof(v35));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v35, v56, v57, (v57 - v56) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::podcastEpisodesQuery();
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v46 = v35;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v46);
  std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::destroy(v53[0]);

  v46 = &v56;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v46);
}

void sub_1A264519C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  a37 = &a54;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a37);

  _Unwind_Resume(a1);
}

void ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke(uint64_t a1, void *a2, void *a3, int8x8_t *a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke_2;
  v17[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v17[4] = a3;
  v17[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v17];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke_3;
  v16[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v16[4] = a3;
  v16[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v16];
  std::string::basic_string[abi:ne200100]<0>(__p, "externalGUID");
  v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
  [v9 setVendorID:v13];

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A26454D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL34_MPMLInitPropertyPodcastEpisodeMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL33_MPMLInitPropertyPodcastAuthorMapv_block_invoke_5(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL33_MPMLInitPropertyPodcastAuthorMapv_block_invoke_4(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasName");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "nameOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v8, &v9, 2uLL);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A26458F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL33_MPMLInitPropertyPodcastAuthorMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL33_MPMLInitPropertyPodcastAuthorMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL33_MPMLInitPropertyPodcastAuthorMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL33_MPMLInitPropertyPodcastAuthorMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL33_MPMLInitPropertyPodcastAuthorMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL27_MPMLInitPropertyPodcastMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mediaType");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 unsignedIntValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = 255;
  if (v12 != 0xFF)
  {
    v13 = 0;
  }

  if ((~v12 & 0xFF00) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 | 0xFF00;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "availableArtworkToken");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkToken");
  v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkSourceType");
  v19 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v19)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v20 = MPMediaLibraryPropertyCacheValueForProperty(v19[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = [v6 mediaLibrary];
  v22 = vandq_s8(vshlq_u32(vdupq_n_s32(v12), xmmword_1A273DD80), xmmword_1A273DD90);
  *v22.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
  v23 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, v14 | v22.i32[0] | v12 & 0x3210 | v22.i32[1] | (4 * v12) & 0x400 | (4 * ((v12 >> 1) & 1)) | (2 * v12) & 0x800, 0, 1, 0, v16, v18, v20, v21);

  return v23;
}

id ___ZL27_MPMLInitPropertyPodcastMapv_block_invoke_7(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "feedURL");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = v8;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else if (v8)
  {
LABEL_4:
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

id ___ZL27_MPMLInitPropertyPodcastMapv_block_invoke_6(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "title");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL27_MPMLInitPropertyPodcastMapv_block_invoke_5(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasTitle");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "titleOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v8, &v9, 2uLL);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A26462FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL27_MPMLInitPropertyPodcastMapv_block_invoke_4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = mlcore::AlbumPropertyPersistentID(v5);
  v4 = mlcore::AlbumPropertySyncID(v3);
  _MPMLInsertPredicatesForIdentifierSet(a2, v5, 0, 0, v3, 0, 0, v4, 0, 0);
}

void sub_1A26463CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void ___ZL27_MPMLInitPropertyPodcastMapv_block_invoke_3(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v5 = [v4 modelKind];
  v6 = [v5 identityKind];
  v7 = +[MPModelPodcastKind identityKind];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPodcastMap()_block_invoke_3"];
    [v13 handleFailureInFunction:v14 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:3577 description:@"Must have podcast kind to generate podcast entity query."];
  }

  v9 = a3[1];
  v17 = *a3;
  v18 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 applyToView:&v17 withContext:v4];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v10 = [v4 allowedEntityIdentifiers];
  v11 = mlcore::AlbumPropertyPersistentID(v10);
  v12 = mlcore::AlbumPropertySyncID(v11);
  _MPMLInsertPredicatesForIdentifierSet(&v19, v10, 0, 0, v11, 0, 0, v12, 0, 0);

  memset(v15, 0, sizeof(v15));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v15, v19, v20, (v20 - v19) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::podcastsQuery();
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v22 = v15;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v22);

  v22 = &v19;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v22);
}

void sub_1A26465C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v23 - 72) = &a19;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v23 - 72));

  _Unwind_Resume(a1);
}

void ___ZL27_MPMLInitPropertyPodcastMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a2 mediaLibrary];
  v10 = [v9 uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL27_MPMLInitPropertyPodcastMapv_block_invoke_2;
  v11[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setLibraryIdentifiersWithDatabaseID:v10 block:v11];
}

void ___ZL27_MPMLInitPropertyPodcastMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL36_MPMLInitPropertyPlaybackPositionMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudKVSPlayCount");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

id ___ZL36_MPMLInitPropertyPlaybackPositionMapv_block_invoke_7(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudKVSHasBeenPlayed");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

id ___ZL36_MPMLInitPropertyPlaybackPositionMapv_block_invoke_6(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "stopTime");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:v9 / 1000.0];
  }

  return v10;
}

id ___ZL36_MPMLInitPropertyPlaybackPositionMapv_block_invoke_5(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "startTime");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v8, "longLongValue") / 1000.0}];

  return v9;
}

id ___ZL36_MPMLInitPropertyPlaybackPositionMapv_block_invoke_4(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudKVSKey");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

id ___ZL36_MPMLInitPropertyPlaybackPositionMapv_block_invoke_3(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudKVSBookmarkTime");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v8, "longLongValue") / 1000.0}];

  return v9;
}

void ___ZL36_MPMLInitPropertyPlaybackPositionMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a2 mediaLibrary];
  v10 = [v9 uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL36_MPMLInitPropertyPlaybackPositionMapv_block_invoke_2;
  v11[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setLibraryIdentifiersWithDatabaseID:v10 block:v11];
}

void ___ZL36_MPMLInitPropertyPlaybackPositionMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{-objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_12(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v15 = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mediaType");
  v15 = __p;
  v9 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
  v10 = MPMediaLibraryPropertyCacheValueForProperty(v9[5], a4);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if ([v8 longLongValue])
  {
    v11 = ([v10 intValue] >> 11) & 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1A26470FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A26470F0);
}

uint64_t ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_11(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v15 = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mediaType");
  v15 = __p;
  v9 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
  v10 = MPMediaLibraryPropertyCacheValueForProperty(v9[5], a4);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if ([v8 longLongValue])
  {
    v11 = ([v10 intValue] >> 9) & 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1A2647260(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A2647254);
}

BOOL ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_10(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v15 = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mediaType");
  v15 = __p;
  v9 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
  v10 = MPMediaLibraryPropertyCacheValueForProperty(v9[5], a4);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if ([v8 longLongValue])
  {
    v11 = ([v10 intValue] & 0x408) != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1A26473CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A26473C0);
}

id ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_9(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "positionUUID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (![v8 length])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
    v9 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v9)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v10 = MPMediaLibraryPropertyCacheValueForProperty(v9[5], a4);
    v11 = [v10 longLongValue];

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%08x-%04x-%04x-0000-0001", HIDWORD(v11), WORD1(v11), v11];

    v8 = v12;
  }

  return v8;
}

id ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "UUID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (![v8 length])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
    v9 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v9)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v10 = MPMediaLibraryPropertyCacheValueForProperty(v9[5], a4);
    v11 = [v10 longLongValue];

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%08x-%04x-%04x-0000-0000", HIDWORD(v11), WORD1(v11), v11];

    v8 = v12;
  }

  return v8;
}

id ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_7(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "position");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_5(uint64_t a1, void *a2, uint64_t *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v5 = [v4 scopedContainers];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v7)
  {
    v8 = *v61;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v61 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v60 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;

          if (v11)
          {
            v45 = [v4 modelKind];
            v12 = [v45 identityKind];
            v13 = +[MPModelPlaylistEntryKind identityKind];
            v14 = [v12 isEqual:v13];

            if ((v14 & 1) == 0)
            {
              v43 = [MEMORY[0x1E696AAA8] currentHandler];
              v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistEntryMap()_block_invoke_5"];
              [v43 handleFailureInFunction:v44 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2381 description:@"Must have PlaylistEntry kind to generate PlaylistEntry entity query."];
            }

            v15 = a3[1];
            v58 = *a3;
            v59 = v15;
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            [v45 applyToView:&v58 withContext:v4];
            if (v59)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v59);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "");
            v16 = [v4 filterText];
            v17 = [v16 length] == 0;

            if (!v17)
            {
              v18 = [v4 filterText];
              v19 = v18;
              std::string::basic_string[abi:ne200100]<0>(v66, [v18 UTF8String]);
              if (SHIBYTE(v57) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = *v66;
              v57 = v67;
              BYTE7(v67) = 0;
              LOBYTE(v66[0]) = 0;
            }

            v55 = 0;
            [v11 identifiers];
            v20 = [objc_claimAutoreleasedReturnValue() library];
            v21 = [v20 persistentID];

            v54 = v21;
            std::allocate_shared[abi:ne200100]<mlcore::Playlist,std::allocator<mlcore::Playlist>,long long &,0>();
          }

LABEL_22:
          v66[1] = 0;
          v66[0] = 0;
          *&v67 = 0;
          __p[1] = 0;
          __p[0] = 0;
          v57 = 0;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v22 = [v4 allowedEntityIdentifiers];
          v23 = [v22 countByEnumeratingWithState:&v50 objects:v65 count:16];
          if (v23)
          {
            v24 = *v51;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v51 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = *(*(&v50 + 1) + 8 * j);
                v27 = [v26 library];
                v28 = [v27 containedPersistentID] == 0;

                if (!v28)
                {
                  v29 = [v26 library];
                  v68 = [v29 persistentID];
                  std::vector<long long>::push_back[abi:ne200100](__p, &v68);
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v50 objects:v65 count:16];
            }

            while (v23);
          }

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v30 = [v4 scopedContainers];
          v31 = [v30 countByEnumeratingWithState:&v46 objects:v64 count:16];
          if (v31)
          {
            v32 = *v47;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v47 != v32)
                {
                  objc_enumerationMutation(v30);
                }

                v34 = *(*(&v46 + 1) + 8 * k);
                v35 = [v34 identifiers];
                v36 = [v35 library];
                v37 = [v36 containedPersistentID] == 0;

                if (!v37)
                {
                  v38 = [v34 identifiers];
                  v39 = [v38 library];
                  v68 = [v39 persistentID];
                  std::vector<long long>::push_back[abi:ne200100](__p, &v68);
                }
              }

              v31 = [v30 countByEnumeratingWithState:&v46 objects:v64 count:16];
            }

            while (v31);
          }

          if (__p[1] == __p[0])
          {
            v41 = [MEMORY[0x1E696AAA8] currentHandler];
            v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistEntryMap()_block_invoke_5"];
            [v41 handleFailureInFunction:v42 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2467 description:@"Attempted to query playlist entries without scoping to a playlist or allowed identifiers"];
          }

          v68 = mlcore::PlaylistItemPropertyPersistentID(v40);
          std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v7);
  }

  goto LABEL_22;
}

uint64_t _ZNKSt3__110__function6__funcIZZL33_MPMLInitPropertyPlaylistEntryMapvEUb_E3__0NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZL33_MPMLInitPropertyPlaylistEntryMapvEUb_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZL33_MPMLInitPropertyPlaylistEntryMapvEUb_E3__0NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEEclEOS8_(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (mlcore::EntityQueryResult::entityCount(v4))
  {
    mlcore::EntityQueryResult::entityAtIndex(v4);
    std::dynamic_pointer_cast[abi:ne200100]<mlcore::Playlist,mlcore::Entity>(buf, &v19);
    v5 = *(a1 + 16);
    v6 = *(v5 + 8);
    *v5 = *buf;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = v20;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v8 = **(a1 + 16);
    IsDynamic = mlcore::PlaylistPropertySmartIsDynamic(v7);
    v10 = mlcore::Entity::valueForProperty<int>(v8, IsDynamic);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v14 = **(a1 + 16);
      IsSmart = mlcore::PlaylistPropertyIsSmart(v10);
      v16 = mlcore::Entity::valueForProperty<int>(v14, IsSmart);
      if (v16)
      {
        v17 = **(a1 + 16);
        IsSourceRemote = mlcore::PlaylistPropertyIsSourceRemote(v16);
        v11 = mlcore::Entity::valueForProperty<int>(v17, IsSourceRemote) == 2;
      }

      else
      {
        v11 = 0;
      }
    }

    **(a1 + 32) = v11;
  }

  else
  {
    v12 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = **(a1 + 8);
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "Did not find playlist for identifiers: %{public}@", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(**(a1 + 24));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

__n128 _ZNKSt3__110__function6__funcIZZL33_MPMLInitPropertyPlaylistEntryMapvEUb_E3__0NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEE7__cloneEPNS0_6__baseIS9_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F149A6B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke(uint64_t a1, void *a2, void *a3, int8x8_t *a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_2;
  v30[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v30[4] = a3;
  v30[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v30];

  v12 = [v8 personID];
  if ([v12 length])
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_3;
    v29[3] = &__block_descriptor_48_e45_v16__0___MPMutablePersonalStoreIdentifiers__8l;
    v29[4] = a3;
    v29[5] = a4;
    [v9 setPersonalStoreIdentifiersWithPersonID:v12 block:v29];
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_4;
  v28[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v28[4] = a3;
  v28[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v28];
  std::string::basic_string[abi:ne200100]<0>(v31, "occurrenceID");
  v13 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, v31);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = MPMediaLibraryPropertyCacheValueForProperty(v13[5], a4);
  [v9 setContainerUniqueID:v14];

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v31, "excludeFromShuffle");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, v31);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  [v9 setShouldExcludeFromShuffle:{objc_msgSend(v16, "BOOLValue")}];

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], a4);
  quot = [v18 longLongValue];
  v20 = quot;
  if (quot)
  {
    v21 = &v33 + 1;
    do
    {
      v22 = lldiv(quot, 10);
      quot = v22.quot;
      if (v22.rem >= 0)
      {
        LOBYTE(v23) = v22.rem;
      }

      else
      {
        v23 = -v22.rem;
      }

      *(v21 - 2) = v23 + 48;
      v24 = (v21 - 2);
      --v21;
    }

    while (v22.quot);
    if (v20 < 0)
    {
      *(v21 - 2) = 45;
      v24 = (v21 - 2);
    }

    v25 = CFStringCreateWithBytes(0, v24, &v33 - v24, 0x8000100u, 0);
  }

  else
  {
    v25 = @"0";
  }

  [v9 setHandoffCorrelationID:v25];

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A2649108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPid");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v7, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], *(a1 + 40));
  [v3 setContainedPersistentID:{objc_msgSend(v9, "longLongValue")}];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setCloudID:{objc_msgSend(v6, "unsignedLongLongValue")}];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeCloudAlbumID");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v7, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], *(a1 + 40));
  [v3 setCloudAlbumID:v9];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A2649420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL33_MPMLInitPropertyPlaylistEntryMapv_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudUniversalLibraryID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setUniversalCloudLibraryID:v6];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "subscriptionStoreID");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v7, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], *(a1 + 40));
  [v3 setSubscriptionAdamID:{objc_msgSend(v9, "longLongValue")}];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v11 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v10, __p);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = MPMediaLibraryPropertyCacheValueForProperty(v11[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v12, "longLongValue")}];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  [v3 setPurchasedAdamID:{objc_msgSend(v3, "adamID")}];
  v13 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "reportingStoreItemID");
  v14 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v13, __p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v15 = MPMediaLibraryPropertyCacheValueForProperty(v14[5], *(a1 + 40));
  [v3 setReportingAdamID:{objc_msgSend(v15, "longLongValue")}];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "assetStoreItemID");
  v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v16, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], *(a1 + 40));
  [v3 setAssetAdamID:{objc_msgSend(v18, "longLongValue")}];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL25_MPMLInitPropertyGenreMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "libraryAdded");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL25_MPMLInitPropertyGenreMapv_block_invoke_7(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL25_MPMLInitPropertyGenreMapv_block_invoke_6(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a3;
  std::string::basic_string[abi:ne200100]<0>(&v13, [v6 UTF8String]);
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a2, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v7[5];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(*v8 + 80))(v8) != 3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyGenreMap()_block_invoke_6"];
    [v9 handleFailureInFunction:v10 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2302 description:@"The base property key for Genre's property[name] is not a string and thus cannot be used to create a SearchPredicate"];
  }

  if (a4 == 1)
  {
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *&,std::string&,mediaplatform::UnicodeSearch::MatchType,0>();
  }

  if (!a4)
  {
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *&,std::string&,mediaplatform::UnicodeSearch::MatchType,0>();
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }
}

void sub_1A2649A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A2649BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void ___ZL25_MPMLInitPropertyGenreMapv_block_invoke_5(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasName");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "nameOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v8, &v9, 2uLL);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A2649D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL25_MPMLInitPropertyGenreMapv_block_invoke_4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = mlcore::GenrePropertyPersistentID(v4);
  _MPMLInsertPredicatesForIdentifierSet(a2, v4, 0, 0, v3, 0, 0, 0, 0, 0);
}

void sub_1A2649DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void ___ZL25_MPMLInitPropertyGenreMapv_block_invoke_3(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = [v4 modelKind];
  v6 = [v5 identityKind];
  v7 = +[MPModelGenreKind identityKind];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyGenreMap()_block_invoke_3"];
    [v16 handleFailureInFunction:v17 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2268 description:@"Must have Genre kind to generate Genre entity query."];
  }

  v9 = a3[1];
  v22 = *a3;
  v23 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 applyToView:&v22 withContext:v4];
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v10 = [v4 allowedEntityIdentifiers];
  v11 = mlcore::GenrePropertyPersistentID(v10);
  _MPMLInsertPredicatesForIdentifierSet(&v24, v10, 0, 0, v11, 0, 0, 0, 0, 0);

  v12 = [v4 filterText];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [v4 filterText];
    std::string::basic_string[abi:ne200100]<0>(__p, [v14 UTF8String]);

    v20 = mlcore::GenrePropertyName(v15);
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *,std::string&,0>();
  }

  memset(v18, 0, sizeof(v18));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v18, v24, v25, (v25 - v24) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::genresQuery();
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  __p[0] = v18;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);

  __p[0] = &v24;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1A264A080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __p = (v30 - 88);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void ___ZL25_MPMLInitPropertyGenreMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a2 mediaLibrary];
  v10 = [v9 uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL25_MPMLInitPropertyGenreMapv_block_invoke_2;
  v11[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setLibraryIdentifiersWithDatabaseID:v10 block:v11];
}

void ___ZL25_MPMLInitPropertyGenreMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL28_MPMLInitPropertyComposerMapv_block_invoke_7(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "libraryAdded");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL28_MPMLInitPropertyComposerMapv_block_invoke_6(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL28_MPMLInitPropertyComposerMapv_block_invoke_5(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a3;
  std::string::basic_string[abi:ne200100]<0>(&v13, [v6 UTF8String]);
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a2, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v7[5];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(*v8 + 80))(v8) != 3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyComposerMap()_block_invoke_5"];
    [v9 handleFailureInFunction:v10 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2163 description:@"The base property key for Composer's property[name] is not a string and thus cannot be used to create a SearchPredicate"];
  }

  if (a4 == 1)
  {
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *&,std::string&,mediaplatform::UnicodeSearch::MatchType,0>();
  }

  if (!a4)
  {
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *&,std::string&,mediaplatform::UnicodeSearch::MatchType,0>();
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }
}

void sub_1A264A67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL28_MPMLInitPropertyComposerMapv_block_invoke_4(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasName");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "nameOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v8, &v9, 2uLL);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A264A81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL28_MPMLInitPropertyComposerMapv_block_invoke_3(uint64_t a1, void *a2, uint64_t *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v5 = [v4 modelKind];
  v6 = [v5 identityKind];
  v7 = +[MPModelComposerKind identityKind];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyComposerMap()_block_invoke_3"];
    [v17 handleFailureInFunction:v18 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2133 description:@"Must have composer kind to generate composer entity query."];
  }

  v9 = a3[1];
  v23 = *a3;
  v24 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 applyToView:&v23 withContext:v4];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v10 = [v4 allowedEntityIdentifiers];
  v11 = mlcore::ComposerPropertyPersistentID(v10);
  _MPMLInsertPredicatesForIdentifierSet(&v25, v10, 0, 0, v11, 0, 0, 0, 0, 0);

  v12 = [v4 filterText];
  v13 = [v12 length] == 0;

  if (!v13)
  {
    v14 = [v4 filterText];
    v15 = v14;
    std::string::basic_string[abi:ne200100]<0>(__p, [v14 UTF8String]);

    v21 = mlcore::ComposerPropertyName(v16);
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *,std::string&,0>();
  }

  memset(v19, 0, sizeof(v19));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v19, v25, v26, (v26 - v25) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::composersQuery();
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  __p[0] = v19;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);

  __p[0] = &v25;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1A264AB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  __p = (v35 - 128);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void ___ZL28_MPMLInitPropertyComposerMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a2 mediaLibrary];
  v10 = [v9 uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL28_MPMLInitPropertyComposerMapv_block_invoke_2;
  v11[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setLibraryIdentifiersWithDatabaseID:v10 block:v11];
}

void ___ZL28_MPMLInitPropertyComposerMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL30_MPMLInitPropertyItemArtistMapv_block_invoke_7(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "artistPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "artistAvailableArtworkToken");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "artistFetchableArtworkToken");
  v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "artistFetchableArtworkSourceType");
  v14 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v15 = MPMediaLibraryPropertyCacheValueForProperty(v14[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = [v6 mediaLibrary];
  v17 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, 0, 7, 4, 0, v11, v13, v15, v16);

  return v17;
}

void sub_1A264B068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v20 = v17;

  _Unwind_Resume(a1);
}

id ___ZL30_MPMLInitPropertyItemArtistMapv_block_invoke_6(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL30_MPMLInitPropertyItemArtistMapv_block_invoke_5(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a3;
  std::string::basic_string[abi:ne200100]<0>(&v13, [v6 UTF8String]);
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a2, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v7[5];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(*v8 + 80))(v8) != 3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyItemArtistMap()_block_invoke_5"];
    [v9 handleFailureInFunction:v10 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2065 description:@"The base property key for Artist's property[name] is not a string and thus cannot be used to create a SearchPredicate"];
  }

  if (a4 == 1)
  {
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *&,std::string&,mediaplatform::UnicodeSearch::MatchType,0>();
  }

  if (!a4)
  {
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *&,std::string&,mediaplatform::UnicodeSearch::MatchType,0>();
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }
}

void sub_1A264B368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL30_MPMLInitPropertyItemArtistMapv_block_invoke_4(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasName");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "nameOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v8, &v9, 2uLL);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A264B508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL30_MPMLInitPropertyItemArtistMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL30_MPMLInitPropertyItemArtistMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL30_MPMLInitPropertyItemArtistMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL30_MPMLInitPropertyItemArtistMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL30_MPMLInitPropertyItemArtistMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_15(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "likedState");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 intValue];

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "libraryItemCount");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 longLongValue];

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = v9 == 2 || v12 > 0;
  v15 = [MEMORY[0x1E696AD98] numberWithBool:v14];

  return v15;
}

id ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_14(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "likedStateChangedDate");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_13(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "likedState");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 intValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:v9 == 3];

  return v10;
}

id ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_12(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "likedState");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 intValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:v9 == 2];

  return v10;
}

id ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_11(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "libraryAdded");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_10(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "artistPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "artistAvailableArtworkToken");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "artistFetchableArtworkToken");
  v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "artistFetchableArtworkSourceType");
  v14 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v15 = MPMediaLibraryPropertyCacheValueForProperty(v14[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = [v6 mediaLibrary];
  v17 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, 0, 7, 4, 0, v11, v13, v15, v16);

  return v17;
}

void sub_1A264C004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v20 = v17;

  _Unwind_Resume(a1);
}

id ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_9(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a3;
  std::string::basic_string[abi:ne200100]<0>(&v13, [v6 UTF8String]);
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a2, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v7[5];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(*v8 + 80))(v8) != 3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyArtistMap()_block_invoke_8"];
    [v9 handleFailureInFunction:v10 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:1951 description:@"The base property key for Artist's property[name] is not a string and thus cannot be used to create a SearchPredicate"];
  }

  if (a4 == 1)
  {
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *&,std::string&,mediaplatform::UnicodeSearch::MatchType,0>();
  }

  if (!a4)
  {
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *&,std::string&,mediaplatform::UnicodeSearch::MatchType,0>();
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }
}

void sub_1A264C304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_7(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasName");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "nameOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v8, &v9, 2uLL);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A264C4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_6(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = mlcore::ArtistPropertyStoreID(v5);
  v4 = mlcore::ArtistPropertyPersistentID(v3);
  _MPMLInsertPredicatesForIdentifierSet(a2, v5, v3, 0, v4, 0, 0, 0, 0, 0);
}

void sub_1A264C574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_5(uint64_t a1, void *a2, uint64_t *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v5 = [v4 modelKind];
  v6 = [v5 identityKind];
  v7 = +[MPModelArtistKind identityKind];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyArtistMap()_block_invoke_5"];
    [v17 handleFailureInFunction:v18 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:1914 description:@"Must have artist kind to generate artist entity query."];
  }

  v9 = a3[1];
  v23 = *a3;
  v24 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 applyToView:&v23 withContext:v4];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v10 = [v4 allowedEntityIdentifiers];
  v11 = mlcore::ArtistPropertyStoreID(v10);
  v12 = mlcore::ArtistPropertyPersistentID(v11);
  _MPMLInsertPredicatesForIdentifierSet(&v25, v10, v11, 0, v12, 0, 0, 0, 0, 0);

  v13 = [v4 filterText];
  LOBYTE(v11) = [v13 length] == 0;

  if ((v11 & 1) == 0)
  {
    v14 = [v4 filterText];
    v15 = v14;
    std::string::basic_string[abi:ne200100]<0>(__p, [v14 UTF8String]);

    v21 = mlcore::ArtistPropertyName(v16);
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *,std::string&,0>();
  }

  memset(v19, 0, sizeof(v19));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v19, v25, v26, (v26 - v25) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::artistsQuery();
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  __p[0] = v19;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);

  __p[0] = &v25;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1A264C87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  __p = (v35 - 128);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void ___ZL26_MPMLInitPropertyArtistMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_2;
  v15[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v15[4] = a3;
  v15[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v15];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_3;
  v14[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v14[4] = a3;
  v14[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v14];
  v12 = [v8 personID];
  if ([v12 length])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_4;
    v13[3] = &__block_descriptor_48_e45_v16__0___MPMutablePersonalStoreIdentifiers__8l;
    v13[4] = a3;
    v13[5] = a4;
    [v9 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];
  }
}

void ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL26_MPMLInitPropertyArtistMapv_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "albumArtistCloudUniversalLibraryID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setCloudArtistID:v6];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A264CDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL27_MPMLInitPropertyCuratorMapv_block_invoke_4(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (![v8 length])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "externalVendorName");
    v9 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v9)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v10 = MPMediaLibraryPropertyCacheValueForProperty(v9[5], a4);

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v10;
  }

  return v8;
}

void ___ZL27_MPMLInitPropertyCuratorMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL27_MPMLInitPropertyCuratorMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL27_MPMLInitPropertyCuratorMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL27_MPMLInitPropertyCuratorMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{-objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL27_MPMLInitPropertyCuratorMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_521(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "isSmartPlaylist");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 BOOLValue];

  if (SBYTE3(v35) < 0)
  {
    operator delete(*__p);
  }

  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
    v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v10)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
    v12 = [v11 longLongValue];

    if (SBYTE3(v35) < 0)
    {
      operator delete(*__p);
    }

    v13 = MEMORY[0x1E695DFD8];
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
    v15 = [MPMediaPropertyPredicate predicateWithValue:v14 forProperty:@"playlistPersistentID"];
    v16 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509B80 forProperty:@"hasNonPurgeableAsset"];
    v17 = [v13 setWithObjects:{v15, v16, 0}];

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v19 = v18;
    v20 = [MPMediaQuery alloc];
    v21 = [v6 mediaLibrary];
    v22 = [(MPMediaQuery *)v20 initWithFilterPredicates:v17 library:v21];

    v23 = [(MPMediaQuery *)v22 _hasItems];
    v24 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *__p = 134218496;
      *&__p[4] = v12;
      v32 = 1024;
      v33 = v23;
      v34 = 2048;
      v35 = v25 - v19;
      _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEFAULT, "Determined that playlist with PID=%lld has at least one clean downloaded track (%{BOOL}u) in %.2f seconds", __p, 0x1Cu);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "cleanDownloadedTrackCount");
    v26 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v26)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v27 = MPMediaLibraryPropertyCacheValueForProperty(v26[5], a4);
    v28 = [v27 longLongValue];

    if (SBYTE3(v35) < 0)
    {
      operator delete(*__p);
    }

    v23 = v28 > 0;
  }

  v29 = [MEMORY[0x1E696AD98] numberWithBool:v23];

  return v29;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_517(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "isSmartPlaylist");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 BOOLValue];

  if (SBYTE3(v39) < 0)
  {
    operator delete(*__p);
  }

  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
    v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v10)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
    v12 = [v11 longLongValue];

    if (SBYTE3(v39) < 0)
    {
      operator delete(*__p);
    }

    v13 = MEMORY[0x1E695DFD8];
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
    v15 = [MPMediaPropertyPredicate predicateWithValue:v14 forProperty:@"playlistPersistentID"];
    v16 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509B68 forProperty:@"isExplicit"];
    v17 = [v13 setWithObjects:{v15, v16, 0}];

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v19 = v18;
    v20 = [MPMediaQuery alloc];
    v21 = [v6 mediaLibrary];
    v22 = [(MPMediaQuery *)v20 initWithFilterPredicates:v17 library:v21];

    v23 = [(MPMediaQuery *)v22 _hasItems];
    v24 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *__p = 134218496;
      *&__p[4] = v12;
      v36 = 1024;
      v37 = v23;
      v38 = 2048;
      v39 = v25 - v19;
      _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEFAULT, "Determined that playlist with PID=%lld has at least one clean track (%{BOOL}u) in %.2f seconds", __p, 0x1Cu);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "trackCount");
    v26 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v26)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v27 = MPMediaLibraryPropertyCacheValueForProperty(v26[5], a4);
    v28 = [v27 longLongValue];

    if (SBYTE3(v39) < 0)
    {
      operator delete(*__p);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "cleanTrackCount");
    v29 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v29)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v30 = MPMediaLibraryPropertyCacheValueForProperty(v29[5], a4);
    v31 = [v30 longLongValue];

    if (SBYTE3(v39) < 0)
    {
      operator delete(*__p);
    }

    if (v28)
    {
      v32 = v31 <= 0;
    }

    else
    {
      v32 = 0;
    }

    v23 = !v32;
  }

  v33 = [MEMORY[0x1E696AD98] numberWithBool:v23];

  return v33;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_34(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "isSmartPlaylist");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 BOOLValue];

  if (SHIBYTE(v39) < 0)
  {
    operator delete(*__p);
  }

  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
    v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v10)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
    v12 = [v11 longLongValue];

    if (SHIBYTE(v39) < 0)
    {
      operator delete(*__p);
    }

    v13 = [MPMediaQuery alloc];
    v14 = MEMORY[0x1E695DFD8];
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
    v16 = [MPMediaPropertyPredicate predicateWithValue:v15 forProperty:@"playlistPersistentID"];
    v17 = [v14 setWithObject:v16];
    v18 = [v6 mediaLibrary];
    v19 = [(MPMediaQuery *)v13 initWithFilterPredicates:v17 library:v18];

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v21 = v20;
    v22 = [(MPMediaQuery *)v19 items];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_35;
    v31[3] = &unk_1E767DF10;
    v31[4] = &v32;
    [v22 enumerateObjectsUsingBlock:v31];

    v23 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v33[3];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *__p = 134218496;
      *&__p[4] = v12;
      v37 = 2048;
      v38 = v24;
      v39 = 2048;
      v40 = v25 - v21;
      _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "Determined that playlist with PID=%lld has %lld tracks in %.2f seconds", __p, 0x20u);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "trackCount");
    v26 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v26)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v27 = MPMediaLibraryPropertyCacheValueForProperty(v26[5], a4);
    v28 = [v27 longLongValue];
    v33[3] = v28;

    if (SHIBYTE(v39) < 0)
    {
      operator delete(*__p);
    }
  }

  v29 = [MEMORY[0x1E696AD98] numberWithLongLong:v33[3]];
  _Block_object_dispose(&v32, 8);

  return v29;
}

void sub_1A264DE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void *___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_33(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "isSmart");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 BOOLValue];

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "isStoreRedownloadable");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 BOOLValue];

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v9 | v12))
  {
    v13 = MEMORY[0x1E695E118];
  }

  else
  {
    v13 = MEMORY[0x1E695E110];
  }

  v14 = v13;

  return v13;
}

void sub_1A264E0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_32(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "collaborationInvitationURLExpirationDate");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_31(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "invitationURL");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ([v8 length])
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_30(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "favoriteSongsPlaylist");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 intValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:v9 == 1];

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_29(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "likedStateChangedDate");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_28(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "likedState");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 intValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:v9 == 3];

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_27(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "likedState");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 intValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:v9 == 2];

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_26(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "traits");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 intValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v9 & 1) << 8];

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_25(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocalConstraints");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "intValue")}];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_24(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocalStatusReason");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "intValue")}];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_23(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocalStatus");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v9 intValue] + 1;
  if (v10 >= 7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - 1;
  }

  v12 = [v7 numberWithInteger:v11];

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_22(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocal");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v9 intValue] + 2;
  if (v10 > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1A2741980[v10];
  }

  v12 = [v7 numberWithInteger:v11];

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_21(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v53 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "isSmart");
  v6 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = MPMediaLibraryPropertyCacheValueForProperty(v6[5], a4);
  v8 = [v7 BOOLValue];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "isGenius");
  v9 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v10 = MPMediaLibraryPropertyCacheValueForProperty(v9[5], a4);
  v11 = [v10 BOOLValue];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "isFolder");
  v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
  v14 = [v13 BOOLValue];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "shouldDisplayIndex");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  v17 = [v16 BOOLValue];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "isPersonalMix");
  v18 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v18)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v19 = MPMediaLibraryPropertyCacheValueForProperty(v18[5], a4);
  v20 = [v19 BOOLValue];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "isFavoriteSongsPlaylist");
  v21 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v21)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v22 = MPMediaLibraryPropertyCacheValueForProperty(v21[5], a4);
  v23 = [v22 BOOLValue];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "isExternalVendorPlaylist");
  v24 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v24)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v25 = MPMediaLibraryPropertyCacheValueForProperty(v24[5], a4);
  v52 = [v25 BOOLValue];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  v50 = v23;
  v51 = v20;
  v26 = v17;
  std::string::basic_string[abi:ne200100]<0>(__p, "isOwner");
  v27 = v14;
  v28 = v11;
  v29 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v29)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v30 = MPMediaLibraryPropertyCacheValueForProperty(v29[5], a4);
  v31 = [v30 BOOLValue];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "isPublic");
  v32 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v32)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v33 = MPMediaLibraryPropertyCacheValueForProperty(v32[5], a4);
  v34 = [v33 BOOLValue];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "isEditorial");
  v35 = v8;
  v36 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v36)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v37 = MPMediaLibraryPropertyCacheValueForProperty(v36[5], a4);
  v38 = [v37 BOOLValue];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "isUserShared");
  v39 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v39)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v40 = MPMediaLibraryPropertyCacheValueForProperty(v39[5], a4);
  v41 = [v40 BOOLValue];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  v42 = 9;
  if (v28)
  {
    v42 = 2;
  }

  if (v27)
  {
    v42 = 3;
  }

  v43 = 8;
  if (v35)
  {
    v43 = 1;
  }

  if (((v27 | v28) | v50))
  {
    v44 = v42;
  }

  else
  {
    v44 = v43;
  }

  v45 = 5;
  if (v51)
  {
    v45 = 7;
  }

  if ((((v27 | v28 | v50) | (v35 | v26)) & 1) == 0)
  {
    v44 = v45;
  }

  v46 = 6;
  if (((v41 | (v31 & v34)) & 1) == 0)
  {
    v46 = 0;
  }

  if (v38)
  {
    v46 = 4;
  }

  if (((v27 | v28 | v50 | v35 | v26) | (v51 | v52)))
  {
    v47 = v44;
  }

  else
  {
    v47 = v46;
  }

  v48 = [MEMORY[0x1E696AD98] numberWithInteger:v47];

  return v48;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_18(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "datePlayedLocal");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_17(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "dateModified");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateComponentsFromStoredInt64(v9);

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_16(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "downloadedDate");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_15(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "libraryAdded");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_14(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "isHidden");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v7 numberWithBool:{objc_msgSend(v9, "BOOLValue") ^ 1}];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_9_442(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "playlistPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "availableArtworkToken");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkToken");
  v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkSourceType");
  v14 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v15 = MPMediaLibraryPropertyCacheValueForProperty(v14[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = [v6 mediaLibrary];
  v17 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, 1, 1, 5, 1, v11, v13, v15, v16);

  return v17;
}

void sub_1A264F990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v20 = v17;

  _Unwind_Resume(a1);
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_4_428(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mediaLibrary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_5_431;
  aBlock[3] = &unk_1E767EB60;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_5_431(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 identifiers];
  v8 = [v7 library];
  v9 = [v6 playlistWithPersistentID:{objc_msgSend(v8, "persistentID")}];

  v10 = [v9 tiledArtworkCatalogWithRows:a3 columns:a4];

  return v10;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_3_425(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "playlistPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "availableArtworkToken");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkToken");
  v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkSourceType");
  v14 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v15 = MPMediaLibraryPropertyCacheValueForProperty(v14[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = [v6 mediaLibrary];
  v17 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, 1, 1, 5, 0, v11, v13, v15, v16);

  return v17;
}

void sub_1A264FDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v20 = v17;

  _Unwind_Resume(a1);
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_418(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "shareURL");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ([v8 length])
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_10(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = [v6 mediaLibrary];
  v8 = [v7 isHomeSharingLibrary];

  if (v8)
  {
    v9 = &unk_1F1509B68;
    goto LABEL_45;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "isFavoriteSongsPlaylist");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 BOOLValue];

  if (v38 < 0)
  {
    operator delete(__p[0]);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_8:
    std::string::basic_string[abi:ne200100]<0>(__p, "isSmart");
    v14 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v14)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v15 = MPMediaLibraryPropertyCacheValueForProperty(v14[5], a4);
    if ([v15 BOOLValue])
    {
      v16 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v35, "isGenius");
      v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, v35);
      if (!v17)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], a4);
      v16 = [v18 BOOLValue];

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }
    }

    if (v38 < 0)
    {
      operator delete(__p[0]);
      if (v16)
      {
        goto LABEL_16;
      }
    }

    else if (v16)
    {
LABEL_16:
      v13 = 2;
      goto LABEL_44;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "isSubscribed");
    v19 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v19)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v20 = MPMediaLibraryPropertyCacheValueForProperty(v19[5], a4);
    v21 = [v20 BOOLValue];

    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = 2;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "isOwner");
    v23 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v23)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v24 = MPMediaLibraryPropertyCacheValueForProperty(v23[5], a4);
    if ([v24 BOOLValue])
    {
      std::string::basic_string[abi:ne200100]<0>(v35, "isCollaborative");
      v25 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, v35);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v26 = MPMediaLibraryPropertyCacheValueForProperty(v25[5], a4);
      v27 = [v26 BOOLValue];

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }
    }

    else
    {
      v27 = 0;
    }

    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27)
    {
      v28 = 2;
    }

    else
    {
      v28 = v22;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "isTracklistUserEditable");
    v29 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v29)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v30 = MPMediaLibraryPropertyCacheValueForProperty(v29[5], a4);
    if ([v30 BOOLValue])
    {
      std::string::basic_string[abi:ne200100]<0>(v35, "isFolder");
      v31 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, v35);
      if (!v31)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v32 = MPMediaLibraryPropertyCacheValueForProperty(v31[5], a4);
      v33 = [v32 BOOLValue] ^ 1;

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }
    }

    else
    {
      v33 = 0;
    }

    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = v33 | v28;
    goto LABEL_44;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = 0;
LABEL_44:
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
LABEL_45:

  return v9;
}

void sub_1A2650390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

id ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_9(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a3;
  std::string::basic_string[abi:ne200100]<0>(&v13, [v6 UTF8String]);
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a2, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v7[5];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(*v8 + 80))(v8) != 3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistMap()_block_invoke_8"];
    [v9 handleFailureInFunction:v10 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:1423 description:@"The base property key for Playlist's property[name] is not a string and thus cannot be used to create a SearchPredicate"];
  }

  if (a4 == 1)
  {
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *&,std::string&,mediaplatform::UnicodeSearch::MatchType,0>();
  }

  if (!a4)
  {
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *&,std::string&,mediaplatform::UnicodeSearch::MatchType,0>();
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }
}

void sub_1A26506B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_7(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "nameOrder");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
  {
    [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
    mlcore::SortDescriptor::SortDescriptor();
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v7, &v8, 1uLL);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A26507FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_6(void *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = mlcore::PlaylistPropertyPersistentID(v8);
  v4 = mlcore::PlaylistPropertyStoreCloudID(v3);
  v5 = mlcore::PlaylistPropertyCloudGlobalID(v4);
  v6 = mlcore::PlaylistPropertySyncID(v5);
  v7 = mlcore::PlaylistPropertyCloudUniversalLibraryID(v6);
  _MPMLInsertPredicatesForIdentifierSet(a2, v8, 0, 0, v3, v4, v5, v6, v7, 0);
}

void sub_1A26508D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_5(uint64_t a1, void *a2, uint64_t *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v58 = a2;
  v4 = [v58 modelKind];
  v56 = v4;
  v5 = [v4 identityKind];
  v6 = +[MPModelPlaylistKind identityKind];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistMap()_block_invoke_5"];
    [v51 handleFailureInFunction:v52 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:1311 description:@"Must have playlist kind to generate playlist entity query."];
  }

  v8 = a3[1];
  v75 = *a3;
  v76 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v4 applyToView:&v75 withContext:v58];
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  v9 = [v58 allowedEntityIdentifiers];
  v57 = [v9 mutableCopy];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v10 = [v58 scopedContainers];
  v11 = [v10 reverseObjectEnumerator];

  v12 = 0;
  v13 = 0;
  v14 = [v11 countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (!v14)
  {
LABEL_31:

    goto LABEL_32;
  }

  v15 = *v72;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v72 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v71 + 1) + 8 * i);
      if (v13)
      {
        if (v12)
        {
          continue;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v17;
          if (v12)
          {
            continue;
          }
        }

        else
        {
          v13 = 0;
          if (v12)
          {
            continue;
          }
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v17;
      }

      else
      {
        v12 = 0;
      }
    }

    v14 = [v11 countByEnumeratingWithState:&v71 objects:v82 count:16];
  }

  while (v14);

  if (v13)
  {
    v19 = [v13 identifiers];
    v11 = [v19 modelKind];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v11;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    if ([v21 variants] != 8)
    {
      v22 = [v13 identifiers];
      [v57 addObject:v22];

      v13 = 0;
    }

    goto LABEL_31;
  }

LABEL_32:
  v23 = mlcore::PlaylistPropertyPersistentID(v18);
  v24 = mlcore::PlaylistPropertyStoreCloudID(v23);
  v25 = mlcore::PlaylistPropertyCloudGlobalID(v24);
  v26 = mlcore::PlaylistPropertySyncID(v25);
  v27 = mlcore::PlaylistPropertyCloudUniversalLibraryID(v26);
  _MPMLInsertPredicatesForIdentifierSet(&v77, v57, 0, 0, v23, v24, v25, v26, v27, 0);
  v28 = [v58 filterText];
  v29 = [v28 length] == 0;

  if (!v29)
  {
    v30 = [v58 filterText];
    v31 = v30;
    std::string::basic_string[abi:ne200100]<0>(&__p, [v30 UTF8String]);

    v67 = mlcore::PlaylistPropertyName(v32);
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *,std::string&,0>();
  }

  if (v12)
  {
    v33 = [v12 identifiers];
    v34 = [v33 universalStore];
    v35 = [v34 adamID];

    v68 = v35;
    if (v35)
    {
      IsFolder = mlcore::PlaylistPropertyCloudAuthorStoreID(v36);
      LODWORD(v66) = 0;
      std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v56;
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;
  v39 = v38;
  if (v13)
  {
    v40 = [v13 identifiers];
    v41 = [v40 library];
    v42 = [v41 persistentID];

    v66 = v42;
    if (([v39 options] & 8) == 0)
    {
      std::allocate_shared[abi:ne200100]<mlcore::Playlist,std::allocator<mlcore::Playlist>,long long &,0>();
    }

    v44 = [v58 mediaLibrary];
    v45 = [v44 msvDatabase];

    v65 = 0;
    v46 = [v45 statementWithString:@"WITH RECURSIVE playlist_tree AS(   SELECT container_pid error:{smart_is_folder    FROM container    WHERE parent_pid = @persistent_id    UNION ALL    SELECT p.container_pid, p.smart_is_folder    FROM container p    INNER JOIN playlist_tree pt ON p.parent_pid = pt.container_pid) SELECT container_pid FROM playlist_tree WHERE NOT smart_is_folder", &v65}];
    v55 = v65;
    [v46 bindInt64Value:v42 toParameterNamed:@"@persistent_id"];
    if (!v46 || v55)
    {
      v53 = [MEMORY[0x1E696AAA8] currentHandler];
      v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistMap()_block_invoke_5"];
      [v53 handleFailureInFunction:v54 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:1376 description:{@"Error creating CTE statement for recursive playlist folders: %@", v55}];
    }

    memset(v81, 0, 24);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v47 = [v45 resultsForStatement:v46];
    v48 = [v47 countByEnumeratingWithState:&v61 objects:v80 count:16];
    if (v48)
    {
      v49 = *v62;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v62 != v49)
          {
            objc_enumerationMutation(v47);
          }

          __p = [*(*(&v61 + 1) + 8 * j) int64ValueAtColumnIndex:0];
          if (__p)
          {
            std::vector<long long>::push_back[abi:ne200100](v81, &__p);
          }
        }

        v48 = [v47 countByEnumeratingWithState:&v61 objects:v80 count:16];
      }

      while (v48);
    }

    v68 = mlcore::PlaylistPropertyPersistentID([v46 invalidate]);
    std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
  }

  v43 = [v38 variants];
  if ((v43 & 8) == 0)
  {
    IsFolder = mlcore::PlaylistPropertySmartIsFolder(v43);
    LODWORD(v68) = 1;
    std::allocate_shared[abi:ne200100]<mlcore::UnaryPredicate<int>,std::allocator<mlcore::UnaryPredicate<int>>,mlcore::ModelProperty<int> *&,mlcore::UnaryOperator,0>();
  }

  if (![v57 count])
  {
    v68 = 0;
    IsFolder = mlcore::PlaylistPropertyParentPersistentID(0);
    LODWORD(v66) = 0;
    std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
  }

  memset(v59, 0, sizeof(v59));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v59, v77, v78, (v78 - v77) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::playlistsQuery();
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  v81[0] = v59;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](v81);

  v81[0] = &v77;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](v81);
}

void sub_1A2651258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x280] = &a69;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);

  _Unwind_Resume(a1);
}

void ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke(uint64_t a1, void *a2, void *a3, int8x8_t *a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_2;
  v29[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v29[4] = a3;
  v29[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v29];

  v12 = [v8 personID];
  if ([v12 length])
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_3;
    v28[3] = &__block_descriptor_48_e45_v16__0___MPMutablePersonalStoreIdentifiers__8l;
    v28[4] = a3;
    v28[5] = a4;
    [v9 setPersonalStoreIdentifiersWithPersonID:v12 block:v28];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_4;
  v27[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v27[4] = a3;
  v27[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v27];
  v13 = [v9 modelKind];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [v9 modelKind];
  }

  else
  {
    v15 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "isFolder");
  v16 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v16)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v17 = MPMediaLibraryPropertyCacheValueForProperty(v16[5], a4);
  v18 = [v17 BOOLValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 == 1)
  {
    v20 = [v15 playlistEntryKind];
    v21 = +[MPModelPlaylist kindWithVariants:playlistEntryKind:options:](MPModelPlaylist, "kindWithVariants:playlistEntryKind:options:", 8, v20, [v15 options]);
    [v9 setModelKind:v21];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_17;
    }

    v22 = [v15 variants];
    v20 = [v15 playlistEntryKind];
    v21 = +[MPModelPlaylist kindWithVariants:playlistEntryKind:options:](MPModelPlaylist, "kindWithVariants:playlistEntryKind:options:", v22 & 0xFFFFFFFFFFFFFFF7, v20, [v15 options]);
    [v9 setModelKind:v21];
  }

LABEL_17:
  std::string::basic_string[abi:ne200100]<0>(__p, "versionHash");
  v23 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v23)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v24 = MPMediaLibraryPropertyCacheValueForProperty(v23[5], a4);
  [v9 setVersionHash:v24];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "syncID");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v7, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], *(a1 + 40));
  [v3 setSyncID:{objc_msgSend(v9, "longLongValue")}];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setCloudID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL28_MPMLInitPropertyPlaylistMapv_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudUniversalLibraryID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setUniversalCloudLibraryID:v6];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "globalID");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v7, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], *(a1 + 40));
  [v3 setGlobalPlaylistID:v9];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A2651D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_39(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "isStoreRedownloadable");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_38(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "likedStateChangedDate");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_37(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "likedState");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 intValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:v9 == 3];

  return v10;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_36(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "likedState");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 intValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:v9 == 2];

  return v10;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_34(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = +[MPCloudController sharedCloudController];
  v8 = [v7 isEnhancedAudioAvailable];

  if (v8)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "hlsAudioCapability");
    v9 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v9)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v10 = MPMediaLibraryPropertyCacheValueForProperty(v9[5], a4);
    v11 = [v10 integerValue];

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = (v11 >> 2) & 8 | (16 * (v11 & 3)) | (v11 >> 1) & 2 | (v11 >> 2) & 4;
  }

  else
  {
    v12 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "masteredForiTunes");
  v13 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = MPMediaLibraryPropertyCacheValueForProperty(v13[5], a4);
  v15 = [v14 BOOLValue];

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12 | v15];

  return v16;
}

void sub_1A2652308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_32(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "appData");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:0];
  if (v9)
  {
    v10 = [[MPMediaLibraryAlbumAppData alloc] initWithAppDataDictionary:v9];
  }

  else
  {
    v10 = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_33;
  v15[3] = &unk_1E767E4B0;
  v16 = v10;
  v11 = v10;
  v12 = _Block_copy(v15);
  v13 = _Block_copy(v12);

  return v13;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_33(uint64_t a1)
{
  v1 = [*(a1 + 32) songPopularityForIdentifiers:?];

  return v1;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_31(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocalConstraints");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "intValue")}];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_30(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocalStatusReason");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "intValue")}];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_29(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocalStatus");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v9 intValue] + 1;
  if (v10 >= 7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - 1;
  }

  v12 = [v7 numberWithInteger:v11];

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_28(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "keepLocal");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v9 intValue] + 2;
  if (v10 > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1A2741980[v10];
  }

  v12 = [v7 numberWithInteger:v11];

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_27(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "representativeItemExplicit");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v7 numberWithBool:{objc_msgSend(v9, "BOOLValue") ^ 1}];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_26(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "datePlayedLocal");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_24(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "cleanLibraryTracksItemCount");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];

  return v10;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_23(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "explicitLibraryTracksItemCount");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:v9 > 0];

  return v10;
}

void *___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_22(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "libraryTracksItemCount");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 <= 0)
  {
    v10 = MEMORY[0x1E695E110];
  }

  else
  {
    v10 = MEMORY[0x1E695E118];
  }

  v11 = v10;

  return v10;
}

void sub_1A2652E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_21(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "volumeNormalization");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = _MPMLVolumeNormalizationFromDatabaseValue(v8);

  return v9;
}

void sub_1A2652F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

id _MPMLVolumeNormalizationFromDatabaseValue(NSNumber *a1)
{
  v1 = [(NSNumber *)a1 unsignedIntegerValue];
  v2 = 1.0;
  if (v1 && v1 != 0xFFFF)
  {
    v2 = sqrtf(1000.0 / v1);
  }

  if (v2 < 0.25119)
  {
    v2 = 0.25119;
  }

  if (v2 > 3.9811)
  {
    v2 = 3.9811;
  }

  v3 = floor((log10f(v2) * 20.0) + 0.5);
  *&v3 = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:v3];

  return v4;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_20(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "downloadedDate");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_19(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "libraryAdded");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_18(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "dateReleased");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateComponentsFromStoredInt64(v9);

  return v10;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_15(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mediaType");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 unsignedIntValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = 255;
  if (v12 != 0xFF)
  {
    v13 = 0;
  }

  if ((~v12 & 0xFF00) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 | 0xFF00;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "availableArtworkToken");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkToken");
  v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkSourceType");
  v19 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v19)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v20 = MPMediaLibraryPropertyCacheValueForProperty(v19[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = [v6 mediaLibrary];
  v22 = vandq_s8(vshlq_u32(vdupq_n_s32(v12), xmmword_1A273DD80), xmmword_1A273DD90);
  *v22.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
  v23 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, v14 | v22.i32[0] | v12 & 0x3210 | v22.i32[1] | (4 * v12) & 0x400 | (4 * ((v12 >> 1) & 1)) | (2 * v12) & 0x800, 0, 1, 0, v16, v18, v20, v21);

  return v23;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_12(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "isPreOrder");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_11(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "title");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_10(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a3;
  std::string::basic_string[abi:ne200100]<0>(&v13, [v6 UTF8String]);
  std::string::basic_string[abi:ne200100]<0>(__p, "title");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a2, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v7[5];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(*v8 + 80))(v8) != 3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyAlbumMap()_block_invoke_10"];
    [v9 handleFailureInFunction:v10 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:1022 description:@"The base property key for Album's property[name] is not a string and thus cannot be used to create a SearchPredicate"];
  }

  if (a4 == 1)
  {
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *&,std::string&,mediaplatform::UnicodeSearch::MatchType,0>();
  }

  if (!a4)
  {
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *&,std::string&,mediaplatform::UnicodeSearch::MatchType,0>();
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }
}

void sub_1A26539DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_9(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasTitle");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "titleOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v8, &v9, 2uLL);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A2653B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_8(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = mlcore::AlbumPropertyStoreID(v6);
  v4 = mlcore::AlbumPropertyPersistentID(v3);
  v5 = mlcore::AlbumPropertySyncID(v4);
  _MPMLInsertPredicatesForIdentifierSet(a2, v6, v3, 0, v4, 0, 0, v5, 0, 0);
}

void sub_1A2653C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_5(uint64_t a1, void *a2, uint64_t *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v5 = [v4 modelKind];
  v6 = [v5 identityKind];
  v7 = +[MPModelAlbumKind identityKind];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyAlbumMap()_block_invoke_5"];
    [v39 handleFailureInFunction:v40 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:944 description:@"Must have album kind to generate album entity query."];
  }

  v9 = a3[1];
  v48 = *a3;
  v49 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 applyToView:&v48 withContext:v4];
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v10 = [v4 allowedEntityIdentifiers];
  v11 = [v10 mutableCopy];

  v12 = [v4 scopedContainers];
  v13 = [v12 mutableCopy];

  v14 = [v13 msv_removeWhere:&__block_literal_global_286];
  v15 = [v14 msv_map:&__block_literal_global_289];
  [v11 addObjectsFromArray:v15];

  v17 = mlcore::AlbumPropertyStoreID(v16);
  v18 = mlcore::AlbumPropertyPersistentID(v17);
  v19 = mlcore::AlbumPropertySyncID(v18);
  v20 = mlcore::AlbumPropertyCloudLibraryID(v19);
  v21 = mlcore::AlbumPropertyCloudLibraryID(v20);
  _MPMLInsertPredicatesForIdentifierSet(&v50, v11, v17, 0, v18, 0, 0, v19, v20, v21);
  v22 = [v4 filterText];
  v23 = [v22 length] == 0;

  if (!v23)
  {
    v24 = [v4 filterText];
    v25 = v24;
    std::string::basic_string[abi:ne200100]<0>(&v47, [v24 UTF8String]);

    v44 = mlcore::AlbumPropertyTitle(v26);
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *,std::string&,0>();
  }

  v27 = [v13 firstObject];
  v28 = [v27 identifiers];
  v29 = [v28 library];
  v30 = [v29 persistentID];

  v31 = [v28 universalStore];
  v32 = [v31 adamID];

  *&v45 = v32;
  memset(v42, 0, sizeof(v42));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v42, v50, v51, (v51 - v50) >> 4);
  mlcore::CreateAndPredicate();
  v47 = v42;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v47);
  v33 = objc_opt_class();
  if (v33 == objc_opt_class())
  {
    __assert_rtn("_MPMLInitPropertyAlbumMap_block_invoke_5", "MPMediaLibraryTranslatorSchema.mm", 974, "0");
  }

  v34 = objc_opt_class();
  v35 = objc_opt_class();
  if (v34 == v35)
  {
    if (v30)
    {
      operator new();
    }

    if (v45)
    {
      v46 = mlcore::ItemPropertyArtistStoreID(v35);
      LODWORD(v43) = 0;
      std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
    }
  }

  else
  {
    v36 = objc_opt_class();
    if (v36 == objc_opt_class())
    {
      operator new();
    }

    v37 = objc_opt_class();
    if (v37 == objc_opt_class())
    {
      operator new();
    }
  }

  v38 = [v4 allowedEntityIdentifiers];
  if (![v38 count])
  {
    [v4 isMultiQuery];
  }

  v41 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlcore::EntityQuery::albumsQuery();
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  v53 = &v50;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v53);
}

void sub_1A26543AC(_Unwind_Exception *a1)
{
  *(v5 - 128) = v5 - 160;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v5 - 128));

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::Composer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1499A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<mlcore::Genre>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F14999C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<mlcore::Artist>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1499978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

id ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 identifiers];

  return v2;
}

BOOL ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v3 == objc_opt_class();

  return v4;
}

void ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_2;
  v15[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v15[4] = a3;
  v15[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v15];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_3;
  v14[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v14[4] = a3;
  v14[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v14];
  v12 = [v8 personID];
  if ([v12 length])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_4;
    v13[3] = &__block_descriptor_48_e45_v16__0___MPMutablePersonalStoreIdentifiers__8l;
    v13[4] = a3;
    v13[5] = a4;
    [v9 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];
  }
}

void ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "syncID");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v7, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], *(a1 + 40));
  [v3 setSyncID:{objc_msgSend(v9, "longLongValue")}];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL25_MPMLInitPropertyAlbumMapv_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "albumCloudLibraryID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setCloudAlbumID:v6];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A2654D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL26_MPMLInitPropertyLyricsMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a2 mediaLibrary];
  v10 = [v9 uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL26_MPMLInitPropertyLyricsMapv_block_invoke_2;
  v11[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setLibraryIdentifiersWithDatabaseID:v10 block:v11];
}

void ___ZL26_MPMLInitPropertyLyricsMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{-objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL30_MPMLInitPropertyStoreAssetMapv_block_invoke_6(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "episodeType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 intValue];

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "endpointType");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 integerValue];

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = MEMORY[0x1E696AD98];
  if (v12 == 3)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "isAUC");
    v14 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v14)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    a3 = MPMediaLibraryPropertyCacheValueForProperty(v14[5], a4);
    v15 = (v9 != 4) & ~[a3 BOOLValue];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v13 numberWithBool:v15];
  if (v12 == 3)
  {

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v16;
}

void sub_1A26550DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL30_MPMLInitPropertyStoreAssetMapv_block_invoke_5(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v29 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudAssetAvailable");
  v6 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = MPMediaLibraryPropertyCacheValueForProperty(v6[5], a4);
  v8 = [v7 BOOLValue];

  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "endpointType");
  v9 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v10 = MPMediaLibraryPropertyCacheValueForProperty(v9[5], a4);
  v11 = [v10 integerValue];

  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "storeCloudID");
  v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
  v14 = [v13 longLongValue];
  std::string::basic_string[abi:ne200100]<0>(v34, "storeAdamID");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, v34);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  v17 = [v16 longLongValue];
  std::string::basic_string[abi:ne200100]<0>(v32, "matchRedownloadParams");
  v18 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, v32);
  if (!v18)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v19 = MPMediaLibraryPropertyCacheValueForProperty(v18[5], a4);
  std::string::basic_string[abi:ne200100]<0>(v30, "purchaseHistoryRedownloadParams");
  v20 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, v30);
  if (!v20)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v21 = MPMediaLibraryPropertyCacheValueForProperty(v20[5], a4);
  v22 = v19;
  v23 = v21;
  v24 = 0;
  if (v11 > 1)
  {
    if (v11 == 3)
    {
      v24 = 3;
    }

    else if (v11 == 2)
    {
LABEL_19:
      v24 = 2;
    }
  }

  else
  {
    if (v11)
    {
      v24 = v11 == 1;
      goto LABEL_24;
    }

    if (v14 && [v22 length])
    {
      goto LABEL_19;
    }

    if (v17)
    {
      v24 = [v23 length] != 0;
    }

    else
    {
      v24 = 0;
    }
  }

LABEL_24:

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = 3;
  if (!v8)
  {
    v25 = 0;
  }

  if (v24 == 3)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  v27 = [MEMORY[0x1E696AD98] numberWithInteger:v26];

  return v27;
}

void sub_1A2655494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

id ___ZL30_MPMLInitPropertyStoreAssetMapv_block_invoke_4(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "cloudAssetAvailable");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 BOOLValue];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "cloudStatus");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 integerValue];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "storeCloudID");
  v13 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = MPMediaLibraryPropertyCacheValueForProperty(v13[5], a4);
  v15 = [v14 longLongValue];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 > 0)
  {
    v16 = (v12 == 0) & ~v9;
  }

  else
  {
    v16 = 0;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:v16];

  return v17;
}

id ___ZL30_MPMLInitPropertyStoreAssetMapv_block_invoke_3(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "matchRedownloadParams");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "purchaseHistoryRedownloadParams");
  v9 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v10 = MPMediaLibraryPropertyCacheValueForProperty(v9[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "storeCloudID");
  v11 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = MPMediaLibraryPropertyCacheValueForProperty(v11[5], a4);
  v13 = [v12 unsignedLongLongValue];

  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v13)
    {
LABEL_10:
      if (v8)
      {
        v14 = v8;
      }

      else
      {
        v14 = v10;
      }

LABEL_18:
      v17 = v14;
      goto LABEL_19;
    }
  }

  else if (v13)
  {
    goto LABEL_10;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "purchaseHistoryID");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  v17 = [v16 unsignedLongLongValue];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = v10;
  if (v17)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v17;
}