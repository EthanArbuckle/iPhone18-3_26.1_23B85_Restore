@interface LSRecord
+ (void)initialize;
+ (void)resolveAllPropertiesOfRecords:(const void *)records count:(unint64_t)count andDetachOnQueue:(id)queue;
+ (void)resolveAllPropertiesOfRecords:(id)records andDetachOnQueue:(id)queue;
- (BOOL)beginContentAccess;
- (BOOL)isContentDiscarded;
- (LSRecord)initWithCoder:(id)coder;
- (LSRecord)initWithPersistentIdentifier:(id)identifier;
- (NSURL)visualizerURL;
- (NSUUID)databaseUUID;
- (const)_resolvingMethods;
- (id)_attributedDescription;
- (id)_initInvalid;
- (id)_initWithContext:(LSContext *)context persistentIdentifier:(id)identifier;
- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length;
- (id)_initWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD;
- (id)_persistentIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes;
- (id)_propertyClassesForCoding;
- (id)_replacementObjectForResolvedPropertyValue:(id)value forGetter:(SEL)getter encoder:(id)encoder;
- (id)_resolvedPropertyValueForGetter:(SEL)getter nullPlaceholder:(id)placeholder;
- (id)compatibilityObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)_ifAttached:(id)attached else:(id)else;
- (void)_performBlockWithContext:(id)context;
- (void)_removeResolvedPropertyValueForGetter:(SEL)getter;
- (void)_resolveAllProperties;
- (void)_setResolvedPropertyValue:(id)value forGetter:(SEL)getter;
- (void)_setShared:(BOOL)shared;
- (void)dealloc;
- (void)detach;
- (void)discardContentIfPossible;
- (void)encodeWithCoder:(id)coder;
- (void)endContentAccess;
@end

@implementation LSRecord

- (void)dealloc
{
  resolvedProperties = self->_resolvedProperties;
  if (resolvedProperties)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::~__hash_table(resolvedProperties);
    MEMORY[0x1865D6250](v4, 0x10A0C408EF24B1CLL);
  }

  v5.receiver = self;
  v5.super_class = LSRecord;
  [(LSRecord *)&v5 dealloc];
}

- (void)_resolveAllProperties
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  if (self->_context.db)
  {
    _resolvingMethods = [(LSRecord *)self _resolvingMethods];
    v4 = _resolvingMethods[1];
    if (v4 != *_resolvingMethods)
    {
      resolvedProperties = self->_resolvedProperties;
      if (!resolvedProperties)
      {
        operator new();
      }

      std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__rehash<true>(resolvedProperties, vcvtps_u32_f32((((v4 - *_resolvingMethods) >> 4) + 1) / resolvedProperties[8]));
    }

    v7 = objc_autoreleasePoolPush();
    v8 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
    strlcpy(v8, "LSRecord: resolving ", 0x100uLL);
    v9 = strlen(v8);
    qword_1ED444C70 = v8;
    v10 = *_resolvingMethods;
    v11 = _resolvingMethods[1];
    if (*_resolvingMethods != v11)
    {
      v12 = v9;
      v13 = 256 - v9;
      do
      {
        v14 = *v10;
        v15 = *(v10 + 8);
        Name = sel_getName(*v10);
        strlcpy(&v8[v12], Name, v13);
        v15(self, v14);
        v10 += 16;
      }

      while (v10 != v11);
    }

    qword_1ED444C70 = 0;
    free(v8);
    objc_autoreleasePoolPop(v7);
    [(LSRecord *)self persistentIdentifier];
  }

  else if ((*(self + 31) & 0x40) == 0)
  {
    v6 = _LSRecordLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138477827;
      selfCopy = self;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEBUG, "Record %{private}@ may be incomplete during encoding.", &v18, 0xCu);
    }
  }

  os_unfair_recursive_lock_unlock();
  v17 = *MEMORY[0x1E69E9840];
}

