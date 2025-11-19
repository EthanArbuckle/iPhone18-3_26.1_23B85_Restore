void sub_1A2655960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A26559C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A26559B0);
}

void sub_1A26559D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A26559B4);
}

void ___ZL30_MPMLInitPropertyStoreAssetMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a2 mediaLibrary];
  v10 = [v9 uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL30_MPMLInitPropertyStoreAssetMapv_block_invoke_2;
  v11[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setLibraryIdentifiersWithDatabaseID:v10 block:v11];
}

void ___ZL30_MPMLInitPropertyStoreAssetMapv_block_invoke_2(uint64_t a1, void *a2)
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

id ___ZL36_MPMLInitPropertyHomeSharingAssetMapv_block_invoke_4(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = [v6 mediaLibrary];
  if ([v7 isHomeSharingLibrary])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "location");
    v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v8)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v11 = [v9 stringByTrimmingCharactersInSet:v10];

    std::string::basic_string[abi:ne200100]<0>(__p, "homeSharingID");
    v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
    if (!v12)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v13 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
    v14 = [v13 unsignedLongLongValue];

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = [MEMORY[0x1E69A4670] requestWithDatabaseID:objc_msgSend(v7 itemID:"homeSharingDatabaseID") format:{v14, v11}];
    v16 = MEMORY[0x1E696AF20];
    v17 = [v7 URLForHomeSharingRequest:v15];
    v18 = [v16 componentsWithURL:v17 resolvingAgainstBaseURL:1];

    [v18 setScheme:@"home-sharing"];
    v19 = [v18 URL];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id ___ZL36_MPMLInitPropertyHomeSharingAssetMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 mediaLibrary];
  v3 = [v2 protectedContentSupportStorageURL];

  return v3;
}

void ___ZL36_MPMLInitPropertyHomeSharingAssetMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a2 mediaLibrary];
  v10 = [v9 uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL36_MPMLInitPropertyHomeSharingAssetMapv_block_invoke_2;
  v11[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setLibraryIdentifiersWithDatabaseID:v10 block:v11];
}

void ___ZL36_MPMLInitPropertyHomeSharingAssetMapv_block_invoke_2(uint64_t a1, void *a2)
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

id ___ZL29_MPMLInitPropertyFileAssetMapv_block_invoke_2_237(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "hlsTraits");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = +[MPCloudController sharedCloudController];
  v11 = [v10 isEnhancedAudioAvailable];

  if (v11)
  {
    v12 = (v9 >> 2) & 8 | (16 * (v9 & 3)) | (v9 >> 1) & 2 | (v9 >> 2) & 4;
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

void sub_1A2656210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL29_MPMLInitPropertyFileAssetMapv_block_invoke_233(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "hasNonPurgeableAsset");
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

void *___ZL29_MPMLInitPropertyFileAssetMapv_block_invoke_6(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "hasLoFiStreamingAsset");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 BOOLValue];

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
    v10 = &unk_1F1509B38;
  }

  else
  {
    v10 = &unk_1F1509B50;
  }

  v11 = v10;

  return v10;
}

void sub_1A26563FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL29_MPMLInitPropertyFileAssetMapv_block_invoke_5(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "protected");
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

  if (v9 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v9 == 2);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];

  return v11;
}

id ___ZL29_MPMLInitPropertyFileAssetMapv_block_invoke_4(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "hasStreamingAsset");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 BOOLValue];

  if (v24 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_4:
  v10 = [v6 mediaLibrary];
  v11 = [v10 ml3Library];
  v12 = [v11 mediaFolderPath];

  std::string::basic_string[abi:ne200100]<0>(__p, "baseLocationPath");
  v13 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = MPMediaLibraryPropertyCacheValueForProperty(v13[5], a4);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "location");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if ([v12 length] && objc_msgSend(v14, "length") && objc_msgSend(v16, "length"))
  {
    v17 = MEMORY[0x1E696AEC0];
    v25[0] = v12;
    v25[1] = v14;
    v25[2] = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
    v19 = [v17 pathWithComponents:v18];
    v20 = [v19 stringByDeletingPathExtension];
    v21 = [v20 stringByAppendingPathExtension:@"plist"];
  }

  else
  {
    v21 = 0;
  }

LABEL_18:

  return v21;
}

id ___ZL29_MPMLInitPropertyFileAssetMapv_block_invoke_3(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 mediaLibrary];
  v8 = [v7 ml3Library];
  v9 = [v8 mediaFolderPath];

  std::string::basic_string[abi:ne200100]<0>(__p, "baseLocationPath");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "location");
  v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if ([v9 length] && objc_msgSend(v11, "length") && objc_msgSend(v13, "length"))
  {
    v14 = MEMORY[0x1E696AEC0];
    v20[0] = v9;
    v20[1] = v11;
    v20[2] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v16 = [v14 pathWithComponents:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void ___ZL29_MPMLInitPropertyFileAssetMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a2 mediaLibrary];
  v10 = [v9 uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL29_MPMLInitPropertyFileAssetMapv_block_invoke_2;
  v11[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setLibraryIdentifiersWithDatabaseID:v10 block:v11];
}

void ___ZL29_MPMLInitPropertyFileAssetMapv_block_invoke_2(uint64_t a1, void *a2)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_34(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "releasedDate");
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_33(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "immersiveURL");
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_32(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_31(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_30(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_29(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_28(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_27(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_26(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_25(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

void sub_1A2657748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_24(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_23(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_22(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_21(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "hlsAudioCapability");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = +[MPCloudController sharedCloudController];
  v11 = [v10 isEnhancedAudioAvailable];

  if (v11)
  {
    v12 = (v9 >> 2) & 8 | (16 * (v9 & 3)) | (v9 >> 1) & 2 | (v9 >> 2) & 4;
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

void sub_1A2657C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_20(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_19(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_18(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "relativeVolume");
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

  *&v9 = ((([v8 integerValue] + 1000) / 2000.0) * 2.0) + 0.0;
  if (*&v9 < 0.0)
  {
    *&v9 = 0.0;
  }

  if (*&v9 > 2.0)
  {
    *&v9 = 2.0;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];

  return v10;
}

MPGaplessInfo *___ZL24_MPMLInitPropertySongMapv_block_invoke_17(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "durationInSamples");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "gaplessEncodingDelay");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 integerValue];

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "gaplessEncodingDrain");
  v13 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = MPMediaLibraryPropertyCacheValueForProperty(v13[5], a4);
  v15 = [v14 integerValue];

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "gaplessHeuristicInfo");
  v16 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v16)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v17 = MPMediaLibraryPropertyCacheValueForProperty(v16[5], a4);
  v18 = [v17 integerValue];

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "gaplessLastFrameResync");
  v19 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v19)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v20 = MPMediaLibraryPropertyCacheValueForProperty(v19[5], a4);
  v21 = [v20 longLongValue];

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 || v12 || v15 || v18 || v21)
  {
    v22 = objc_alloc_init(MPGaplessInfo);
    [(MPGaplessInfo *)v22 setHeuristicInfo:v18];
    [(MPGaplessInfo *)v22 setDurationInFrames:v9];
    [(MPGaplessInfo *)v22 setEncodingDelayInFrames:v12];
    [(MPGaplessInfo *)v22 setEncodingDrainInFrames:v15];
    [(MPGaplessInfo *)v22 setLastPacketsResync:v21];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_16(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

void sub_1A2658640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_15(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "classicalMovement");
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

void ___ZL24_MPMLInitPropertySongMapv_block_invoke_14(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "classicalMovementNumber");
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

void sub_1A2658830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_13(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "trackNumber");
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

void ___ZL24_MPMLInitPropertySongMapv_block_invoke_12(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasTrackNumber");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "trackNumber");
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

void sub_1A2658A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_11(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

void ___ZL24_MPMLInitPropertySongMapv_block_invoke_10(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertySongMap()_block_invoke_10"];
    [v9 handleFailureInFunction:v10 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:408 description:@"The base property key for Song's property[title] is not a string and thus cannot be used to create a SearchPredicate"];
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

void sub_1A2658D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL24_MPMLInitPropertySongMapv_block_invoke_9(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
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

void sub_1A2658E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL24_MPMLInitPropertySongMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
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

void ___ZL24_MPMLInitPropertySongMapv_block_invoke_6(void *a1@<X1>, uint64_t a2@<X8>)
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

void sub_1A265907C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void ___ZL24_MPMLInitPropertySongMapv_block_invoke_5(uint64_t a1, void *a2, uint64_t *a3)
{
  v94[3] = *MEMORY[0x1E69E9840];
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v64 = a2;
  v63 = [v64 modelKind];
  v4 = [v63 identityKind];
  v5 = +[MPModelSongKind identityKind];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v61 = [MEMORY[0x1E696AAA8] currentHandler];
    v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertySongMap()_block_invoke_5"];
    [v61 handleFailureInFunction:v62 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:290 description:@"Must have song kind to generate song entity query."];
  }

  v7 = a3[1];
  v85 = *a3;
  v86 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v63 applyToView:&v85 withContext:v64];
  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
  }

  v8 = [v64 allowedEntityIdentifiers];
  v9 = mlcore::ItemPropertyStoreID(v8);
  v10 = mlcore::ItemPropertySubscriptionStoreItemID(v9);
  v11 = mlcore::ItemPropertyPersistentID(v10);
  v12 = mlcore::ItemPropertyStoreCloudID(v11);
  v13 = mlcore::ItemPropertySyncID(v12);
  v14 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v13);
  v15 = mlcore::ItemPropertyStoreCloudAlbumID(v14);
  _MPMLInsertPredicatesForIdentifierSet(&v87, v8, v9, v10, v11, v12, 0, v13, v14, v15);

  v16 = [v64 filterText];
  v17 = [v16 length] == 0;

  if (!v17)
  {
    v18 = [v64 filterText];
    v19 = v18;
    std::string::basic_string[abi:ne200100]<0>(&__p, [v18 UTF8String]);

    *&v69 = mlcore::ItemPropertyTitle(v20);
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *,std::string&,0>();
  }

  v84[0] = 0;
  v84[1] = 0;
  v83 = v84;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = [v64 scopedContainers];
  v21 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
  if (v21)
  {
    v22 = *v80;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v80 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [*(*(&v79 + 1) + 8 * i) identifiers];
        v25 = [v24 library];
        v26 = [v25 persistentID];

        v93 = v26;
        v27 = [v24 universalStore];
        v28 = [v27 adamID];

        v77 = v28;
        v29 = [v24 universalStore];
        v30 = [v29 subscriptionAdamID];

        *&v75 = v30;
        v31 = [v24 library];
        v32 = [v31 syncID];

        *&v70 = v32;
        *&v69 = objc_opt_class();
        if (v69 == objc_opt_class())
        {
          if (v26)
          {
            __p = &v69;
            v38 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v83, v69);
            v91 = mlcore::ItemPropertyAlbumPersistentID(v38);
            __p = &v91;
            v39 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v38 + 40, v91);
            std::vector<long long>::push_back[abi:ne200100]((v39 + 5), &v93);
          }

          else
          {
            if (v32)
            {
              __p = &v69;
              v44 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v83, v69);
              v91 = mlcore::ItemPropertyAlbumSyncID(v44);
              __p = &v91;
              v45 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v44 + 40, v91);
              std::vector<long long>::push_back[abi:ne200100]((v45 + 5), &v70);
            }

            if (v28)
            {
              __p = &v69;
              v46 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v83, v69);
              v91 = mlcore::ItemPropertyStorePlaylistID(v46);
              __p = &v91;
              v47 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v46 + 40, v91);
              std::vector<long long>::push_back[abi:ne200100]((v47 + 5), &v77);
            }

            if (v30)
            {
              __p = &v69;
              v48 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v83, v69);
              v91 = mlcore::ItemPropertyStorePlaylistID(v48);
              __p = &v91;
              v49 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v48 + 40, v91);
              std::vector<long long>::push_back[abi:ne200100]((v49 + 5), &v75);
            }
          }
        }

        else
        {
          v33 = v69;
          if (v33 == objc_opt_class())
          {
            if (v26)
            {
              __p = &v69;
              v40 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v83, v69);
              v91 = mlcore::ItemPropertyAlbumArtistPersistentID(v40);
              __p = &v91;
              v41 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v40 + 40, v91);
              std::vector<long long>::push_back[abi:ne200100]((v41 + 5), &v93);
            }

            else if (v28)
            {
              __p = &v69;
              v52 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v83, v69);
              v91 = mlcore::ItemPropertyArtistStoreID(v52);
              __p = &v91;
              v53 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v52 + 40, v91);
              std::vector<long long>::push_back[abi:ne200100]((v53 + 5), &v77);
            }
          }

          else
          {
            v34 = v69;
            if (v34 == objc_opt_class())
            {
              if (v26)
              {
                __p = &v69;
                v42 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v83, v69);
                v91 = mlcore::ItemPropertyItemArtistPersistentID(v42);
                __p = &v91;
                v43 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v42 + 40, v91);
                std::vector<long long>::push_back[abi:ne200100]((v43 + 5), &v93);
              }
            }

            else
            {
              v35 = v69;
              if (v35 == objc_opt_class())
              {
                if (v26)
                {
                  __p = &v69;
                  v50 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v83, v69);
                  v91 = mlcore::ItemPropertyGenrePersistentID(v50);
                  __p = &v91;
                  v51 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v50 + 40, v91);
                  std::vector<long long>::push_back[abi:ne200100]((v51 + 5), &v93);
                }
              }

              else
              {
                v36 = v69;
                if (v36 == objc_opt_class())
                {
                  __p = &v69;
                  v54 = std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(&v83, v69);
                  v91 = mlcore::ItemPropertyComposerPersistentID(v54);
                  __p = &v91;
                  v55 = std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> *&&>,std::tuple<>>(v54 + 40, v91);
                  std::vector<long long>::push_back[abi:ne200100]((v55 + 5), &v93);
                }

                else
                {
                  v37 = objc_opt_class();
                  if (v37 == objc_opt_class())
                  {
                    __assert_rtn("_MPMLInitPropertySongMap_block_invoke_5", "MPMediaLibraryTranslatorSchema.mm", 352, "0");
                  }
                }
              }
            }
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
    }

    while (v21);
  }

  v56 = v83;
  if (v83 != v84)
  {
    do
    {
      std::pair<objc_class * const {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long>>,std::vector<std::pair<mlcore::ModelProperty<long long> const,std::allocator<long long>>>>>::pair[abi:ne200100](&v93, v56 + 4);
      std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>::map[abi:ne200100](&v77, v94);
      v75 = 0uLL;
      v76 = 0;
      if (v77 != &v78)
      {
        v57 = *(v77 + 40);
        __p = *(v77 + 32);
        v73 = 0;
        v74 = 0;
        v72 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v72, v57, *(v77 + 48), (*(v77 + 48) - v57) >> 3);
        if (v73 - v72 == 8)
        {
          v91 = __p;
          v90 = 0;
          std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
        }

        v91 = __p;
        std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
      }

      memset(v68, 0, sizeof(v68));
      std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v68, 0, 0, 0);
      mlcore::CreateOrPredicate();
      std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](&v87, &__p);
      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v72);
      }

      *&v70 = v68;
      std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v70);
      __p = &v75;
      std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);
      std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::destroy(v78);
      std::__tree<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::__map_value_compare<mlcore::ModelProperty<long long> *,std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>,std::less<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__value_type<mlcore::ModelProperty<long long> *,std::vector<long long>>>>::destroy(v94[1]);

      v58 = v56[1];
      if (v58)
      {
        do
        {
          v59 = v58;
          v58 = *v58;
        }

        while (v58);
      }

      else
      {
        do
        {
          v59 = v56[2];
          v60 = *v59 == v56;
          v56 = v59;
        }

        while (!v60);
      }

      v56 = v59;
    }

    while (v59 != v84);
  }

  memset(v66, 0, sizeof(v66));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v66, v87, v88, (v88 - v87) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::songsQuery();
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  v93 = v66;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v93);
  std::__tree<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::__map_value_compare<objc_class * {__strong},std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>,std::less<objc_class * {__strong}>,true>,std::allocator<std::__value_type<objc_class * {__strong},std::map<mlcore::ModelProperty<long long> *,std::vector<long long>,std::less<mlcore::ModelProperty<long long> *>,std::allocator<std::pair<mlcore::ModelProperty<long long> * const,std::vector<long long>>>>>>>::destroy(v84[0]);

  v93 = &v87;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v93);
}

