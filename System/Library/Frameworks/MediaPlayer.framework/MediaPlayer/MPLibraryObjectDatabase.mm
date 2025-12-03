@interface MPLibraryObjectDatabase
- (MPLibraryObjectDatabase)initWithLibrary:(id)library;
- (id)identifiersMatchingIdentifierSet:(id)set propertySet:(id)propertySet options:(unint64_t)options error:(id *)error;
- (id)modelObjectForResult:(id)result inContext:(id)context error:(id *)error;
- (id)objectBuildingContextForResults:(id)results propertySet:(id)set;
- (uint64_t)updateIdentifiersForResults:(uint64_t)results options:;
- (uint64_t)updateIdentifiersForResults:(void *)results options:(unsigned __int8 *)options;
- (uint64_t)updateTokensForResults:(uint64_t)results;
- (void)_enumerateEntityRevisionsFromRevision:(int64_t)revision block:(id)block;
- (void)dealloc;
- (void)enumerateRelatedTokensForResult:(id)result childKey:(id)key block:(id)block;
- (void)updateIdentifiersForResults:(id)results options:(unint64_t)options;
- (void)updateIdentifiersForResults:(uint64_t)results options:;
- (void)updateTokensForResults:(id)results;
- (void)updateTokensForResults:(uint64_t *)results;
- (void)updateTokensForResults:(uint64_t)results;
- (void)updateTokensForResults:(void *)results;
@end

@implementation MPLibraryObjectDatabase

- (void)_enumerateEntityRevisionsFromRevision:(int64_t)revision block:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__MPLibraryObjectDatabase__enumerateEntityRevisionsFromRevision_block___block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  [(MSVSQLStatement *)self->_entityRevisionEnumeration bindInt64Value:revision toParameterNamed:@"@revision"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__MPLibraryObjectDatabase__enumerateEntityRevisionsFromRevision_block___block_invoke_2;
  v18[3] = &unk_1E7682518;
  v18[4] = self;
  v12 = _Block_copy(v18);
  [(MSVSQLDatabase *)self->_msvDatabase resultsForStatement:self->_entityRevisionEnumeration];
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v8)
  {
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v7);
      }

      blockCopy[2](blockCopy, [*(*(&v13 + 1) + 8 * v10) int64ValueAtColumnIndex:0], objc_msgSend(*(*(&v13 + 1) + 8 * v10), "int64ValueAtColumnIndex:", 1), objc_msgSend(*(*(&v13 + 1) + 8 * v10), "int64ValueAtColumnIndex:", 4), objc_msgSend(*(*(&v13 + 1) + 8 * v10), "int64ValueAtColumnIndex:", 2), &v17);
      if (v17)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12[2](v12);
  v11[2](v11);
}

- (id)modelObjectForResult:(id)result inContext:(id)context error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  contextCopy = context;
  currentEntityRevision = [(MPMediaLibrary *)self->_library currentEntityRevision];
  v10 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    id = self->_id;
    *buf = 67109890;
    *&buf[4] = id;
    *v77 = 2112;
    *&v77[2] = resultCopy;
    *&v77[10] = 2048;
    *&v77[12] = contextCopy;
    *&v77[20] = 2048;
    *&v77[22] = currentEntityRevision;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] modelObjectForResult:inContext: | begin [] result=%@ context=%p entityRevision=%lld", buf, 0x26u);
  }

  v12 = [resultCopy tokenForDatabase:self];
  v14 = v13;
  v15 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = self->_id;
    *buf = 67110402;
    *&buf[4] = v16;
    *v77 = 2112;
    *&v77[2] = resultCopy;
    *&v77[10] = 2048;
    *&v77[12] = contextCopy;
    *&v77[20] = 2048;
    *&v77[22] = v12;
    *&v77[30] = 1024;
    v78 = v14;
    v79 = 1024;
    v80 = HIBYTE(v14);
    _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] modelObjectForResult:inContext: | inspect [token] result=%@ context=%p token={ .tokenID=%lld, .tokenRevision=%d, .databaseStorage={ .entityType=%d } }", buf, 0x32u);
  }

  v17 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v18 = os_signpost_id_generate(v17);

  v19 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v20 = v19;
  v70 = v18 - 1;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "modelObject", &unk_1A2797D62, buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__MPLibraryObjectDatabase_modelObjectForResult_inContext_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v18;
  v21 = _Block_copy(aBlock);
  if (!v12)
  {
    v23 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    if (v14 < 1)
    {
      if (v24)
      {
        v59 = self->_id;
        *buf = 67109634;
        *&buf[4] = v59;
        *v77 = 2112;
        *&v77[2] = resultCopy;
        *&v77[10] = 2048;
        *&v77[12] = contextCopy;
        v26 = "[LOD:%{sonic:fourCC}u] modelObjectForResult:inContext: | skipping [no token] result=%@ context=%p";
        goto LABEL_64;
      }
    }

    else if (v24)
    {
      v25 = self->_id;
      *buf = 67109634;
      *&buf[4] = v25;
      *v77 = 2112;
      *&v77[2] = resultCopy;
      *&v77[10] = 2048;
      *&v77[12] = contextCopy;
      v26 = "[LOD:%{sonic:fourCC}u] modelObjectForResult:inContext: | skipping [tombstone] result=%@ context=%p";
LABEL_64:
      _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEBUG, v26, buf, 0x1Cu);
    }

    v35 = 0;
    goto LABEL_77;
  }

  if (!contextCopy || !std::__hash_table<std::__hash_value_type<long long,unsigned long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,unsigned long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,unsigned long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,unsigned long>>>::find<long long>(contextCopy + 2, v12) && !std::__hash_table<std::__hash_value_type<long long,unsigned long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,unsigned long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,unsigned long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,unsigned long>>>::find<long long>(contextCopy + 12, v12))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    *buf = bswap32([contextCopy tag]);
    buf[4] = 0;
    v65 = [MEMORY[0x1E696AEC0] stringWithCString:buf encoding:1];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPLibraryObjectDatabase.mm" lineNumber:904 description:{@"ObjectBuildingContext[%@] does not contain %@", v65, resultCopy}];
  }

  if ((HIBYTE(v14) - 1) > 8u)
  {
    identityKind = 0;
  }

  else
  {
    identityKind = [(__objc2_class *)*off_1E767C208[(HIBYTE(v14) - 1)] identityKind];
  }

  v71 = identityKind;
  modelClass = [identityKind modelClass];
  if (modelClass)
  {
    if (contextCopy)
    {
      v29 = contextCopy[24];
      v28 = contextCopy[25];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = contextCopy[3];
      if (!*&v30)
      {
        goto LABEL_41;
      }

      v31 = vcnt_s8(v30);
      v31.i16[0] = vaddlv_u8(v31);
      if (v31.u32[0] > 1uLL)
      {
        v32 = v12;
        if (v12 >= *&v30)
        {
          v32 = v12 % *&v30;
        }
      }

      else
      {
        v32 = (*&v30 - 1) & v12;
      }

      v36 = *(contextCopy[2] + 8 * v32);
      if (!v36 || (v37 = *v36) == 0)
      {
LABEL_41:
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      while (1)
      {
        v38 = v37[1];
        if (v38 == v12)
        {
          if (v37[2] == v12)
          {
            v39 = v37[3];
            goto LABEL_42;
          }
        }

        else
        {
          if (v31.u32[0] > 1uLL)
          {
            if (v38 >= *&v30)
            {
              v38 %= *&v30;
            }
          }

          else
          {
            v38 &= *&v30 - 1;
          }

          if (v38 != v32)
          {
            goto LABEL_41;
          }
        }

        v37 = *v37;
        if (!v37)
        {
          goto LABEL_41;
        }
      }
    }

    v28 = 0;
    v29 = 0;
    v39 = 0;
LABEL_42:
    if (v39 >= mlcore::EntityQueryResult::entityCount(v29))
    {
      v57 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v58 = self->_id;
        *buf = 67109634;
        *&buf[4] = v58;
        *v77 = 2112;
        *&v77[2] = resultCopy;
        *&v77[10] = 2048;
        *&v77[12] = contextCopy;
        _os_log_impl(&dword_1A238D000, v57, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] modelObjectForResult:inContext: | skipping [index out of bounds] result=%@ context=%p", buf, 0x1Cu);
      }

      v35 = 0;
    }

    else
    {
      mlcore::EntityQueryResult::entityAtIndex(v29);
      if (v73)
      {
        v68 = +[MPModelGenericObject relationshipKeyForGenericObjectType:](MPModelGenericObject, "relationshipKeyForGenericObjectType:", [modelClass genericObjectType]);
        if (contextCopy)
        {
          v40 = contextCopy[23];
        }

        else
        {
          v40 = 0;
        }

        v41 = v40;
        relationships = [v41 relationships];
        v69 = [relationships objectForKeyedSubscript:v68];

        if (!v69 || (+[MPPropertySet emptyPropertySet], v43 = objc_claimAutoreleasedReturnValue(), v44 = v69 == v43, v43, v44))
        {
          p_super = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
          {
            v60 = self->_id;
            *buf = 67109890;
            *&buf[4] = v60;
            *v77 = 2112;
            *&v77[2] = resultCopy;
            *&v77[10] = 2048;
            *&v77[12] = contextCopy;
            *&v77[20] = 2112;
            *&v77[22] = v68;
            _os_log_impl(&dword_1A238D000, p_super, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] modelObjectForResult:inContext: | skipping [empty properties] result=%@ context=%p key=%@", buf, 0x26u);
          }

          v35 = 0;
        }

        else
        {
          v67 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
          [(MPMediaLibraryEntityTranslationContext *)v67 setMediaLibrary:self->_library];
          userIdentity = [(MPMediaLibrary *)self->_library userIdentity];
          accountDSID = [userIdentity accountDSID];
          [(MPMediaLibraryEntityTranslationContext *)v67 setPersonID:accountDSID];

          [(MPMediaLibraryEntityTranslationContext *)v67 setModelKind:v71];
          [(MPMediaLibraryEntityTranslationContext *)v67 setIdentifierSourcePrefix:@"LOD::"];
          v47 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
          v48 = v47;
          if (v70 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1A238D000, v48, OS_SIGNPOST_INTERVAL_BEGIN, v18, "modelObject:build", &unk_1A2797D62, buf, 2u);
          }

          v66 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:modelClass];
          v49 = (*(*v73 + 48))();
          v50 = [v66 objectForPropertySet:v69 entityClass:v49 propertyCache:mlcore::Entity::propertyCache(v73) context:v67];
          v51 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
          v52 = v51;
          if (v70 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1A238D000, v52, OS_SIGNPOST_INTERVAL_END, v18, "modelObject:build", &unk_1A2797D62, buf, 2u);
          }

          aBlock[5] = v12;
          aBlock[6] = v14;
          if (contextCopy)
          {
            os_unfair_lock_lock_with_options();
            *buf = MEMORY[0x1E69E9820];
            *v77 = 3221225472;
            *&v77[8] = __70___MPLibraryObjectDatabaseProgressiveContext__didBuildObjectForToken___block_invoke;
            *&v77[16] = &unk_1E7682518;
            *&v77[24] = contextCopy;
            v53 = _Block_copy(buf);
            std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(contextCopy + 7, v12);
            v53[2](v53);
          }

          v35 = [MPModelGenericObject genericObjectWithModelObject:v50];
          v54 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            v55 = self->_id;
            *buf = 67109890;
            *&buf[4] = v55;
            *v77 = 2112;
            *&v77[2] = resultCopy;
            *&v77[10] = 2048;
            *&v77[12] = contextCopy;
            *&v77[20] = 2112;
            *&v77[22] = v35;
            _os_log_impl(&dword_1A238D000, v54, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] modelObjectForResult:inContext: | done [] result=%@ context=%p object=%@", buf, 0x26u);
          }

          p_super = &v67->super;
        }

        v61 = v68;
      }

      else
      {
        v61 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v62 = self->_id;
          *buf = 67109634;
          *&buf[4] = v62;
          *v77 = 2112;
          *&v77[2] = resultCopy;
          *&v77[10] = 2048;
          *&v77[12] = contextCopy;
          _os_log_impl(&dword_1A238D000, v61, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] modelObjectForResult:inContext: | skipping [null entity] result=%@ context=%p", buf, 0x1Cu);
        }

        v35 = 0;
      }

      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }
    }

    v23 = v71;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }
  }

  else
  {
    v33 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = self->_id;
      *buf = 67109890;
      *&buf[4] = v34;
      *v77 = 2112;
      *&v77[2] = resultCopy;
      *&v77[10] = 2048;
      *&v77[12] = contextCopy;
      *&v77[20] = 256;
      v77[22] = HIBYTE(v14);
      _os_log_impl(&dword_1A238D000, v33, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] modelObjectForResult:inContext: | skipping [unknown entity type] result=%@ context=%p entityType=%d", buf, 0x1Fu);
    }

    v35 = 0;
    v23 = v71;
  }

