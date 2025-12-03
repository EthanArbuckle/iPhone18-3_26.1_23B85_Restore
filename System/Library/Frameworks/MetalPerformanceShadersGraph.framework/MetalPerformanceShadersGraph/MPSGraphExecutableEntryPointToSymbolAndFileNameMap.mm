@interface MPSGraphExecutableEntryPointToSymbolAndFileNameMap
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualTo:(id)to;
- (BOOL)isEqualToPerEntryPointMap:(id)map;
- (MPSGraphExecutableEntryPointToSymbolAndFileNameMap)initWithPerEntryPointMap:(id)map;
- (id)description;
@end

@implementation MPSGraphExecutableEntryPointToSymbolAndFileNameMap

- (MPSGraphExecutableEntryPointToSymbolAndFileNameMap)initWithPerEntryPointMap:(id)map
{
  v33 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v24.receiver = self;
  v24.super_class = MPSGraphExecutableEntryPointToSymbolAndFileNameMap;
  v16 = [(MPSGraphExecutableEntryPointToSymbolAndFileNameMap *)&v24 init];
  if (v16)
  {
    v19 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = mapCopy;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v32 count:16];
    if (v5)
    {
      v18 = *v21;
      do
      {
        v6 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v20 + 1) + 8 * v6);
          v8 = [MPSGraphExecutableShapedEntryPoint alloc];
          entryFunctionName = [v7 entryFunctionName];
          inputTypes = [v7 inputTypes];
          v26 = 0;
          v27 = &v26;
          v28 = 0x3032000000;
          v29 = __Block_byref_object_copy__5;
          v30 = __Block_byref_object_dispose__5;
          v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(inputTypes, "count")}];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = ___Z18getShapesFromTypesP7NSArrayIP12MPSGraphTypeE_block_invoke;
          v25[3] = &unk_1E86D4F38;
          v25[4] = &v26;
          [inputTypes enumerateObjectsUsingBlock:v25];
          v11 = v27[5];
          _Block_object_dispose(&v26, 8);

          v12 = [(MPSGraphExecutableShapedEntryPoint *)v8 initWithEntryFunctionName:entryFunctionName inputTypes:v11];
          v13 = [v4 objectForKeyedSubscript:v7];
          [(NSDictionary *)v19 setObject:v13 forKeyedSubscript:v12];

          ++v6;
        }

        while (v5 != v6);
        v5 = [v4 countByEnumeratingWithState:&v20 objects:v32 count:16];
      }

      while (v5);
    }

    perEntryPointMap = v16->_perEntryPointMap;
    v16->_perEntryPointMap = v19;
  }

  return v16;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  if (toCopy)
  {
    v5 = [(MPSGraphExecutableEntryPointToSymbolAndFileNameMap *)self isEqual:toCopy];

    return v5;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {

    return 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MPSGraphExecutableEntryPointToSymbolAndFileNameMap *)self isEqualToPerEntryPointMap:v5];

    return v6;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqualToPerEntryPointMap:(id)map
{
  mapCopy = map;
  perEntryPointMap = [(MPSGraphExecutableEntryPointToSymbolAndFileNameMap *)self perEntryPointMap];
  perEntryPointMap2 = [mapCopy perEntryPointMap];
  v7 = [perEntryPointMap isEqualToDictionary:perEntryPointMap2];

  return v7;
}

- (id)description
{
  if ([(NSDictionary *)self->_perEntryPointMap count])
  {
    v3 = [&stru_1F5B58250 mutableCopy];
    perEntryPointMap = self->_perEntryPointMap;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__MPSGraphExecutableEntryPointToSymbolAndFileNameMap_description__block_invoke;
    v8[3] = &unk_1E86D4F60;
    v5 = v3;
    v9 = v5;
    [(NSDictionary *)perEntryPointMap enumerateKeysAndObjectsUsingBlock:v8];

    v6 = v5;
  }

  else
  {
    v6 = @"Empty";
  }

  return v6;
}

void __65__MPSGraphExecutableEntryPointToSymbolAndFileNameMap_description__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"* %@ => %@", a2, a3];
  [v3 appendString:?];
}

@end