void sub_1A2659AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, void *a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  *(v63 - 128) = &a61;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v63 - 128));

  _Unwind_Resume(a1);
}

void ___ZL24_MPMLInitPropertySongMapv_block_invoke(uint64_t a1, void *a2, void *a3, int8x8_t *a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___ZL24_MPMLInitPropertySongMapv_block_invoke_2;
  v19[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v19[4] = a3;
  v19[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v19];
  v12 = [v8 personID];
  if ([v12 length])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___ZL24_MPMLInitPropertySongMapv_block_invoke_3;
    v18[3] = &__block_descriptor_48_e45_v16__0___MPMutablePersonalStoreIdentifiers__8l;
    v18[4] = a3;
    v18[5] = a4;
    [v9 setPersonalStoreIdentifiersWithPersonID:v12 block:v18];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___ZL24_MPMLInitPropertySongMapv_block_invoke_4;
  v17[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v17[4] = a3;
  v17[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v17];
  std::string::basic_string[abi:ne200100]<0>(__p, "excludeFromShuffle");
  v13 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = MPMediaLibraryPropertyCacheValueForProperty(v13[5], a4);
  [v9 setShouldExcludeFromShuffle:{objc_msgSend(v14, "BOOLValue")}];

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL24_MPMLInitPropertySongMapv_block_invoke_2(uint64_t a1, void *a2)
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

void ___ZL24_MPMLInitPropertySongMapv_block_invoke_3(uint64_t a1, void *a2)
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

void sub_1A265A200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL24_MPMLInitPropertySongMapv_block_invoke_4(uint64_t a1, void *a2)
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

id _MPMRDateComponentsFromDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DEE8];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 components:1048606 fromDate:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *MPStoreModelObjectContentItemIDForIdentifierSet(void *a1)
{
  v1 = a1;
  v2 = [v1 library];
  v3 = [v2 persistentID];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli", v3];
    goto LABEL_20;
  }

  v5 = [v1 universalStore];
  v6 = [v5 universalCloudLibraryID];

  if (![v6 length])
  {
    v7 = [v1 radio];
    v8 = [v7 stationStringID];

    if ([v8 length])
    {
      v4 = v8;
LABEL_18:

      goto LABEL_19;
    }

    v9 = [v1 universalStore];
    v10 = [v9 globalPlaylistID];

    if ([v10 length])
    {
      v11 = v10;
    }

    else
    {
      v12 = [v1 personalizedStore];
      v13 = [v12 cloudID];

      if (v13)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v13];
      }

      else
      {
        v14 = [v1 universalStore];
        v15 = [v14 adamID];

        if (!v15)
        {
          v16 = [v1 universalStore];
          v15 = [v16 subscriptionAdamID];

          if (!v15)
          {
            v17 = [v1 universalStore];
            v15 = [v17 purchasedAdamID];

            if (!v15)
            {
              v19 = [v1 radio];
              v20 = [v19 stationHash];

              if ([v20 length])
              {
                v4 = v20;
              }

              else
              {
                v21 = [v1 universalStore];
                v22 = [v21 informalMediaClipID];

                if ([v22 length])
                {
                  v23 = v22;
                  v4 = v22;
                }

                else
                {
                  v23 = v22;
                  v24 = [v1 universalStore];
                  v25 = [v24 informalStaticAssetID];

                  if ([v25 length])
                  {
                    v4 = v25;
                  }

                  else
                  {
                    v4 = @"<unknown-store-id>";
                  }
                }
              }

              goto LABEL_17;
            }
          }
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli", v15];
      }
      v11 = ;
    }

    v4 = v11;
LABEL_17:

    goto LABEL_18;
  }

  v4 = v6;
LABEL_19:

LABEL_20:

  return v4;
}

