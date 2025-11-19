@interface MPBaseEntityTranslator
+ (id)createTranslatorForMPModelClass:(Class)a3;
+ (id)translatorForMPModelClass:(Class)a3;
+ (void)buildSchemaIfNeeded;
- (Class)classForRelationshipKey:(id)a3;
- (MPBaseEntityTranslator)initWithMPModelClass:(Class)a3;
- (id)_objectForPropertySet:(id)a3 source:(id)a4 context:(id)a5;
- (id)_objectForRelationshipKey:(id)a3 propertySet:(id)a4 source:(id)a5 context:(id)a6;
- (id)_valueForPropertyKey:(id)a3 source:(id)a4 context:(id)a5;
- (id)identifiersForSource:(void *)a3 context:;
- (id)objectForPropertySet:(void *)a3 source:(void *)a4 context:;
- (id)prepareSource:(id)a3 context:(id)a4 properties:(id)a5;
- (id)propertyTranslatorForPropertyKey:(id *)a1;
- (void)mapIdentifiersToPropertyTranslator:(id *)a1;
- (void)mapPropertyKey:(void *)a3 toPropertyTranslator:;
- (void)mapRelationshipKey:(uint64_t)a1 ofModelClass:(void *)a2 toRelationshipTranslator:(void *)a3;
- (void)mapUnsupportedPropertyKey:(id)a3;
- (void)mapUnsupportedRelationshipKey:(id)a3;
- (void)setSourcePreprocessorBlock:(id)a3;
@end

@implementation MPBaseEntityTranslator

- (id)_valueForPropertyKey:(id)a3 source:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(MPBaseEntityTranslator *)&self->super.isa propertyTranslatorForPropertyKey:a3];
  v11 = [v10 valueFromSource:v8 context:v9];

  return v11;
}

- (id)propertyTranslatorForPropertyKey:(id *)a1
{
  v3 = a2;
  if (a1 && ([a1[4] containsObject:v3] & 1) == 0)
  {
    v4 = [a1[1] objectForKeyedSubscript:v3];
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = [a1 MPModelClass];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Property mapping missing for %@ : %@", objc_opt_class(), objc_msgSend(a1, "MPModelClass"), v3];
    MPModelPropertyMappingMissing(v5, v3, v6);
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)_objectForRelationshipKey:(id)a3 propertySet:(id)a4 source:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  if (!self)
  {
    v15 = 0;
    goto LABEL_4;
  }

  if (([(NSMutableSet *)self->_unsupportedKeys containsObject:v14]& 1) != 0)
  {
    v15 = 0;
    self = 0;
LABEL_4:
    v16 = v14;
    goto LABEL_15;
  }

  v15 = [(NSMutableDictionary *)self->_relationshipsToTranslators objectForKeyedSubscript:v14];
  if (!v15)
  {
    v21 = [(MPBaseEntityTranslator *)self MPModelClass];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Relationship mapping missing for %@ : %@", objc_opt_class(), -[MPBaseEntityTranslator MPModelClass](self, "MPModelClass"), v14];
    MPModelPropertyMappingMissing(v21, v14, v18);
    v15 = 0;
    self = 0;
    v16 = v14;
LABEL_13:

    goto LABEL_15;
  }

  v16 = v12;
  if (*&self->_optionalHooks)
  {
    v17 = [v15 prepareSource:v16 context:v13];

    v16 = v17;
  }

  if (v16)
  {
    v18 = [objc_opt_class() translatorForMPModelClass:{objc_msgSend(v15, "relatedMPModelClass")}];
    if (!v18)
    {
      v19 = [(MPBaseEntityTranslator *)self MPModelClass];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing entity translator for model class: %@", objc_msgSend(v15, "relatedMPModelClass")];
      MPModelPropertyMappingMissing(v19, v14, v20);
    }

    self = [v18 _objectForPropertySet:v11 source:v16 context:v13];
    goto LABEL_13;
  }

  self = 0;
LABEL_15:

  return self;
}

- (id)_objectForPropertySet:(id)a3 source:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MPBaseEntityTranslator *)self identifiersForSource:v10 context:v11];
  if (!v12)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MPBaseEntityTranslator.mm" lineNumber:163 description:{@"No identifiers for model class: %@ from source: %@", -[MPBaseEntityTranslator MPModelClass](self, "MPModelClass"), v10}];
  }

  v13 = objc_alloc([(MPBaseEntityTranslator *)self MPModelClass]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__MPBaseEntityTranslator__objectForPropertySet_source_context___block_invoke;
  v20[3] = &unk_1E767D9C0;
  v20[4] = self;
  v14 = v10;
  v21 = v14;
  v15 = v11;
  v22 = v15;
  v16 = v9;
  v23 = v16;
  v17 = [v13 initWithIdentifiers:v12 block:v20];

  return v17;
}