- (const)_resolvingMethods
{
  Superclass = objc_opt_class();
  os_unfair_recursive_lock_lock_with_options();
  if (![LSRecord(Private) _resolvingMethods]::resultsByClass)
  {
    operator new();
  }

  __src = Superclass;
  v5 = std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::find<_opaque_pthread_t *>([LSRecord(Private) _resolvingMethods]::resultsByClass, &__src);
  if (!v5)
  {
    selfCopy = self;
    __src = 0;
    v31 = 0;
    v32 = 0;
    v28 = Superclass;
    while (Superclass && Superclass != LaunchServices::Record::recordClass)
    {
      outCount[0] = 0;
      v6 = class_copyMethodList(Superclass, outCount);
      if (v6)
      {
        if (outCount[0])
        {
          v7 = 0;
          do
          {
            v8 = v6[v7];
            Name = method_getName(v8);
            v10 = sel_getName(Name);
            if (!strncmp("_LSRecord_resolve_", v10, 0x12uLL))
            {
              Implementation = method_getImplementation(v8);
              v12 = v31;
              if (v31 >= v32)
              {
                v14 = __src;
                v15 = v31 - __src;
                v16 = (v31 - __src) >> 4;
                v17 = v16 + 1;
                if ((v16 + 1) >> 60)
                {
                  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
                }

                v18 = v32 - __src;
                if ((v32 - __src) >> 3 > v17)
                {
                  v17 = v18 >> 3;
                }

                if (v18 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v19 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v19 = v17;
                }

                if (v19)
                {
                  std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::allocate_at_least[abi:nn200100](&__src, v19);
                }

                v20 = (v31 - __src) >> 4;
                v21 = (16 * v16);
                *v21 = Name;
                v21[1] = Implementation;
                v13 = 16 * v16 + 16;
                v22 = &v21[-2 * v20];
                memcpy(v22, v14, v15);
                v23 = __src;
                __src = v22;
                v31 = v13;
                v32 = 0;
                if (v23)
                {
                  operator delete(v23);
                }
              }

              else
              {
                *v31 = Name;
                *(v12 + 1) = Implementation;
                v13 = (v12 + 16);
              }

              v31 = v13;
            }

            ++v7;
          }

          while (v7 < outCount[0]);
        }

        free(v6);
      }

      Superclass = class_getSuperclass(Superclass);
    }

    std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>::shrink_to_fit(&__src);
    *outCount = v28;
    v5 = std::__hash_table<std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>>>::__emplace_unique_key_args<void const*,void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>([LSRecord(Private) _resolvingMethods]::resultsByClass, outCount);
    if ((v24 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"LSRecord.mm" lineNumber:1471 description:{@"did not insert when filling cache for %@ in %s?", v28, sel_getName(a2)}];
    }

    if (__src)
    {
      v31 = __src;
      operator delete(__src);
    }
  }

  os_unfair_recursive_lock_unlock();
  return v5 + 3;
}

- (void)detach
{
  if (*(self + 31) < 0)
  {
    v15 = _LSRecordLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_ERROR, "Attempting to detach a shared record. Please file a bug report.", v16, 2u);
    }
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    p_context = &self->_context;
    if (self->_context.db)
    {
      selfCopy = self;
      v6 = selfCopy;
      db = self->_context.db;
      if ((*(self + 31) & 0x40) == 0 && !db)
      {
        __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(selfCopy, a2);
      }

      if (db)
      {
        v8 = selfCopy;
        [(_LSDatabase *)*p_context store];
        v9 = *(v8 + 14);
        unitID = v8->_unitID;
        Unit = CSStoreGetUnit();
        v12 = *(v8 + 14);
        v13 = v8->_unitID;
        [(LSRecord *)v8 persistentIdentifier];

        [(LSRecord *)v8 _detachFromContext:p_context tableID:v12 unitID:v13 unitBytes:Unit];
      }

      v14 = *p_context;
      *p_context = 0;
    }

    os_unfair_recursive_lock_unlock();
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    LaunchServices::Record::recordClass = self;
    std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LSRECORD_IS_CONSTRUCTING_A_COMPATIBILITY_OBJECT__);

    std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__);
  }
}

- (id)compatibilityObject
{
  v16 = 0;
  selfCopy = self;
  selfCopy2 = self;
  os_unfair_recursive_lock_lock_with_options();
  v4 = selfCopy2;
  v5 = v4;
  p_context = &v4->_context;
  db = v4->_context.db;
  if ((*(v4 + 31) & 0x40) == 0 && !db)
  {
    __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v4, a2);
  }

  if (db)
  {
    v8 = v4;
    [(_LSDatabase *)v5[2] store];
    v9 = *(v8 + 14);
    unitID = v8->_unitID;
    Unit = CSStoreGetUnit();
    v12 = *(v8 + 14);
    v13 = v8->_unitID;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___ZZ31__LSRecord_compatibilityObject_ENK3__0clEP9LSContextjjPKv_block_invoke;
    v18[3] = &__block_descriptor_72_e5_v8__0ls32l8s40l8;
    v18[4] = &v16;
    v18[5] = &selfCopy;
    v19 = v12;
    v20 = v13;
    v18[6] = p_context;
    v18[7] = Unit;
    __LSRECORD_IS_CONSTRUCTING_A_COMPATIBILITY_OBJECT__(v18);
  }

  os_unfair_recursive_lock_unlock();
  v14 = v16;

  return v14;
}