id _MPStorePlatformDateFromString(void *a1)
{
  v1 = a1;
  if (_MPStorePlatformDateFromString_sOnceToken != -1)
  {
    dispatch_once(&_MPStorePlatformDateFromString_sOnceToken, &__block_literal_global_210_45596);
  }

  if (_NSIsNSString())
  {
    v2 = [_MPStorePlatformDateFromString_storePlatformReleaseDateFormatter dateFromString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _MPStorePlatformCalendar()
{
  if (_MPStorePlatformCalendar_sOnceToken != -1)
  {
    dispatch_once(&_MPStorePlatformCalendar_sOnceToken, &__block_literal_global_220_45594);
  }

  v1 = _MPStorePlatformCalendar_sGMTCalendar;

  return v1;
}

id MPTranslatorUtilitiesTransformIsExplicit(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 objectForKeyedSubscript:@"contentRatingsBySystem.riaa.value"];
  v4 = ((_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0) && [v3 longLongValue] > 499;

  v5 = [v2 numberWithInt:v4];

  return v5;
}

void sub_1A267CC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45828(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

char *MPChangeDetailOperationGenerateEx(uint64_t a1, uint64_t a2, unint64_t *a3, char *a4, void *a5)
{
  v9 = a5;
  v10 = v9;
  v142 = a3;
  if (a3)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v136 = [MEMORY[0x1E696AAA8] currentHandler];
    v137 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MPChangeDetailOperation * _Nullable MPChangeDetailOperationGenerateEx(NSInteger, NSInteger, size_t * _Nonnull, BOOL * _Nonnull, __strong MPChangeDetailOperationIsEqualBlock _Nonnull)"}];
    [v136 handleFailureInFunction:v137 file:@"MPChangeDetails.m" lineNumber:653 description:{@"Invalid parameter not satisfying: %@", @"operationCount"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v138 = [MEMORY[0x1E696AAA8] currentHandler];
  v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MPChangeDetailOperation * _Nullable MPChangeDetailOperationGenerateEx(NSInteger, NSInteger, size_t * _Nonnull, BOOL * _Nonnull, __strong MPChangeDetailOperationIsEqualBlock _Nonnull)"}];
  [v138 handleFailureInFunction:v139 file:@"MPChangeDetails.m" lineNumber:654 description:{@"Invalid parameter not satisfying: %@", @"isEqualBlock"}];

LABEL_3:
  if (a2 | a1)
  {
    v11 = v10;
    v12 = objc_autoreleasePoolPush();
    if (a1 >= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = a1;
    }

    v140 = v10;
    v141 = a4;
    if (v13 < 1)
    {
      v161 = 0;
    }

    else
    {
      v14 = 0;
      while ((*(v11 + 2))(v11, v14, v14))
      {
        if (v13 == ++v14)
        {
          v161 = v13;
          goto LABEL_15;
        }
      }

      v161 = v14;
    }

LABEL_15:
    objc_autoreleasePoolPop(v12);
    v16 = objc_autoreleasePoolPush();
    v166 = (v11 + 16);
    v17 = -1;
    while (1)
    {
      v18 = v17;
      v19 = a2 + v17;
      v20 = a1 + v17;
      v21 = a1 + v17 >= a2 + v17 ? a2 + v17 : a1 + v17;
      if (v161 > v21)
      {
        break;
      }

      v22 = (*(v11 + 2))(v11, v20, v19);
      v17 = v18 - 1;
      if ((v22 & 1) == 0)
      {
        v19 = a2 + v18;
        v20 = a1 + v18;
        break;
      }
    }

    objc_autoreleasePoolPop(v16);
    if (a1 >= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = a1;
    }

    v207 = v23;
    v24 = v20 + v23 - v161;
    if (a2 >= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = a2;
    }

    v199 = v25;
    v26 = v19 + v25 - v161;

    v156 = v26;
    v153 = v24;
    v28 = v26 == 1 && v24 == 1;
    v29 = malloc_type_malloc(8 * (a2 + a1), 0x100004000313F17uLL);
    v30 = a2 > 0;
    v31 = a1 > 0;
    ptr = v29;
    if (a1 <= 0 && a2 < 1)
    {
      v15 = 0;
LABEL_37:
      v10 = v140;
      a4 = v141;
      goto LABEL_38;
    }

    v144 = v11;
    v33 = 0;
    v34 = 0;
    v15 = 0;
    v35 = 0;
    v36 = v28;
    v37 = 0;
    v38 = 0;
    v39 = v29 + 8;
    v40 = v156;
    if (v156)
    {
      v41 = v153 == 0;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;
    v43 = a2 + a1;
    v44 = v20 + v207;
    v45 = v19 + v199;
    v46 = v153;
    v47 = v161;
    v48 = ((v161 & 0x7FFFFFFF) << 31) | 0x8000000000000000;
    v49 = 0x1E696A000uLL;
    v50 = @"Invalid operation type MPChangeDetailOperationTypeInsert";
    v51 = @"Invalid operation type MPChangeDetailOperationTypeReplace";
    v52 = 0x1E696A000uLL;
    v53 = !v36;
    v54 = "MPChangeDetailOperation * _Nullable MPChangeDetailOperationGenerateEx(NSInteger, NSInteger, size_t * _Nonnull, BOOL * _Nonnull, __strong MPChangeDetailOperationIsEqualBlock _Nonnull)";
    while (1)
    {
      if (v15 >= v43)
      {
        v148 = v15;
        v210 = v39;
        v202 = v42;
        v195 = v35;
        v182 = v45;
        v188 = v44;
        v175 = v48;
        v169 = v53;
        v65 = [*(v49 + 2728) currentHandler];
        v66 = [*(v52 + 3776) stringWithUTF8String:{"MPChangeDetailOperation * _Nullable MPChangeDetailOperationGenerateEx(NSInteger, NSInteger, size_t * _Nonnull, BOOL * _Nonnull, __strong MPChangeDetailOperationIsEqualBlock _Nonnull)"}];
        [v65 handleFailureInFunction:v66 file:@"MPChangeDetails.m" lineNumber:673 description:@"Not enough operationCapacity"];

        v52 = 0x1E696A000;
        v54 = "MPChangeDetailOperation * _Nullable MPChangeDetailOperationGenerateEx(NSInteger, NSInteger, size_t * _Nonnull, BOOL * _Nonnull, __strong MPChangeDetailOperationIsEqualBlock _Nonnull)";
        v53 = v169;
        v51 = @"Invalid operation type MPChangeDetailOperationTypeReplace";
        v50 = @"Invalid operation type MPChangeDetailOperationTypeInsert";
        v48 = v175;
        v45 = v182;
        v44 = v188;
        v35 = v195;
        v42 = v202;
        v39 = v210;
        v43 = a2 + a1;
        v15 = v148;
        v46 = v153;
        v49 = 0x1E696A000;
        v29 = ptr;
        v40 = v156;
        v47 = v161;
        if (v161)
        {
          goto LABEL_52;
        }
      }

      else if (v47)
      {
        goto LABEL_52;
      }

      if (!v40 && v46 > v34)
      {
LABEL_81:
        if (!v31)
        {
          v149 = v15;
          v211 = v39;
          v203 = v42;
          v196 = v35;
          v183 = v45;
          v189 = v44;
          v176 = v48;
          v170 = v53;
          v67 = v54;
          v68 = [*(v49 + 2728) currentHandler];
          [*(v52 + 3776) stringWithUTF8String:{"void _MPChangeDetailsSafeAddOperation(NSInteger, NSInteger, MPChangeDetailOperation *, size_t, MPChangeDetailOperationType, uint32_t, uint32_t)"}];
          v70 = v69 = v52;
          [v68 handleFailureInFunction:v70 file:@"MPChangeDetails.m" lineNumber:636 description:@"Invalid operation type MPChangeDetailOperationTypeDelete"];

          v52 = v69;
          v54 = v67;
          v53 = v170;
          v51 = @"Invalid operation type MPChangeDetailOperationTypeReplace";
          v50 = @"Invalid operation type MPChangeDetailOperationTypeInsert";
          v48 = v176;
          v45 = v183;
          v44 = v189;
          v35 = v196;
          v42 = v203;
          v39 = v211;
          v43 = a2 + a1;
          v15 = v149;
          v46 = v153;
          v49 = 0x1E696A000;
          v29 = ptr;
          v40 = v156;
          v47 = v161;
        }

LABEL_83:
        *&v29[8 * v15++] = ((v34 & 0x7FFFFFFF) << 31) | 0x8000000000000000;
        ++v37;
        goto LABEL_91;
      }

      if (!v46 && v40 > v33)
      {
LABEL_57:
        if (!v30)
        {
          v146 = v15;
          v208 = v39;
          v200 = v42;
          v193 = v35;
          v180 = v45;
          v186 = v44;
          v173 = v48;
          v55 = v50;
          v56 = v53;
          v57 = [*(v49 + 2728) currentHandler];
          [*(v52 + 3776) stringWithUTF8String:{"void _MPChangeDetailsSafeAddOperation(NSInteger, NSInteger, MPChangeDetailOperation *, size_t, MPChangeDetailOperationType, uint32_t, uint32_t)"}];
          v59 = v58 = v52;
          [v57 handleFailureInFunction:v59 file:@"MPChangeDetails.m" lineNumber:639 description:v55];

          v52 = v58;
          v54 = "MPChangeDetailOperation * _Nullable MPChangeDetailOperationGenerateEx(NSInteger, NSInteger, size_t * _Nonnull, BOOL * _Nonnull, __strong MPChangeDetailOperationIsEqualBlock _Nonnull)";
          v53 = v56;
          v51 = @"Invalid operation type MPChangeDetailOperationTypeReplace";
          v50 = v55;
          v48 = v173;
          v45 = v180;
          v44 = v186;
          v35 = v193;
          v42 = v200;
          v39 = v208;
          v43 = a2 + a1;
          v15 = v146;
          v46 = v153;
          v49 = 0x1E696A000;
          v29 = ptr;
          v40 = v156;
          v47 = v161;
        }

        goto LABEL_75;
      }

LABEL_52:
      if (v47 > v34 && v47 > v33)
      {
        if (v33 < a2)
        {
LABEL_77:
          if (v34 < a1)
          {
LABEL_78:
            *&v29[8 * v15++] = v38 & 0x7FFFFFFF | (v34 << 31) | 0x4000000000000000;
LABEL_89:
            ++v37;
            goto LABEL_90;
          }
        }

LABEL_80:
        v147 = v15;
        v209 = v39;
        v201 = v42;
        v194 = v35;
        v181 = v45;
        v187 = v44;
        v174 = v48;
        v61 = v51;
        v168 = v53;
        v62 = [*(v49 + 2728) currentHandler];
        [*(v52 + 3776) stringWithUTF8String:{"void _MPChangeDetailsSafeAddOperation(NSInteger, NSInteger, MPChangeDetailOperation *, size_t, MPChangeDetailOperationType, uint32_t, uint32_t)"}];
        v64 = v63 = v52;
        [v62 handleFailureInFunction:v64 file:@"MPChangeDetails.m" lineNumber:642 description:v61];

        v52 = v63;
        v54 = "MPChangeDetailOperation * _Nullable MPChangeDetailOperationGenerateEx(NSInteger, NSInteger, size_t * _Nonnull, BOOL * _Nonnull, __strong MPChangeDetailOperationIsEqualBlock _Nonnull)";
        v53 = v168;
        v51 = v61;
        v50 = @"Invalid operation type MPChangeDetailOperationTypeInsert";
        v48 = v174;
        v45 = v181;
        v44 = v187;
        v35 = v194;
        v42 = v201;
        v39 = v209;
        v43 = a2 + a1;
        v15 = v147;
        v46 = v153;
        v49 = 0x1E696A000;
        v29 = ptr;
        v40 = v156;
        v47 = v161;
        goto LABEL_78;
      }

      if (v42)
      {
        if (v45 < a2 && v45 > v33)
        {
          goto LABEL_57;
        }
      }

      else if (v46 && v44 < a1 && v44 > v34 && !v40)
      {
        goto LABEL_81;
      }

      if (v44 <= v34 && v31)
      {
        if (v33 < a2)
        {
          goto LABEL_78;
        }

        goto LABEL_80;
      }

      if (v45 <= v33 && v30)
      {
        goto LABEL_77;
      }

      if (v31 || !v30)
      {
        if (!v30 && v31)
        {
          goto LABEL_83;
        }

        if (v47 == v34)
        {
          v60 = v53;
        }

        else
        {
          v60 = 1;
        }

        if ((v60 & 1) == 0 && v47 == v33)
        {
          if (!v31)
          {
            v150 = v15;
            v212 = v39;
            v204 = v42;
            v197 = v35;
            v184 = v45;
            v190 = v44;
            v177 = v48;
            v171 = v53;
            v71 = v54;
            v72 = [*(v49 + 2728) currentHandler];
            [*(v52 + 3776) stringWithUTF8String:{"void _MPChangeDetailsSafeAddOperation(NSInteger, NSInteger, MPChangeDetailOperation *, size_t, MPChangeDetailOperationType, uint32_t, uint32_t)"}];
            v74 = v73 = v52;
            [v72 handleFailureInFunction:v74 file:@"MPChangeDetails.m" lineNumber:636 description:@"Invalid operation type MPChangeDetailOperationTypeDelete"];

            v52 = v73;
            v54 = v71;
            v53 = v171;
            v51 = @"Invalid operation type MPChangeDetailOperationTypeReplace";
            v50 = @"Invalid operation type MPChangeDetailOperationTypeInsert";
            v48 = v177;
            v45 = v184;
            v44 = v190;
            v35 = v197;
            v42 = v204;
            v39 = v212;
            v43 = a2 + a1;
            v15 = v150;
            v46 = v153;
            v49 = 0x1E696A000;
            v29 = ptr;
            v40 = v156;
            v47 = v161;
          }

          *&v29[8 * v15] = v48;
          if (!v30)
          {
            v151 = v15;
            v213 = v39;
            v205 = v42;
            v198 = v35;
            v185 = v45;
            v191 = v44;
            v178 = v48;
            v75 = v50;
            v76 = v51;
            v77 = v53;
            v78 = [*(v49 + 2728) currentHandler];
            [*(v52 + 3776) stringWithUTF8String:{"void _MPChangeDetailsSafeAddOperation(NSInteger, NSInteger, MPChangeDetailOperation *, size_t, MPChangeDetailOperationType, uint32_t, uint32_t)"}];
            v80 = v79 = v52;
            [v78 handleFailureInFunction:v80 file:@"MPChangeDetails.m" lineNumber:639 description:v75];

            v52 = v79;
            v54 = "MPChangeDetailOperation * _Nullable MPChangeDetailOperationGenerateEx(NSInteger, NSInteger, size_t * _Nonnull, BOOL * _Nonnull, __strong MPChangeDetailOperationIsEqualBlock _Nonnull)";
            v53 = v77;
            v51 = v76;
            v50 = v75;
            v48 = v178;
            v45 = v185;
            v44 = v191;
            v35 = v198;
            v42 = v205;
            v39 = v213;
            v43 = a2 + a1;
            v15 = v151;
            v46 = v153;
            v49 = 0x1E696A000;
            v29 = ptr;
            v40 = v156;
            v47 = v161;
          }

          *&v39[8 * v15] = v38 & 0x7FFFFFFF | 0xC000000000000000;
          v15 += 2;
          goto LABEL_89;
        }

        v37 += v46;
        v34 = v37;
        v38 += v40;
        v33 = v38;
        v30 = v38 < a2;
        v35 = 1;
        v31 = v37 < a1;
        if (v37 >= a1 && v38 >= a2)
        {
          goto LABEL_97;
        }
      }

      else
      {
LABEL_75:
        *&v29[8 * v15++] = v38 & 0x7FFFFFFF | 0xC000000000000000;
LABEL_90:
        ++v38;
LABEL_91:
        v34 = v37;
        v33 = v38;
        v30 = v38 < a2;
        v31 = v37 < a1;
        if (v37 >= a1 && v38 >= a2)
        {
          if ((v35 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_97:
          v81 = 250;
          if (v43 < 0x1389)
          {
            v81 = 500;
          }

          if (v43 < 1100)
          {
            v81 = 1100;
          }

          v143 = v81;
          v32 = 1;
          v82 = v142;
          if (!(v46 | v40))
          {
LABEL_178:
            v10 = v140;
            a4 = v141;
            goto LABEL_179;
          }

          v160 = v47;
          v83 = v144;
          while (2)
          {
            v152 = v15;
            v162 = v47;
            v84 = v143;
            if (v143 >= v46)
            {
              v85 = v46;
            }

            else
            {
              v85 = v143;
            }

            v157 = v40;
            if (v143 >= v40)
            {
              v84 = v40;
            }

            v159 = v84;
            v167 = v83;
            v145 = objc_autoreleasePoolPush();
            v158 = v85;
            v86 = v85 + 2;
            v87 = malloc_type_calloc(v85 + 2, 8uLL, 0x2004093837F09uLL);
            v88 = v46;
            v89 = v87;
            v154 = v88;
            if (v88)
            {
              v90 = v87 + 1;
              v91 = *v87;
              v92 = v162 << 31;
              v93 = v158;
              do
              {
                if (v91)
                {
                  v94 = v91[2] + 1;
                  ++v91[3];
                }

                else
                {
                  v94 = 1;
                }

                v95 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v95 = v92 & 0x3FFFFFFF80000000 | 0x8000000000000000;
                v95[2] = v94;
                v95[3] = 1;
                *(v95 + 2) = v91;
                v92 += 0x80000000;
                v91 = v95;
                *v90++ = v95;
                --v93;
              }

              while (v93);
            }

            if (v157)
            {
              v206 = 0;
              v96 = v158 + 1;
              v215 = v158;
              v97 = v160;
              v98 = 1;
              while (1)
              {
                context = objc_autoreleasePoolPush();
                v214 = 0;
                v99 = 0;
                v164 = v98;
                v192 = (v98 - 1) * v96;
                v172 = v97 & 0x7FFFFFFF;
                v165 = (v98 - 1 + v160) & 0x7FFFFFFF | 0xC000000000000000;
                v179 = v97;
                v100 = (v162 << 31) - 0x80000000;
                v101 = v162;
                do
                {
                  v102 = (v215 + v99 + 1) % v86;
                  if (v99)
                  {
                    v103 = v89[(v206 + v99 - 1) % v86];
                    if ((v214 & 1) == 0 && (*v166)(v167, v101, v179))
                    {
                      v104 = v172 | v100 & 0x3FFFFFFF80000000 | 0x4000000000000000;
                      if (v103)
                      {
                        v105 = *(v103 + 8);
                        ++*(v103 + 12);
                        v214 = 1;
                        goto LABEL_148;
                      }

                      v105 = 0;
                      v106 = 0;
                      v214 = 1;
                      goto LABEL_154;
                    }

                    v106 = v89[(v215 + v99) % v86];
                    if (v106)
                    {
                      v107 = *(v106 + 8);
                    }

                    else
                    {
                      v107 = 0;
                    }

                    v110 = v89[(v206 + v99) % v86];
                    if (v110)
                    {
                      v111 = *(v110 + 8);
                      if (v103)
                      {
                        goto LABEL_129;
                      }

LABEL_131:
                      v112 = 0;
                    }

                    else
                    {
                      v111 = 0;
                      if (!v103)
                      {
                        goto LABEL_131;
                      }

LABEL_129:
                      v112 = *(v103 + 8);
                    }

                    if (v111 >= v112)
                    {
                      v111 = v112;
                    }

                    if (v107 >= v111)
                    {
                      v107 = v111;
                    }

                    if (v106)
                    {
                      if (*(v106 + 8) == v107)
                      {
                        v105 = v107 + 1;
                        ++*(v106 + 12);
LABEL_150:
                        v104 = v100 & 0x3FFFFFFF80000000 | 0x8000000000000000;
                        goto LABEL_154;
                      }
                    }

                    else if (!v107)
                    {
                      v105 = 1;
                      goto LABEL_150;
                    }

                    if (v110)
                    {
                      if (*(v110 + 8) == v107)
                      {
                        v105 = v107 + 1;
                        ++*(v110 + 12);
                        v104 = v165;
                        v106 = v110;
                        goto LABEL_154;
                      }
                    }

                    else if (!v107)
                    {
                      v106 = 0;
                      v105 = 1;
                      v104 = v165;
                      goto LABEL_154;
                    }

                    v104 = v172 | v100 & 0x3FFFFFFF80000000 | 0x4000000000000000;
                    if (v103)
                    {
                      v105 = *(v103 + 8) + 2;
                      ++*(v103 + 12);
LABEL_148:
                      v106 = v103;
                    }

                    else
                    {
                      v106 = 0;
                      v105 = 2;
                    }

LABEL_154:
                    v114 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                    *v114 = v104;
                    v114[2] = v105;
                    v114[3] = 1;
                    *(v114 + 2) = v106;
                    _MPChangeDetailOperationNodeRelease(v89[v102]);
                    v89[v102] = v114;
                    ++v101;
                    v96 = v158 + 1;
                    goto LABEL_155;
                  }

                  v108 = v89[v192 % v86];
                  if (v108)
                  {
                    v109 = *(v108 + 8) + 1;
                    ++*(v108 + 12);
                  }

                  else
                  {
                    v109 = 1;
                  }

                  v113 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                  *v113 = v172 | 0xC000000000000000;
                  v113[2] = v109;
                  v113[3] = 1;
                  *(v113 + 2) = v108;
                  _MPChangeDetailOperationNodeRelease(v89[v102]);
                  v89[v102] = v113;
LABEL_155:
                  ++v99;
                  v100 += 0x80000000;
                }

                while (v96 != v99);
                objc_autoreleasePoolPop(context);
                v97 = v179 + 1;
                v98 = v164 + 1;
                v215 += v96;
                v206 += v96;
                if (v164 == v159)
                {
                  v115 = v89[(v158 + v96 * v159) % v86];
                  if (v115)
                  {
                    ++v115[3];
                  }

                  v116 = v89;
                  v82 = v142;
                  do
                  {
                    v117 = *v116++;
                    _MPChangeDetailOperationNodeRelease(v117);
                    --v86;
                  }

                  while (v86);
                  goto LABEL_166;
                }
              }
            }

            v115 = v89[v158];
            if (v115)
            {
              ++v115[3];
            }

            v118 = v89;
            do
            {
              v119 = *v118++;
              _MPChangeDetailOperationNodeRelease(v119);
              --v86;
            }

            while (v86);
LABEL_166:
            free(v89);
            objc_autoreleasePoolPop(v145);

            v83 = v144;
            v120 = ptr;
            if (ptr)
            {
              if (v115)
              {
                goto LABEL_168;
              }

LABEL_176:
              v131 = [MEMORY[0x1E696AAA8] currentHandler];
              v132 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MPChangeDetailOperation *_MPChangeDetailOperationsFromOperationList(MPChangeDetailOperation *, size_t, MPChangeDetailOperationNode *, size_t *)"}];
              [v131 handleFailureInFunction:v132 file:@"MPChangeDetails.m" lineNumber:947 description:{@"Invalid parameter not satisfying: %@", @"startNode"}];

              v120 = ptr;
              if (!v82)
              {
                goto LABEL_177;
              }
            }

            else
            {
              v129 = [MEMORY[0x1E696AAA8] currentHandler];
              v130 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MPChangeDetailOperation *_MPChangeDetailOperationsFromOperationList(MPChangeDetailOperation *, size_t, MPChangeDetailOperationNode *, size_t *)"}];
              [v129 handleFailureInFunction:v130 file:@"MPChangeDetails.m" lineNumber:946 description:{@"Invalid parameter not satisfying: %@", @"existingOperations"}];

              v120 = 0;
              if (!v115)
              {
                goto LABEL_176;
              }

LABEL_168:
              if (!v82)
              {
LABEL_177:
                v133 = [MEMORY[0x1E696AAA8] currentHandler];
                v134 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MPChangeDetailOperation *_MPChangeDetailOperationsFromOperationList(MPChangeDetailOperation *, size_t, MPChangeDetailOperationNode *, size_t *)"}];
                [v133 handleFailureInFunction:v134 file:@"MPChangeDetails.m" lineNumber:948 description:{@"Invalid parameter not satisfying: %@", @"operationCount"}];

                v120 = ptr;
              }
            }

            v121 = 0;
            v122 = 1;
            v123 = v115;
            do
            {
              v124 = v122;
              ++v121;
              v123 = *(v123 + 2);
              ++v122;
            }

            while (v123);
            v125 = v121 + v152;
            v126 = malloc_type_realloc(v120, 8 * (v121 + v152), 0x100004000313F17uLL);
            v127 = 8 * v152;
            v128 = v115;
            do
            {
              *&v126[v127] = *v128;
              v128 = v128[2];
              v127 += 8;
              --v124;
            }

            while (v124);
            ptr = v126;
            *v82 = v125;
            _MPChangeDetailOperationNodeRelease(v115);
            v47 = v162 + v158;
            v46 = v154 - v158;
            v160 += v159;
            v40 = v157 - v159;
            v15 = v125;
            if (!((v154 - v158) | (v157 - v159)))
            {
              v32 = 1;
              goto LABEL_178;
            }

            continue;
          }
        }
      }
    }
  }

  v15 = 0;
  ptr = 0;
LABEL_38:
  v32 = 0;
  *v142 = v15;
LABEL_179:
  *a4 = v32;

  return ptr;
}

void sub_1A2680500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2680648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _MPChangeDetailOperationNodeRelease(_DWORD *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1[3];
      if (!v2)
      {
        v5 = [MEMORY[0x1E696AAA8] currentHandler];
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPChangeDetailOperationNodeRelease(MPChangeDetailOperationNode *)"];
        [v5 handleFailureInFunction:v6 file:@"MPChangeDetails.m" lineNumber:593 description:@"Overrelease of Operation"];

        v2 = v1[3];
      }

      v3 = v2 - 1;
      v1[3] = v3;
      if (v3)
      {
        break;
      }

      v4 = *(v1 + 2);
      free(v1);
      v1 = v4;
    }

    while (v4);
  }
}

uint64_t MPChangeDetailOperationMaximumSegmentCount(uint64_t a1)
{
  v1 = 250;
  if (a1 < 0x1389)
  {
    v1 = 500;
  }

  if (a1 >= 1100)
  {
    return v1;
  }

  else
  {
    return 1100;
  }
}

__CFString *MPChangeDetailOperationDescription(unint64_t a1)
{
  v1 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v1 == 3)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPChangeDetailOperation type=insert finalIndex=%d>", a1 & 0x7FFFFFFF, v4];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPChangeDetailOperation type=delete previousIndex=%d>", (a1 >> 31) & 0x7FFFFFFF, v4];
    }
  }

  else
  {
    if (!v1)
    {
      v2 = @"<MPChangeDetailOperation type=none>";
      goto LABEL_9;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPChangeDetailOperation type=replace previousIndex=%d finalIndex=%d>", (a1 >> 31) & 0x7FFFFFFF, a1 & 0x7FFFFFFF];
  }
  v2 = ;
LABEL_9:

  return v2;
}

id MPChangeDetailOperationsCopyDescription(unint64_t *a1, uint64_t a2)
{
  for (i = [MEMORY[0x1E696AD60] stringWithString:@"<MPChangeDetailOperations {\n"];
  {
    [i appendString:@"\t"];
    v5 = *a1++;
    v6 = MPChangeDetailOperationDescription(v5);
    [i appendString:v6];

    [i appendString:{@", \n"}];
  }

  [i appendString:@"}>"];
  v7 = [i copy];

  return v7;
}

id MPContainerUniqueIDPrefix(void *a1)
{
  v1 = a1;
  v2 = [v1 universalStore];
  v3 = [v2 subscriptionAdamID];

  if (!v3)
  {
    v4 = [v1 universalStore];
    [v4 adamID];
  }

  v5 = [v1 universalStore];
  v6 = [v5 universalCloudLibraryID];
  v7 = [v1 universalStore];
  [v7 purchasedAdamID];
  v8 = [v1 library];
  [v8 persistentID];
  v9 = ML3ContainerItemOccurrencePrefix();

  return v9;
}

void sub_1A2691E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MPTVOutScreen()
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v0 = [MEMORY[0x1E69DCEB0] screens];
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = *v7;
    while (2)
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v6 + 1) + 8 * i);
        if (![v4 _isWorkspaceCapable])
        {
          v1 = v4;
          goto LABEL_11;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v1;
}

BOOL MPTVOutCapabledAndPreferred()
{
  v0 = MPTVOutScreen();
  v1 = v0 != 0;

  return v1;
}

void sub_1A269912C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1A2699EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A269A6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48370(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A269DC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A269DEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A269ED34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL MPHasNominalAmountBeenPlayedForElapsedTime(double a1, double a2, double a3)
{
  v3 = a1 - a2;
  v4 = (a3 - a2) * 0.05;
  if (v4 > 5.0)
  {
    v4 = 5.0;
  }

  return v3 >= v4;
}

BOOL MPShouldIncrementPlayCountForElapsedTime(double a1, double a2, double a3)
{
  v3 = a3 - a2;
  v4 = a3 - a1;
  v5 = v4 <= 10.0;
  if (v3 >= 1200.0)
  {
    v5 = v4 <= 60.0;
  }

  v6 = -v3;
  if (v3 >= 0.0)
  {
    v6 = v3;
  }

  return v6 > 2.22044605e-16 && v5;
}

__CFString *NSStringFromMPPlaybackContextSupplementalReason(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownReason-%ld", a1];
  }

  else
  {
    v2 = off_1E767FF68[a1];
  }

  return v2;
}

void sub_1A26A13F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49047(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A26A2514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49133(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A26A2728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *MPShuffleTypeDescription(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 1000)
      {
        return @"MPShuffleTypeUserDefault";
      }

      return @"<MPShuffleTypeUnknown>";
    }

    return @"MPShuffleTypeCollections";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return @"MPShuffleTypeItems";
      }

      return @"<MPShuffleTypeUnknown>";
    }

    return @"MPShuffleTypeOff";
  }
}