LABEL_77:

  v21[2](v21);

  return v35;
}

void __64__MPLibraryObjectDatabase_modelObjectForResult_inContext_error___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "modelObject", &unk_1A2797D62, v5, 2u);
  }
}

- (id)objectBuildingContextForResults:(id)results propertySet:(id)set
{
  v23 = *MEMORY[0x1E69E9840];
  results;
  setCopy = set;
  properties = [setCopy properties];
  v7 = [properties count];

  if (v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPLibraryObjectDatabase.mm" lineNumber:797 description:{@"Property Set must be a generic-object property set which does not allow properties at the top-level:", setCopy}];
  }

  currentEntityRevision = [(MPMediaLibrary *)self->_library currentEntityRevision];
  v8 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    id = self->_id;
    *buf = 67109634;
    *&buf[4] = id;
    v21[0] = 2112;
    *&v21[1] = setCopy;
    v21[5] = 2048;
    v22 = currentEntityRevision;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] objectBuildingContextForResults:propertySet: | begin [] propertySet=%@ entityRevision=%lld", buf, 0x1Cu);
  }

  v10 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v11 = os_signpost_id_generate(v10);

  v12 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "objectBuildingContext", &unk_1A2797D62, buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__MPLibraryObjectDatabase_objectBuildingContextForResults_propertySet___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v11;
  _Block_copy(aBlock);
  operator new();
}

void __71__MPLibraryObjectDatabase_objectBuildingContextForResults_propertySet___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "objectBuildingContext", &unk_1A2797D62, v5, 2u);
  }
}

void __71__MPLibraryObjectDatabase_objectBuildingContextForResults_propertySet___block_invoke_65(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 48);
    v6 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 16777728;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "objectBuildingContext:setProperties", "modelEntityType=%d count=%zu", &v7, 0xFu);
  }
}

- (void)enumerateRelatedTokensForResult:(id)result childKey:(id)key block:(id)block
{
  v92 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  keyCopy = key;
  blockCopy = block;
  selfCopy = self;
  currentEntityRevision = [(MPMediaLibrary *)self->_library currentEntityRevision];
  v9 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    id = self->_id;
    *buf = 67109634;
    *v85 = id;
    *&v85[4] = 2112;
    *&v85[6] = resultCopy;
    v86 = 2048;
    v87 = currentEntityRevision;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] enumerateRelatedTokensForResult:childKey: | begin [] result=%@ entityRevision=%lld", buf, 0x1Cu);
  }

  v11 = [resultCopy tokenForDatabase:self];
  v13 = v12;
  v14 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v15 = HIBYTE(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = selfCopy->_id;
    *buf = 67110146;
    *v85 = v16;
    *&v85[4] = 2112;
    *&v85[6] = resultCopy;
    v86 = 2048;
    v87 = v11;
    v88 = 1024;
    v89 = v13;
    v90 = 1024;
    v91 = HIBYTE(v13);
    _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] enumerateRelatedTokensForResult:childKey: | inspect [token] result=%@ token={ .tokenID=%lld, .tokenRevision=%d, .databaseStorage={ .entityType=%d } }", buf, 0x28u);
  }

  v17 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  spid = os_signpost_id_generate(v17);

  v18 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v19 = v18;
  v65 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 138543362;
    *v85 = keyCopy;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "relatedTokens", "childKey=%{public}@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__MPLibraryObjectDatabase_enumerateRelatedTokensForResult_childKey_block___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = spid;
  v66 = _Block_copy(aBlock);
  if (!v11)
  {
    v28 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
    if (v13 < 1)
    {
      if (!v29)
      {
        goto LABEL_59;
      }

      v40 = selfCopy->_id;
      *buf = 67109378;
      *v85 = v40;
      *&v85[4] = 2112;
      *&v85[6] = resultCopy;
      v31 = "[LOD:%{sonic:fourCC}u] enumerateRelatedTokensForResult:childKey: | skipping result [no token] result=%@";
    }

    else
    {
      if (!v29)
      {
        goto LABEL_59;
      }

      v30 = selfCopy->_id;
      *buf = 67109378;
      *v85 = v30;
      *&v85[4] = 2112;
      *&v85[6] = resultCopy;
      v31 = "[LOD:%{sonic:fourCC}u] enumerateRelatedTokensForResult:childKey: | skipping result [tombstone] result=%@";
    }

    v38 = v28;
    v39 = 18;
    goto LABEL_58;
  }

  if (v15 != 4)
  {
    if (v15 == 6)
    {
      v20 = keyCopy;
      v21 = @"MPModelChildPlaylistEntries";
      v22 = @"MPModelChildPlaylistEntries";
      v23 = v20;
      v24 = @"MPModelChildPlaylistEntries";
      if (v23 != @"MPModelChildPlaylistEntries")
      {
        v63 = v23;
        v25 = [(__CFString *)v23 isEqual:@"MPModelChildPlaylistEntries"];

        if (v25)
        {
          v26 = 0x700000000000000;
          v27 = 40;
          goto LABEL_28;
        }

        v28 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_59;
        }

        goto LABEL_57;
      }

      v26 = 0x700000000000000;
      v27 = 40;
      goto LABEL_27;
    }

    v28 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_59;
    }

    v37 = selfCopy->_id;
    *buf = 67109634;
    *v85 = v37;
    *&v85[4] = 2112;
    *&v85[6] = resultCopy;
    v86 = 1024;
    LODWORD(v87) = HIBYTE(v13);
    v31 = "[LOD:%{sonic:fourCC}u] enumerateRelatedTokensForResult:childKey: | skipping result [not supported entity] result=%@ entityType=%d";
    v38 = v28;
    v39 = 24;
LABEL_58:
    _os_log_impl(&dword_1A238D000, v38, OS_LOG_TYPE_DEBUG, v31, buf, v39);
    goto LABEL_59;
  }

  v32 = keyCopy;
  v21 = @"MPModelChildAlbumSongs";
  v33 = @"MPModelChildAlbumSongs";
  v34 = v32;
  v35 = @"MPModelChildAlbumSongs";
  if (v34 == @"MPModelChildAlbumSongs")
  {
    v26 = 0x100000000000000;
    v27 = 48;
LABEL_27:

    goto LABEL_28;
  }

  v63 = v34;
  v36 = [(__CFString *)v34 isEqual:@"MPModelChildAlbumSongs"];

  if ((v36 & 1) == 0)
  {
    v28 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_59;
    }