- (id)_propertyClassesForCoding
{
  v13 = 0;
  v2 = objc_opt_class();
  os_unfair_recursive_lock_lock_with_options();
  if (![LSRecord(Private) _propertyClassesForCoding]::resultsByClass)
  {
    operator new();
  }

  v12 = v2;
  v3 = std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::find<_opaque_pthread_t *>([LSRecord(Private) _propertyClassesForCoding]::resultsByClass, &v12);
  if (v3)
  {
    v13 = v3[3];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = XNSGetPropertyListClasses();
    [v5 unionSet:v6];

    [v5 addObject:objc_opt_class()];
    for (i = v2; i && i != LaunchServices::Record::recordClass; i = class_getSuperclass(i))
    {
      _propertyClasses = [(objc_class *)i _propertyClasses];
      [v5 addObjectsFromArray:_propertyClasses];
    }

    v9 = [v5 copy];
    v12 = v2;
    v13 = v9;
    std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__emplace_unique_key_args<objc_selector *,objc_selector *&,objc_object * const {__strong}&>([LSRecord(Private) _propertyClassesForCoding]::resultsByClass, &v12);

    objc_autoreleasePoolPop(v4);
  }

  os_unfair_recursive_lock_unlock();
  v10 = v13;

  return v10;
}

- (id)_initWithContext:(LSContext *)context persistentIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v7 = _LSCheckRecordPISizeAndVersionReturningPIInnerBytes(identifier, &v18);
  v8 = v18;
  if (!v7)
  {
    v10 = _LSRecordLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *uu1 = 138412546;
      *&uu1[4] = identifier;
      *&uu1[12] = 2112;
      *&uu1[14] = v8;
      _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEBUG, "failed to initialize record with persistent identifier %@: %@", uu1, 0x16u);
    }

    goto LABEL_8;
  }

  *uu1 = 0;
  *&uu1[8] = 0;
  db = context->db;
  _LSDatabaseGetCacheGUIDBytes();
  if (uuid_compare(uu1, v7 + 12))
  {
    v10 = _LSRecordLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      identifierCopy = identifier;
      _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEBUG, "Failed to initialize record with persistent identifier %@ because it came from a different database.", buf, 0xCu);
    }

LABEL_8:

    v11 = 0;
    goto LABEL_17;
  }

  if ([(LSRecord *)self isMemberOfClass:LaunchServices::Record::recordClass])
  {
    SubclassForTable = LaunchServices::Record::findSubclassForTable(context, *(v7 + 2));
    if (SubclassForTable)
    {
      v13 = [SubclassForTable alloc];
    }

    else
    {
      v14 = _LSRecordLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(v7 + 2);
        *buf = 134217984;
        identifierCopy = v15;
        _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_ERROR, "Unexpected table ID 0x%llx when instantiating an LSRecord from a persistent identifier.", buf, 0xCu);
      }

      v13 = 0;
    }

    self = v13;
  }

  v11 = -[LSRecord _initWithContext:persistentIdentifierData:length:](self, "_initWithContext:persistentIdentifierData:length:", context, v7, [identifier length]);
LABEL_17:

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (LSRecord)initWithPersistentIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  CurrentContext = _LSDatabaseContextGetCurrentContext(self);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v5 = +[_LSDServiceDomain defaultServiceDomain];
  v6 = LaunchServices::Database::Context::_get(&CurrentContext, v5, 0);

  if (v6)
  {
    v7 = [(LSRecord *)self _initWithContext:v6 persistentIdentifier:identifier];
  }

  else
  {
    v8 = _LSRecordLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = +[_LSDServiceDomain defaultServiceDomain];
      v10 = LaunchServices::Database::Context::_get(&CurrentContext, v9, 0);

      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = v20;
      }

      *buf = 138412546;
      identifierCopy = identifier;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEBUG, "Failed to initialize record with persistent identifier %@ because the current database was not reachable. Error %@", buf, 0x16u);
    }

    v7 = 0;
  }

  v12 = v7;
  if (CurrentContext && v19 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v13 = v18;
  CurrentContext = 0;
  v18 = 0;

  v19 = 0;
  v14 = v20;
  v20 = 0;

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)_initWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = LSRecord;
  v8 = [(LSRecord *)&v12 init];
  v9 = v8;
  if (v8)
  {
    if (context)
    {
      db = context->db;
    }

    else
    {
      db = 0;
    }

    objc_storeStrong(&v8->_context.db, db);
    *(v9 + 14) = dCopy;
    v9->_unitID = iD;
    *(v9 + 31) &= 0x3Fu;
    *(v9 + 15) = *(v9 + 15) & 0xC000 | 1;
  }

  return v9;
}