__CFString *MPRepeatTypeDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<MPRepeatTypeUnknown>";
  }

  else
  {
    return off_1E7680128[a1];
  }
}

__CFString *MPNSStringFromQueueLoadAction(uint64_t a1)
{
  v1 = @"PrepareToPlay";
  v2 = @"None";
  if (a1)
  {
    v2 = 0;
  }

  if (a1 != 10)
  {
    v1 = v2;
  }

  if (a1 == 20)
  {
    return @"Play";
  }

  else
  {
    return v1;
  }
}

__CFString *MPNSStringForMPActiveRouteType(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"Proactive";
  }

  else
  {
    return @"User Selected";
  }
}

void getCARSessionLimitUserInterfacesChangedNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCARSessionLimitUserInterfacesChangedNotificationSymbolLoc_ptr;
  v9 = getCARSessionLimitUserInterfacesChangedNotificationSymbolLoc_ptr;
  if (!getCARSessionLimitUserInterfacesChangedNotificationSymbolLoc_ptr)
  {
    v1 = CarKitLibrary();
    v7[3] = dlsym(v1, "CARSessionLimitUserInterfacesChangedNotification");
    getCARSessionLimitUserInterfacesChangedNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCARSessionLimitUserInterfacesChangedNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPPlayableContentManager.m" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A26A4184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCARSessionLimitUserInterfacesChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CARSessionLimitUserInterfacesChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCARSessionLimitUserInterfacesChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CarKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_49683)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CarKitLibraryCore_block_invoke_49684;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7680178;
    v6 = 0;
    CarKitLibraryCore_frameworkLibrary_49683 = _sl_dlopen();
  }

  v0 = CarKitLibraryCore_frameworkLibrary_49683;
  if (!CarKitLibraryCore_frameworkLibrary_49683)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CarKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MPPlayableContentManager.m" lineNumber:35 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CarKitLibraryCore_block_invoke_49684()
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_49683 = result;
  return result;
}