- (id)identifiersForSource:(void *)a3 context:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    a1 = [a1 _valueForPropertyKey:@"_identifiers" source:v5 context:v6];
  }

  return a1;
}

void __63__MPBaseEntityTranslator__objectForPropertySet_source_context___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) properties];
  v8 = [v4 prepareSource:v5 context:v6 properties:v7];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [*(a1 + 56) properties];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [*(a1 + 32) _valueForPropertyKey:v13 source:v8 context:*(a1 + 48)];
        [v3 setValue:v14 forModelKey:v13];
      }

      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v15 = [*(a1 + 56) relationships];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__MPBaseEntityTranslator__objectForPropertySet_source_context___block_invoke_2;
  v18[3] = &unk_1E767D998;
  v16 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v16;
  v20 = *(a1 + 48);
  v17 = v3;
  v21 = v17;
  [v15 enumerateKeysAndObjectsUsingBlock:v18];
}

void __63__MPBaseEntityTranslator__objectForPropertySet_source_context___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) _objectForRelationshipKey:? propertySet:? source:? context:?];
  [*(a1 + 56) setValue:v3 forModelKey:v4];
}

- (void)mapUnsupportedRelationshipKey:(id)a3
{
  v7 = a3;
  v5 = [(NSMutableDictionary *)self->_relationshipsToTranslators objectForKeyedSubscript:?];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MPBaseEntityTranslator.mm" lineNumber:155 description:{@"[%@] Attempting to unsupport a relationship with an existing mapping: %@", objc_opt_class(), v7}];
  }

  [(NSMutableSet *)self->_unsupportedKeys addObject:v7];
}

- (void)mapUnsupportedPropertyKey:(id)a3
{
  v8 = a3;
  if ([v8 isEqualToString:@"_identifiers"])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MPBaseEntityTranslator.mm" lineNumber:149 description:{@"[%@] Attempting to unsupport identifiers for %@", objc_opt_class(), -[MPBaseEntityTranslator MPModelClass](self, "MPModelClass")}];
  }

  v5 = [(NSMutableDictionary *)self->_propertiesToTranslators objectForKeyedSubscript:v8];

  if (v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MPBaseEntityTranslator.mm" lineNumber:150 description:{@"[%@] Attempting to unsupport a property with an existing mapping: %@", objc_opt_class(), v8}];
  }

  [(NSMutableSet *)self->_unsupportedKeys addObject:v8];
}

- (void)setSourcePreprocessorBlock:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_sourcePreprocessorBlock)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MPBaseEntityTranslator.mm" lineNumber:113 description:{@"[%@] Attempting to set a source preprocessor for %@, but one is already set.", objc_opt_class(), -[MPBaseEntityTranslator MPModelClass](self, "MPModelClass")}];

    v5 = v9;
  }

  v6 = _Block_copy(v5);
  sourcePreprocessorBlock = self->_sourcePreprocessorBlock;
  self->_sourcePreprocessorBlock = v6;
}

- (id)prepareSource:(id)a3 context:(id)a4 properties:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  sourcePreprocessorBlock = self->_sourcePreprocessorBlock;
  v11 = v9;
  if (sourcePreprocessorBlock)
  {
    v11 = sourcePreprocessorBlock[2](sourcePreprocessorBlock, v9, v8);
  }

  return v11;
}

- (Class)classForRelationshipKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_relationshipsToTranslators objectForKeyedSubscript:a3];
  v4 = [v3 relatedMPModelClass];

  return v4;
}

- (MPBaseEntityTranslator)initWithMPModelClass:(Class)a3
{
  v13.receiver = self;
  v13.super_class = MPBaseEntityTranslator;
  v4 = [(MPBaseEntityTranslator *)&v13 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_MPModelClass, a3);
    v6 = [MEMORY[0x1E695DF90] dictionary];
    propertiesToTranslators = v5->_propertiesToTranslators;
    v5->_propertiesToTranslators = v6;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    relationshipsToTranslators = v5->_relationshipsToTranslators;
    v5->_relationshipsToTranslators = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    unsupportedKeys = v5->_unsupportedKeys;
    v5->_unsupportedKeys = v10;
  }

  return v5;
}