- (id)_initInvalid
{
  v3.receiver = self;
  v3.super_class = LSRecord;
  result = [(LSRecord *)&v3 init];
  if (result)
  {
    *(result + 31) = *(result + 31) & 0x3F | 0x40;
    *(result + 15) = *(result + 15) & 0xC000 | 1;
  }

  return result;
}

- (void)_setResolvedPropertyValue:(id)value forGetter:(SEL)getter
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = _LSRecordLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136446466;
    Name = sel_getName(getter);
    v12 = 2112;
    valueCopy = value;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEBUG, "Setting value of property %{public}s to %@", &v10, 0x16u);
  }

  os_unfair_recursive_lock_lock_with_options();
  LaunchServices::Record::setCachedPropertyValue(self, getter, value, v8);
  os_unfair_recursive_lock_unlock();
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_removeResolvedPropertyValueForGetter:(SEL)getter
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = _LSRecordLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 136446210;
    *&v8[4] = sel_getName(getter);
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEBUG, "Removing value of property %{public}s", v8, 0xCu);
  }

  os_unfair_recursive_lock_lock_with_options();
  *v8 = getter;
  resolvedProperties = self->_resolvedProperties;
  if (resolvedProperties)
  {
    std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__erase_unique<objc_selector *>(resolvedProperties, v8);
  }

  os_unfair_recursive_lock_unlock();
  v7 = *MEMORY[0x1E69E9840];
}

- (id)_resolvedPropertyValueForGetter:(SEL)getter nullPlaceholder:(id)placeholder
{
  os_unfair_recursive_lock_lock_with_options();
  CachedPropertyValue = LaunchServices::Record::getCachedPropertyValue(self, getter, v7);
  if (v9)
  {
    v10 = CachedPropertyValue;
    placeholderCopy = CachedPropertyValue;
    if (!v10)
    {
      placeholderCopy = placeholder;
    }

    v12 = placeholderCopy;
  }

  else
  {
    v12 = 0;
  }

  os_unfair_recursive_lock_unlock();

  return v12;
}

- (void)_performBlockWithContext:(id)context
{
  selfCopy = self;
  os_unfair_recursive_lock_lock_with_options();
  v5 = selfCopy;
  p_context = &v5->_context;
  db = v5->_context.db;
  v12 = v5;
  if ((*(v5 + 31) & 0x40) == 0 && !db)
  {
    __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v5, 0);
  }

  if (db)
  {
    v8 = v5;
    [(_LSDatabase *)v12[2] store];
    v9 = *(v8 + 14);
    unitID = v8->_unitID;
    Unit = CSStoreGetUnit();
    (*(context + 2))(context, p_context, *(v8 + 14), v8->_unitID, Unit);
  }

  os_unfair_recursive_lock_unlock();
}

- (void)_ifAttached:(id)attached else:(id)else
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_context.db)
  {
    selfCopy = self;
    [(_LSDatabase *)self->_context.db store];
    v8 = *(selfCopy + 14);
    unitID = selfCopy->_unitID;
    Unit = CSStoreGetUnit();
    (*(attached + 2))(attached, &self->_context, *(selfCopy + 14), selfCopy->_unitID, Unit);

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    os_unfair_recursive_lock_unlock();
    if (else)
    {
      v11 = *(else + 2);

      v11(else);
    }
  }
}