void _MPContentItemsForIdentifiersCallback(const __CFArray *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
    v8 = a2;
    v9 = [v8 dataSource];
    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v18 = objc_alloc_init(MEMORY[0x1E696AD10]);
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__49699;
      v37 = __Block_byref_object_dispose__49700;
      v38 = 0;
      v10 = dispatch_group_create();
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          if (v34[5])
          {
            break;
          }

          dispatch_group_enter(v10);
          v12 = objc_alloc(MEMORY[0x1E69B13F0]);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = ___MPContentItemsForIdentifiersCallback_block_invoke;
          v30[3] = &unk_1E7680210;
          v32 = &v33;
          v13 = v10;
          v31 = v13;
          v14 = [v12 initWithTimeout:v30 interruptionHandler:5.0];
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = ___MPContentItemsForIdentifiersCallback_block_invoke_249;
          v24[3] = &unk_1E7680238;
          v16 = v14;
          v25 = v16;
          v29 = &v33;
          v26 = v18;
          v27 = v19;
          v28 = v13;
          [v9 contentItemForIdentifier:ValueAtIndex completionHandler:v24];
        }
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___MPContentItemsForIdentifiersCallback_block_invoke_2;
      block[3] = &unk_1E7681308;
      v23 = &v33;
      v22 = v6;
      v21 = v19;
      dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);

      _Block_object_dispose(&v33, 8);
    }

    else
    {
      Error = MRMediaRemoteCreateError();
      (v6)[2](v6, 0, Error);
      CFRelease(Error);
    }
  }

  else
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