+ (id)createTranslatorForMPModelClass:(Class)a3
{
  v15 = a3;
  v16 = a1;
  os_unfair_lock_lock_with_options();
  v6 = __translatorMap();
  v17 = &v15;
  v7 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>,std::__unordered_map_hasher<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const&>,std::piecewise_construct_t const&<>>(v6, a3);
  v17 = &v16;
  if (std::__hash_table<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(v7 + 3, a1)[3])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:v16 file:v15 lineNumber:? description:?];
  }

  v8 = [v16 alloc];
  v9 = [v8 initWithMPModelClass:v15];
  v10 = __translatorMap();
  v17 = &v15;
  v11 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>,std::__unordered_map_hasher<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const&>,std::piecewise_construct_t const&<>>(v10, v15);
  v17 = &v16;
  v12 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(v11 + 3, v16);
  objc_storeStrong(v12 + 3, v9);
  os_unfair_lock_unlock(&__translatorLock);

  return v9;
}

+ (void)buildSchemaIfNeeded
{
  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    [v8 handleFailureInMethod:a2 object:a1 file:@"MPBaseEntityTranslator.mm" lineNumber:81 description:{@"Subclass %@ must implement -%@ defined in %@.", v6, v7, @"[MPBaseEntityTranslator class]"}];
  }
}

+ (id)translatorForMPModelClass:(Class)a3
{
  v9 = a3;
  v10 = a1;
  [a1 buildSchemaIfNeeded];
  os_unfair_lock_lock_with_options();
  v5 = __translatorMap();
  v11 = &v9;
  v6 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>,std::__unordered_map_hasher<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const&>,std::piecewise_construct_t const&<>>(v5, a3);
  v11 = &v10;
  v7 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(v6 + 3, a1)[3];
  os_unfair_lock_unlock(&__translatorLock);

  return v7;
}

- (id)objectForPropertySet:(void *)a3 source:(void *)a4 context:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    a1 = [a1 _objectForPropertySet:v7 source:v8 context:v9];
  }

  return a1;
}

- (void)mapIdentifiersToPropertyTranslator:(id *)a1
{
  v5 = a2;
  if (a1)
  {
    v3 = [a1[1] objectForKeyedSubscript:@"_identifiers"];

    if (v3)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel_mapIdentifiersToPropertyTranslator_ object:a1 file:@"MPBaseEntityTranslator.mm" lineNumber:118 description:{@"[%@] Attempting to replace existing identifiers translator for %@", objc_opt_class(), objc_msgSend(a1, "MPModelClass")}];
    }

    [a1[1] setObject:v5 forKeyedSubscript:@"_identifiers"];
  }
}

- (void)mapPropertyKey:(void *)a3 toPropertyTranslator:
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    if ([a1[4] containsObject:v9])
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_mapPropertyKey_toPropertyTranslator_ object:a1 file:@"MPBaseEntityTranslator.mm" lineNumber:123 description:{@"[%@] Attempting to map an already unsupported property for %@ : %@", objc_opt_class(), objc_msgSend(a1, "MPModelClass"), v9}];
    }

    v6 = [a1[1] objectForKeyedSubscript:v9];

    if (v6)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_mapPropertyKey_toPropertyTranslator_ object:a1 file:@"MPBaseEntityTranslator.mm" lineNumber:124 description:{@"[%@] Attempting to replace existing property translator for %@ : %@", objc_opt_class(), objc_msgSend(a1, "MPModelClass"), v9}];
    }

    [a1[1] setObject:v5 forKeyedSubscript:v9];
  }
}

- (void)mapRelationshipKey:(uint64_t)a1 ofModelClass:(void *)a2 toRelationshipTranslator:(void *)a3
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    if ([*(a1 + 32) containsObject:v9])
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_mapRelationshipKey_ofModelClass_toRelationshipTranslator_ object:a1 file:@"MPBaseEntityTranslator.mm" lineNumber:129 description:{@"[%@] Attempting to map an already unsupported relationship for %@ : %@", objc_opt_class(), objc_msgSend(a1, "MPModelClass"), v9}];
    }

    v6 = [*(a1 + 16) objectForKeyedSubscript:v9];

    if (v6)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_mapRelationshipKey_ofModelClass_toRelationshipTranslator_ object:a1 file:@"MPBaseEntityTranslator.mm" lineNumber:130 description:{@"[%@] Attempting to replace existing relationship translator for %@ : %@", objc_opt_class(), objc_msgSend(a1, "MPModelClass"), v9}];
    }

    [*(a1 + 16) setObject:v5 forKeyedSubscript:v9];
    if (objc_opt_respondsToSelector())
    {
      *(a1 + 40) |= 1u;
    }
  }
}

@end