- (id)_attributedDescription
{
  selfCopy = self;
  os_unfair_recursive_lock_lock_with_options();
  v4 = selfCopy;
  v5 = v4;
  p_context = &v4->_context;
  db = v4->_context.db;
  if ((*(v4 + 31) & 0x40) == 0 && !db)
  {
    __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v4, a2);
  }

  if (db)
  {
    v8 = v4;
    [(_LSDatabase *)v5[2] store];
    v9 = *(v8 + 14);
    unitID = v8->_unitID;
    CSStoreGetUnit();
    v11 = *(v8 + 14);
    v12 = v8->_unitID;
    _LSContextCreateVisualizer(p_context);
  }

  os_unfair_recursive_lock_unlock();

  return 0;
}

- (void)_setShared:(BOOL)shared
{
  if (shared)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 31) = v3 & 0x80 | *(self + 31) & 0x7F;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p>", objc_opt_class(), self];

  return v2;
}

- (id)debugDescription
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  if (self->_context.db)
  {
    v5 = @"yes";
  }

  else
  {
    v5 = @"no";
  }

  v6 = [v3 initWithFormat:@"<%@ %p> { table: %llx, unit: %llx, attached: %@ }", v4, self, *(self + 14), self->_unitID, v5];
  os_unfair_recursive_lock_unlock();

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  LaunchServices::Record::checkForExfiltrationRisk(coder, a2);
  os_unfair_recursive_lock_lock_with_options();
  [(LSRecord *)self _resolveAllProperties];
  if (self->_resolvedProperties)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(self->_resolvedProperties + 3)];
    v6 = LaunchServices::Record::getNullPlaceholder(v5);
    for (i = *(self->_resolvedProperties + 2); i; i = *i)
    {
      v8 = i[2];
      v9 = i[3];
      v10 = [(LSRecord *)self _replacementObjectForResolvedPropertyValue:v9 forGetter:v8 encoder:coder];

      v11 = NSStringFromSelector(v8);
      if (v10)
      {
        [(LaunchServices::Record *)v5 setObject:v10 forKeyedSubscript:v11];
      }

      else
      {
        [(LaunchServices::Record *)v5 setObject:v6 forKeyedSubscript:v11];
      }
    }

    [coder encodeObject:v5 forKey:@"resolvedProperties"];
  }

  os_unfair_recursive_lock_unlock();
  [coder encodeInt64:*(self + 14) forKey:@"tableID"];
  [coder encodeInt64:self->_unitID forKey:@"unitID"];
  v12 = (*(self + 31) >> 6) & 1;

  [coder encodeBool:v12 forKey:@"intentionallyInvalid"];
}

- (LSRecord)initWithCoder:(id)coder
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = LSRecord;
  v4 = [(LSRecord *)&v15 init];
  v5 = v4;
  if (v4)
  {
    _propertyClassesForCoding = [(LSRecord *)v4 _propertyClassesForCoding];
    v7 = [coder ls_decodeDictionaryWithKeysOfClass:objc_opt_class() valuesOfClasses:_propertyClassesForCoding forKey:@"resolvedProperties"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 count];
      if (v9)
      {
        LaunchServices::Record::getNullPlaceholder(v9);
        objc_claimAutoreleasedReturnValue();
        operator new();
      }

      *(v5 + 14) = [coder decodeInt64ForKey:@"tableID"];
      v5->_unitID = [coder decodeInt64ForKey:@"unitID"];
      if ([coder decodeBoolForKey:@"intentionallyInvalid"])
      {
        v10 = 64;
      }

      else
      {
        v10 = 0;
      }

      *(v5 + 31) = v10 & 0xC0 | *(v5 + 31) & 0x3F;
      *(v5 + 15) = *(v5 + 15) & 0xC000 | 1;
    }

    else
    {
      v16 = *MEMORY[0x1E696A278];
      v17[0] = @"Could not decode the set of resolved property values for this record.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4865, v11, "[LSRecord initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSRecord.mm", 581);
      [coder failWithError:v12];

      v5 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

void *__26__LSRecord_initWithCoder___block_invoke(uint64_t a1, NSString *aSelectorName, uint64_t a3)
{
  v5[1] = a3;
  v3 = *(*(a1 + 40) + 8);
  if (*(a1 + 32) == a3)
  {
    v5[0] = NSSelectorFromString(aSelectorName);
    return std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__emplace_unique_key_args<objc_selector *,objc_selector *,decltype(nullptr)>(v3, v5);
  }

  else
  {
    v5[0] = NSSelectorFromString(aSelectorName);
    return std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__emplace_unique_key_args<objc_selector *,objc_selector *&,objc_object * const {__strong}&>(v3, v5);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v10 = self->_context.db;
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "_initWithContext:tableID:unitID:", &v10, *(self + 14), self->_unitID}];
  if (v5)
  {
    if (self->_context.db)
    {
      v6 = _LSRecordLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEBUG, "Copied attached record %@; not copying its properties.", buf, 0xCu);
      }
    }

    else if (self->_resolvedProperties)
    {
      v7 = _LSRecordLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEBUG, "Copied detached record %@; copying its properties.", buf, 0xCu);
      }

      operator new();
    }
  }

  os_unfair_recursive_lock_unlock();
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)beginContentAccess
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(self + 15);
  if ((~v4 & 0x3FFF) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSRecord.mm" lineNumber:633 description:@"-[LSRecord beginContentAccess] counter saturated."];

    LOWORD(v4) = *(self + 15);
  }

  *(self + 15) = v4 & 0xC000 | (v4 + 1) & 0x3FFF;
  os_unfair_recursive_lock_unlock();
  return 1;
}