uint64_t __Block_byref_object_copy__49699(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _MPInitiatePlaybackCallback(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = _MPCreateFoundationIndexPath(a1, a2);
    v8 = [[MPPlayableContentCallbackContext alloc] initWithIndexPath:v7];
    v9 = objc_alloc(MEMORY[0x1E69B13F0]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___MPInitiatePlaybackCallback_block_invoke;
    v19[3] = &unk_1E76801C0;
    v10 = v5;
    v20 = v10;
    v11 = v8;
    v21 = v11;
    v12 = [v9 initWithTimeout:v19 interruptionHandler:30.0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___MPInitiatePlaybackCallback_block_invoke_239;
    v15[3] = &unk_1E76801E8;
    v16 = v12;
    v17 = v10;
    v18 = v11;
    v13 = v11;
    v14 = v12;
    [v6 playableContentManager:v17 initiatePlaybackOfContentItemAtIndexPath:v7 completionHandler:v15];
  }
}

id _MPCreateFoundationIndexPath(uint64_t a1, unint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v7 = 0;
    do
    {
      *&v5[8 * v7] = *(v3 + 8 * v7);
      ++v7;
    }

    while (a2 > v7);
  }

  v8 = [objc_alloc(MEMORY[0x1E696AC88]) initWithIndexes:v5 length:a2];

  return v8;
}

CFArrayRef _MPCopyChildContentItemsCallback(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = [v9 dataSource];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = _MPCreateFoundationIndexPath(a1, a2);
  if ([v11 length] >= 5)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFArrayRef _MPCopyChildContentItemsCallback(MRMediaRemoteIndexPath, CFRange, void *)"}];
    [v20 handleFailureInFunction:v21 file:@"MPPlayableContentManager.m" lineNumber:668 description:{@"Hierarchy depth has exceeded the limit of %d", 5}];
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
  if (a4 >= 1)
  {
    v13 = a3 + a4;
    do
    {
      v14 = [v11 indexPathByAddingIndex:a3];
      v15 = [v10 contentItemAtIndexPath:v14];
      v16 = v15;
      if (v15)
      {
        [v12 addObject:{objc_msgSend(v15, "_mediaRemoteContentItem")}];
      }

      else
      {
        v17 = [MEMORY[0x1E695DFB0] null];
        [v12 addObject:v17];
      }

      ++a3;
    }

    while (a3 < v13);
  }

  [v9 _markContentItemsAsSentToMediaRemote:v12];

  if (v12)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v12);
  }

  else
  {
LABEL_12:
    Copy = 0;
  }

  return Copy;
}