LABEL_57:
    v59 = selfCopy->_id;
    *buf = 67109634;
    *v85 = v59;
    *&v85[4] = 2112;
    *&v85[6] = resultCopy;
    v86 = 2112;
    v87 = v63;
    v31 = "[LOD:%{sonic:fourCC}u] enumerateRelatedTokensForResult:childKey: | skipping result [not supported key] result=%@ childKey=%@";
    v38 = v28;
    v39 = 28;
    goto LABEL_58;
  }

  v26 = 0x100000000000000;
  v27 = 48;
LABEL_28:
  v64 = *(&selfCopy->super.isa + v27);
  os_unfair_lock_lock_with_options();
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __74__MPLibraryObjectDatabase_enumerateRelatedTokensForResult_childKey_block___block_invoke_57;
  v81[3] = &unk_1E7682518;
  v81[4] = selfCopy;
  v60 = _Block_copy(v81);
  v41 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v42 = v41;
  if (v65 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v42, OS_SIGNPOST_INTERVAL_BEGIN, spid, "relatedTokens:query", &unk_1A2797D62, buf, 2u);
  }

  [v64 bindInt64Value:v11 toParameterNamed:@"@pid"];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __74__MPLibraryObjectDatabase_enumerateRelatedTokensForResult_childKey_block___block_invoke_61;
  v79[3] = &unk_1E7682518;
  v62 = v64;
  v80 = v62;
  v61 = _Block_copy(v79);
  [(MSVSQLDatabase *)selfCopy->_msvDatabase resultsForStatement:v62];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  obj = v76 = 0u;
  v43 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v43)
  {
    v69 = 0;
    v44 = currentEntityRevision | v26;
    v73 = *v76;
    do
    {
      v45 = 0;
      v69 = (v69 + v43);
      do
      {
        if (*v76 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v46 = [*(*(&v75 + 1) + 8 * v45) int64ValueAtColumnIndex:0];
        v47 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v48 = selfCopy->_id;
          *buf = 67110146;
          *v85 = v48;
          *&v85[4] = 2112;
          *&v85[6] = resultCopy;
          v86 = 2048;
          v87 = v46;
          v88 = 1024;
          v89 = v44;
          v90 = 1024;
          v91 = HIBYTE(v26);
          _os_log_impl(&dword_1A238D000, v47, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] enumerateRelatedTokensForResult:childKey: | found result [] result=%@token={ .tokenID=%lld, .tokenRevision=%d, .databaseStorage={ .entityType=%d } }", buf, 0x28u);
        }

        v49 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
        v50 = os_signpost_id_generate(v49);

        v51 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
        v52 = v51;
        if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A238D000, v52, OS_SIGNPOST_INTERVAL_BEGIN, v50, "relatedTokens:callout", &unk_1A2797D62, buf, 2u);
        }

        blockCopy[2](blockCopy, v46, v44);
        v53 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
        v54 = v53;
        if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A238D000, v54, OS_SIGNPOST_INTERVAL_END, v50, "relatedTokens:callout", &unk_1A2797D62, buf, 2u);
        }

        ++v45;
      }

      while (v43 != v45);
      v43 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
    }

    while (v43);
  }

  else
  {
    v69 = 0;
  }

  v61[2](v61);
  v55 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    v56 = selfCopy->_id;
    *buf = 67109634;
    *v85 = v56;
    *&v85[4] = 2112;
    *&v85[6] = resultCopy;
    v86 = 2048;
    v87 = v69;
    _os_log_impl(&dword_1A238D000, v55, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] enumerateRelatedTokensForResult:childKey: | done [] result=%@ count=%zu", buf, 0x1Cu);
  }

  v57 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v58 = v57;
  if (v65 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v57))
  {
    *buf = 134217984;
    *v85 = v69;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v58, OS_SIGNPOST_INTERVAL_END, spid, "relatedTokens:query", "count=%zu", buf, 0xCu);
  }

  v60[2](v60);
  v28 = v62;
LABEL_59:

  v66[2](v66);
}

void __74__MPLibraryObjectDatabase_enumerateRelatedTokensForResult_childKey_block___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "relatedTokens", &unk_1A2797D62, v5, 2u);
  }
}

- (void)updateIdentifiersForResults:(id)results options:(unint64_t)options
{
  v80 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v57 = [[MPMediaLibraryView alloc] initWithLibrary:self->_library filteringOptions:4];
  v5 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    id = self->_id;
    *buf = 67109378;
    *&buf[4] = id;
    *&buf[8] = 2112;
    *&buf[10] = v57;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateIdentifiersForResults: | begin [] libraryView=%@", buf, 0x12u);
  }

  selfCopy = self;

  v7 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  spid = os_signpost_id_generate(v7);

  v8 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v9 = v8;
  v59 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v9, OS_SIGNPOST_INTERVAL_BEGIN, spid, "updateIdentifiers", &unk_1A2797D62, buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__MPLibraryObjectDatabase_updateIdentifiersForResults_options___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = spid;
  _Block_copy(aBlock);
  v71 = 0u;
  v72 = 0u;
  v73 = 1065353216;
  v68 = 0u;
  v69 = 0u;
  v70 = 1065353216;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = resultsCopy;
  v10 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
  if (!v10)
  {
LABEL_55:

    v50 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v51 = selfCopy->_id;
      *buf = 67109376;
      *&buf[4] = v51;
      *&buf[8] = 2048;
      *&buf[10] = *(&v72 + 1);
      _os_log_impl(&dword_1A238D000, v50, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateIdentifiersForResults: | setting up multi-query [] entityTypes=%zu", buf, 0x12u);
    }

    v52 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    v53 = v52;
    if (v59 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v52))
    {
      *buf = 134218240;
      *&buf[4] = *(&v69 + 1);
      *&buf[12] = 2048;
      *&buf[14] = *(&v72 + 1);
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v53, OS_SIGNPOST_EVENT, spid, "updateIdentifiers", "count=%zu entityTypes=%zu", buf, 0x16u);
    }

    v54 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    v55 = v54;
    if (v59 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v54))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v55, OS_SIGNPOST_INTERVAL_BEGIN, spid, "updateIdentifiers:querySetup", &unk_1A2797D62, buf, 2u);
    }

    _ZNSt3__115allocate_sharedB8ne200100IN6mlcore16MultiEntityQueryENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v61 = *v65;
LABEL_8:
  v11 = 0;
  while (1)
  {
    if (*v65 != v61)
    {
      objc_enumerationMutation(obj);
    }

    v12 = *(*(&v64 + 1) + 8 * v11);
    v63 = 0uLL;
    *&v63 = [v12 tokenForDatabase:selfCopy];
    *(&v63 + 1) = v13;
    v14 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = selfCopy->_id;
      *buf = 67110146;
      *&buf[4] = v15;
      *&buf[8] = 2048;
      *&buf[10] = v63;
      *&buf[18] = 1024;
      *&buf[20] = DWORD2(v63);
      *&buf[24] = 1024;
      *&buf[26] = HIBYTE(v63);
      v77 = 2112;
      v78 = v12;
      _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateIdentifiersForResults: | inspect [token] token={ .tokenID=%lld, .tokenRevision=%d, .databaseStorage={ .entityType=%d } } result=%@", buf, 0x28u);
    }

    v16 = DWORD2(v63);
    if (v63 && DWORD2(v63))
    {
      v17 = HIBYTE(HIDWORD(v63));
      v75[0] = HIBYTE(v63);
      if (HIBYTE(HIDWORD(v63)))
      {
        if (!*std::unordered_map<mlcore::ModelEntityType,[MPLibraryObjectDatabase updateIdentifiersForResults:options:]::Node>::operator[](&v71, v75))
        {
          if ((v17 - 1) > 8u)
          {
            identityKind = 0;
          }

          else
          {
            identityKind = [(__objc2_class *)*off_1E767C208[(v17 - 1)] identityKind];
          }

          v24 = std::unordered_map<mlcore::ModelEntityType,[MPLibraryObjectDatabase updateIdentifiersForResults:options:]::Node>::operator[](&v71, v75);
          objc_storeStrong(v24, identityKind);
          v25 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [identityKind modelClass]);
          v26 = std::unordered_map<mlcore::ModelEntityType,[MPLibraryObjectDatabase updateIdentifiersForResults:options:]::Node>::operator[](&v71, v75);
          v27 = v26[1];
          v26[1] = v25;

          v28 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v29 = selfCopy->_id;
            *buf = 67109634;
            *&buf[4] = v29;
            *&buf[8] = 256;
            buf[10] = v17;
            *&buf[11] = 2112;
            *&buf[13] = identityKind;
            _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateIdentifiersForResults: | setup node [found new kind] entityType=%d modelKind=%@", buf, 0x15u);
          }
        }

        v30 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = selfCopy->_id;
          *buf = 67109634;
          *&buf[4] = v31;
          *&buf[8] = 2112;
          *&buf[10] = v12;
          *&buf[18] = 2048;
          *&buf[20] = v63;
          _os_log_impl(&dword_1A238D000, v30, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateIdentifiersForResults: | adding result to query list [] result=%@ pid=%lld", buf, 0x1Cu);
        }

        v32 = std::unordered_map<mlcore::ModelEntityType,[MPLibraryObjectDatabase updateIdentifiersForResults:options:]::Node>::operator[](&v71, v75);
        std::vector<long long>::push_back[abi:ne200100]((v32 + 2), &v63);
        *buf = &v63;
        v33 = std::__hash_table<std::__hash_value_type<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>,std::__unordered_map_hasher<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>,std::equal_to,std::hash,true>,objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}<std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::piecewise_construct_t const&<>>(&v68, v63);
        v34 = v33;
        v36 = v33[4];
        v35 = v33[5];
        if (v36 >= v35)
        {
          v38 = v33[3];
          v39 = (v36 - v38) >> 3;
          if ((v39 + 1) >> 61)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v40 = v35 - v38;
          v41 = v40 >> 2;
          if (v40 >> 2 <= (v39 + 1))
          {
            v41 = v39 + 1;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF8)
          {
            v42 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v41;
          }

          if (v42)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>(v42);
          }

          v43 = (8 * v39);
          *v43 = v12;
          v37 = 8 * v39 + 8;
          v44 = v34[3];
          v45 = v34[4];
          v46 = (v43 + v44 - v45);
          if (v45 != v44)
          {
            v47 = v34[3];
            v48 = v46;
            do
            {
              v49 = *v47;
              *v47++ = 0;
              *v48++ = v49;
            }

            while (v47 != v45);
            do
            {
            }

            while (v44 != v45);
            v44 = v34[3];
          }

          v34[3] = v46;
          v34[4] = v37;
          v34[5] = 0;
          if (v44)
          {
            operator delete(v44);
          }
        }

        else
        {
          *v36 = v12;
          v37 = (v36 + 1);
        }

        v34[4] = v37;
        goto LABEL_53;
      }

      v18 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = selfCopy->_id;
        *buf = 67109378;
        *&buf[4] = v19;
        *&buf[8] = 2112;
        *&buf[10] = v12;
        _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateIdentifiersForResults: | skipping result [unknown entity type] result=%@", buf, 0x12u);
      }
    }

    else
    {
      v18 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
      v20 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
      if (v16 < 1)
      {
        if (v20)
        {
          v23 = selfCopy->_id;
          *buf = 67109378;
          *&buf[4] = v23;
          *&buf[8] = 2112;
          *&buf[10] = v12;
          _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateIdentifiersForResults: | skipping result [no token] result=%@", buf, 0x12u);
        }
      }

      else if (v20)
      {
        v21 = selfCopy->_id;
        *buf = 67109378;
        *&buf[4] = v21;
        *&buf[8] = 2112;
        *&buf[10] = v12;
        _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateIdentifiersForResults: | skipping result [tombstone] result=%@", buf, 0x12u);
      }
    }