- (void)endContentAccess
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(self + 15);
  if ((v4 & 0x3FFF) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSRecord.mm" lineNumber:644 description:@"-[LSRecord endContentAccess] counter saturated."];

    v4 = *(self + 15);
  }

  *(self + 15) = v4 & 0xC000 | (v4 - 1) & 0x3FFF;
  [(LSRecord *)self discardContentIfPossible];

  os_unfair_recursive_lock_unlock();
}

- (void)discardContentIfPossible
{
  os_unfair_recursive_lock_lock_with_options();
  resolvedProperties = self->_resolvedProperties;
  if (resolvedProperties && (*(self + 15) & 0x3FFF) == 0 && self->_context.db)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::~__hash_table(resolvedProperties);
    MEMORY[0x1865D6250](v4, 0x10A0C408EF24B1CLL);
    self->_resolvedProperties = 0;
  }

  os_unfair_recursive_lock_unlock();
}

- (BOOL)isContentDiscarded
{
  os_unfair_recursive_lock_lock_with_options();
  resolvedProperties = self->_resolvedProperties;
  os_unfair_recursive_lock_unlock();
  return resolvedProperties == 0;
}

- (NSURL)visualizerURL
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__46;
  v9 = __Block_byref_object_dispose__46;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__LSRecord_CSStoreViewerAdditions__visualizerURL__block_invoke;
  v4[3] = &unk_1E6A1D2C8;
  v4[4] = &v5;
  [(LSRecord *)self _ifAttached:v4 else:0];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __49__LSRecord_CSStoreViewerAdditions__visualizerURL__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [MEMORY[0x1E69991A0] URLForUnit:a4 inTable:a3];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (NSUUID)databaseUUID
{
  persistentIdentifier = [(LSRecord *)self persistentIdentifier];
  v3 = _LSPersistentIdentifierGetKnowledgeUUIDInternal(persistentIdentifier);

  return v3;
}