uint64_t _MPGetChildContentItemsCountCallback(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = [a3 dataSource];
  if (v5)
  {
    v6 = _MPCreateFoundationIndexPath(a1, a2);
    v7 = [v5 numberOfChildItemsAtIndexPath:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t _MPGetSupportsPlaybackProgressCallback(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = [a3 dataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = _MPCreateFoundationIndexPath(a1, a2);
    v7 = [v5 childItemsDisplayPlaybackProgressAtIndexPath:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *_MPCopyNowPlayingIdentifiersCallback(void *a1)
{
  v1 = a1;
  Copy = [v1 nowPlayingIdentifiers];

  if (Copy)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = [v1 nowPlayingIdentifiers];
    Copy = CFArrayCreateCopy(v3, v4);
  }

  return Copy;
}

void _MPBeginLoadingContentCallback(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = [a3 dataSource];
  if (objc_opt_respondsToSelector())
  {
    v9 = _MPCreateFoundationIndexPath(a1, a2);
    v10 = objc_alloc(MEMORY[0x1E69B13F0]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___MPBeginLoadingContentCallback_block_invoke;
    v20[3] = &unk_1E7681D70;
    v11 = v7;
    v21 = v11;
    v12 = [v10 initWithTimeout:v20 interruptionHandler:5.0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___MPBeginLoadingContentCallback_block_invoke_226;
    v16[3] = &unk_1E7680198;
    v17 = v9;
    v18 = v12;
    v19 = v11;
    v13 = v12;
    v14 = v9;
    [v8 beginLoadingChildItemsAtIndexPath:v14 completionHandler:v16];
  }

  else
  {
    Error = MRMediaRemoteCreateError();
    (*(v7 + 2))(v7, Error);
    CFRelease(Error);
  }
}

void __getCARSessionStatusClass_block_invoke_49779(uint64_t a1)
{
  CarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CARSessionStatus");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCARSessionStatusClass_softClass_49778 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCARSessionStatusClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPPlayableContentManager.m" lineNumber:36 description:{@"Unable to find class %s", "CARSessionStatus"}];

    __break(1u);
  }
}

void sub_1A26A76C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49928(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A26AC7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVPlayerViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AVKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AVKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7680430;
    v8 = 0;
    AVKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AVKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MPMoviePlayerController.m" lineNumber:28 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVPlayerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVPlayerViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"MPMoviePlayerController.m" lineNumber:29 description:{@"Unable to find class %s", "AVPlayerViewController"}];

LABEL_10:
    __break(1u);
  }

  getAVPlayerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AVKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AVKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A26AD4C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51129(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A26AFFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A26B46B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51752(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A26B669C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A26B6DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A26B71C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A26BE388(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_1A26C09E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 248));
  _Unwind_Resume(a1);
}

void sub_1A26C0FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A26C12F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A26D0528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54662(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A26D1330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A26D2784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A26D2EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A26D3018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A26D3468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A26D3638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A26D3904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1A26D4484(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1A26D4BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

void sub_1A26D4E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A26D7E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A26D8760(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id _MPToMRNowPlayingInfoDictionary(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DF90];
  v5 = a1;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___MPToMRNowPlayingInfoDictionary_block_invoke;
  v12[3] = &unk_1E7682160;
  v13 = v3;
  v7 = v6;
  v14 = v7;
  v8 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

id _MPNowPlayingInfoPropertyToMRMediaRemoteNowPlayingInfoPropertyMapping()
{
  if (_MPNowPlayingInfoPropertyToMRMediaRemoteNowPlayingInfoPropertyMapping___once != -1)
  {
    dispatch_once(&_MPNowPlayingInfoPropertyToMRMediaRemoteNowPlayingInfoPropertyMapping___once, &__block_literal_global_227_55286);
  }

  v1 = _MPNowPlayingInfoPropertyToMRMediaRemoteNowPlayingInfoPropertyMapping___propertyMapping;

  return v1;
}

uint64_t __Block_byref_object_copy__55289(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _MPNowPlayingInfoPropertyForMRMediaRemoteNowPlayingInfoProperty(void *a1)
{
  v1 = _MPNowPlayingInfoPropertyForMRMediaRemoteNowPlayingInfoProperty___once;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_MPNowPlayingInfoPropertyForMRMediaRemoteNowPlayingInfoProperty___once, &__block_literal_global_39_55293);
  }

  v3 = [_MPNowPlayingInfoPropertyForMRMediaRemoteNowPlayingInfoProperty___reversePropertyMapping objectForKey:v2];

  return v3;
}

__CFArray *MRLanguageOptionGroupsFromMPNowPlayingLanguageOptionGroups(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *MEMORY[0x1E695E480];
  v3 = [v1 count];
  Mutable = CFArrayCreateMutable(v2, v3, MEMORY[0x1E695E9C0]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v1;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        CFArrayAppendValue(Mutable, [*(*(&v11 + 1) + 8 * v9++) mrLanguageOptionGroup]);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return Mutable;
}

__CFArray *MRLanguageOptionsFromMPNowPlayingLanguageOptions(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *MEMORY[0x1E695E480];
  v3 = [v1 count];
  Mutable = CFArrayCreateMutable(v2, v3, MEMORY[0x1E695E9C0]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v1;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        CFArrayAppendValue(Mutable, [*(*(&v11 + 1) + 8 * v9++) mrLanguageOption]);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return Mutable;
}

void sub_1A26DF250(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_1A26E49B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A26E60A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus(uint64_t result)
{
  if (result <= 1001)
  {
    if (result <= 199)
    {
      if (result > 109)
      {
        if (result == 110)
        {
          return 10;
        }

        if (result == 120)
        {
          return 20;
        }
      }

      else
      {
        if (!result)
        {
          return result;
        }

        if (result == 100)
        {
          return 1;
        }
      }
    }

    else if (result <= 554)
    {
      if (result == 404)
      {
        return result;
      }
    }

    else
    {
      switch(result)
      {
        case 555:
          return result;
        case 1000:
          return 100;
        case 1001:
          return 101;
      }
    }

    return 2;
  }

  if (result <= 1006)
  {
    if (result <= 1003)
    {
      if (result == 1002)
      {
        return 102;
      }

      else
      {
        return 103;
      }
    }

    else if (result == 1004)
    {
      return 104;
    }

    else if (result == 1005)
    {
      return 105;
    }

    else
    {
      return 106;
    }
  }

  if (result > 1008)
  {
    switch(result)
    {
      case 1009:
        return 4;
      case 1401:
        return 401;
      case 1501:
        return 501;
    }

    return 2;
  }

  if (result == 1007)
  {
    return 107;
  }

  else
  {
    return 108;
  }
}

uint64_t MPRemoteCommandHandlerStatusFromMRMediaRemoteCommandHandlerStatus(int a1)
{
  if (a1 <= 102)
  {
    if (a1 <= 9)
    {
      result = 0;
      if (a1 <= 1)
      {
        if (!a1)
        {
          return result;
        }

        if (a1 == 1)
        {
          return 100;
        }
      }

      else if (a1 != 2)
      {
        if (a1 == 3)
        {
          return result;
        }

        if (a1 == 4)
        {
          return 1009;
        }
      }

      return 200;
    }

    if (a1 > 99)
    {
      if (a1 == 100)
      {
        return 1000;
      }

      if (a1 == 101)
      {
        return 1001;
      }

      return 1002;
    }

    if (a1 == 10)
    {
      return 110;
    }

    if (a1 == 20)
    {
      return 120;
    }

    return 200;
  }

  if (a1 > 107)
  {
    if (a1 <= 403)
    {
      if (a1 == 108)
      {
        return 1008;
      }

      if (a1 == 401)
      {
        return 1401;
      }
    }

    else
    {
      switch(a1)
      {
        case 404:
          return 404;
        case 501:
          return 1501;
        case 555:
          return 555;
      }
    }

    return 200;
  }

  if (a1 <= 104)
  {
    if (a1 == 103)
    {
      return 1003;
    }

    else
    {
      return 1004;
    }
  }

  else if (a1 == 105)
  {
    return 1005;
  }

  else if (a1 == 106)
  {
    return 1006;
  }

  else
  {
    return 1007;
  }
}

MPRemoteCommandStatus *MPRemoteCommandStatusFromMRSendCommandResultStatus(void *a1)
{
  v1 = a1;
  v2 = [[MPRemoteCommandStatus alloc] initWithMediaRemoteType:v1];

  return v2;
}

__CFString *NSStringFromMPRemoteCommandHandlerDialogActionType(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/%ld", a1];
  }

  else
  {
    v2 = off_1E76820A8[a1];
  }

  return v2;
}

uint64_t MPRepeatTypeFromMediaRemoteRepeatMode(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1A2741A98[a1];
  }
}

uint64_t MPRepeatTypeToMediaRemoteRepeatMode(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t MPShuffleTypeFromMediaRemoteShuffleMode(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1A2741AB8[a1];
  }
}

uint64_t MPShuffleTypeToMediaRemoteShuffleMode(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t MPSleepTimerStopModeFromMediaRemoteSleepTimerStopMode(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t MPSleepTimerStopModeToMediaRemoteSleepTimerStopMode(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t MPNowPlayingPlaybackStateToMediaRemotePlaybackState(uint64_t result)
{
  if (result <= 2)
  {
    if (result != 1 && result != 2)
    {
      return 0;
    }
  }

  else if (result != 3 && result != 4)
  {
    if (result == 1000)
    {
      return 5;
    }

    return 0;
  }

  return result;
}

uint64_t MPNowPlayingPlaybackStateFromMediaRemotePlaybackState(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1A2741AD8[a1 - 1];
  }
}

__CFString *MPNSStringFromRepeatType(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v2 = MEMORY[0x1E696AEC0];
        v3 = +[MPPlaybackUserDefaults standardUserDefaults];
        v4 = MPNSStringFromRepeatType([v3 musicRepeatType]);
        v1 = [v2 stringWithFormat:@"UserDefault[%@]", v4];

        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v1 = @"All";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v1 = @"One";
        goto LABEL_11;
      }

LABEL_8:
      v1 = @"Unknown";
      goto LABEL_11;
    }

    v1 = @"Off";
  }

LABEL_11:

  return v1;
}

uint64_t MPRepeatTypeFromNSString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 != @"Off")
  {
    v3 = [(__CFString *)v1 isEqual:@"Off"];

    if ((v3 & 1) == 0)
    {
      v5 = v2;
      if (v5 == @"One" || (v6 = v5, v7 = [(__CFString *)v5 isEqual:@"One"], v6, (v7 & 1) != 0))
      {
        v4 = 1;
        goto LABEL_10;
      }

      v8 = v6;
      if (v8 == @"All" || (v9 = v8, v10 = [(__CFString *)v8 isEqual:@"All"], v9, v10))
      {
        v4 = 2;
        goto LABEL_10;
      }
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

__CFString *MPNSStringFromShuffleType(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 1000)
      {
        v2 = MEMORY[0x1E696AEC0];
        v3 = +[MPPlaybackUserDefaults standardUserDefaults];
        v4 = MPNSStringFromShuffleType([v3 musicShuffleType]);
        v1 = [v2 stringWithFormat:@"UserDefault[%@]", v4];

        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v1 = @"Albums";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v1 = @"Songs";
        goto LABEL_11;
      }

LABEL_8:
      v1 = @"Unknown";
      goto LABEL_11;
    }

    v1 = @"Off";
  }

LABEL_11:

  return v1;
}

uint64_t MPShuffleTypeFromNSString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 != @"Off")
  {
    v3 = [(__CFString *)v1 isEqual:@"Off"];

    if ((v3 & 1) == 0)
    {
      v5 = v2;
      if (v5 == @"Songs" || (v6 = v5, v7 = [(__CFString *)v5 isEqual:@"Songs"], v6, (v7 & 1) != 0))
      {
        v4 = 1;
        goto LABEL_10;
      }

      v8 = v6;
      if (v8 == @"Albums" || (v9 = v8, v10 = [(__CFString *)v8 isEqual:@"Albums"], v9, v10))
      {
        v4 = 2;
        goto LABEL_10;
      }
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

__CFString *MPNSStringFromQueueEndAction(uint64_t a1, void *a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v8 = @"Clear";
      goto LABEL_16;
    }

    if (a1 == 1)
    {
      v8 = @"None";
      goto LABEL_16;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v8 = @"Reset";
        goto LABEL_16;
      case 3:
        v8 = @"AutoPlay";
        goto LABEL_16;
      case 1000:
        v2 = a2;
        v3 = +[MPPlaybackUserDefaults standardUserDefaults];
        v4 = [v3 autoPlayEnabledForUserIdentity:v2];

        if (v4)
        {
          v5 = 3;
        }

        else
        {
          v5 = 2;
        }

        v6 = MEMORY[0x1E696AEC0];
        v7 = MPNSStringFromQueueEndAction(v5, v2);

        v8 = [v6 stringWithFormat:@"UserDefault[%@]", v7];

        goto LABEL_16;
    }
  }

  v8 = @"Unknown";
LABEL_16:

  return v8;
}

uint64_t MPQueueEndActionFromNSString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 != @"Clear")
  {
    v3 = [(__CFString *)v1 isEqual:@"Clear"];

    if ((v3 & 1) == 0)
    {
      v5 = v2;
      if (v5 == @"None" || (v6 = v5, v7 = [(__CFString *)v5 isEqual:@"None"], v6, (v7 & 1) != 0))
      {
        v4 = 1;
        goto LABEL_13;
      }

      v8 = v6;
      if (v8 == @"Reset" || (v9 = v8, v10 = [(__CFString *)v8 isEqual:@"Reset"], v9, (v10 & 1) != 0))
      {
        v4 = 2;
        goto LABEL_13;
      }

      v11 = v9;
      if (v11 == @"AutoPlay" || (v12 = v11, v13 = [(__CFString *)v11 isEqual:@"AutoPlay"], v12, v13))
      {
        v4 = 3;
        goto LABEL_13;
      }
    }
  }

  v4 = 0;
LABEL_13:

  return v4;
}

id MPMediaRemoteCommandOptionsForFeedbackOrPurchaseCommandEvent(void *a1, BOOL *a2)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3[2](v3, *MEMORY[0x1E69B1078]);
  if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "longLongValue")}];
  }

  else
  {
    v5 = 0;
  }

  if ([v5 longLongValue])
  {
    v6 = v4;
  }

  else
  {
    v6 = v3[2](v3, *MEMORY[0x1E69B1080]);

    if (objc_opt_respondsToSelector())
    {
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "longLongValue")}];

      v5 = v7;
    }
  }

  v8 = v3[2](v3, *MEMORY[0x1E69B0FB0]);
  if (objc_opt_respondsToSelector())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "longLongValue")}];
  }

  else
  {
    v9 = 0;
  }

  v10 = v3[2](v3, *MEMORY[0x1E69B0FA8]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v9 | v11)
  {
    v12 = &unk_1F1509D30;
    v13 = *MEMORY[0x1E69B1258];
    v24[0] = *MEMORY[0x1E69B1270];
    v24[1] = v13;
    if (v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = &unk_1F1509D30;
    }

    if (v9)
    {
      v12 = v9;
    }

    v25[0] = v14;
    v25[1] = v12;
    v24[2] = *MEMORY[0x1E69B1250];
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = &stru_1F149ECA8;
    }

    v25[2] = v15;
    v16 = MEMORY[0x1E695DF20];
    v17 = v25;
    v18 = v24;
    v19 = 3;
LABEL_26:
    v20 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
    if (!a2)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v5)
  {
    v22 = *MEMORY[0x1E69B1270];
    v23 = v5;
    v16 = MEMORY[0x1E695DF20];
    v17 = &v23;
    v18 = &v22;
    v19 = 1;
    goto LABEL_26;
  }

  v20 = 0;
  if (a2)
  {
LABEL_27:
    *a2 = (v9 | v11) != 0;
  }

LABEL_28:

  return v20;
}

uint64_t MPChangeLanguageOptionSettingFromMediaRemote(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

uint64_t MPChangeLanguageOptionSettingToMediaRemote(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

uint64_t MPSystemAppPlaybackQueueTypeFromMediaRemote(int a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1A2741B00[a1 - 1];
  }
}

uint64_t MPSystemAppPlaybackQueueTypeToMediaRemote(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return dword_1A2741B40[a1 - 1];
  }
}