LABEL_53:
    if (++v11 == v10)
    {
      v10 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
      if (!v10)
      {
        goto LABEL_55;
      }

      goto LABEL_8;
    }
  }
}

void __63__MPLibraryObjectDatabase_updateIdentifiersForResults_options___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "updateIdentifiers", &unk_1A2797D62, v5, 2u);
  }
}

- (uint64_t)updateIdentifiersForResults:(void *)results options:(unsigned __int8 *)options
{
  v2 = *options;
  v3 = results[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *options;
    if (*&v3 <= v2)
    {
      v5 = v2 % results[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*results + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return (v7 + 3);
}

- (uint64_t)updateIdentifiersForResults:(uint64_t)results options:
{
  v2 = *results;
  *results = 0;
  if (v2)
  {
    if (*(results + 16) == 1)
    {
      std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<mlcore::ModelEntityType,-[MPLibraryObjectDatabase updateIdentifiersForResults:options:]::Node>,void *>>>::destroy[abi:ne200100]<std::pair<mlcore::ModelEntityType const,-[MPLibraryObjectDatabase updateIdentifiersForResults:options:]::Node>,void,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return results;
}

- (void)updateIdentifiersForResults:(uint64_t)results options:
{
  v2 = *(results + 24);
  if (v2)
  {
    *(results + 32) = v2;
    operator delete(v2);
  }

  v3 = *(results + 8);
}

- (void)updateTokensForResults:(id)results
{
  v284 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  uniqueIdentifier = [(MPMediaLibrary *)self->_library uniqueIdentifier];
  currentEntityRevision = [(MPMediaLibrary *)self->_library currentEntityRevision];
  selfCopy = self;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Library");
  v5 = os_signpost_id_generate(v4);

  v6 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v7 = v6;
  spid = v5;
  v194 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "updateTokens", &unk_1A2797D62, buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__MPLibraryObjectDatabase_updateTokensForResults___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v5;
  v190 = _Block_copy(aBlock);
  v259 = 0;
  v258 = 0;
  v260 = 0;
  v256 = 0;
  v255 = 0;
  v257 = 0;
  v8 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    id = selfCopy->_id;
    *buf = 67109634;
    *&buf[4] = id;
    *&buf[8] = 2114;
    *&buf[10] = uniqueIdentifier;
    *&buf[18] = 1024;
    *&buf[20] = currentEntityRevision;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | begin [] libraryID=%{public}@ entityRevision=%d", buf, 0x18u);
  }

  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  obj = resultsCopy;
  v10 = [obj countByEnumeratingWithState:&v251 objects:v279 count:16];
  v11 = selfCopy;
  if (v10)
  {
    v205 = *v252;
    do
    {
      v209 = v10;
      for (i = 0; i != v209; ++i)
      {
        if (*v252 != v205)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v251 + 1) + 8 * i);
        v14 = [v13 tokenForDatabase:{v11, v190}];
        v16 = v15;
        v17 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = v11->_id;
          *buf = 67110146;
          *&buf[4] = v18;
          *&buf[8] = 2048;
          *&buf[10] = v14;
          *&buf[18] = 1024;
          *&buf[20] = v16;
          *&buf[24] = 1024;
          *&buf[26] = HIBYTE(v16);
          *&buf[30] = 2112;
          v281 = v13;
          _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | inspect [token] token={ .tokenID=%lld, .tokenRevision=%d, .databaseStorage={ .entityType=%d } } result=%@", buf, 0x28u);
        }

        if (v16 == currentEntityRevision)
        {
          v19 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = selfCopy->_id;
            *buf = 67109378;
            *&buf[4] = v20;
            *&buf[8] = 2112;
            *&buf[10] = v13;
            _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | skipping result [same revision] result=%@", buf, 0x12u);
          }
        }

        else
        {
          if (v14)
          {
            v21 = v16 < currentEntityRevision;
          }

          else
          {
            v21 = 0;
          }

          if (!v21 || v16 == 0)
          {
            inputIdentifiers = [v13 inputIdentifiers];
            v24 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v25 = selfCopy->_id;
              *buf = 67109634;
              *&buf[4] = v25;
              *&buf[8] = 2112;
              *&buf[10] = v13;
              *&buf[18] = 2114;
              *&buf[20] = inputIdentifiers;
              _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | inspect [idSet] result=%@ identifiers=%{public}@", buf, 0x1Cu);
            }

            v216 = inputIdentifiers;

            v26 = +[MPIdentifierSet emptyIdentifierSet];
            v27 = inputIdentifiers == v26;

            if (v27)
            {
              v29 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                v54 = selfCopy->_id;
                *buf = 67109378;
                *&buf[4] = v54;
                *&buf[8] = 2112;
                *&buf[10] = v13;
                _os_log_impl(&dword_1A238D000, v29, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | skipping result [empty idSet] result=%@", buf, 0x12u);
              }

              goto LABEL_93;
            }

            library = [inputIdentifiers library];
            v29 = library;
            if (!library)
            {
              goto LABEL_34;
            }

            databaseID = [library databaseID];
            v31 = uniqueIdentifier;
            v32 = databaseID;
            v33 = v31;
            v34 = v33;
            if (v32 == v33)
            {
            }

            else
            {
              v35 = [v32 isEqual:v33];

              if ((v35 & 1) == 0)
              {
                v36 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  v37 = selfCopy->_id;
                  *buf = 67109634;
                  *&buf[4] = v37;
                  *&buf[8] = 2112;
                  *&buf[10] = v13;
                  *&buf[18] = 2112;
                  *&buf[20] = v32;
                  _os_log_impl(&dword_1A238D000, v36, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | missed fast-path [different libraryID] result=%@ libraryID=%@", buf, 0x1Cu);
                }

LABEL_34:
                v212 = inputIdentifiers;
                v196 = v29;
                universalStore = [v212 universalStore];
                subscriptionAdamID = [universalStore subscriptionAdamID];

                universalStore2 = [v212 universalStore];
                purchasedAdamID = [universalStore2 purchasedAdamID];

                universalStore3 = [v212 universalStore];
                adamID = [universalStore3 adamID];

                if (purchasedAdamID == subscriptionAdamID)
                {
                  v44 = 0;
                }

                else
                {
                  v44 = purchasedAdamID;
                }

                if (adamID == subscriptionAdamID)
                {
                  v45 = 0;
                }

                else
                {
                  v45 = adamID;
                }

                if (v45 == v44)
                {
                  v46 = 0;
                }

                else
                {
                  v46 = v45;
                }

                modelKind = [v212 modelKind];
                identityKind = [modelKind identityKind];
                v49 = +[MPModelAlbumKind identityKind];
                v50 = identityKind == v49;

                if (v50)
                {
                  personalizedStore = [v212 personalizedStore];
                  cloudAlbumID = [personalizedStore cloudAlbumID];
                }

                else
                {
                  cloudAlbumID = 0;
                }

                universalStore4 = [v212 universalStore];
                *v269 = [universalStore4 universalCloudLibraryID];
                v201 = cloudAlbumID;
                *&v270 = v201;
                universalStore5 = [v212 universalStore];
                *(&v270 + 1) = [universalStore5 globalPlaylistID];
                opaqueID = [v212 opaqueID];
                v273 = 0;
                v274 = 0;
                v272 = 0;
                v271 = opaqueID;
                v275 = subscriptionAdamID;
                v276 = v44;
                v277 = v46;
                library2 = [v212 library];
                containedPersistentID = [library2 containedPersistentID];

                v265 = 0u;
                v266 = 0u;
                v263 = 0u;
                v264 = 0u;
                universalStore6 = [v212 universalStore];
                formerAdamIDs = [universalStore6 formerAdamIDs];

                v64 = [formerAdamIDs countByEnumeratingWithState:&v263 objects:buf count:16];
                if (v64)
                {
                  v65 = *v264;
                  do
                  {
                    for (j = 0; j != v64; ++j)
                    {
                      if (*v264 != v65)
                      {
                        objc_enumerationMutation(formerAdamIDs);
                      }

                      longLongValue = [*(*(&v263 + 1) + 8 * j) longLongValue];
                      if (longLongValue)
                      {
                        std::vector<long long>::push_back[abi:ne200100](&v272, &longLongValue);
                      }
                    }

                    v64 = [formerAdamIDs countByEnumeratingWithState:&v263 objects:buf count:16];
                  }

                  while (v64);
                }

                v67 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                {
                  v68 = selfCopy->_id;
                  SearchIDs::SearchIDs(&v242, v269);
                  dictionary = [MEMORY[0x1E695DF90] dictionary];
                  [dictionary setObject:v242 forKeyedSubscript:@"ulid"];
                  [dictionary setObject:v243 forKeyedSubscript:@"cloudAlbumID"];
                  [dictionary setObject:v244 forKeyedSubscript:@"globalID"];
                  v70 = v248;
                  if (v248)
                  {
                    v71 = [MEMORY[0x1E696AD98] numberWithLongLong:v248];
                  }

                  else
                  {
                    v71 = 0;
                  }

                  [dictionary setObject:v71 forKeyedSubscript:@"subscriptionAdamID"];
                  if (v70)
                  {
                  }

                  v72 = v249;
                  if (v249)
                  {
                    v73 = [MEMORY[0x1E696AD98] numberWithLongLong:v249];
                  }

                  else
                  {
                    v73 = 0;
                  }

                  [dictionary setObject:v73 forKeyedSubscript:@"purchasedAdamID"];
                  if (v72)
                  {
                  }

                  v74 = v250;
                  if (v250)
                  {
                    v75 = [MEMORY[0x1E696AD98] numberWithLongLong:v250];
                  }

                  else
                  {
                    v75 = 0;
                  }

                  [dictionary setObject:v75 forKeyedSubscript:@"adamID"];
                  if (v74)
                  {
                  }

                  [dictionary setObject:v245 forKeyedSubscript:@"opaqueID"];
                  if (v247 != __p)
                  {
                    v76 = [MEMORY[0x1E695DF70] arrayWithCapacity:(v247 - __p) >> 3];
                    v77 = __p;
                    v78 = v247;
                    while (v77 != v78)
                    {
                      v79 = [MEMORY[0x1E696AD98] numberWithLongLong:*v77];
                      [v76 addObject:v79];

                      ++v77;
                    }

                    [dictionary setObject:v76 forKeyedSubscript:@"formerIDs"];
                  }

                  v80 = dictionary;

                  msv_compactDescription = [v80 msv_compactDescription];
                  *buf = 67109634;
                  *&buf[4] = v68;
                  *&buf[8] = 2112;
                  *&buf[10] = v13;
                  *&buf[18] = 2112;
                  *&buf[20] = msv_compactDescription;
                  _os_log_impl(&dword_1A238D000, v67, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | moving result to slow-path [] result=%@ searchIDs=[%@]", buf, 0x1Cu);

                  if (__p)
                  {
                    v247 = __p;
                    operator delete(__p);
                  }
                }

                *buf = v13;
                SearchIDs::SearchIDs(&buf[8], v269);
                std::vector<-[MPLibraryObjectDatabase updateTokensForResults:]::SlowPathNode>::push_back[abi:ne200100](&v255, buf);
                if (v282)
                {
                  v283 = v282;
                  operator delete(v282);
                }

                if (v272)
                {
                  v273 = v272;
                  operator delete(v272);
                }

                v29 = v196;
LABEL_93:

                goto LABEL_94;
              }
            }

            persistentID = [v29 persistentID];
            v56 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              v57 = selfCopy->_id;
              *buf = 67109634;
              *&buf[4] = v57;
              *&buf[8] = 2112;
              *&buf[10] = v13;
              *&buf[18] = 2048;
              *&buf[20] = persistentID;
              _os_log_impl(&dword_1A238D000, v56, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | moving result to fast-path [same libraryID] result=%@ pid=%lld", buf, 0x1Cu);
            }

            *buf = v13;
            *&buf[8] = persistentID;
            std::vector<-[MPLibraryObjectDatabase updateTokensForResults:]::FastPathNode>::push_back[abi:ne200100](&v258, buf);

            goto LABEL_93;
          }

          v51 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            v53 = selfCopy->_id;
            *buf = 67109634;
            *&buf[4] = v53;
            *&buf[8] = 2112;
            *&buf[10] = v13;
            *&buf[18] = 2048;
            *&buf[20] = v14;
            _os_log_impl(&dword_1A238D000, v51, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | moving result to fast-path [earlier revision] result=%@ pid=%lld", buf, 0x1Cu);
          }

          *buf = v13;
          *&buf[8] = v14;
          std::vector<-[MPLibraryObjectDatabase updateTokensForResults:]::FastPathNode>::push_back[abi:ne200100](&v258, buf);
        }

LABEL_94:
        v11 = selfCopy;
      }

      v10 = [obj countByEnumeratingWithState:&v251 objects:v279 count:16];
    }

    while (v10);
  }

  v82 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v83 = v82;
  if (v194 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v82))
  {
    *buf = 134218240;
    *&buf[4] = (v259 - v258) >> 4;
    *&buf[12] = 2048;
    *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v256 - v255) >> 5);
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v83, OS_SIGNPOST_EVENT, spid, "updateTokens", "fastPath=%zu slowPath=%zu", buf, 0x16u);
  }

  v84 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
  {
    v85 = selfCopy->_id;
    *buf = 67109376;
    *&buf[4] = v85;
    *&buf[8] = 2048;
    *&buf[10] = (v259 - v258) >> 4;
    _os_log_impl(&dword_1A238D000, v84, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | begin fast-path [] count=%lld", buf, 0x12u);
  }

  v86 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v87 = v86;
  if (v194 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v86))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v87, OS_SIGNPOST_INTERVAL_BEGIN, spid, "updateTokens:fast", &unk_1A2797D62, buf, 2u);
  }

  v217 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, (v259 - v258) >> 4}];
  os_unfair_lock_lock_with_options();
  v241[0] = MEMORY[0x1E69E9820];
  v241[1] = 3221225472;
  v241[2] = __50__MPLibraryObjectDatabase_updateTokensForResults___block_invoke_38;
  v241[3] = &unk_1E7682518;
  v241[4] = selfCopy;
  v202 = _Block_copy(v241);
  v270 = 0uLL;
  *v269 = 0;
  v88 = v259 - v258;
  if (v259 != v258)
  {
    if (!((v88 >> 4) >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v88 >> 4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  [MSVSQLStatement _bindInt64Array:"_bindInt64Array:length:toParameterNamed:" length:v190 toParameterNamed:?];
  v240[0] = MEMORY[0x1E69E9820];
  v240[1] = 3221225472;
  v240[2] = __50__MPLibraryObjectDatabase_updateTokensForResults___block_invoke_2;
  v240[3] = &unk_1E7682518;
  v240[4] = selfCopy;
  v206 = _Block_copy(v240);
  [(MSVSQLDatabase *)selfCopy->_msvDatabase resultsForStatement:selfCopy->_fastTokenLookup];
  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v213 = v237 = 0u;
  v89 = [v213 countByEnumeratingWithState:&v236 objects:v268 count:16];
  if (v89)
  {
    v90 = *v237;
    do
    {
      for (k = 0; k != v89; ++k)
      {
        if (*v237 != v90)
        {
          objc_enumerationMutation(v213);
        }

        v92 = *(*(&v236 + 1) + 8 * k);
        v93 = [v92 int64ValueAtColumnIndex:0];
        v94 = [v92 int64ValueAtColumnIndex:1];
        v95 = v94;
        if (v94 >= (v259 - v258) >> 4)
        {
          std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
        }

        v96 = &v258[2 * v94];
        v97 = *v96;
        v98 = v96[1];
        v99 = v97;
        v100 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
        {
          v101 = selfCopy->_id;
          *buf = 67110146;
          *&buf[4] = v101;
          *&buf[8] = 2048;
          *&buf[10] = v98;
          *&buf[18] = 1024;
          *&buf[20] = currentEntityRevision;
          *&buf[24] = 1024;
          *&buf[26] = v93;
          *&buf[30] = 2112;
          v281 = v99;
          _os_log_impl(&dword_1A238D000, v100, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | found [fast-path] token={ .tokenID=%lld, .tokenRevision=%d, .databaseStorage={ .entityType=%d } } result=%@", buf, 0x28u);
        }

        [v99 setToken:v98 forDatabase:{currentEntityRevision | (v93 << 56), selfCopy}];
        [v217 removeIndex:v95];
      }

      v89 = [v213 countByEnumeratingWithState:&v236 objects:v268 count:16];
    }

    while (v89);
  }

  v206[2](v206);
  if (*v269)
  {
    operator delete(*v269);
  }

  v202[2](v202);

  v102 = os_log_create("com.apple.amp.mediaplayer", "Library");
  v103 = v102;
  if (v194 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v102))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v103, OS_SIGNPOST_EVENT, spid, "updateTokens:fast", "query done", buf, 2u);
  }

  if ([v217 count])
  {
    v104 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    v105 = v104;
    if (v194 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
    {
      v106 = [v217 count];
      *buf = 134217984;
      *&buf[4] = v106;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v105, OS_SIGNPOST_INTERVAL_BEGIN, spid, "updateTokens:fast:downgrade", "count=%zu", buf, 0xCu);
    }

    v107 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
    {
      v108 = selfCopy->_id;
      v109 = [v217 count];
      *buf = 67109376;
      *&buf[4] = v108;
      *&buf[8] = 2048;
      *&buf[10] = v109;
      _os_log_impl(&dword_1A238D000, v107, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | moving results to slow-path [] count=%lld", buf, 0x12u);
    }

    for (m = [v217 firstIndex]; m != 0x7FFFFFFFFFFFFFFFLL; m = objc_msgSend(v217, "indexGreaterThanIndex:", v203))
    {
      if (m >= (v259 - v258) >> 4)
      {
        std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
      }

      v203 = m;
      v210 = v258[2 * m];
      inputIdentifiers2 = [v210 inputIdentifiers];
      universalStore7 = [inputIdentifiers2 universalStore];
      subscriptionAdamID2 = [universalStore7 subscriptionAdamID];

      universalStore8 = [inputIdentifiers2 universalStore];
      purchasedAdamID2 = [universalStore8 purchasedAdamID];

      universalStore9 = [inputIdentifiers2 universalStore];
      adamID2 = [universalStore9 adamID];

      if (purchasedAdamID2 == subscriptionAdamID2)
      {
        v117 = 0;
      }

      else
      {
        v117 = purchasedAdamID2;
      }

      if (adamID2 == subscriptionAdamID2)
      {
        v118 = 0;
      }

      else
      {
        v118 = adamID2;
      }

      if (v118 == v117)
      {
        v119 = 0;
      }

      else
      {
        v119 = v118;
      }

      modelKind2 = [inputIdentifiers2 modelKind];
      identityKind2 = [modelKind2 identityKind];
      v122 = +[MPModelAlbumKind identityKind];
      v123 = identityKind2 == v122;

      if (v123)
      {
        personalizedStore2 = [inputIdentifiers2 personalizedStore];
        cloudAlbumID2 = [personalizedStore2 cloudAlbumID];
      }

      else
      {
        cloudAlbumID2 = 0;
      }

      universalStore10 = [inputIdentifiers2 universalStore];
      *v269 = [universalStore10 universalCloudLibraryID];
      v126 = cloudAlbumID2;
      *&v270 = v126;
      universalStore11 = [inputIdentifiers2 universalStore];
      *(&v270 + 1) = [universalStore11 globalPlaylistID];
      opaqueID2 = [inputIdentifiers2 opaqueID];
      v273 = 0;
      v274 = 0;
      v272 = 0;
      v271 = opaqueID2;
      v275 = subscriptionAdamID2;
      v276 = v117;
      v277 = v119;
      library3 = [inputIdentifiers2 library];
      containedPersistentID = [library3 containedPersistentID];

      v265 = 0u;
      v266 = 0u;
      v263 = 0u;
      v264 = 0u;
      universalStore12 = [inputIdentifiers2 universalStore];
      formerAdamIDs2 = [universalStore12 formerAdamIDs];

      v132 = [formerAdamIDs2 countByEnumeratingWithState:&v263 objects:buf count:16];
      if (v132)
      {
        v133 = *v264;
        do
        {
          for (n = 0; n != v132; ++n)
          {
            if (*v264 != v133)
            {
              objc_enumerationMutation(formerAdamIDs2);
            }

            longLongValue = [*(*(&v263 + 1) + 8 * n) longLongValue];
            if (longLongValue)
            {
              std::vector<long long>::push_back[abi:ne200100](&v272, &longLongValue);
            }
          }

          v132 = [formerAdamIDs2 countByEnumeratingWithState:&v263 objects:buf count:16];
        }

        while (v132);
      }

      v135 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
      {
        v136 = selfCopy->_id;
        SearchIDs::SearchIDs(&v227, v269);
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [dictionary2 setObject:v227 forKeyedSubscript:@"ulid"];
        [dictionary2 setObject:v228 forKeyedSubscript:@"cloudAlbumID"];
        [dictionary2 setObject:v229 forKeyedSubscript:@"globalID"];
        v138 = v233;
        if (v233)
        {
          v139 = [MEMORY[0x1E696AD98] numberWithLongLong:v233];
        }

        else
        {
          v139 = 0;
        }

        [dictionary2 setObject:v139 forKeyedSubscript:@"subscriptionAdamID"];
        if (v138)
        {
        }

        v140 = v234;
        if (v234)
        {
          v141 = [MEMORY[0x1E696AD98] numberWithLongLong:v234];
        }

        else
        {
          v141 = 0;
        }

        [dictionary2 setObject:v141 forKeyedSubscript:@"purchasedAdamID"];
        if (v140)
        {
        }

        v142 = v235;
        if (v235)
        {
          v143 = [MEMORY[0x1E696AD98] numberWithLongLong:v235];
        }

        else
        {
          v143 = 0;
        }

        [dictionary2 setObject:v143 forKeyedSubscript:@"adamID"];
        if (v142)
        {
        }

        [dictionary2 setObject:v230 forKeyedSubscript:@"opaqueID"];
        if (v232 != v231)
        {
          v144 = [MEMORY[0x1E695DF70] arrayWithCapacity:(v232 - v231) >> 3];
          v145 = v231;
          v146 = v232;
          while (v145 != v146)
          {
            v147 = [MEMORY[0x1E696AD98] numberWithLongLong:*v145];
            [v144 addObject:v147];

            ++v145;
          }

          [dictionary2 setObject:v144 forKeyedSubscript:@"formerIDs"];
        }

        v148 = dictionary2;

        msv_compactDescription2 = [v148 msv_compactDescription];
        *buf = 67109634;
        *&buf[4] = v136;
        *&buf[8] = 2112;
        *&buf[10] = v210;
        *&buf[18] = 2112;
        *&buf[20] = msv_compactDescription2;
        _os_log_impl(&dword_1A238D000, v135, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | moving result to slow-path [missed fast-path] result=%@ searchIDs=[%@]", buf, 0x1Cu);

        if (v231)
        {
          v232 = v231;
          operator delete(v231);
        }
      }

      v211 = v210;
      *buf = v211;
      SearchIDs::SearchIDs(&buf[8], v269);
      std::vector<-[MPLibraryObjectDatabase updateTokensForResults:]::SlowPathNode>::push_back[abi:ne200100](&v255, buf);
      if (v282)
      {
        v283 = v282;
        operator delete(v282);
      }

      if (v272)
      {
        v273 = v272;
        operator delete(v272);
      }
    }

    v150 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    v151 = v150;
    if (v194 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v150))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v151, OS_SIGNPOST_INTERVAL_END, spid, "updateTokens:fast:downgrade", &unk_1A2797D62, buf, 2u);
    }
  }

  v152 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v153 = v152;
  if (v194 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v152))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v153, OS_SIGNPOST_INTERVAL_END, spid, "updateTokens:fast", &unk_1A2797D62, buf, 2u);
  }

  v154 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
  {
    v155 = selfCopy->_id;
    *buf = 67109376;
    *&buf[4] = v155;
    *&buf[8] = 2048;
    *&buf[10] = 0xAAAAAAAAAAAAAAABLL * ((v256 - v255) >> 5);
    _os_log_impl(&dword_1A238D000, v154, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | begin slow-path [] count=%lld", buf, 0x12u);
  }

  v156 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v157 = v156;
  if (v194 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v156))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v157, OS_SIGNPOST_INTERVAL_BEGIN, spid, "updateTokens:slow", &unk_1A2797D62, buf, 2u);
  }

  v263 = 0uLL;
  *&v264 = 0;
  if (v256 != v255)
  {
    v158 = 0x5555555555555556 * ((v256 - v255) >> 5);
    if (v158 < 0xF0F0F0F0F0F0F10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_MSVSQLVariant>>(v158);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v218 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, 0}];
  os_unfair_lock_lock_with_options();
  v226[0] = MEMORY[0x1E69E9820];
  v226[1] = 3221225472;
  v226[2] = __50__MPLibraryObjectDatabase_updateTokensForResults___block_invoke_42;
  v226[3] = &unk_1E7682518;
  v226[4] = selfCopy;
  v204 = _Block_copy(v226);
  v198 = v263;
  [MSVSQLStatement _bindVariantArray:"_bindVariantArray:length:toParameterNamed:" length:? toParameterNamed:?];
  v225[0] = MEMORY[0x1E69E9820];
  v225[1] = 3221225472;
  v225[2] = __50__MPLibraryObjectDatabase_updateTokensForResults___block_invoke_2_46;
  v225[3] = &unk_1E7682518;
  v225[4] = selfCopy;
  v208 = _Block_copy(v225);
  [(MSVSQLDatabase *)selfCopy->_msvDatabase resultsForStatement:selfCopy->_slowTokenLookup];
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v215 = v222 = 0u;
  v159 = [v215 countByEnumeratingWithState:&v221 objects:v267 count:16];
  if (v159)
  {
    v160 = *v222;
    do
    {
      for (ii = 0; ii != v159; ++ii)
      {
        if (*v222 != v160)
        {
          objc_enumerationMutation(v215);
        }

        v162 = *(*(&v221 + 1) + 8 * ii);
        v163 = [v162 int64ValueAtColumnIndex:0];
        v164 = [v162 int64ValueAtColumnIndex:1];
        v165 = [v162 int64ValueAtColumnIndex:2];
        v166 = v165;
        if (0xAAAAAAAAAAAAAAABLL * ((v256 - v255) >> 5) <= v165)
        {
          std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
        }

        v167 = &v255[96 * v165];
        *buf = *v167;
        SearchIDs::SearchIDs(&buf[8], (v167 + 1));
        v168 = *buf;
        v169 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
        if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
        {
          v170 = selfCopy->_id;
          *v269 = 67110146;
          *&v269[4] = v170;
          LOWORD(v270) = 2048;
          *(&v270 + 2) = v164;
          WORD5(v270) = 1024;
          HIDWORD(v270) = currentEntityRevision;
          LOWORD(v271) = 1024;
          *(&v271 + 2) = v163;
          HIWORD(v271) = 2112;
          v272 = v168;
          _os_log_impl(&dword_1A238D000, v169, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | found [slow-path] token={ .tokenID=%lld, .tokenRevision=%d, .databaseStorage={ .entityType=%d } } result=%@", v269, 0x28u);
        }

        [v168 setToken:v164 forDatabase:{currentEntityRevision | (v163 << 56), selfCopy}];
        [v218 removeIndex:v166];

        if (v282)
        {
          v283 = v282;
          operator delete(v282);
        }
      }

      v159 = [v215 countByEnumeratingWithState:&v221 objects:v267 count:16];
    }

    while (v159);
  }

  v208[2](v208);
  v204[2](v204);

  v171 = os_log_create("com.apple.amp.mediaplayer", "Library");
  v172 = v171;
  if (v194 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v171))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v172, OS_SIGNPOST_EVENT, spid, "updateTokens:slow", "query done", buf, 2u);
  }

  if ([v218 count])
  {
    v173 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    v174 = v173;
    if (v194 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v173))
    {
      v175 = [v218 count];
      *buf = 134217984;
      *&buf[4] = v175;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v174, OS_SIGNPOST_INTERVAL_BEGIN, spid, "updateTokens:slow:clear", "count=%zu", buf, 0xCu);
    }

    v176 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    if (os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
    {
      v177 = selfCopy->_id;
      v178 = [v218 count];
      *buf = 67109632;
      *&buf[4] = v177;
      *&buf[8] = 2048;
      *&buf[10] = v178;
      *&buf[18] = 1024;
      *&buf[20] = currentEntityRevision;
      _os_log_impl(&dword_1A238D000, v176, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | tombstone result tokens [not found] count=%lld entityRevision=%d", buf, 0x18u);
    }

    for (jj = [v218 firstIndex]; jj != 0x7FFFFFFFFFFFFFFFLL; jj = objc_msgSend(v218, "indexGreaterThanIndex:", jj))
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v256 - v255) >> 5) <= jj)
      {
        std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
      }

      v180 = &v255[96 * jj];
      *buf = *v180;
      SearchIDs::SearchIDs(&buf[8], (v180 + 1));
      v181 = *buf;
      v182 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
      if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
      {
        v183 = selfCopy->_id;
        *v269 = 67109634;
        *&v269[4] = v183;
        LOWORD(v270) = 2112;
        *(&v270 + 2) = v181;
        WORD5(v270) = 1024;
        HIDWORD(v270) = currentEntityRevision;
        _os_log_impl(&dword_1A238D000, v182, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | tombstone result token [not found] result=%@ entityRevision=%d", v269, 0x18u);
      }

      [v181 setToken:0 forDatabase:{currentEntityRevision, selfCopy}];
      [v181 setIdentifiers:0 forDatabase:selfCopy];

      if (v282)
      {
        v283 = v282;
        operator delete(v282);
      }
    }

    v184 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    v185 = v184;
    if (v194 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v184))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v185, OS_SIGNPOST_INTERVAL_END, spid, "updateTokens:slow:clear", &unk_1A2797D62, buf, 2u);
    }
  }

  v186 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v187 = v186;
  if (v194 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v186))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v187, OS_SIGNPOST_INTERVAL_END, spid, "updateTokens:slow", &unk_1A2797D62, buf, 2u);
  }

  if (v198)
  {
    operator delete(v198);
  }

  v188 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
  {
    v189 = selfCopy->_id;
    *buf = 67109376;
    *&buf[4] = v189;
    *&buf[8] = 1024;
    *&buf[10] = currentEntityRevision;
    _os_log_impl(&dword_1A238D000, v188, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] updateTokensForResults: | done [] entityRevision=%d", buf, 0xEu);
  }

  std::vector<-[MPLibraryObjectDatabase updateTokensForResults:]::SlowPathNode>::~vector[abi:ne200100](&v255);
  std::vector<-[MPLibraryObjectDatabase updateTokensForResults:]::FastPathNode>::~vector[abi:ne200100](&v258);
  v191[2](v191);
}