+ (void)resolveAllPropertiesOfRecords:(const void *)records count:(unint64_t)count andDetachOnQueue:(id)queue
{
  recordsCopy = records;
  if (!records && count)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSRecord.mm" lineNumber:724 description:{@"Invalid parameter not satisfying: %@", @"records != NULL || count == 0"}];

    if (queue)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (!count)
    {
      return;
    }

    if (queue)
    {
LABEL_5:
      v24 = 0;
      v25 = 0;
      v26 = 0;
      std::vector<LSRecord * {__weak}>::__init_with_size[abi:nn200100]<LSRecord * const*,LSRecord * const*>(&v24, recordsCopy, &recordsCopy[count], count);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3321888768;
      v22[2] = __79__LSRecord_LSDetachable__resolveAllPropertiesOfRecords_count_andDetachOnQueue___block_invoke;
      v22[3] = &__block_descriptor_56_ea8_32c58_ZTSNSt3__16vectorIU6__weakP8LSRecordNS_9allocatorIS3_EEEE_e5_v8__0l;
      memset(v23, 0, sizeof(v23));
      std::vector<LSRecord * {__weak}>::__init_with_size[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*>(v23, v24, v25, (v25 - v24) >> 3);
      [queue addOperationWithBlock:v22];
      v27 = v23;
      std::vector<LSRecord * {__weak}>::__destroy_vector::operator()[abi:nn200100](&v27);
      v27 = &v24;
      std::vector<LSRecord * {__weak}>::__destroy_vector::operator()[abi:nn200100](&v27);
      return;
    }
  }

  if (pthread_main_np() && ([__LSDefaultsGetSharedInstance() isServer] & 1) == 0)
  {
    v16 = LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool;
    if (!LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool)
    {
      operator new();
    }

    v17 = *LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool;
    v18 = *(LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool + 8);
    if (v17 == v18)
    {
      std::vector<LSRecord * {__weak}>::__insert_with_size[abi:nn200100]<LSRecord * const*,LSRecord * const*>(LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool, v17, recordsCopy, &recordsCopy[count], count);
      v21 = MEMORY[0x1E69E96A0];

      dispatch_async(v21, &__block_literal_global_255);
    }

    else
    {
      v24 = 0;
      v19 = std::remove[abi:nn200100]<std::__wrap_iter<LSRecord * {__weak}*>,decltype(nullptr)>(&v17[LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::nilScanIndex], v18);
      std::vector<LSRecord * {__weak}>::erase(v16, v19, *(LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool + 8));
      v20 = *(LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool + 8);
      LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::nilScanIndex = (v20 - *LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool) >> 3;
      std::vector<LSRecord * {__weak}>::__insert_with_size[abi:nn200100]<LSRecord * const*,LSRecord * const*>(LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool, v20, recordsCopy, &recordsCopy[count], count);
    }
  }

  else
  {
    v11 = 8 * count;
    v12 = 8 * count;
    v13 = recordsCopy;
    do
    {
      v14 = *v13;
      [v14 _resolveAllProperties];

      ++v13;
      v12 -= 8;
    }

    while (v12);
    do
    {
      v15 = *recordsCopy;
      [v15 detach];

      ++recordsCopy;
      v11 -= 8;
    }

    while (v11);
  }
}

void __79__LSRecord_LSDetachable__resolveAllPropertiesOfRecords_count_andDetachOnQueue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 != v2)
  {
    v3 = *(a1 + 32);
    do
    {
      WeakRetained = objc_loadWeakRetained(v3);
      [WeakRetained _resolveAllProperties];

      ++v3;
    }

    while (v3 != v2);
    do
    {
      v5 = objc_loadWeakRetained(v1);
      [v5 detach];

      ++v1;
    }

    while (v1 != v2);
  }
}

+ (void)resolveAllPropertiesOfRecords:(id)records andDetachOnQueue:(id)queue
{
  if (!records)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSRecord.mm" lineNumber:760 description:{@"Invalid parameter not satisfying: %@", @"records != nil"}];
  }

  v7 = [records count];
  if (v7 > 0x80)
  {
    __p = 0;
    v12 = 0;
    v13 = 0;
    v10 = 0;
    std::vector<LSRecord *>::resize(&__p, v7, &v10);
    [records getObjects:__p range:{0, v7}];
    [self resolveAllPropertiesOfRecords:__p count:v7 andDetachOnQueue:queue];
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  else
  {
    [records getObjects:&__p range:{0, v7}];
    [self resolveAllPropertiesOfRecords:&__p count:v7 andDetachOnQueue:queue];
  }
}

- (id)_persistentIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  _LSPersistentIdentifierDataMake(context, d, iD, v9);
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:28];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length
{
  [(_LSDatabase *)context->db store];
  var2 = data->var2;
  var3 = data->var3;
  if (CSStoreGetUnit())
  {
    return [(LSRecord *)self _initWithContext:context tableID:data->var3 unitID:data->var2];
  }

  return 0;
}

- (id)_replacementObjectForResolvedPropertyValue:(id)value forGetter:(SEL)getter encoder:(id)encoder
{
  valueCopy = value;
  v6 = valueCopy;
  if ([LSRecord(SubclassResponsibilities) _replacementObjectForResolvedPropertyValue:forGetter:encoder:]::once == -1)
  {
    if (!valueCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [LSRecord(SubclassResponsibilities) _replacementObjectForResolvedPropertyValue:forGetter:encoder:];
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  if (objc_opt_isKindOfClass())
  {

    v6 = 0;
  }

LABEL_5:

  return v6;
}

uint64_t __99__LSRecord_SubclassResponsibilities___replacementObjectForResolvedPropertyValue_forGetter_encoder___block_invoke()
{
  result = objc_opt_class();
  [LSRecord(SubclassResponsibilities) _replacementObjectForResolvedPropertyValue:forGetter:encoder:]::applicationRecordClass = result;
  return result;
}

@end