uint64_t MPPlaybackQueueInsertionPositionFromMediaRemote(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t MPPlaybackQueueInsertionPositionToMediaRemote(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

id MPNowPlayingCollectionInfoToMediaRemote(void *a1)
{
  v28[15] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = *MEMORY[0x1E69B0E38];
  v27[0] = @"_MPNowPlayingCollectionInfoKeyTitle";
  v27[1] = @"_MPNowPlayingCollectionInfoKeyIdentifiers";
  v5 = *MEMORY[0x1E69B0E30];
  v28[0] = v4;
  v28[1] = v5;
  v6 = *MEMORY[0x1E69B0E28];
  v27[2] = @"_MPNowPlayingCollectionInfoKeyCollectionType";
  v27[3] = @"_MPNowPlayingCollectionInfoCollectionTypePlaylist";
  v7 = *MEMORY[0x1E69B0E18];
  v28[2] = v6;
  v28[3] = v7;
  v8 = *MEMORY[0x1E69B0E10];
  v27[4] = @"_MPNowPlayingCollectionInfoCollectionTypeAlbum";
  v27[5] = @"_MPNowPlayingCollectionInfoCollectionTypeRadio";
  v9 = *MEMORY[0x1E69B0E20];
  v28[4] = v8;
  v28[5] = v9;
  v10 = *MEMORY[0x1E69B0FB0];
  v27[6] = @"_MPNowPlayingInfoPropertyRadioStationIdentifier";
  v27[7] = @"_MPNowPlayingInfoPropertyRadioStationStringIdentifier";
  v11 = *MEMORY[0x1E69B0FC0];
  v28[6] = v10;
  v28[7] = v11;
  v12 = *MEMORY[0x1E69B0FA8];
  v27[8] = @"_MPNowPlayingInfoPropertyRadioStationHash";
  v27[9] = @"_MPNowPlayingInfoPropertyRadioStationName";
  v13 = *MEMORY[0x1E69B0FB8];
  v28[8] = v12;
  v28[9] = v13;
  v14 = *MEMORY[0x1E69B1078];
  v27[10] = @"_MPNowPlayingInfoPropertyiTunesStoreIdentifier";
  v27[11] = @"_MPNowPlayingInfoPropertyiTunesStoreSubscriptionAdamIdentifier";
  v15 = *MEMORY[0x1E69B1080];
  v28[10] = v14;
  v28[11] = v15;
  v16 = *MEMORY[0x1E69B0E60];
  v27[12] = @"_MPNowPlayingInfoPropertyArtistiTunesStoreAdamIdentifier";
  v27[13] = @"_MPNowPlayingInfoPropertyAlbumiTunesStoreAdamIdentifier";
  v17 = *MEMORY[0x1E69B0E48];
  v28[12] = v16;
  v28[13] = v17;
  v27[14] = @"_MPNowPlayingInfoPropertyPlaylistGlobalIdentifier";
  v28[14] = *MEMORY[0x1E69B0F88];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:15];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __MPNowPlayingCollectionInfoToMediaRemote_block_invoke;
  v24[3] = &unk_1E7682160;
  v25 = v18;
  v19 = v3;
  v26 = v19;
  v20 = v18;
  [v2 enumerateKeysAndObjectsUsingBlock:v24];

  v21 = v26;
  v22 = v19;

  return v19;
}

void __MPNowPlayingCollectionInfoToMediaRemote_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:a2];
  v7 = [*(a1 + 32) objectForKey:v5];
  if (v6)
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    [*(a1 + 40) setObject:v8 forKey:v6];
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69B0E30]])
  {
    v9 = [*(a1 + 40) objectForKey:v6];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __MPNowPlayingCollectionInfoToMediaRemote_block_invoke_2;
    v15 = &unk_1E7682160;
    v16 = *(a1 + 32);
    v17 = v10;
    v11 = v10;
    [v9 enumerateKeysAndObjectsUsingBlock:&v12];
    [*(a1 + 40) setObject:v11 forKey:{v6, v12, v13, v14, v15}];
  }
}

void __MPNowPlayingCollectionInfoToMediaRemote_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKey:v7];
  v10 = v8;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  [*(a1 + 40) setObject:v6 forKey:v9];
}

id MPMediaRemoteCollectionInfoToNowPlaying(void *a1)
{
  v20[13] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = *MEMORY[0x1E69B0E30];
  v19[0] = *MEMORY[0x1E69B0E38];
  v19[1] = v4;
  v20[0] = @"_MPNowPlayingCollectionInfoKeyTitle";
  v20[1] = @"_MPNowPlayingCollectionInfoKeyIdentifiers";
  v5 = *MEMORY[0x1E69B0E18];
  v19[2] = *MEMORY[0x1E69B0E28];
  v19[3] = v5;
  v20[2] = @"_MPNowPlayingCollectionInfoKeyCollectionType";
  v20[3] = @"_MPNowPlayingCollectionInfoCollectionTypePlaylist";
  v6 = *MEMORY[0x1E69B0E20];
  v19[4] = *MEMORY[0x1E69B0E10];
  v19[5] = v6;
  v20[4] = @"_MPNowPlayingCollectionInfoCollectionTypeAlbum";
  v20[5] = @"_MPNowPlayingCollectionInfoCollectionTypeRadio";
  v7 = *MEMORY[0x1E69B0FC0];
  v19[6] = *MEMORY[0x1E69B0FB0];
  v19[7] = v7;
  v20[6] = @"_MPNowPlayingInfoPropertyRadioStationIdentifier";
  v20[7] = @"_MPNowPlayingInfoPropertyRadioStationStringIdentifier";
  v8 = *MEMORY[0x1E69B1080];
  v19[8] = *MEMORY[0x1E69B1078];
  v19[9] = v8;
  v20[8] = @"_MPNowPlayingInfoPropertyiTunesStoreIdentifier";
  v20[9] = @"_MPNowPlayingInfoPropertyiTunesStoreSubscriptionAdamIdentifier";
  v9 = *MEMORY[0x1E69B0E48];
  v19[10] = *MEMORY[0x1E69B0E60];
  v19[11] = v9;
  v20[10] = @"_MPNowPlayingInfoPropertyArtistiTunesStoreAdamIdentifier";
  v20[11] = @"_MPNowPlayingInfoPropertyAlbumiTunesStoreAdamIdentifier";
  v19[12] = *MEMORY[0x1E69B0F88];
  v20[12] = @"_MPNowPlayingInfoPropertyPlaylistGlobalIdentifier";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __MPMediaRemoteCollectionInfoToNowPlaying_block_invoke;
  v16[3] = &unk_1E7682160;
  v17 = v10;
  v11 = v3;
  v18 = v11;
  v12 = v10;
  [v2 enumerateKeysAndObjectsUsingBlock:v16];

  v13 = v18;
  v14 = v11;

  return v11;
}

void __MPMediaRemoteCollectionInfoToNowPlaying_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:a2];
  v7 = [*(a1 + 32) objectForKey:v5];
  if (v6)
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    [*(a1 + 40) setObject:v8 forKey:v6];
  }

  if ([v6 isEqualToString:@"_MPNowPlayingCollectionInfoKeyIdentifiers"])
  {
    v9 = [*(a1 + 40) objectForKey:v6];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __MPMediaRemoteCollectionInfoToNowPlaying_block_invoke_2;
    v15 = &unk_1E7682160;
    v16 = *(a1 + 32);
    v17 = v10;
    v11 = v10;
    [v9 enumerateKeysAndObjectsUsingBlock:&v12];
    [*(a1 + 40) setObject:v11 forKey:{v6, v12, v13, v14, v15}];
  }
}

void __MPMediaRemoteCollectionInfoToNowPlaying_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKey:v7];
  v10 = v8;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  [*(a1 + 40) setObject:v6 forKey:v9];
}

void MPVolumeSettingsAlertHide(void)
{
  if ((__UIApplicationLinkedOnOrAfter() & 1) == 0)
  {
    v0 = _volumeSettingsController;
    if (_volumeSettingsController)
    {
      _volumeSettingsController = 0;
      v2 = v0;

      [v2 dismissAlertController];
      v1 = _alertWindow;
      _alertWindow = 0;
    }
  }
}

void MPVolumeSettingsAlertShow(void)
{
  if ((__UIApplicationLinkedOnOrAfter() & 1) == 0 && !_alertWindow)
  {
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    v0 = objc_alloc(MEMORY[0x1E69DD2E8]);
    [v6 bounds];
    v1 = [v0 initWithFrame:?];
    v2 = _alertWindow;
    _alertWindow = v1;

    v3 = [MEMORY[0x1E69DC888] clearColor];
    [_alertWindow setBackgroundColor:v3];

    v4 = [[MPVolumeSettingsController alloc] initWithAudioCategory:0];
    v5 = _volumeSettingsController;
    _volumeSettingsController = v4;

    [_volumeSettingsController presentAlertControllerInWindow:_alertWindow];
  }
}

void sub_1A26F8148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__58734(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A26FA53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A26FC9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
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

CGSize CGSizeFromString(NSString *string)
{
  MEMORY[0x1EEE4DB38](string);
  result.height = v2;
  result.width = v1;
  return result;
}

uint64_t mediaplatform::Data::Data()
{
  return MEMORY[0x1EEE1B7B0]();
}

{
  return MEMORY[0x1EEE1B7B8]();
}

void mlcore::InPredicate<std::string>::InPredicate()
{
    ;
  }
}

void mlcore::InPredicate<int>::InPredicate()
{
    ;
  }
}

void mlcore::InPredicate<long long>::InPredicate()
{
    ;
  }
}

void mlcore::AnyInPredicate<long long>::AnyInPredicate()
{
    ;
  }
}

void mlcore::UnaryPredicate<int>::UnaryPredicate()
{
    ;
  }
}

void mlcore::UnaryPredicate<long long>::UnaryPredicate()
{
    ;
  }
}

void mlcore::ComparisonPredicate<std::string>::ComparisonPredicate()
{
    ;
  }
}

void mlcore::ComparisonPredicate<int>::ComparisonPredicate()
{
    ;
  }
}

void mlcore::ComparisonPredicate<long long>::ComparisonPredicate()
{
    ;
  }
}

uint64_t mlcore::LocalizedSearchScope::LocalizedSearchScope()
{
  return MEMORY[0x1EEE1BB10]();
}

{
  return MEMORY[0x1EEE1BB18]();
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

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE70FE8](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE70FF0](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}