void __50__MPLibraryObjectDatabase_updateTokensForResults___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "updateTokens", &unk_1A2797D62, v5, 2u);
  }
}

- (void)updateTokensForResults:(uint64_t)results
{
  v2 = *(results + 40);
  if (v2)
  {
    *(results + 48) = v2;
    operator delete(v2);
  }

  v3 = *results;
}

- (void)updateTokensForResults:(uint64_t *)results
{
  v3 = results[1];
  v4 = results[2];
  if (v3 >= v4)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *results) >> 5);
    v11 = v10 + 1;
    if (v10 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *results) >> 5);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x155555555555555)
    {
      v13 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = *a2;
    v15 = a2[1];
    v16 = 96 * v10;
    *a2 = 0u;
    a2[1] = 0u;
    *v16 = v14;
    *(v16 + 16) = v15;
    v17 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(v16 + 32) = v17;
    *(v16 + 40) = *(a2 + 40);
    *(v16 + 56) = *(a2 + 7);
    *(a2 + 40) = 0u;
    *(a2 + 7) = 0;
    v18 = a2[5];
    *(v16 + 64) = a2[4];
    *(v16 + 80) = v18;
    v19 = *results;
    v20 = results[1];
    v21 = v16 + *results - v20;
    if (*results != v20)
    {
      v22 = *results;
      v23 = v16 + *results - v20;
      do
      {
        v24 = *v22;
        *v22 = 0uLL;
        *v23 = v24;
        v25 = *(v22 + 1);
        *(v22 + 1) = 0uLL;
        *(v23 + 16) = v25;
        v26 = *(v22 + 4);
        *(v22 + 4) = 0;
        *(v23 + 32) = v26;
        *(v23 + 40) = 0;
        *(v23 + 48) = 0uLL;
        *(v23 + 40) = *(v22 + 40);
        *(v23 + 56) = *(v22 + 7);
        *(v22 + 7) = 0;
        *(v22 + 40) = 0uLL;
        v27 = *(v22 + 5);
        *(v23 + 64) = *(v22 + 4);
        *(v23 + 80) = v27;
        v22 += 96;
        v23 += 96;
      }

      while (v22 != v20);
      do
      {
        std::allocator_traits<std::allocator<-[MPLibraryObjectDatabase updateTokensForResults:]::SlowPathNode>>::destroy[abi:ne200100]<-[MPLibraryObjectDatabase updateTokensForResults:]::SlowPathNode,void,0>(v19);
        v19 += 96;
      }

      while (v19 != v20);
      v19 = *results;
    }

    v9 = v16 + 96;
    *results = v21;
    results[1] = v9;
    results[2] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0u;
    *v3 = v5;
    v6 = a2[1];
    a2[1] = 0u;
    *(v3 + 16) = v6;
    v7 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(v3 + 32) = v7;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0u;
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 56) = *(a2 + 7);
    *(a2 + 7) = 0;
    *(a2 + 40) = 0u;
    v8 = a2[5];
    *(v3 + 64) = a2[4];
    *(v3 + 80) = v8;
    v9 = v3 + 96;
  }

  results[1] = v9;
}

