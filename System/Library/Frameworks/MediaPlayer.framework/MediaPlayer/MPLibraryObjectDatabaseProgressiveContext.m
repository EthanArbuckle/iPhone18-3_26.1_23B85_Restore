@interface MPLibraryObjectDatabaseProgressiveContext
@end

@implementation MPLibraryObjectDatabaseProgressiveContext

void __117___MPLibraryObjectDatabaseProgressiveContext_initWithDatabase_propertySet_query_tokens_unknownTokenIDs_missedTokens___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 48);
      v5 = WeakRetained[35];
      v6 = WeakRetained[44];
      v7 = *(a1 + 32);
      v8[0] = 67109890;
      v8[1] = v4;
      v9 = 1024;
      v10 = v5;
      v11 = 1024;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] context::%{sonic:fourCC}u::%{sonic:fourCC}u | received notification [] name=%{public}@", v8, 0x1Eu);
    }

    [WeakRetained _entityRevisionUpdated];
  }
}

void __68___MPLibraryObjectDatabaseProgressiveContext__entityRevisionUpdated__block_invoke_173(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, _BYTE *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v11 = *(a1 + 32);
  if (a4 || (*(v11 + 136) & 1) == 0)
  {
    v19 = std::__hash_table<std::__hash_value_type<long long,unsigned long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,unsigned long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,unsigned long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,unsigned long>>>::find<long long>((v11 + 16), a3);
    if (a4 || !v19)
    {
      if (!std::__hash_table<std::__hash_value_type<long long,unsigned long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,unsigned long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,unsigned long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,unsigned long>>>::find<long long>((v11 + 56), a3))
      {
        return;
      }

      v12 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      v23 = *(a1 + 32);
      v24 = *(*(v23 + 8) + 64);
      v25 = *(v23 + 140);
      LODWORD(v23) = *(v23 + 176);
      v26 = 67110144;
      v27 = v24;
      v28 = 1024;
      v29 = v25;
      v30 = 1024;
      v31 = v23;
      v32 = 2048;
      v33 = a2;
      v34 = 2048;
      v35 = a3;
      v16 = "[LOD:%{sonic:fourCC}u] context::%{sonic:fourCC}u::%{sonic:fourCC}u | invalidated [objects + pid changed] revision=%lld pid=%lld";
    }

    else
    {
      v12 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      v20 = *(a1 + 32);
      v21 = *(*(v20 + 8) + 64);
      v22 = *(v20 + 140);
      LODWORD(v20) = *(v20 + 176);
      v26 = 67110144;
      v27 = v21;
      v28 = 1024;
      v29 = v22;
      v30 = 1024;
      v31 = v20;
      v32 = 2048;
      v33 = a2;
      v34 = 2048;
      v35 = a3;
      v16 = "[LOD:%{sonic:fourCC}u] context::%{sonic:fourCC}u::%{sonic:fourCC}u | invalidated [identifiers + pid changed] revision=%lld pid=%lld";
    }

    v17 = v12;
    v18 = 40;
    goto LABEL_13;
  }

  v12 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = *(*(v13 + 8) + 64);
    v15 = *(v13 + 140);
    LODWORD(v13) = *(v13 + 176);
    v26 = 67109888;
    v27 = v14;
    v28 = 1024;
    v29 = v15;
    v30 = 1024;
    v31 = v13;
    v32 = 2048;
    v33 = a2;
    v16 = "[LOD:%{sonic:fourCC}u] context::%{sonic:fourCC}u::%{sonic:fourCC}u | invalidated [missing content + contents changed] revision=%lld";
    v17 = v12;
    v18 = 30;
LABEL_13:
    _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEBUG, v16, &v26, v18);
  }

LABEL_14:

  *(*(a1 + 32) + 168) = 1;
  *a6 = 1;
}

@end