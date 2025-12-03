@interface MPBaseEntityTranslator
+ (id)createTranslatorForMPModelClass:(Class)class;
+ (id)translatorForMPModelClass:(Class)class;
+ (void)buildSchemaIfNeeded;
- (Class)classForRelationshipKey:(id)key;
- (MPBaseEntityTranslator)initWithMPModelClass:(Class)class;
- (id)_objectForPropertySet:(id)set source:(id)source context:(id)context;
- (id)_objectForRelationshipKey:(id)key propertySet:(id)set source:(id)source context:(id)context;
- (id)_valueForPropertyKey:(id)key source:(id)source context:(id)context;
- (id)identifiersForSource:(void *)source context:;
- (id)objectForPropertySet:(void *)set source:(void *)source context:;
- (id)prepareSource:(id)source context:(id)context properties:(id)properties;
- (id)propertyTranslatorForPropertyKey:(id *)key;
- (void)mapIdentifiersToPropertyTranslator:(id *)translator;
- (void)mapPropertyKey:(void *)key toPropertyTranslator:;
- (void)mapRelationshipKey:(uint64_t)key ofModelClass:(void *)class toRelationshipTranslator:(void *)translator;
- (void)mapUnsupportedPropertyKey:(id)key;
- (void)mapUnsupportedRelationshipKey:(id)key;
- (void)setSourcePreprocessorBlock:(id)block;
@end

@implementation MPBaseEntityTranslator

- (id)_valueForPropertyKey:(id)key source:(id)source context:(id)context
{
  sourceCopy = source;
  contextCopy = context;
  v10 = [(MPBaseEntityTranslator *)&self->super.isa propertyTranslatorForPropertyKey:key];
  v11 = [v10 valueFromSource:sourceCopy context:contextCopy];

  return v11;
}

- (id)propertyTranslatorForPropertyKey:(id *)key
{
  v3 = a2;
  if (key && ([key[4] containsObject:v3] & 1) == 0)
  {
    v4 = [key[1] objectForKeyedSubscript:v3];
    if (v4)
    {
      goto LABEL_6;
    }

    mPModelClass = [key MPModelClass];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Property mapping missing for %@ : %@", objc_opt_class(), objc_msgSend(key, "MPModelClass"), v3];
    MPModelPropertyMappingMissing(mPModelClass, v3, v6);
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)_objectForRelationshipKey:(id)key propertySet:(id)set source:(id)source context:(id)context
{
  keyCopy = key;
  setCopy = set;
  sourceCopy = source;
  contextCopy = context;
  v14 = keyCopy;
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
    mPModelClass = [(MPBaseEntityTranslator *)self MPModelClass];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Relationship mapping missing for %@ : %@", objc_opt_class(), -[MPBaseEntityTranslator MPModelClass](self, "MPModelClass"), v14];
    MPModelPropertyMappingMissing(mPModelClass, v14, v18);
    v15 = 0;
    self = 0;
    v16 = v14;
LABEL_13:

    goto LABEL_15;
  }

  v16 = sourceCopy;
  if (*&self->_optionalHooks)
  {
    v17 = [v15 prepareSource:v16 context:contextCopy];

    v16 = v17;
  }

  if (v16)
  {
    v18 = [objc_opt_class() translatorForMPModelClass:{objc_msgSend(v15, "relatedMPModelClass")}];
    if (!v18)
    {
      mPModelClass2 = [(MPBaseEntityTranslator *)self MPModelClass];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing entity translator for model class: %@", objc_msgSend(v15, "relatedMPModelClass")];
      MPModelPropertyMappingMissing(mPModelClass2, v14, v20);
    }

    self = [v18 _objectForPropertySet:setCopy source:v16 context:contextCopy];
    goto LABEL_13;
  }

  self = 0;
LABEL_15:

  return self;
}

- (id)_objectForPropertySet:(id)set source:(id)source context:(id)context
{
  setCopy = set;
  sourceCopy = source;
  contextCopy = context;
  v12 = [(MPBaseEntityTranslator *)self identifiersForSource:sourceCopy context:contextCopy];
  if (!v12)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPBaseEntityTranslator.mm" lineNumber:163 description:{@"No identifiers for model class: %@ from source: %@", -[MPBaseEntityTranslator MPModelClass](self, "MPModelClass"), sourceCopy}];
  }

  v13 = objc_alloc([(MPBaseEntityTranslator *)self MPModelClass]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__MPBaseEntityTranslator__objectForPropertySet_source_context___block_invoke;
  v20[3] = &unk_1E767D9C0;
  v20[4] = self;
  v14 = sourceCopy;
  v21 = v14;
  v15 = contextCopy;
  v22 = v15;
  v16 = setCopy;
  v23 = v16;
  v17 = [v13 initWithIdentifiers:v12 block:v20];

  return v17;
}