- (uint64_t)updateTokensForResults:(uint64_t)results
{
  v2 = *(results + 40);
  if (v2)
  {
    *(results + 48) = v2;
    operator delete(v2);
  }

  return results;
}

- (void)updateTokensForResults:(void *)results
{
  v2 = *results;
  if (*results)
  {
    v3 = results[1];
    v4 = *results;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 2);
        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *results;
    }

    results[1] = v2;
    operator delete(v4);
  }

  return results;
}

- (id)identifiersMatchingIdentifierSet:(id)set propertySet:(id)propertySet options:(unint64_t)options error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  setCopy = set;
  v10 = [_MPLibraryObjectDatabaseProgressiveResult alloc];
  v11 = setCopy;
  if (v10)
  {
    v21.receiver = v10;
    v21.super_class = _MPLibraryObjectDatabaseProgressiveResult;
    v12 = [(MPLibraryObjectDatabase *)&v21 init];
    v10 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_fastTokenLookup, set);
    }
  }

  v22[0] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

  objectEnumerator = [v13 objectEnumerator];
  [(MPLibraryObjectDatabase *)self updateTokensForResults:objectEnumerator];

  objectEnumerator2 = [v13 objectEnumerator];
  [(MPLibraryObjectDatabase *)self updateIdentifiersForResults:objectEnumerator2 options:options];

  firstObject = [v13 firstObject];
  v17 = firstObject;
  if (firstObject)
  {
    v18 = *(firstObject + 32);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

- (void)dealloc
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__MPLibraryObjectDatabase_dealloc__block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  [(MSVSQLStatement *)self->_fastTokenLookup invalidate];
  [(MSVSQLStatement *)self->_slowTokenLookup invalidate];
  [(MSVSQLStatement *)self->_containerItemsLookup invalidate];
  [(MSVSQLStatement *)self->_albumSongsLookup invalidate];
  [(MSVSQLStatement *)self->_entityRevisionEnumeration invalidate];
  v3[2](v3);

  v4.receiver = self;
  v4.super_class = MPLibraryObjectDatabase;
  [(MPLibraryObjectDatabase *)&v4 dealloc];
}