- (id)identifiersForSource:(void *)source context:
{
  v5 = a2;
  sourceCopy = source;
  if (self)
  {
    self = [self _valueForPropertyKey:@"_identifiers" source:v5 context:sourceCopy];
  }

  return self;
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

- (void)mapUnsupportedRelationshipKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_relationshipsToTranslators objectForKeyedSubscript:?];

  if (v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPBaseEntityTranslator.mm" lineNumber:155 description:{@"[%@] Attempting to unsupport a relationship with an existing mapping: %@", objc_opt_class(), keyCopy}];
  }

  [(NSMutableSet *)self->_unsupportedKeys addObject:keyCopy];
}

- (void)mapUnsupportedPropertyKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"_identifiers"])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPBaseEntityTranslator.mm" lineNumber:149 description:{@"[%@] Attempting to unsupport identifiers for %@", objc_opt_class(), -[MPBaseEntityTranslator MPModelClass](self, "MPModelClass")}];
  }

  v5 = [(NSMutableDictionary *)self->_propertiesToTranslators objectForKeyedSubscript:keyCopy];

  if (v5)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPBaseEntityTranslator.mm" lineNumber:150 description:{@"[%@] Attempting to unsupport a property with an existing mapping: %@", objc_opt_class(), keyCopy}];
  }

  [(NSMutableSet *)self->_unsupportedKeys addObject:keyCopy];
}

- (void)setSourcePreprocessorBlock:(id)block
{
  blockCopy = block;
  v9 = blockCopy;
  if (self->_sourcePreprocessorBlock)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPBaseEntityTranslator.mm" lineNumber:113 description:{@"[%@] Attempting to set a source preprocessor for %@, but one is already set.", objc_opt_class(), -[MPBaseEntityTranslator MPModelClass](self, "MPModelClass")}];

    blockCopy = v9;
  }

  v6 = _Block_copy(blockCopy);
  sourcePreprocessorBlock = self->_sourcePreprocessorBlock;
  self->_sourcePreprocessorBlock = v6;
}

- (id)prepareSource:(id)source context:(id)context properties:(id)properties
{
  sourceCopy = source;
  contextCopy = context;
  v9 = sourceCopy;
  sourcePreprocessorBlock = self->_sourcePreprocessorBlock;
  v11 = v9;
  if (sourcePreprocessorBlock)
  {
    v11 = sourcePreprocessorBlock[2](sourcePreprocessorBlock, v9, contextCopy);
  }

  return v11;
}

- (Class)classForRelationshipKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_relationshipsToTranslators objectForKeyedSubscript:key];
  relatedMPModelClass = [v3 relatedMPModelClass];

  return relatedMPModelClass;
}

- (MPBaseEntityTranslator)initWithMPModelClass:(Class)class
{
  v13.receiver = self;
  v13.super_class = MPBaseEntityTranslator;
  v4 = [(MPBaseEntityTranslator *)&v13 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_MPModelClass, class);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    propertiesToTranslators = v5->_propertiesToTranslators;
    v5->_propertiesToTranslators = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    relationshipsToTranslators = v5->_relationshipsToTranslators;
    v5->_relationshipsToTranslators = dictionary2;

    v10 = [MEMORY[0x1E695DFA8] set];
    unsupportedKeys = v5->_unsupportedKeys;
    v5->_unsupportedKeys = v10;
  }

  return v5;
}

+ (id)createTranslatorForMPModelClass:(Class)class
{
  classCopy = class;
  selfCopy = self;
  os_unfair_lock_lock_with_options();
  v6 = __translatorMap();
  v17 = &classCopy;
  v7 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>,std::__unordered_map_hasher<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const&>,std::piecewise_construct_t const&<>>(v6, class);
  v17 = &selfCopy;
  if (std::__hash_table<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(v7 + 3, self)[3])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:classCopy lineNumber:? description:?];
  }

  v8 = [selfCopy alloc];
  v9 = [v8 initWithMPModelClass:classCopy];
  v10 = __translatorMap();
  v17 = &classCopy;
  v11 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>,std::__unordered_map_hasher<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const&>,std::piecewise_construct_t const&<>>(v10, classCopy);
  v17 = &selfCopy;
  v12 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(v11 + 3, selfCopy);
  objc_storeStrong(v12 + 3, v9);
  os_unfair_lock_unlock(&__translatorLock);

  return v9;
}