- (MPLibraryObjectDatabase)initWithLibrary:(id)library
{
  libraryCopy = library;
  v41.receiver = self;
  v41.super_class = MPLibraryObjectDatabase;
  v7 = [(MPLibraryObjectDatabase *)&v41 init];
  if (v7)
  {
    v7->_id = MSVNanoIDCreateFourChar();
    objc_storeStrong(&v7->_library, library);
    msvDatabase = [libraryCopy msvDatabase];
    msvDatabase = v7->_msvDatabase;
    v7->_msvDatabase = msvDatabase;

    [(MSVSQLDatabase *)v7->_msvDatabase _installArraySupport];
    v7->_lock._os_unfair_lock_opaque = 0;
    v10 = v7->_msvDatabase;
    v40 = 0;
    v11 = [(MSVSQLDatabase *)v10 statementWithString:@"WITH input AS (SELECT value error:idx FROM msv_carray(@pids)) SELECT     CASE         WHEN container_item.container_item_pid IS NOT NULL THEN 7         WHEN entity_revision.entity_pid IS NOT NULL THEN             CASE entity_revision.class                 WHEN 0 THEN                     CASE media_type                         WHEN 0x0008 THEN 1                         WHEN 0x0408 THEN 1                         WHEN 0x0200 THEN 2                         WHEN 0x0800 THEN 3                         ELSE 0                     END                 WHEN 1 THEN 6                 WHEN 2 THEN 0                 WHEN 3 THEN 8                 WHEN 4 THEN 4                 WHEN 5 THEN 9                 WHEN 7 THEN 5                 WHEN 9 THEN 7                 ELSE 0             END         ELSE 0     END AS class, input.idx FROM input LEFT JOIN entity_revision ON     (entity_revision.entity_pid = input.value AND entity_revision.deleted = 0) LEFT JOIN item ON     entity_revision.entity_pid = item.item_pid LEFT JOIN container_item ON     container_item.container_item_pid = input.value WHERE     entity_revision.entity_pid IS NOT NULL OR container_item.container_item_pid IS NOT NULL", &v40];
    v12 = v40;
    fastTokenLookup = v7->_fastTokenLookup;
    v7->_fastTokenLookup = v11;

    if (v12)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"MPLibraryObjectDatabase.mm" lineNumber:215 description:{@"Failed to make SQL statement for _fastTokenLookup: %@ %@", @"WITH input AS (SELECT value, idx FROM msv_carray(@pids)) SELECT     CASE         WHEN container_item.container_item_pid IS NOT NULL THEN 7         WHEN entity_revision.entity_pid IS NOT NULL THEN             CASE entity_revision.class                 WHEN 0 THEN                     CASE media_type                         WHEN 0x0008 THEN 1                         WHEN 0x0408 THEN 1                         WHEN 0x0200 THEN 2                         WHEN 0x0800 THEN 3                         ELSE 0                     END                 WHEN 1 THEN 6                 WHEN 2 THEN 0                 WHEN 3 THEN 8                 WHEN 4 THEN 4                 WHEN 5 THEN 9                 WHEN 7 THEN 5                 WHEN 9 THEN 7                 ELSE 0             END         ELSE 0     END AS class, input.idx FROM input LEFT JOIN entity_revision ON     (entity_revision.entity_pid = input.value AND entity_revision.deleted = 0) LEFT JOIN item ON     entity_revision.entity_pid = item.item_pid LEFT JOIN container_item ON     container_item.container_item_pid = input.value WHERE     entity_revision.entity_pid IS NOT NULL OR container_item.container_item_pid IS NOT NULL", v12}];
    }

    v14 = v7->_msvDatabase;
    v39 = v12;
    v15 = [(MSVSQLDatabase *)v14 statementWithString:@"WITH input AS (SELECT value error:tag FROM msv_carray(@ids)) SELECT     CASE         WHEN item.item_pid IS NOT NULL THEN             CASE media_type                 WHEN 0x0008 THEN 1                 WHEN 0x0408 THEN 1                 WHEN 0x0200 THEN 2                 WHEN 0x0800 THEN 3                 ELSE 1             END         WHEN album.album_pid IS NOT NULL THEN 4         WHEN container.container_pid IS NOT NULL THEN 6         WHEN album_artist.album_artist_pid IS NOT NULL THEN 5     END AS class, COALESCE(item.item_pid, album.album_pid, container.container_pid, album_artist.album_artist_pid) AS pid, input.tag FROM input LEFT JOIN item_store ON     (item_store.cloud_universal_library_id = input.value OR     item_store.subscription_store_item_id IS NULLIF(CAST(input.value as INT), 0) OR     item_store.store_item_id IS NULLIF(CAST(input.value as INT), 0)) LEFT JOIN item USING (item_pid) LEFT JOIN album ON     (album.cloud_library_id = input.value OR      album.store_id IS NULLIF(CAST(input.value as INT), 0)) LEFT JOIN container ON     (container.cloud_universal_library_id = input.value OR      container.cloud_global_id = input.value) LEFT JOIN album_artist ON     (album_artist.cloud_universal_library_id = input.value OR      album_artist.store_id IS NULLIF(CAST(input.value as INT), 0)) WHERE     (item.item_pid IS NOT NULL AND (item_store.cloud_status > 0 OR item.base_location_id > 0)) OR      album.album_pid IS NOT NULL OR      container.container_pid IS NOT NULL OR      album_artist.album_artist_pid IS NOT NULL", &v39];
    v16 = v39;

    slowTokenLookup = v7->_slowTokenLookup;
    v7->_slowTokenLookup = v15;

    if (v16)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v7 file:@"MPLibraryObjectDatabase.mm" lineNumber:256 description:{@"Failed to make SQL statement for _slowTokenLookup: %@ %@", @"WITH input AS (SELECT value, tag FROM msv_carray(@ids)) SELECT     CASE         WHEN item.item_pid IS NOT NULL THEN             CASE media_type                 WHEN 0x0008 THEN 1                 WHEN 0x0408 THEN 1                 WHEN 0x0200 THEN 2                 WHEN 0x0800 THEN 3                 ELSE 1             END         WHEN album.album_pid IS NOT NULL THEN 4         WHEN container.container_pid IS NOT NULL THEN 6         WHEN album_artist.album_artist_pid IS NOT NULL THEN 5     END AS class, COALESCE(item.item_pid, album.album_pid, container.container_pid, album_artist.album_artist_pid) AS pid, input.tag FROM input LEFT JOIN item_store ON     (item_store.cloud_universal_library_id = input.value OR     item_store.subscription_store_item_id IS NULLIF(CAST(input.value as INT), 0) OR     item_store.store_item_id IS NULLIF(CAST(input.value as INT), 0)) LEFT JOIN item USING (item_pid) LEFT JOIN album ON     (album.cloud_library_id = input.value OR      album.store_id IS NULLIF(CAST(input.value as INT), 0)) LEFT JOIN container ON     (container.cloud_universal_library_id = input.value OR      container.cloud_global_id = input.value) LEFT JOIN album_artist ON     (album_artist.cloud_universal_library_id = input.value OR      album_artist.store_id IS NULLIF(CAST(input.value as INT), 0)) WHERE     (item.item_pid IS NOT NULL AND (item_store.cloud_status > 0 OR item.base_location_id > 0)) OR      album.album_pid IS NOT NULL OR      container.container_pid IS NOT NULL OR      album_artist.album_artist_pid IS NOT NULL", v16}];
    }

    v18 = v7->_msvDatabase;
    v38 = v16;
    v19 = [(MSVSQLDatabase *)v18 statementWithString:@"SELECT container_item_pid FROM container_item WHERE container_pid = @pid ORDER BY position" error:&v38];
    v20 = v38;

    containerItemsLookup = v7->_containerItemsLookup;
    v7->_containerItemsLookup = v19;

    if (v20)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v7 file:@"MPLibraryObjectDatabase.mm" lineNumber:261 description:{@"Failed to make SQL statement for _containerItemsLookup: %@ %@", @"SELECT container_item_pid FROM container_item WHERE container_pid = @pid ORDER BY position", v20}];
    }

    v22 = v7->_msvDatabase;
    v37 = v20;
    v23 = [(MSVSQLDatabase *)v22 statementWithString:@" SELECT item_pid FROM item WHERE album_pid = @pid and in_my_library = 1 ORDER BY (disc_number = 0) error:disc_number, (track_number = 0), track_number, title_order", &v37];
    v24 = v37;

    albumSongsLookup = v7->_albumSongsLookup;
    v7->_albumSongsLookup = v23;

    if (v24)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:v7 file:@"MPLibraryObjectDatabase.mm" lineNumber:267 description:{@"Failed to make SQL statement for _albumSongsLookup: %@ %@", @" SELECT item_pid FROM item WHERE album_pid = @pid and in_my_library = 1 ORDER BY (disc_number = 0), disc_number, (track_number = 0), track_number, title_order", v24}];
    }

    v26 = v7->_msvDatabase;
    v36 = v24;
    v27 = [(MSVSQLDatabase *)v26 statementWithString:@" SELECT revision error:entity_pid, deleted, class, revision_type FROM entity_revision WHERE revision > @revision ORDER BY revision", &v36];
    v28 = v36;

    entityRevisionEnumeration = v7->_entityRevisionEnumeration;
    v7->_entityRevisionEnumeration = v27;

    if (v28)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:v7 file:@"MPLibraryObjectDatabase.mm" lineNumber:274 description:{@"Failed to make SQL statement for _entityRevisionEnumeration: %@ %@", @" SELECT revision, entity_pid, deleted, class, revision_type FROM entity_revision WHERE revision > @revision ORDER BY revision", v28}];
    }
  }

  return v7;
}

@end