+ (void)buildSchemaIfNeeded
{
  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPBaseEntityTranslator.mm" lineNumber:81 description:{@"Subclass %@ must implement -%@ defined in %@.", v6, v7, @"[MPBaseEntityTranslator class]"}];
  }
}

+ (id)translatorForMPModelClass:(Class)class
{
  classCopy = class;
  selfCopy = self;
  [self buildSchemaIfNeeded];
  os_unfair_lock_lock_with_options();
  v5 = __translatorMap();
  v11 = &classCopy;
  v6 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>,std::__unordered_map_hasher<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::unordered_map<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const&>,std::piecewise_construct_t const&<>>(v5, class);
  v11 = &selfCopy;
  v7 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},MPBaseEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(v6 + 3, self)[3];
  os_unfair_lock_unlock(&__translatorLock);

  return v7;
}

- (id)objectForPropertySet:(void *)set source:(void *)source context:
{
  v7 = a2;
  setCopy = set;
  sourceCopy = source;
  if (self)
  {
    self = [self _objectForPropertySet:v7 source:setCopy context:sourceCopy];
  }

  return self;
}

- (void)mapIdentifiersToPropertyTranslator:(id *)translator
{
  v5 = a2;
  if (translator)
  {
    v3 = [translator[1] objectForKeyedSubscript:@"_identifiers"];

    if (v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_mapIdentifiersToPropertyTranslator_ object:translator file:@"MPBaseEntityTranslator.mm" lineNumber:118 description:{@"[%@] Attempting to replace existing identifiers translator for %@", objc_opt_class(), objc_msgSend(translator, "MPModelClass")}];
    }

    [translator[1] setObject:v5 forKeyedSubscript:@"_identifiers"];
  }
}

- (void)mapPropertyKey:(void *)key toPropertyTranslator:
{
  v9 = a2;
  keyCopy = key;
  if (self)
  {
    if ([self[4] containsObject:v9])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_mapPropertyKey_toPropertyTranslator_ object:self file:@"MPBaseEntityTranslator.mm" lineNumber:123 description:{@"[%@] Attempting to map an already unsupported property for %@ : %@", objc_opt_class(), objc_msgSend(self, "MPModelClass"), v9}];
    }

    v6 = [self[1] objectForKeyedSubscript:v9];

    if (v6)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_mapPropertyKey_toPropertyTranslator_ object:self file:@"MPBaseEntityTranslator.mm" lineNumber:124 description:{@"[%@] Attempting to replace existing property translator for %@ : %@", objc_opt_class(), objc_msgSend(self, "MPModelClass"), v9}];
    }

    [self[1] setObject:keyCopy forKeyedSubscript:v9];
  }
}

- (void)mapRelationshipKey:(uint64_t)key ofModelClass:(void *)class toRelationshipTranslator:(void *)translator
{
  classCopy = class;
  translatorCopy = translator;
  if (key)
  {
    if ([*(key + 32) containsObject:classCopy])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_mapRelationshipKey_ofModelClass_toRelationshipTranslator_ object:key file:@"MPBaseEntityTranslator.mm" lineNumber:129 description:{@"[%@] Attempting to map an already unsupported relationship for %@ : %@", objc_opt_class(), objc_msgSend(key, "MPModelClass"), classCopy}];
    }

    v6 = [*(key + 16) objectForKeyedSubscript:classCopy];

    if (v6)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_mapRelationshipKey_ofModelClass_toRelationshipTranslator_ object:key file:@"MPBaseEntityTranslator.mm" lineNumber:130 description:{@"[%@] Attempting to replace existing relationship translator for %@ : %@", objc_opt_class(), objc_msgSend(key, "MPModelClass"), classCopy}];
    }

    [*(key + 16) setObject:translatorCopy forKeyedSubscript:classCopy];
    if (objc_opt_respondsToSelector())
    {
      *(key + 40) |= 1u;
    }
  }
}

@end