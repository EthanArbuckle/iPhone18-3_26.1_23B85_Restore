@interface NSItemProvider
- (BOOL)_hasRepresentationConformingToType:(id)a3;
- (BOOL)_hasRepresentationOfType:(id)a3;
- (BOOL)hasRepresentationConformingToTypeIdentifier:(NSString *)typeIdentifier fileOptions:(NSItemProviderFileOptions)fileOptions;
- (NSArray)registeredTypeIdentifiersWithFileOptions:(NSItemProviderFileOptions)fileOptions;
- (NSItemProvider)init;
- (NSItemProvider)initWithCoder:(id)a3;
- (NSItemProvider)initWithContentsOfURL:(NSURL *)fileURL;
- (NSItemProvider)initWithItem:(id)item typeIdentifier:(NSString *)typeIdentifier;
- (NSItemProvider)initWithObject:(id)object;
- (NSProgress)loadDataRepresentationForTypeIdentifier:(NSString *)typeIdentifier completionHandler:(void *)completionHandler;
- (NSProgress)loadFileRepresentationForTypeIdentifier:(NSString *)typeIdentifier completionHandler:(void *)completionHandler;
- (NSProgress)loadInPlaceFileRepresentationForTypeIdentifier:(NSString *)typeIdentifier completionHandler:(void *)completionHandler;
- (NSString)_sanitizedSuggestedName;
- (NSString)suggestedName;
- (id)_availableTypes;
- (id)_availableTypesWithFilterBlock:(id)a3;
- (id)_loadObjectOfClass:(Class)a3 options:(id)a4 completionHandler:(id)a5;
- (id)_readableTypeIdentifiersForItemProviderForClass:(Class)a3;
- (id)_representationConformingToType:(id)a3;
- (id)_representationForType:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_addRepresentationType:(id)a3 preferredRepresentation:(int64_t)a4 loader:(id)a5;
- (void)_addRepresentationType:(id)a3 preferredRepresentation:(int64_t)a4 visibility:(int64_t)a5 loader:(id)a6;
- (void)_commonInitGenerateUUID:(BOOL)a3;
- (void)_loadItemOfClass:(Class)a3 forTypeIdentifier:(id)a4 options:(id)a5 coerceForCoding:(BOOL)a6 completionHandler:(id)a7;
- (void)_loadItemOfClass:(Class)a3 withLoadHandler:(id)a4 options:(id)a5 coerceForCoding:(BOOL)a6 completionHandler:(id)a7;
- (void)_loadPreviewImageOfClass:(Class)a3 options:(id)a4 coerceForCoding:(BOOL)a5 completionHandler:(id)a6;
- (void)_setItemRepresentation:(id)a3;
- (void)_setMetadataValue:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadItemForTypeIdentifier:(NSString *)typeIdentifier options:(NSDictionary *)options completionHandler:(NSItemProviderCompletionHandler)completionHandler;
- (void)loadPreviewImageWithOptions:(NSDictionary *)options completionHandler:(NSItemProviderCompletionHandler)completionHandler;
- (void)registerDataRepresentationForTypeIdentifier:(NSString *)typeIdentifier visibility:(NSItemProviderRepresentationVisibility)visibility loadHandler:(void *)loadHandler;
- (void)registerFileRepresentationForTypeIdentifier:(NSString *)typeIdentifier fileOptions:(NSItemProviderFileOptions)fileOptions visibility:(NSItemProviderRepresentationVisibility)visibility loadHandler:(void *)loadHandler;
- (void)registerItemForTypeIdentifier:(NSString *)typeIdentifier loadHandler:(NSItemProviderLoadHandler)loadHandler;
- (void)registerObject:(id)object visibility:(NSItemProviderRepresentationVisibility)visibility;
- (void)registerObjectOfClass:(id)aClass visibility:(NSItemProviderRepresentationVisibility)visibility loadHandler:(void *)loadHandler;
- (void)setPreviewImageHandler:(NSItemProviderLoadHandler)previewImageHandler;
- (void)setSuggestedName:(NSString *)suggestedName;
@end

@implementation NSItemProvider

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSItemProvider;
  [(NSItemProvider *)&v3 dealloc];
}

- (void)_commonInitGenerateUUID:(BOOL)a3
{
  v3 = a3;
  self->_typeOrder = objc_alloc_init(MEMORY[0x1E695DFA0]);
  self->_representationByType = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_preferredRepresentationByType = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_metadata = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    self->_UUID = objc_alloc_init(NSUUID);
  }
}

- (NSItemProvider)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSItemProvider;
  v2 = [(NSItemProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NSItemProvider *)v2 _commonInitGenerateUUID:1];
  }

  return v3;
}

- (id)_availableTypes
{
  v2 = [-[NSMutableOrderedSet array](self->_typeOrder "array")];

  return v2;
}

- (BOOL)_hasRepresentationOfType:(id)a3
{
  v4 = [(NSItemProvider *)self _typeOrder];

  return [(NSMutableOrderedSet *)v4 containsObject:a3];
}

- (BOOL)_hasRepresentationConformingToType:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSItemProvider *)self _typeOrder];
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ((off_1ED439850)(*(*(&v11 + 1) + 8 * v8), a3))
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (id)_availableTypesWithFilterBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(NSItemProvider *)self _availableTypes];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(NSItemProvider *)self _representationConformingToType:v11];
        if (v12 && (*(a3 + 2))(a3, v12))
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }

  return v6;
}

- (void)_addRepresentationType:(id)a3 preferredRepresentation:(int64_t)a4 visibility:(int64_t)a5 loader:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = _NSIPLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if (a4 > 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = off_1E69F5DA0[a4];
    }

    v13 = _NSIPLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134349570;
      v16 = self;
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = a3;
      _os_log_debug_impl(&dword_18075C000, v13, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Registering %{public}@ representation for type '%{public}@'", &v15, 0x20u);
    }
  }

  v14 = [[NSItemProviderRepresentation alloc] initWithType_v2:a3 preferredRepresentation:a4 loader:a6];
  [(NSItemProviderRepresentation *)v14 setVisibility:a5];
  [(NSItemProvider *)self _setItemRepresentation:v14];
}

- (void)_addRepresentationType:(id)a3 preferredRepresentation:(int64_t)a4 loader:(id)a5
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__NSItemProvider__addRepresentationType_preferredRepresentation_loader___block_invoke;
  v5[3] = &unk_1E69F56E0;
  v5[4] = a5;
  [(NSItemProvider *)self _addRepresentationType_v2:a3 preferredRepresentation:a4 loader:v5];
}

uint64_t __72__NSItemProvider__addRepresentationType_preferredRepresentation_loader___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__NSItemProvider__addRepresentationType_preferredRepresentation_loader___block_invoke_2;
  v8[3] = &unk_1E69F56B8;
  v8[4] = a3;
  return (*(v6 + 16))(v6, a2, v8, a4, a5, a6);
}

uint64_t __72__NSItemProvider__addRepresentationType_preferredRepresentation_loader___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = [NSItemRepresentationLoadResult resultWithData:a2 urlWrapper:a3 cleanupHandler:a5 error:a4];
  v7 = *(v5 + 16);

  return v7(v5, v6);
}

- (id)_representationConformingToType:(id)a3
{
  result = _bestMatchType(a3, [(NSMutableOrderedSet *)[(NSItemProvider *)self _typeOrder] array], &__block_literal_global_360);
  if (result)
  {

    return [(NSItemProvider *)self _representationForType:result];
  }

  return result;
}

- (void)_setItemRepresentation:(id)a3
{
  v5 = [a3 typeIdentifier];
  [(NSMutableOrderedSet *)self->_typeOrder addObject:v5];
  [(NSMutableDictionary *)self->_representationByType setObject:a3 forKeyedSubscript:v5];
  v6 = [(NSMutableDictionary *)self->_preferredRepresentationByType objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [v6 unsignedIntegerValue];

    [a3 setPreferredRepresentation:v7];
  }

  else
  {
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 preferredRepresentation]);
    preferredRepresentationByType = self->_preferredRepresentationByType;

    [(NSMutableDictionary *)preferredRepresentationByType setObject:v8 forKeyedSubscript:v5];
  }
}

- (id)_representationForType:(id)a3
{
  v4 = [(NSItemProvider *)self _representationByType];

  return [(NSMutableDictionary *)v4 objectForKeyedSubscript:a3];
}

- (void)_setMetadataValue:(id)a3 forKey:(id)a4
{
  metadata = self->_metadata;
  if (a3)
  {
    [(NSMutableDictionary *)metadata setObject:a3 forKeyedSubscript:a4];
  }

  else
  {
    [(NSMutableDictionary *)metadata removeObjectForKey:a4];
  }
}

- (NSString)suggestedName
{
  v2 = self->_suggestedName;

  return v2;
}

- (void)setSuggestedName:(NSString *)suggestedName
{
  objc_sync_enter(self);
  v5 = self->_suggestedName;
  if (v5 != suggestedName)
  {
    self->_suggestedName = [(NSString *)suggestedName copy];

    self->_sanitizedSuggestedName = 0;
  }

  objc_sync_exit(self);
}

- (NSString)_sanitizedSuggestedName
{
  objc_sync_enter(self);
  sanitizedSuggestedName = self->_sanitizedSuggestedName;
  if (sanitizedSuggestedName)
  {
    v4 = sanitizedSuggestedName;
  }

  else
  {
    suggestedName = self->_suggestedName;
    if (suggestedName)
    {
      v4 = _NSIPSanitizedFilename(suggestedName);
      self->_sanitizedSuggestedName = v4;
    }

    else
    {
      v4 = 0;
    }
  }

  objc_sync_exit(self);
  return v4;
}

- (NSArray)registeredTypeIdentifiersWithFileOptions:(NSItemProviderFileOptions)fileOptions
{
  if (fileOptions)
  {
    return [(NSItemProvider *)self _availableTypesWithFilterBlock:&__block_literal_global_43];
  }

  else
  {
    return [(NSItemProvider *)self _availableTypes];
  }
}

- (BOOL)hasRepresentationConformingToTypeIdentifier:(NSString *)typeIdentifier fileOptions:(NSItemProviderFileOptions)fileOptions
{
  v19 = *MEMORY[0x1E69E9840];
  if (fileOptions)
  {
    v7 = [(NSItemProvider *)self _availableTypes];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v16;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [(NSItemProvider *)self _representationConformingToType:*(*(&v15 + 1) + 8 * v10)];
          if ([v11 preferredRepresentation] == 2)
          {
            v12 = [v11 typeIdentifier];
            if ((off_1ED439850)(v12, typeIdentifier))
            {
              LOBYTE(v6) = 1;
              return v6;
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v6 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
        v8 = v6;
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {

    LOBYTE(v6) = [(NSItemProvider *)self _hasRepresentationConformingToType:?];
  }

  return v6;
}

- (void)registerDataRepresentationForTypeIdentifier:(NSString *)typeIdentifier visibility:(NSItemProviderRepresentationVisibility)visibility loadHandler:(void *)loadHandler
{
  v7[5] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__NSItemProvider_registerDataRepresentationForTypeIdentifier_visibility_loadHandler___block_invoke;
  v7[3] = &unk_1E69F56E0;
  v7[4] = loadHandler;
  [(NSItemProvider *)self _addRepresentationType:typeIdentifier preferredRepresentation:0 visibility:visibility loader:v7];
  [(NSMutableDictionary *)self->_preferredRepresentationByType setObject:&off_1EEF57368 forKeyedSubscript:typeIdentifier];
}

uint64_t __85__NSItemProvider_registerDataRepresentationForTypeIdentifier_visibility_loadHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__NSItemProvider_registerDataRepresentationForTypeIdentifier_visibility_loadHandler___block_invoke_2;
  v8[3] = &unk_1E69F5728;
  v8[4] = a3;
  return (*(v6 + 16))(v6, v8, a3, a4, a5, a6);
}

uint64_t __85__NSItemProvider_registerDataRepresentationForTypeIdentifier_visibility_loadHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSItemRepresentationLoadResult resultWithData:a2 urlWrapper:0 cleanupHandler:0 error:a3];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

- (void)registerFileRepresentationForTypeIdentifier:(NSString *)typeIdentifier fileOptions:(NSItemProviderFileOptions)fileOptions visibility:(NSItemProviderRepresentationVisibility)visibility loadHandler:(void *)loadHandler
{
  if (fileOptions)
  {
    v8 = &off_1EEF57380;
  }

  else
  {
    v8 = &off_1EEF57398;
  }

  LOBYTE(v9) = fileOptions == 0;
  [(NSItemProvider *)self _addRepresentationType:MEMORY[0x1E69E9820] preferredRepresentation:3221225472 visibility:__97__NSItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_visibility_loadHandler___block_invoke loader:&unk_1E69F57C8, typeIdentifier, loadHandler, v9, *MEMORY[0x1E69E9840]];
  [(NSMutableDictionary *)self->_preferredRepresentationByType setObject:v8 forKeyedSubscript:typeIdentifier];
}

uint64_t __97__NSItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_visibility_loadHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97__NSItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_visibility_loadHandler___block_invoke_2;
  v5[3] = &unk_1E69F57A0;
  v6 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v5[5] = a3;
  return (*(v3 + 16))(v3, v5);
}

void __97__NSItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_visibility_loadHandler___block_invoke_2(uint64_t a1, void *a2, int a3, NSError *a4)
{
  v4 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__14;
  v30 = __Block_byref_object_dispose__14;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__45;
  v24 = __Block_byref_object_dispose__46;
  v25 = 0;
  v6 = a4;
  if (!a2)
  {
    goto LABEL_10;
  }

  v6 = a4;
  if (a4)
  {
    goto LABEL_10;
  }

  if (![a2 isFileURL])
  {
    v10 = _NSIPLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a2;
      _os_log_error_impl(&dword_18075C000, v10, OS_LOG_TYPE_ERROR, "URL %@ is not a file:// URL.", &buf, 0xCu);
    }

    RepresentationError = _NSIPCannotLoadRepresentationError(*(a1 + 32), 0);
    goto LABEL_9;
  }

  if (softLinkFPIsFileProviderBookmark(a2, 0))
  {
    v9 = [[NSSecurityScopedURLWrapper alloc] initWithURL:a2 readonly:*(a1 + 48)];
    v6 = 0;
    v27[5] = v9;
    goto LABEL_10;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__NSItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_visibility_loadHandler___block_invoke_48;
  v19[3] = &unk_1E69F5750;
  v19[4] = *(a1 + 32);
  v19[5] = &v26;
  v19[6] = &v20;
  if (!a3)
  {
    RepresentationError = __97__NSItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_visibility_loadHandler___block_invoke_48(v19, a2);
LABEL_9:
    v6 = RepresentationError;
    goto LABEL_10;
  }

  v12 = [a2 startAccessingSecurityScopedResource];
  v13 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3052000000;
  v39 = __Block_byref_object_copy__14;
  v40 = __Block_byref_object_dispose__14;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v43 = ___synchronousCoordinatedRead_block_invoke;
  v44 = &unk_1E69F5D78;
  v45 = v19;
  v46 = &v36;
  v47 = &v32;
  [(NSFileCoordinator *)v13 coordinateReadingItemAtURL:a2 options:1 error:&v41 byAccessor:&buf];
  if (v12)
  {
    [a2 stopAccessingSecurityScopedResource];
  }

  v6 = v37[5];
  if (*(v33 + 24) == 1)
  {
    v6 = v6;
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
LABEL_10:
  if (!(v27[5] | v6))
  {
    v6 = _NSIPCannotLoadRepresentationError(*(a1 + 32), 0);
  }

  if (v6)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __97__NSItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_visibility_loadHandler___block_invoke_52;
    v17 = &unk_1E69F5778;
    v18 = *(a1 + 32);
    if (v4)
    {
      if (![(NSString *)[(NSError *)v4 domain:v14] isEqualToString:@"NSItemProviderErrorDomain"])
      {
        v4 = v16(&v14, v4);
      }
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [NSItemRepresentationLoadResult resultWithData:0 urlWrapper:v27[5] cleanupHandler:v21[5] error:v4, v14, v15]);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
}

NSError *__97__NSItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_visibility_loadHandler___block_invoke_48(uint64_t *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v4 = _NSIPCloneURLToTemporaryFolder(a2, a1[4], 0, &v8, &v9);
  v5 = _NSIPLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v11 = a2;
    v12 = 2112;
    v13 = v4;
    _os_log_debug_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEBUG, "Load handler provided a local file at %@ that should not be opened in-place, NSItemProvider will vend a temporary copy created at %@", buf, 0x16u);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    *(*(a1[5] + 8) + 40) = [[NSSecurityScopedURLWrapper alloc] initWithURL:v4 readonly:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __97__NSItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_visibility_loadHandler___block_invoke_49;
    v7[3] = &unk_1E69F2C00;
    v7[4] = v8;
    *(*(a1[6] + 8) + 40) = [v7 copy];
    return v9;
  }

  return _NSIPCannotLoadRepresentationError(a1[4], 0);
}

BOOL __97__NSItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_visibility_loadHandler___block_invoke_49(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _NSIPLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_debug_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEBUG, "Removing temporary folder at %@ created for an in-place load of an item that provided a copy representation", &v5, 0xCu);
  }

  return [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:*(a1 + 32), 0];
}

- (NSProgress)loadDataRepresentationForTypeIdentifier:(NSString *)typeIdentifier completionHandler:(void *)completionHandler
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(_NSIPCallbackSerialization);
  objc_initWeak(&location, v7);
  v8 = _NSIPLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    v23 = self;
    v24 = 2114;
    v25 = typeIdentifier;
    _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading data representation for type identifier '%{public}@'", buf, 0x16u);
  }

  v9 = [(NSItemProvider *)self _representationConformingToType:typeIdentifier];
  objc_initWeak(&from, self);
  if (!v9)
  {
    v11 = _NSIPLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349314;
      v23 = self;
      v24 = 2114;
      v25 = typeIdentifier;
      _os_log_error_impl(&dword_18075C000, v11, OS_LOG_TYPE_ERROR, "<NSItemProvider %{public}p> Cannot find representation conforming to type '%{public}@'", buf, 0x16u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_63;
    block[3] = &unk_1E69F5840;
    block[4] = v7;
    objc_copyWeak(&v16, &location);
    block[6] = typeIdentifier;
    block[7] = completionHandler;
    block[5] = self;
    _NSIPDispatchAsyncCallback(block);
    objc_destroyWeak(&v16);
    goto LABEL_9;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke;
  v17[3] = &unk_1E69F5818;
  v17[4] = typeIdentifier;
  objc_copyWeak(&v18, &from);
  v17[5] = v7;
  objc_copyWeak(&v19, &location);
  v17[6] = self;
  v17[7] = completionHandler;
  v10 = [v9 loadDataWithOptions_v2:0 completionHandler:v17];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  if (!v10)
  {
LABEL_9:
    v10 = [NSProgress discreteProgressWithTotalUnitCount:100];
    [(NSProgress *)v10 setCompletedUnitCount:[(NSProgress *)v10 totalUnitCount]];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_3;
  v13[3] = &unk_1E69F5868;
  objc_copyWeak(&v14, &location);
  v13[4] = self;
  v13[5] = v10;
  [(_NSIPCallbackSerialization *)v7 sendBeginBlock:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  return v10;
}

void __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [a2 error];
  if (v4)
  {
    v5 = v4;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_2;
    v17 = &unk_1E69F5778;
    v18 = *(a1 + 32);
    if (([objc_msgSend(v4 "domain")] & 1) == 0)
    {
      v5 = v16(v15, v5);
    }

    v6 = _NSIPLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      Weak = objc_loadWeak((a1 + 64));
      v8 = *(a1 + 32);
      *buf = 134349570;
      v20 = Weak;
      v21 = 2114;
      v22 = v8;
      v23 = 2112;
      v24 = v5;
      _os_log_error_impl(&dword_18075C000, v6, OS_LOG_TYPE_ERROR, "<NSItemProvider %{public}p> Finished loading data representation for type identifier '%{public}@' with error: %@", buf, 0x20u);
    }
  }

  else
  {
    v9 = _NSIPLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_loadWeak((a1 + 64));
      v12 = *(a1 + 32);
      *buf = 134349570;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      v24 = [objc_msgSend(a2 "data")];
      _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Finished loading data representation for type identifier '%{public}@' with %lu bytes of data", buf, 0x20u);
    }

    v5 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_60;
  block[3] = &unk_1E69F57F0;
  block[4] = *(a1 + 40);
  objc_copyWeak(&v14, (a1 + 72));
  v10 = *(a1 + 56);
  block[5] = *(a1 + 48);
  block[6] = a2;
  block[7] = v5;
  block[8] = v10;
  _NSIPDispatchAsyncCallback(block);
  objc_destroyWeak(&v14);
}

void __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_60(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_2_61;
  v4[3] = &unk_1E69F55A8;
  objc_copyWeak(v5, (a1 + 72));
  v4[4] = *(a1 + 40);
  [(_NSIPCallbackSerialization *)v2 sendEndBlock:v4];
  v3 = *(a1 + 64);
  if (v3)
  {
    (*(v3 + 16))(v3, [*(a1 + 48) data], *(a1 + 56));
  }

  objc_destroyWeak(v5);
}

uint64_t __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_2_61(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  return [v3 itemProvider:v4 finishedDataTransferTransactionUUID:v5];
}

void __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_63(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_2_64;
  v5[3] = &unk_1E69F55A8;
  objc_copyWeak(v6, (a1 + 64));
  v5[4] = *(a1 + 40);
  [(_NSIPCallbackSerialization *)v2 sendEndBlock:v5];
  v3 = *(a1 + 56);
  if (v3)
  {
    RepresentationError = _NSIPCannotLoadRepresentationError(*(a1 + 48), 0);
    (*(v3 + 16))(v3, 0, RepresentationError);
  }

  objc_destroyWeak(v6);
}

uint64_t __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_2_64(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  return [v3 itemProvider:v4 finishedDataTransferTransactionUUID:v5];
}

uint64_t __76__NSItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_3(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);

  return [v3 itemProvider:v4 beganDataTransferTransactionUUID:v5 progress:v6];
}

- (NSProgress)loadFileRepresentationForTypeIdentifier:(NSString *)typeIdentifier completionHandler:(void *)completionHandler
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = _NSIPLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    v23 = self;
    v24 = 2114;
    v25 = typeIdentifier;
    _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading file representation for type identifier '%{public}@'", buf, 0x16u);
  }

  v8 = objc_alloc_init(_NSIPCallbackSerialization);
  objc_initWeak(&location, v8);
  objc_initWeak(&from, self);
  v9 = [(NSItemProvider *)self _representationConformingToType:typeIdentifier];
  if (!v9)
  {
    v11 = _NSIPLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349314;
      v23 = self;
      v24 = 2114;
      v25 = typeIdentifier;
      _os_log_error_impl(&dword_18075C000, v11, OS_LOG_TYPE_ERROR, "<NSItemProvider %{public}p> Cannot find representation conforming to type '%{public}@'", buf, 0x16u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_70;
    block[3] = &unk_1E69F5840;
    block[4] = v8;
    objc_copyWeak(&v16, &location);
    block[6] = typeIdentifier;
    block[7] = completionHandler;
    block[5] = self;
    _NSIPDispatchAsyncCallback(block);
    objc_destroyWeak(&v16);
    goto LABEL_9;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke;
  v17[3] = &unk_1E69F5A98;
  v17[4] = typeIdentifier;
  objc_copyWeak(&v18, &from);
  v17[5] = v8;
  objc_copyWeak(&v19, &location);
  v17[7] = v9;
  v17[8] = completionHandler;
  v17[6] = self;
  v10 = [v9 loadFileCopyWithOptions_v2:0 completionHandler:v17];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  if (!v10)
  {
LABEL_9:
    v10 = [NSProgress discreteProgressWithTotalUnitCount:100];
    [(NSProgress *)v10 setCompletedUnitCount:[(NSProgress *)v10 totalUnitCount]];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_3;
  v13[3] = &unk_1E69F5868;
  objc_copyWeak(&v14, &location);
  v13[4] = self;
  v13[5] = v10;
  [(_NSIPCallbackSerialization *)v8 sendBeginBlock:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  return v10;
}

void __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = [a2 error];
  if (v4)
  {
    v5 = v4;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v33 = __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2;
    v34 = &unk_1E69F5778;
    v35 = *(a1 + 32);
    if (([objc_msgSend(v4 "domain")] & 1) == 0)
    {
      v5 = v33(v32, v5);
    }

    v6 = _NSIPLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      Weak = objc_loadWeak((a1 + 72));
      v16 = *(a1 + 32);
      *buf = 134349570;
      v37 = Weak;
      v38 = 2114;
      v39 = v16;
      v40 = 2112;
      v41 = v5;
      _os_log_error_impl(&dword_18075C000, v6, OS_LOG_TYPE_ERROR, "<NSItemProvider %{public}p> Finished loading file representation for type identifier '%{public}@' with error: %@", buf, 0x20u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_65;
    block[3] = &unk_1E69F5840;
    block[4] = *(a1 + 40);
    objc_copyWeak(&v31, (a1 + 80));
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    block[6] = v5;
    block[7] = v8;
    block[5] = v7;
    _NSIPDispatchAsyncCallback(block);
    objc_destroyWeak(&v31);
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v9 = _NSIPCloneURLToTemporaryFolder([objc_msgSend(a2 "urlWrapper")], objc_msgSend(*(a1 + 56), "typeIdentifier"), objc_msgSend(*(a1 + 48), "_sanitizedSuggestedName"), &v28, &v29);
    v10 = v29 == 0;
    v11 = _NSIPLogger();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v19 = objc_loadWeak((a1 + 72));
        v20 = *(a1 + 32);
        *buf = 134349570;
        v37 = v19;
        v38 = 2114;
        v39 = v20;
        v40 = 2112;
        v41 = v9;
        _os_log_debug_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Finished loading file representation for type identifier '%{public}@' and successfully created a temporary copy at %@", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_loadWeak((a1 + 72));
        v18 = [objc_msgSend(a2 "urlWrapper")];
        *buf = 134349570;
        v37 = v17;
        v38 = 2112;
        v39 = v18;
        v40 = 2112;
        v41 = 0;
        _os_log_error_impl(&dword_18075C000, v12, OS_LOG_TYPE_ERROR, "<NSItemProvider %{public}p> Failed to copy item at %@ to temporary folder with error: %@", buf, 0x20u);
      }

      v13 = v29;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v24 = __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_67;
      v25 = &unk_1E69F5890;
      v26 = *(a1 + 32);
      v27 = v29;
      if (v29 && ![(NSString *)[(NSError *)v29 domain] isEqualToString:@"NSItemProviderErrorDomain"])
      {
        v13 = (v24)(v23, v13);
      }

      v29 = v13;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_68;
    v21[3] = &unk_1E69F58B8;
    v21[4] = *(a1 + 40);
    objc_copyWeak(&v22, (a1 + 80));
    v14 = *(a1 + 64);
    v21[5] = *(a1 + 48);
    v21[6] = v9;
    v21[7] = v29;
    v21[8] = v28;
    v21[9] = v14;
    _NSIPDispatchAsyncCallback(v21);
    objc_destroyWeak(&v22);
  }
}

void __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_65(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2_66;
  v4[3] = &unk_1E69F55A8;
  objc_copyWeak(v5, (a1 + 64));
  v4[4] = *(a1 + 40);
  [(_NSIPCallbackSerialization *)v2 sendEndBlock:v4];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, *(a1 + 48));
  }

  objc_destroyWeak(v5);
}

uint64_t __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2_66(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  return [v3 itemProvider:v4 finishedDataTransferTransactionUUID:v5];
}

void __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_68(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2_69;
  v4[3] = &unk_1E69F55A8;
  objc_copyWeak(v5, (a1 + 80));
  v4[4] = *(a1 + 40);
  [(_NSIPCallbackSerialization *)v2 sendEndBlock:v4];
  v3 = *(a1 + 72);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 48), *(a1 + 56));
  }

  if (*(a1 + 64))
  {
    [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:*(a1 + 64), 0];
  }

  objc_destroyWeak(v5);
}

uint64_t __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2_69(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  return [v3 itemProvider:v4 finishedDataTransferTransactionUUID:v5];
}

void __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_70(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2_71;
  v5[3] = &unk_1E69F55A8;
  objc_copyWeak(v6, (a1 + 64));
  v5[4] = *(a1 + 40);
  [(_NSIPCallbackSerialization *)v2 sendEndBlock:v5];
  v3 = *(a1 + 56);
  if (v3)
  {
    RepresentationError = _NSIPCannotLoadRepresentationError(*(a1 + 48), 0);
    (*(v3 + 16))(v3, 0, RepresentationError);
  }

  objc_destroyWeak(v6);
}

uint64_t __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2_71(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  return [v3 itemProvider:v4 finishedDataTransferTransactionUUID:v5];
}

uint64_t __76__NSItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_3(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);

  return [v3 itemProvider:v4 beganDataTransferTransactionUUID:v5 progress:v6];
}

- (NSProgress)loadInPlaceFileRepresentationForTypeIdentifier:(NSString *)typeIdentifier completionHandler:(void *)completionHandler
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = _NSIPLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *from = 134349314;
    *&from[4] = self;
    v26 = 2114;
    v27 = typeIdentifier;
    _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading in-place file representation for type identifier '%{public}@'", from, 0x16u);
  }

  v8 = objc_alloc_init(_NSIPCallbackSerialization);
  objc_initWeak(&location, v8);
  v9 = [NSProgress discreteProgressWithTotalUnitCount:100];
  v10 = [(NSItemProvider *)self _representationConformingToType:typeIdentifier];
  if (v10)
  {
    v11 = [NSProgress discreteProgressWithTotalUnitCount:100];
    objc_initWeak(from, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke;
    v21[3] = &unk_1E69F5930;
    objc_copyWeak(&v22, from);
    v21[4] = typeIdentifier;
    v21[5] = self;
    v21[6] = v10;
    v21[7] = v8;
    objc_copyWeak(&v23, &location);
    v21[8] = v11;
    v21[9] = completionHandler;
    v12 = [v10 loadOpenInPlaceWithOptions_v2:0 completionHandler:v21];
    if (v12)
    {
      [(NSProgress *)v9 addChild:v12 withPendingUnitCount:50];
    }

    else
    {
      [(NSProgress *)v9 setCompletedUnitCount:50];
    }

    [(NSProgress *)v9 addChild:v11 withPendingUnitCount:50];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(from);
  }

  else
  {
    [(NSProgress *)v9 setCompletedUnitCount:[(NSProgress *)v9 totalUnitCount]];
    RepresentationError = _NSIPCannotLoadRepresentationError(typeIdentifier, 0);
    v14 = _NSIPLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *from = 134349314;
      *&from[4] = self;
      v26 = 2114;
      v27 = typeIdentifier;
      _os_log_error_impl(&dword_18075C000, v14, OS_LOG_TYPE_ERROR, "<NSItemProvider %{public}p> Cannot find representation conforming to type '%{public}@'", from, 0x16u);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke_82;
    v19[3] = &unk_1E69F55A8;
    objc_copyWeak(&v20, &location);
    v19[4] = self;
    [(_NSIPCallbackSerialization *)v8 sendEndBlock:v19];
    if (completionHandler)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2_83;
      block[3] = &unk_1E69F3910;
      block[4] = RepresentationError;
      block[5] = completionHandler;
      _NSIPDispatchAsyncCallback(block);
    }

    objc_destroyWeak(&v20);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke_3_84;
  v16[3] = &unk_1E69F5868;
  objc_copyWeak(&v17, &location);
  v16[4] = self;
  v16[5] = v9;
  [(_NSIPCallbackSerialization *)v8 sendBeginBlock:v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  return v9;
}

void __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = [a2 error];
  v30 = 0;
  v31 = v4;
  if (![objc_msgSend(a2 "urlWrapper")] || v4)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v27 = __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke_79;
    v28 = &unk_1E69F5778;
    v29 = *(a1 + 32);
    if (v4 && ![(NSString *)[(NSError *)v4 domain] isEqualToString:@"NSItemProviderErrorDomain"])
    {
      v4 = v27(v26, v4);
    }

    v31 = v4;
    v10 = _NSIPLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      Weak = objc_loadWeak((a1 + 80));
      v18 = *(a1 + 32);
      *buf = 134349570;
      v33 = Weak;
      v34 = 2114;
      v35 = v18;
      v36 = 2112;
      v37 = v4;
      _os_log_error_impl(&dword_18075C000, v10, OS_LOG_TYPE_ERROR, "<NSItemProvider %{public}p> Finished loading in-place file representation for type identifier '%{public}@' with error: %@", buf, 0x20u);
    }

    v5 = 0;
    v9 = 0;
  }

  else
  {
    v5 = [objc_msgSend(a2 "urlWrapper")];
    v6 = _NSIPLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_loadWeak((a1 + 80));
      v14 = *(a1 + 32);
      v15 = [a2 wasOpenedInPlace];
      v16 = @"was NOT opened in-place";
      *buf = 134349570;
      v33 = v13;
      if (v15)
      {
        v16 = @"was opened in-place";
      }

      v34 = 2114;
      v35 = v14;
      v36 = 2112;
      v37 = v16;
      _os_log_debug_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading in-place file representation for type identifier '%{public}@' finished loading (%@)", buf, 0x20u);
    }

    if (([a2 wasOpenedInPlace] & 1) == 0)
    {
      v5 = _NSIPCloneURLToTemporaryFolder([objc_msgSend(a2 "urlWrapper")], objc_msgSend(*(a1 + 48), "typeIdentifier"), objc_msgSend(*(a1 + 40), "_sanitizedSuggestedName"), &v30, &v31);
      v7 = _NSIPLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v19 = objc_loadWeak((a1 + 80));
        *buf = 134349314;
        v33 = v19;
        v34 = 2112;
        v35 = v5;
        _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> An in-place load was requested but the file was not loaded in-place, NSItemProvider will provide a URL to a temporary copy created at %@", buf, 0x16u);
      }

      if (v31)
      {
        v8 = _NSIPLogger();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_loadWeak((a1 + 80));
          v21 = [objc_msgSend(a2 "urlWrapper")];
          *buf = 134349570;
          v33 = v20;
          v34 = 2112;
          v35 = v21;
          v36 = 2112;
          v37 = v31;
          _os_log_error_impl(&dword_18075C000, v8, OS_LOG_TYPE_ERROR, "<NSItemProvider %{public}p> Failed to copy item at %@ to temporary folder with error: %@", buf, 0x20u);
        }
      }
    }

    v9 = [a2 wasOpenedInPlace];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke_80;
  v22[3] = &unk_1E69F5908;
  v22[4] = *(a1 + 56);
  objc_copyWeak(&v23, (a1 + 88));
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v22[5] = *(a1 + 40);
  v22[6] = v11;
  v25 = v9;
  v22[7] = v5;
  v22[8] = v31;
  v22[9] = a2;
  v22[10] = v30;
  v22[11] = v12;
  objc_copyWeak(&v24, (a1 + 80));
  _NSIPDispatchAsyncCallback(v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);
}

void __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke_80(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_1E69F55A8;
  objc_copyWeak(v8, (a1 + 96));
  v7[4] = *(a1 + 40);
  [(_NSIPCallbackSerialization *)v2 sendEndBlock:v7];
  [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount")}];
  v3 = *(a1 + 88);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 56), *(a1 + 112), *(a1 + 64));
  }

  if ([*(a1 + 72) cleanupHandler])
  {
    (*([*(a1 + 72) cleanupHandler] + 16))();
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke_3;
    v5[3] = &unk_1E69F58E0;
    objc_copyWeak(&v6, (a1 + 104));
    _NSIPCoordinatedDelete(v4, v5);
    objc_destroyWeak(&v6);
  }

  objc_destroyWeak(v8);
}

uint64_t __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  return [v3 itemProvider:v4 finishedDataTransferTransactionUUID:v5];
}

BOOL __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke_3(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 && !a3)
  {
    v4 = result;
    v5 = _NSIPLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349314;
      Weak = objc_loadWeak((v4 + 32));
      v8 = 2112;
      v9 = a2;
      _os_log_debug_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Performing a coordinated delete of the cloned temporary file at %@", &v6, 0x16u);
    }

    return [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:a2, 0];
  }

  return result;
}

uint64_t __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke_82(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  return [v3 itemProvider:v4 finishedDataTransferTransactionUUID:v5];
}

uint64_t __83__NSItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke_3_84(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);

  return [v3 itemProvider:v4 beganDataTransferTransactionUUID:v5 progress:v6];
}

- (NSItemProvider)initWithObject:(id)object
{
  v4 = [(NSItemProvider *)self init];
  v5 = v4;
  if (v4)
  {
    [(NSItemProvider *)v4 registerObject:object visibility:0];
  }

  return v5;
}

- (void)registerObject:(id)object visibility:(NSItemProviderRepresentationVisibility)visibility
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_respondsToSelector();
  v8 = object;
  if ((v7 & 1) == 0)
  {
    v8 = objc_opt_class();
  }

  v9 = [v8 writableTypeIdentifiersForItemProvider];
  v26 = objc_opt_respondsToSelector();
  v25 = objc_opt_respondsToSelector();
  objc_opt_class();
  v24 = objc_opt_respondsToSelector();
  objc_opt_class();
  v23 = objc_opt_respondsToSelector();
  v10 = _NSIPLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v21 = objc_opt_class();
    *location = 134349570;
    *&location[4] = self;
    v39 = 2114;
    v40 = NSStringFromClass(v21);
    v41 = 2114;
    v42 = v9;
    _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Registering NSItemProviderWriting object of class %{public}@ with declared types %{public}@", location, 0x20u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v9;
  v11 = [v9 countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v11)
  {
    v12 = *v35;
    v22 = v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        if (![(NSItemProvider *)self _hasRepresentationOfType:v14, v22])
        {
          v15 = object;
          if (v26)
          {
LABEL_14:
            v17 = [v15 itemProviderVisibilityForRepresentationWithTypeIdentifier:v14];
            if (v17 <= visibility)
            {
              v16 = visibility;
            }

            else
            {
              v16 = v17;
            }
          }

          else
          {
            v16 = visibility;
            if (v24)
            {
              v15 = objc_opt_class();
              goto LABEL_14;
            }
          }

          v18 = object;
          if (v25)
          {
LABEL_20:
            v19 = [v18 _preferredRepresentationForItemProviderWritableTypeIdentifier:v14];
            objc_initWeak(location, self);
            if (!v19)
            {
              goto LABEL_23;
            }

            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v29[0] = __44__NSItemProvider_registerObject_visibility___block_invoke_2;
            v29[1] = &unk_1E69F5980;
            objc_copyWeak(&v30, location);
            v29[2] = object;
            v29[3] = v14;
            [(NSItemProvider *)self registerFileRepresentationForTypeIdentifier:v14 fileOptions:v19 == 2 visibility:v16 loadHandler:v28];
            v20 = &v30;
          }

          else
          {
            if (v23)
            {
              v18 = objc_opt_class();
              goto LABEL_20;
            }

            objc_initWeak(location, self);
LABEL_23:
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __44__NSItemProvider_registerObject_visibility___block_invoke;
            v31[3] = &unk_1E69F5958;
            objc_copyWeak(&v32, location);
            v31[4] = object;
            v31[5] = v14;
            [(NSItemProvider *)self registerDataRepresentationForTypeIdentifier:v14 visibility:v16 loadHandler:v31];
            v20 = &v32;
          }

          objc_destroyWeak(v20);
          objc_destroyWeak(location);
          continue;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v11);
  }

  if (objc_opt_respondsToSelector())
  {
    [(NSItemProvider *)self _NSItemProviderDidRegisterObject:object];
  }
}

uint64_t __44__NSItemProvider_registerObject_visibility___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _NSIPLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Weak = objc_loadWeak((a1 + 48));
    v7 = objc_opt_class();
    *buf = 134349314;
    v9 = Weak;
    v10 = 2114;
    v11 = NSStringFromClass(v7);
    _os_log_debug_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Calling out to [%{public}@ loadDataWithTypeIdentifier:] to provide data representation for object", buf, 0x16u);
  }

  return [*(a1 + 32) loadDataWithTypeIdentifier:MEMORY[0x1E69E9820] forItemProviderCompletionHandler:{3221225472, __44__NSItemProvider_registerObject_visibility___block_invoke_91, &unk_1E69F59A8, *(a1 + 40), a2}];
}

uint64_t __44__NSItemProvider_registerObject_visibility___block_invoke_91(uint64_t a1, uint64_t a2, NSError *RepresentationError)
{
  v3 = *(a1 + 40);
  if (!a2 || RepresentationError)
  {
    RepresentationError = _NSIPCannotLoadRepresentationError(*(a1 + 32), RepresentationError);
    v4 = *(v3 + 16);
    v5 = v3;
    a2 = 0;
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 40);
  }

  return v4(v5, a2, RepresentationError);
}

uint64_t __44__NSItemProvider_registerObject_visibility___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _NSIPLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Weak = objc_loadWeak((a1 + 48));
    v7 = objc_opt_class();
    *buf = 134349314;
    v9 = Weak;
    v10 = 2114;
    v11 = NSStringFromClass(v7);
    _os_log_debug_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Calling out to [%{public}@ _loadFileRepresentationOfTypeIdentifier:] to provide data representation for object", buf, 0x16u);
  }

  return [*(a1 + 32) _loadFileRepresentationOfTypeIdentifier:MEMORY[0x1E69E9820] forItemProviderCompletionHandler:{3221225472, __44__NSItemProvider_registerObject_visibility___block_invoke_93, &unk_1E69F5A20, *(a1 + 40), a2}];
}

uint64_t __44__NSItemProvider_registerObject_visibility___block_invoke_93(uint64_t a1, uint64_t a2, uint64_t a3, NSError *RepresentationError)
{
  v4 = a3;
  v5 = *(a1 + 40);
  if (!a2 || RepresentationError)
  {
    RepresentationError = _NSIPCannotLoadRepresentationError(*(a1 + 32), RepresentationError);
    v6 = *(v5 + 16);
    v7 = v5;
    a2 = 0;
    a3 = v4;
  }

  else
  {
    v6 = *(v5 + 16);
    v7 = *(a1 + 40);
  }

  return v6(v7, a2, a3, RepresentationError);
}

- (void)registerObjectOfClass:(id)aClass visibility:(NSItemProviderRepresentationVisibility)visibility loadHandler:(void *)loadHandler
{
  v38 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v8 = [aClass writableTypeIdentifiersForItemProvider];
    v22 = objc_opt_respondsToSelector();
    v20 = objc_opt_respondsToSelector();
    v9 = _NSIPLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *location = 134349570;
      *&location[4] = self;
      v34 = 2114;
      v35 = NSStringFromClass(aClass);
      v36 = 2114;
      v37 = v8;
      _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Registering loadHandler for NSItemProviderWriting class %{public}@ with declared types %{public}@", location, 0x20u);
    }

    v21 = aClass;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v8;
    v11 = [v8 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v11)
    {
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          if (![(NSItemProvider *)self _hasRepresentationOfType:v14])
          {
            v15 = visibility;
            if (v22)
            {
              v16 = [v21 itemProviderVisibilityForRepresentationWithTypeIdentifier:v14];
              if (v16 <= visibility)
              {
                v15 = visibility;
              }

              else
              {
                v15 = v16;
              }
            }

            if (v20)
            {
              v17 = [v21 _preferredRepresentationForItemProviderWritableTypeIdentifier:v14];
              objc_initWeak(location, self);
              if (v17)
              {
                v24[0] = MEMORY[0x1E69E9820];
                v24[1] = 3221225472;
                v24[2] = __63__NSItemProvider_registerObjectOfClass_visibility_loadHandler___block_invoke_100;
                v24[3] = &unk_1E69F5A70;
                objc_copyWeak(&v25, location);
                v24[4] = v14;
                v24[5] = loadHandler;
                [(NSItemProvider *)self registerFileRepresentationForTypeIdentifier:v14 fileOptions:v17 == 2 visibility:v15 loadHandler:v24];
                v18 = &v25;
LABEL_19:
                objc_destroyWeak(v18);
                objc_destroyWeak(location);
                continue;
              }
            }

            else
            {
              objc_initWeak(location, self);
            }

            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __63__NSItemProvider_registerObjectOfClass_visibility_loadHandler___block_invoke;
            v26[3] = &unk_1E69F59F8;
            objc_copyWeak(&v27, location);
            v26[4] = v14;
            v26[5] = loadHandler;
            [(NSItemProvider *)self registerDataRepresentationForTypeIdentifier:v14 visibility:v15 loadHandler:v26];
            v18 = &v27;
            goto LABEL_19;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v29 objects:v28 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v19 = _NSIPLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *location = 134349314;
      *&location[4] = self;
      v34 = 2114;
      v35 = NSStringFromClass(aClass);
      _os_log_error_impl(&dword_18075C000, v19, OS_LOG_TYPE_ERROR, "<NSItemProvider %{public}p> Ignoring registration of class %{public}@ because it does not conform to the NSItemProviderWriting protocol.", location, 0x16u);
    }
  }
}

NSProgress *__63__NSItemProvider_registerObjectOfClass_visibility_loadHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [NSProgress discreteProgressWithTotalUnitCount:100];
  v5 = [NSProgress discreteProgressWithTotalUnitCount:100];
  v6 = _NSIPLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    Weak = objc_loadWeak((a1 + 48));
    _os_log_debug_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Calling out to load handler to provide NSItemProviderWriting object", buf, 0xCu);
  }

  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__NSItemProvider_registerObjectOfClass_visibility_loadHandler___block_invoke_97;
  v11[3] = &unk_1E69F59D0;
  v11[4] = v5;
  objc_copyWeak(&v12, (a1 + 48));
  v8 = *(a1 + 32);
  v11[6] = v4;
  v11[7] = a2;
  v11[5] = v8;
  v9 = (*(v7 + 16))(v7, v11);
  if (v9)
  {
    [(NSProgress *)v4 addChild:v9 withPendingUnitCount:20];
  }

  else
  {
    [(NSProgress *)v4 addChild:v5 withPendingUnitCount:20];
  }

  objc_destroyWeak(&v12);
  return v4;
}

uint64_t __63__NSItemProvider_registerObjectOfClass_visibility_loadHandler___block_invoke_97(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v6 = [NSProgress discreteProgressWithTotalUnitCount:100];
  v7 = _NSIPLogger();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (!a2 || a3)
  {
    if (v8)
    {
      *buf = 134349314;
      Weak = objc_loadWeak((a1 + 64));
      v22 = 2112;
      v23 = a3;
      _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Load handler failed with error: %@", buf, 0x16u);
    }

    [(NSProgress *)v6 setCompletedUnitCount:[(NSProgress *)v6 totalUnitCount]];
    v14 = *(a1 + 56);
    RepresentationError = _NSIPCannotLoadRepresentationError(*(a1 + 40), a3);
    (*(v14 + 16))(v14, 0, RepresentationError);
    goto LABEL_10;
  }

  if (v8)
  {
    v17 = objc_loadWeak((a1 + 64));
    v18 = objc_opt_class();
    *buf = 134349570;
    Weak = v17;
    v22 = 2112;
    v23 = a2;
    v24 = 2114;
    v25 = NSStringFromClass(v18);
    _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Load handler successfully provided NSItemProviderWriting object %@, calling out to [%{public}@ loadDataWithTypeIdentifier:] to load the data representation of the object", buf, 0x20u);
  }

  v9 = *(a1 + 40);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__NSItemProvider_registerObjectOfClass_visibility_loadHandler___block_invoke_98;
  v19[3] = &unk_1E69F59A8;
  v10 = *(a1 + 56);
  v19[4] = v6;
  v19[5] = v10;
  v11 = [a2 loadDataWithTypeIdentifier:v9 forItemProviderCompletionHandler:v19];
  if (!v11)
  {
LABEL_10:
    v13 = *(a1 + 48);
    v12 = v6;
    return [v13 addChild:v12 withPendingUnitCount:80];
  }

  v12 = v11;
  v13 = *(a1 + 48);
  return [v13 addChild:v12 withPendingUnitCount:80];
}

uint64_t __63__NSItemProvider_registerObjectOfClass_visibility_loadHandler___block_invoke_98(uint64_t a1)
{
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

NSProgress *__63__NSItemProvider_registerObjectOfClass_visibility_loadHandler___block_invoke_100(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [NSProgress discreteProgressWithTotalUnitCount:100];
  v5 = [NSProgress discreteProgressWithTotalUnitCount:100];
  v6 = _NSIPLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    Weak = objc_loadWeak((a1 + 48));
    _os_log_debug_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Calling out to load handler to provide NSItemProviderWriting object", buf, 0xCu);
  }

  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__NSItemProvider_registerObjectOfClass_visibility_loadHandler___block_invoke_101;
  v11[3] = &unk_1E69F5A48;
  v11[4] = v5;
  objc_copyWeak(&v12, (a1 + 48));
  v8 = *(a1 + 32);
  v11[6] = v4;
  v11[7] = a2;
  v11[5] = v8;
  v9 = (*(v7 + 16))(v7, v11);
  if (v9)
  {
    [(NSProgress *)v4 addChild:v9 withPendingUnitCount:20];
  }

  else
  {
    [(NSProgress *)v4 addChild:v5 withPendingUnitCount:20];
  }

  objc_destroyWeak(&v12);
  return v4;
}

uint64_t __63__NSItemProvider_registerObjectOfClass_visibility_loadHandler___block_invoke_101(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v6 = [NSProgress discreteProgressWithTotalUnitCount:100];
  v7 = _NSIPLogger();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (!a2 || a3)
  {
    if (v8)
    {
      *buf = 134349314;
      Weak = objc_loadWeak((a1 + 64));
      v22 = 2112;
      v23 = a3;
      _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Load handler failed with error: %@", buf, 0x16u);
    }

    [(NSProgress *)v6 setCompletedUnitCount:[(NSProgress *)v6 totalUnitCount]];
    v14 = *(a1 + 56);
    RepresentationError = _NSIPCannotLoadRepresentationError(*(a1 + 40), a3);
    (*(v14 + 16))(v14, 0, 0, RepresentationError);
    goto LABEL_10;
  }

  if (v8)
  {
    v17 = objc_loadWeak((a1 + 64));
    v18 = objc_opt_class();
    *buf = 134349570;
    Weak = v17;
    v22 = 2112;
    v23 = a2;
    v24 = 2114;
    v25 = NSStringFromClass(v18);
    _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Load handler successfully provided NSItemProviderWriting object %@, calling out to [%{public}@ _loadFileRepresentationOfTypeIdentifier:] to load the data representation of the object", buf, 0x20u);
  }

  v9 = *(a1 + 40);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__NSItemProvider_registerObjectOfClass_visibility_loadHandler___block_invoke_102;
  v19[3] = &unk_1E69F5A20;
  v10 = *(a1 + 56);
  v19[4] = v6;
  v19[5] = v10;
  v11 = [a2 _loadFileRepresentationOfTypeIdentifier:v9 forItemProviderCompletionHandler:v19];
  if (!v11)
  {
LABEL_10:
    v13 = *(a1 + 48);
    v12 = v6;
    return [v13 addChild:v12 withPendingUnitCount:80];
  }

  v12 = v11;
  v13 = *(a1 + 48);
  return [v13 addChild:v12 withPendingUnitCount:80];
}

uint64_t __63__NSItemProvider_registerObjectOfClass_visibility_loadHandler___block_invoke_102(uint64_t a1)
{
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)_readableTypeIdentifiersForItemProviderForClass:(Class)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return MEMORY[0x1E695E0F0];
  }

  return [(objc_class *)a3 readableTypeIdentifiersForItemProvider];
}

- (id)_loadObjectOfClass:(Class)a3 options:(id)a4 completionHandler:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = _NSIPLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    v44 = self;
    v45 = 2114;
    v46 = NSStringFromClass(a3);
    _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading object of class %{public}@", buf, 0x16u);
  }

  v10 = objc_alloc_init(_NSIPCallbackSerialization);
  objc_initWeak(&location, v10);
  v11 = [(NSItemProvider *)self _readableTypeIdentifiersForItemProviderForClass:a3];
  matched = _bestMatchConformingToTypes(v11, [(NSItemProvider *)self _availableTypes]);
  v13 = matched;
  if (matched)
  {
    v14 = _bestMatchType(matched, v11, &__block_literal_global_362);
    v15 = _NSIPLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349570;
      v44 = self;
      v45 = 2114;
      v46 = v13;
      v47 = 2114;
      v48 = v14;
      _os_log_debug_impl(&dword_18075C000, v15, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Requesting data of type '%{public}@'; reporting as data of type '%{public}@'", buf, 0x20u);
    }

    v16 = [(NSItemProvider *)self _representationConformingToType:v13];
    if (v16)
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(objc_class *)a3 _preferredRepresentationForItemProviderReadableTypeIdentifier:v13]== 0;
        objc_initWeak(&from, self);
        if (!v17)
        {
          v18 = _NSIPLogger();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v44 = self;
            _os_log_debug_impl(&dword_18075C000, v18, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading in-place file representation for type", buf, 0xCu);
          }

          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_110;
          v35[3] = &unk_1E69F5A98;
          v35[4] = a3;
          v35[5] = v14;
          v19 = &v36;
          objc_copyWeak(&v36, &from);
          v35[6] = v10;
          v20 = &v37;
          objc_copyWeak(&v37, &location);
          v35[7] = self;
          v35[8] = a5;
          v21 = [v16 loadOpenInPlaceWithOptions_v2:a4 completionHandler:v35];
          goto LABEL_24;
        }
      }

      else
      {
        objc_initWeak(&from, self);
      }

      v27 = _NSIPLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        v44 = self;
        _os_log_debug_impl(&dword_18075C000, v27, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading data representation for type", buf, 0xCu);
      }

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke;
      v38[3] = &unk_1E69F5A98;
      v38[4] = self;
      v38[5] = a3;
      v38[6] = v14;
      v19 = &v39;
      objc_copyWeak(&v39, &from);
      v38[7] = v10;
      v20 = &v40;
      objc_copyWeak(&v40, &location);
      v38[8] = a5;
      v21 = [v16 loadDataWithOptions_v2:a4 completionHandler:v38];
LABEL_24:
      v26 = v21;
      objc_destroyWeak(v20);
      objc_destroyWeak(v19);
      objc_destroyWeak(&from);
      if (v26)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v25 = _NSIPLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v44 = self;
      _os_log_debug_impl(&dword_18075C000, v25, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Unable to find a suitable representation to instantiate class", buf, 0xCu);
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_115;
    v33[3] = &unk_1E69F5840;
    v33[4] = v10;
    v24 = &v34;
    objc_copyWeak(&v34, &location);
    v33[6] = a3;
    v33[7] = a5;
    v33[5] = self;
    _NSIPDispatchAsyncCallback(v33);
  }

  else
  {
    v22 = _NSIPLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v44 = self;
      _os_log_debug_impl(&dword_18075C000, v22, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Unable to find a suitable type to create object of class", buf, 0xCu);
    }

    v23 = _NSIPUnavailableCoercionError(0, a3, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_117;
    block[3] = &unk_1E69F5840;
    block[4] = v10;
    v24 = &v32;
    objc_copyWeak(&v32, &location);
    block[6] = v23;
    block[7] = a5;
    block[5] = self;
    _NSIPDispatchAsyncCallback(block);
  }

  objc_destroyWeak(v24);
LABEL_19:
  v26 = [NSProgress discreteProgressWithTotalUnitCount:100];
  [(NSProgress *)v26 setCompletedUnitCount:[(NSProgress *)v26 totalUnitCount]];
LABEL_25:
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_3_119;
  v29[3] = &unk_1E69F5868;
  objc_copyWeak(&v30, &location);
  v29[4] = self;
  v29[5] = v26;
  [(_NSIPCallbackSerialization *)v10 sendBeginBlock:v29];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
  return v26;
}

void __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = [a2 error];
  v27 = v4;
  if (![a2 data] || v4)
  {
    v10 = _NSIPLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349314;
      Weak = objc_loadWeak((a1 + 72));
      v30 = 2112;
      v31 = v4;
      _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading data representation for type failed with error: %@", buf, 0x16u);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v18 = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_109;
    v19 = &unk_1E69F5890;
    v20 = *(a1 + 40);
    v21 = v4;
    if (!v4 || ([-[NSString domain](v4 "domain")] & 1) != 0)
    {
      goto LABEL_17;
    }

    v11 = (v18)(v17, v4);
    goto LABEL_16;
  }

  v5 = [*(a1 + 32) _objectOfClass:*(a1 + 40) data:objc_msgSend(a2 typeIdentifier:"data") error:{*(a1 + 48), &v27}];
  v6 = _NSIPLogger();
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_loadWeak((a1 + 72));
      v14 = NSStringFromClass(*(a1 + 40));
      *buf = 134218498;
      Weak = v13;
      v30 = 2114;
      v31 = v14;
      v32 = 2112;
      v33 = v27;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "<NSItemProvider %p> Instantiation of class %{public}@ failed with error: %@", buf, 0x20u);
    }

    v4 = v27;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v23 = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_108;
    v24 = &unk_1E69F5890;
    v25 = *(a1 + 40);
    v26 = v27;
    if (!v27 || ([-[NSString domain](v27 "domain")] & 1) != 0)
    {
      goto LABEL_17;
    }

    v11 = (v23)(v22, v4);
LABEL_16:
    v4 = v11;
LABEL_17:
    v5 = 0;
    v27 = v4;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_loadWeak((a1 + 72));
    v9 = NSStringFromClass(*(a1 + 40));
    *buf = 134349314;
    Weak = v8;
    v30 = 2114;
    v31 = v9;
    _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Successfully loaded data representation and initialized type of class %{public}@", buf, 0x16u);
  }

LABEL_18:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_2;
  block[3] = &unk_1E69F57F0;
  block[4] = *(a1 + 56);
  objc_copyWeak(&v16, (a1 + 80));
  v12 = *(a1 + 64);
  block[5] = *(a1 + 32);
  block[6] = v5;
  block[7] = v27;
  block[8] = v12;
  _NSIPDispatchAsyncCallback(block);
  objc_destroyWeak(&v16);
}

void __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_3;
  v4[3] = &unk_1E69F55A8;
  objc_copyWeak(v5, (a1 + 72));
  v4[4] = *(a1 + 40);
  [(_NSIPCallbackSerialization *)v2 sendEndBlock:v4];
  v3 = *(a1 + 64);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 48), *(a1 + 56));
  }

  objc_destroyWeak(v5);
}

uint64_t __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_3(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  return [v3 itemProvider:v4 finishedDataTransferTransactionUUID:v5];
}

void __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_110(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = [a2 error];
  if (![objc_msgSend(a2 "urlWrapper")] || objc_msgSend(a2, "error"))
  {
    v5 = _NSIPLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349314;
      Weak = objc_loadWeak((a1 + 72));
      v29 = 2112;
      v30 = v4;
      _os_log_debug_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading in-place representation for type failed with error: %@", buf, 0x16u);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v18 = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_112;
    v19 = &unk_1E69F5890;
    v20 = *(a1 + 32);
    v21 = v4;
    if (!v4 || ([-[NSString domain](v4 "domain")] & 1) != 0)
    {
      goto LABEL_9;
    }

    v6 = (v18)(v17, v4);
LABEL_8:
    v4 = v6;
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v7 = [*(a1 + 32) _objectWithItemProviderFileURL:objc_msgSend(objc_msgSend(a2 typeIdentifier:"urlWrapper") isInPlace:"url") error:{*(a1 + 40), objc_msgSend(a2, "wasOpenedInPlace"), 0}];
  v9 = _NSIPLogger();
  v10 = v9;
  if (!v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_loadWeak((a1 + 72));
      v14 = NSStringFromClass(*(a1 + 32));
      *buf = 134218498;
      Weak = v13;
      v29 = 2114;
      v30 = v14;
      v31 = 2112;
      v32 = v4;
      _os_log_error_impl(&dword_18075C000, v10, OS_LOG_TYPE_ERROR, "<NSItemProvider %p> Instantiation of class %{public}@ failed with error: %@", buf, 0x20u);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v23 = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_111;
    v24 = &unk_1E69F5890;
    v25 = *(a1 + 32);
    v26 = v4;
    if (!v4 || ([-[NSString domain](v4 "domain")] & 1) != 0)
    {
      goto LABEL_9;
    }

    v6 = (v23)(v22, v4);
    goto LABEL_8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_loadWeak((a1 + 72));
    v12 = NSStringFromClass(*(a1 + 32));
    *buf = 134349314;
    Weak = v11;
    v29 = 2114;
    v30 = v12;
    _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Successfully loaded in-place file representation and initialized type of class %{public}@", buf, 0x16u);
  }

LABEL_10:
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_2_113;
  v15[3] = &unk_1E69F57F0;
  v15[4] = *(a1 + 48);
  objc_copyWeak(&v16, (a1 + 80));
  v8 = *(a1 + 64);
  v15[5] = *(a1 + 56);
  v15[6] = v7;
  v15[7] = v4;
  v15[8] = v8;
  _NSIPDispatchAsyncCallback(v15);
  objc_destroyWeak(&v16);
}

void __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_2_113(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_3_114;
  v4[3] = &unk_1E69F55A8;
  objc_copyWeak(v5, (a1 + 72));
  v4[4] = *(a1 + 40);
  [(_NSIPCallbackSerialization *)v2 sendEndBlock:v4];
  v3 = *(a1 + 64);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 48), *(a1 + 56));
  }

  objc_destroyWeak(v5);
}

uint64_t __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_3_114(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  return [v3 itemProvider:v4 finishedDataTransferTransactionUUID:v5];
}

void __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_115(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_2_116;
  v5[3] = &unk_1E69F55A8;
  objc_copyWeak(v6, (a1 + 64));
  v5[4] = *(a1 + 40);
  [(_NSIPCallbackSerialization *)v2 sendEndBlock:v5];
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = _NSIPUnavailableCoercionError(0, *(a1 + 48), 0);
    (*(v3 + 16))(v3, 0, v4);
  }

  objc_destroyWeak(v6);
}

uint64_t __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_2_116(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  return [v3 itemProvider:v4 finishedDataTransferTransactionUUID:v5];
}

void __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_117(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_2_118;
  v4[3] = &unk_1E69F55A8;
  objc_copyWeak(v5, (a1 + 64));
  v4[4] = *(a1 + 40);
  [(_NSIPCallbackSerialization *)v2 sendEndBlock:v4];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, *(a1 + 48));
  }

  objc_destroyWeak(v5);
}

uint64_t __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_2_118(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  return [v3 itemProvider:v4 finishedDataTransferTransactionUUID:v5];
}

uint64_t __63__NSItemProvider__loadObjectOfClass_options_completionHandler___block_invoke_3_119(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);

  return [v3 itemProvider:v4 beganDataTransferTransactionUUID:v5 progress:v6];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSItemProvider;
  return [NSString stringWithFormat:@"%@ {types = %@}", [(NSItemProvider *)&v3 description], [(NSItemProvider *)self registeredTypeIdentifiers]];
}

- (NSItemProvider)initWithItem:(id)item typeIdentifier:(NSString *)typeIdentifier
{
  v9[5] = *MEMORY[0x1E69E9840];
  v6 = [(NSItemProvider *)self init];
  v7 = v6;
  if (item && v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__NSItemProvider_initWithItem_typeIdentifier___block_invoke;
    v9[3] = &unk_1E69F5AC0;
    v9[4] = item;
    [(NSItemProvider *)v6 registerItemForTypeIdentifier:typeIdentifier loadHandler:v9];
  }

  return v7;
}

- (NSItemProvider)initWithContentsOfURL:(NSURL *)fileURL
{
  v9[5] = *MEMORY[0x1E69E9840];
  v4 = [(NSItemProvider *)self init];
  if (v4)
  {
    if ([(NSURL *)fileURL isFileURL])
    {
      v5 = [(NSURL *)fileURL pathExtension];
      v6 = _MergedGlobals_86[0]();
      v7 = (off_1ED439858[0])(v6, v5, 0);
      if (!v7)
      {
        v7 = off_1ED439840[0]();
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __40__NSItemProvider_initWithContentsOfURL___block_invoke;
      v9[3] = &unk_1E69F5AE8;
      v9[4] = fileURL;
      [(NSItemProvider *)v4 registerDataRepresentationForTypeIdentifier:v7 visibility:0 loadHandler:v9];
    }

    [(NSItemProvider *)v4 registerObject:fileURL visibility:0];
  }

  return v4;
}

uint64_t __40__NSItemProvider_initWithContentsOfURL___block_invoke(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:*(a1 + 32) options:1 error:v5];
  (*(a2 + 16))(a2, v3, v5[0]);
  return 0;
}

- (void)registerItemForTypeIdentifier:(NSString *)typeIdentifier loadHandler:(NSItemProviderLoadHandler)loadHandler
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = _NSIPLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *location = 134349314;
    *&location[4] = self;
    v11 = 2114;
    v12 = typeIdentifier;
    _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Registering loadHandler for NSSecureCoding object for type identifier: '%{public}@'", location, 0x16u);
  }

  objc_initWeak(location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__NSItemProvider_registerItemForTypeIdentifier_loadHandler___block_invoke;
  v8[3] = &unk_1E69F5B38;
  objc_copyWeak(&v9, location);
  v8[4] = typeIdentifier;
  v8[5] = loadHandler;
  [(NSItemProvider *)self _addRepresentationType_v2:typeIdentifier preferredRepresentation:0 loader:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(location);
}

uint64_t __60__NSItemProvider_registerItemForTypeIdentifier_loadHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v6 = [a2 objectForKeyedSubscript:@"com.apple.Foundation.NSItemProviderExpectedClass"];
  if (v6)
  {
    v7 = [v4 mutableCopy];
    [v7 removeObjectForKey:@"com.apple.Foundation.NSItemProviderExpectedClass"];
    v4 = v7;
    v6 = NSClassFromString(v6);
  }

  v8 = _NSIPLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    Weak = objc_loadWeak((a1 + 48));
    v12 = *(a1 + 32);
    *buf = 134349570;
    v16 = Weak;
    v17 = 2114;
    v18 = v12;
    v19 = 2114;
    v20 = NSStringFromClass(v6);
    _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Calling out to load handler to produce NSSecureCoding object for type identifier: '%{public}@' with expected class %{public}@", buf, 0x20u);
  }

  v9 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__NSItemProvider_registerItemForTypeIdentifier_loadHandler___block_invoke_131;
  v13[3] = &unk_1E69F5B10;
  objc_copyWeak(&v14, (a1 + 48));
  v13[4] = *(a1 + 32);
  v13[5] = a3;
  (*(v9 + 16))(v9, v13, v6, v4);
  objc_destroyWeak(&v14);
  return 0;
}

id __60__NSItemProvider_registerItemForTypeIdentifier_loadHandler___block_invoke_131(uint64_t a1, void *a2, NSError *a3)
{
  RepresentationError = a3;
  v32 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = _NSIPLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349314;
      Weak = objc_loadWeak((a1 + 48));
      v28 = 2112;
      v29 = RepresentationError;
      _os_log_debug_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Load handler failed to produce NSSecureCoding object with error: %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    off_1ED439848[0]();
    v8 = off_1ED439850(v7) == 0;
    v9 = _NSIPLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        v23 = objc_loadWeak((a1 + 48));
        v24 = *(a1 + 32);
        *buf = 134349570;
        Weak = v23;
        v28 = 2112;
        v29 = a2;
        v30 = 2114;
        v31 = v24;
        _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Load handler produced the URL %@ and the type identifier '%{public}@' is not a URL; vending the URL to the contents of the data directly", buf, 0x20u);
      }

      [NSItemRepresentationLoadResult resultWithData:0 urlWrapper:[[NSSecurityScopedURLWrapper alloc] initWithURL:a2 readonly:0] cleanupHandler:0 error:0];
      return (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (v10)
      {
        v17 = objc_loadWeak((a1 + 48));
        v18 = *(a1 + 32);
        *buf = 134349570;
        Weak = v17;
        v28 = 2112;
        v29 = a2;
        v30 = 2114;
        v31 = v18;
        _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Load handler produced the URL %@ and the type identifier '%{public}@' is a URL; archiving as an NSURL archive", buf, 0x20u);
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __60__NSItemProvider_registerItemForTypeIdentifier_loadHandler___block_invoke_133;
      v25[3] = &unk_1E69F5728;
      v11 = *(a1 + 32);
      v25[4] = *(a1 + 40);
      return [a2 loadDataWithTypeIdentifier:v11 forItemProviderCompletionHandler:v25];
    }
  }

  else
  {
    v13 = _NSIsNSData();
    v14 = _NSIPLogger();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v13)
    {
      if (v15)
      {
        v19 = objc_loadWeak((a1 + 48));
        *buf = 134349056;
        Weak = v19;
        _os_log_debug_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Load handler produced data; providing the data directly", buf, 0xCu);
      }

      [NSItemRepresentationLoadResult resultWithData:a2 urlWrapper:0 cleanupHandler:0 error:0];
      return (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (v15)
      {
        v20 = objc_loadWeak((a1 + 48));
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 134349314;
        Weak = v20;
        v28 = 2114;
        v29 = v22;
        _os_log_debug_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Load handler produced an object of class %{public}@; archiving the object via NSKeyedArchiver and providing the archived data", buf, 0x16u);
      }

      v16 = [NSKeyedArchiver archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
      if (!v16)
      {
        RepresentationError = _NSIPCannotLoadRepresentationError(*(a1 + 32), 0);
        v16 = 0;
      }

      -[NSItemRepresentationLoadResult setArchivedObjectClass:](+[NSItemRepresentationLoadResult resultWithData:urlWrapper:cleanupHandler:error:](NSItemRepresentationLoadResult, "resultWithData:urlWrapper:cleanupHandler:error:", v16, 0, 0, RepresentationError), "setArchivedObjectClass:", [a2 classForCoder]);
      return (*(*(a1 + 40) + 16))();
    }
  }
}

uint64_t __60__NSItemProvider_registerItemForTypeIdentifier_loadHandler___block_invoke_133(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [[NSItemRepresentationLoadResult resultWithData:0 urlWrapper:0 cleanupHandler:a3 error:?], "setArchivedObjectClass:", objc_opt_class()];
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)loadItemForTypeIdentifier:(NSString *)typeIdentifier options:(NSDictionary *)options completionHandler:(NSItemProviderCompletionHandler)completionHandler
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = _NSIPLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    v18 = self;
    v19 = 2114;
    v20 = typeIdentifier;
    _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading NSSecureCoding item for type identifier: '%{public}@'", buf, 0x16u);
  }

  aClass = 0;
  if (!_NSIPGetExpectedClassFromCompletionBlock(completionHandler, &aClass, 0))
  {
    v10 = _NSIPLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v18 = self;
      _os_log_error_impl(&dword_18075C000, v10, OS_LOG_TYPE_ERROR, "<NSItemProvider %{public}p> Cannot determine expected value class in an NSItemProvider secure coding item completion handler. Falling back to returning the default class.", buf, 0xCu);
    }
  }

  v11 = options;
  v12 = aClass;
  if (aClass)
  {
    if (options)
    {
      v13 = [(NSDictionary *)options mutableCopy];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v14 = v13;
    [(NSDictionary *)v13 setObject:NSStringFromClass(aClass) forKeyedSubscript:@"com.apple.Foundation.NSItemProviderExpectedClass"];

    v12 = aClass;
    v11 = v14;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__NSItemProvider_loadItemForTypeIdentifier_options_completionHandler___block_invoke;
  v15[3] = &unk_1E69F5B60;
  v15[4] = self;
  v15[5] = v12;
  v15[6] = typeIdentifier;
  v15[7] = v11;
  v15[8] = completionHandler;
  _asyncDispatchBlockWithOptions(options, v15);
}

void __70__NSItemProvider_loadItemForTypeIdentifier_options_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadItemOfClass:*(a1 + 40) forTypeIdentifier:*(a1 + 48) options:*(a1 + 56) coerceForCoding:0 completionHandler:*(a1 + 64)];
  v2 = *(a1 + 56);
}

- (void)_loadItemOfClass:(Class)a3 forTypeIdentifier:(id)a4 options:(id)a5 coerceForCoding:(BOOL)a6 completionHandler:(id)a7
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = _NSIPLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349570;
    v41 = self;
    v42 = 2114;
    v43 = a3;
    v44 = 2114;
    v45 = a4;
    _os_log_debug_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading item of expected class %{public}@ for type identifier '%{public}@'", buf, 0x20u);
  }

  if ([(NSItemProvider *)self hasItemConformingToTypeIdentifier:a4])
  {
    v13 = objc_opt_class();
    objc_initWeak(&location, self);
    if (![(objc_class *)a3 isSubclassOfClass:v13])
    {
      v18 = [(NSItemProvider *)self _representationConformingToType:a4];
      if (v18)
      {
        v19 = objc_alloc_init(_NSIPCallbackSerialization);
        objc_initWeak(&from, v19);
        v20 = _NSIPLogger();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v41 = self;
          _os_log_debug_impl(&dword_18075C000, v20, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Expected class is not a URL; attempting to load the object and coerce to the expected class", buf, 0xCu);
        }

        v21 = [(NSItemProvider *)self _readableTypeIdentifiersForItemProviderForClass:a3];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_142;
        v30[3] = &unk_1E69F5C28;
        objc_copyWeak(&v31, &location);
        v30[4] = a4;
        v30[5] = a3;
        v30[6] = v21;
        v30[7] = v18;
        v30[8] = v19;
        objc_copyWeak(&v32, &from);
        v30[9] = self;
        v30[10] = a7;
        v22 = [v18 loadWithOptions_v2:a5 completionHandler:v30];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_3;
        v28[3] = &unk_1E69F5868;
        objc_copyWeak(&v29, &from);
        v28[4] = self;
        v28[5] = v22;
        [(_NSIPCallbackSerialization *)v19 sendBeginBlock:v28];

        objc_destroyWeak(&v29);
        objc_destroyWeak(&v32);
        objc_destroyWeak(&v31);
        objc_destroyWeak(&from);
      }

      else
      {
        v23 = _NSIPLogger();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349314;
          v41 = self;
          v42 = 2114;
          v43 = a4;
          _os_log_debug_impl(&dword_18075C000, v23, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Unable to find suitable representation conforming to type identifier '%{public}@'", buf, 0x16u);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_156;
        block[3] = &unk_1E69F3910;
        block[4] = a4;
        block[5] = a7;
        _NSIPDispatchAsyncCallback(block);
      }

      goto LABEL_27;
    }

    off_1ED439848[0]();
    if (off_1ED439850(a4))
    {
      v14 = _NSIPLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        v41 = self;
        _os_log_debug_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Expected class is a URL and the type identifier is a URL, loading the object as an NSURL", buf, 0xCu);
      }

      v15 = objc_opt_class();
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke;
      v37[3] = &unk_1E69F5B88;
      v37[4] = a4;
      objc_copyWeak(&v38, &location);
      v37[5] = a7;
      [(NSItemProvider *)self _loadObjectOfClass:v15 options:a5 completionHandler:v37];
      objc_destroyWeak(&v38);
      goto LABEL_27;
    }

    v24 = [(NSItemProvider *)self _representationConformingToType:a4];
    if (v24)
    {
      v25 = _NSIPLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349314;
        v41 = self;
        v42 = 2114;
        v43 = a4;
        _os_log_debug_impl(&dword_18075C000, v25, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Expected class is a URL but the type identifier '%{public}@' is not a URL, loading the type identifier and attempting to convert to a URL", buf, 0x16u);
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_137;
      v35[3] = &unk_1E69F5BB0;
      v35[4] = v13;
      v35[6] = a7;
      objc_copyWeak(&v36, &location);
      v35[5] = a3;
      [v24 loadWithOptions_v2:a5 completionHandler:v35];
      objc_destroyWeak(&v36);
      goto LABEL_27;
    }

    v26 = _NSIPLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349314;
      v41 = self;
      v42 = 2114;
      v43 = a4;
      _os_log_debug_impl(&dword_18075C000, v26, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Unable to find suitable representation conforming to type identifier '%{public}@'", buf, 0x16u);
      if (!a7)
      {
        goto LABEL_27;
      }
    }

    else if (!a7)
    {
LABEL_27:
      objc_destroyWeak(&location);
      return;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_141;
    v34[3] = &unk_1E69F3910;
    v34[4] = a3;
    v34[5] = a7;
    _NSIPDispatchAsyncCallback(v34);
    goto LABEL_27;
  }

  v16 = _NSIPLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    v41 = self;
    v42 = 2114;
    v43 = a4;
    _os_log_debug_impl(&dword_18075C000, v16, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> No item found conforming to type identifier '%{public}@'", buf, 0x16u);
  }

  RepresentationError = _NSIPCannotLoadRepresentationError(a4, 0);
  if (a7)
  {
    (*(a7 + 2))(a7, 0, RepresentationError);
  }
}

void __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_2;
    v13 = &unk_1E69F5778;
    v14 = *(a1 + 32);
    if (([objc_msgSend(a3 "domain")] & 1) == 0)
    {
      v5 = v12(v11, v5);
    }

    v6 = _NSIPLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      Weak = objc_loadWeak((a1 + 48));
      *buf = 134349314;
      v16 = Weak;
      v17 = 2112;
      v18 = v5;
      _os_log_debug_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading NSURL object failed with error: %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = _NSIPLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349314;
      v16 = objc_loadWeak((a1 + 48));
      v17 = 2112;
      v18 = a2;
      _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loaded NSURL object %@ successfully", buf, 0x16u);
    }

    v5 = 0;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_136;
    v10[3] = &unk_1E69F3820;
    v10[5] = v5;
    v10[6] = v9;
    v10[4] = a2;
    _NSIPDispatchAsyncCallback(v10);
  }
}

void __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_137(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if ([a2 urlWrapper])
  {
    v4 = [objc_msgSend(a2 "urlWrapper")];
  }

  else
  {
    v5 = [a2 archivedObjectClass];
    if (![v5 isSubclassOfClass:*(a1 + 32)])
    {
      if (!*(a1 + 48))
      {
        return;
      }

      goto LABEL_11;
    }

    v4 = +[NSKeyedUnarchiver unarchivedObjectOfClass:fromData:error:](NSKeyedUnarchiver, "unarchivedObjectOfClass:fromData:error:", v5, [a2 data], &v16);
  }

  v6 = v4;
  if (!*(a1 + 48))
  {
    return;
  }

  if (!v4)
  {
LABEL_11:
    v10 = _NSIPLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      Weak = objc_loadWeak((a1 + 56));
      *buf = 134349314;
      v18 = Weak;
      v19 = 2112;
      v20 = v16;
      _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loading produced a data blob and NSItemProvider failed to coerce the data to an unarchived URL with error: %@", buf, 0x16u);
    }

    v8 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_140;
    v14[3] = &unk_1E69F3820;
    v11 = *(a1 + 48);
    v14[4] = *(a1 + 40);
    v14[5] = v16;
    v14[6] = v11;
    goto LABEL_14;
  }

  v7 = _NSIPLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_loadWeak((a1 + 56));
    *buf = 134349314;
    v18 = v12;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Loaded NSURL object %@ successfully", buf, 0x16u);
  }

  v8 = v15;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_139;
  v15[3] = &unk_1E69F3910;
  v9 = *(a1 + 48);
  v15[4] = v6;
  v15[5] = v9;
LABEL_14:
  _NSIPDispatchAsyncCallback(v8);
}

uint64_t __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_140(uint64_t *a1)
{
  v1 = a1[6];
  v2 = _NSIPUnexpectedValueClassError(a1[4], a1[5]);
  v3 = *(v1 + 16);

  return v3(v1, 0, v2);
}

uint64_t __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_141(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = _NSIPUnexpectedValueClassError(*(a1 + 32), 0);
  v3 = *(v1 + 16);

  return v3(v1, 0, v2);
}

void __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_142(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  RepresentationError = [a2 error];
  v4 = [a2 cleanupHandler];
  if (RepresentationError)
  {
LABEL_2:
    v5 = 0;
    goto LABEL_3;
  }

  if (![a2 data])
  {
    if (![a2 urlWrapper])
    {
      v5 = 0;
      RepresentationError = _NSIPCannotLoadRepresentationError(*(a1 + 32), 0);
      goto LABEL_3;
    }

    v14 = [objc_msgSend(a2 "urlWrapper")];
    goto LABEL_19;
  }

  v11 = [a2 archivedObjectClass];
  if (!v11 || (v12 = v11, v13 = -[NSKeyedUnarchiver initForReadingFromData:error:]([NSKeyedUnarchiver alloc], "initForReadingFromData:error:", [a2 data], 0), -[NSKeyedUnarchiver setRequiresSecureCoding:](v13, "setRequiresSecureCoding:", 0), v7 = -[NSKeyedUnarchiver decodeObjectOfClass:forKey:](v13, "decodeObjectOfClass:forKey:", v12, @"root"), v13, !v7) && (v7 = objc_msgSend(MEMORY[0x1E695DFF8], "objectWithItemProviderData:typeIdentifier:error:", objc_msgSend(a2, "data"), *(a1 + 32), 0)) == 0)
  {
    v14 = [a2 data];
LABEL_19:
    v7 = v14;
  }

  v5 = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_10;
  }

  if (objc_opt_isKindOfClass())
  {
    v6 = RepresentationError;
    goto LABEL_5;
  }

  v15 = _NSIPLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    Weak = objc_loadWeak((a1 + 88));
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = objc_opt_class();
    *buf = 134349570;
    *&buf[4] = Weak;
    *&buf[12] = 2114;
    *&buf[14] = v25;
    *&buf[22] = 2114;
    v44 = NSStringFromClass(v26);
    _os_log_debug_impl(&dword_18075C000, v15, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Load result produced a value of class %{public}@ but expected a value of class %{public}@; attempting to coerce value via type coercion", buf, 0x20u);
  }

  v16 = [_NSItemProviderTypeCoercion typeCoercionForValue:v7 targetClass:*(a1 + 40)];
  if (!v16)
  {
    if (qword_1ED43F438 != -1)
    {
      dispatch_once(&qword_1ED43F438, &__block_literal_global_146);
    }

    if (_MergedGlobals_7_0 && ([*(a1 + 40) isSubclassOfClass:?] & 1) != 0 || qword_1ED43F430 && (objc_msgSend(*(a1 + 40), "isSubclassOfClass:") & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_2;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v44) = 0;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_2_151;
    v35[3] = &unk_1E69F5BD8;
    v19 = *(a1 + 48);
    v35[4] = *(a1 + 56);
    v35[5] = buf;
    [v19 enumerateObjectsUsingBlock:v35];
    if (*(*&buf[8] + 24) == 1)
    {
      v5 = [*(a1 + 40) objectWithItemProviderData:objc_msgSend(a2 typeIdentifier:"data") error:{objc_msgSend(*(a1 + 56), "typeIdentifier"), &RepresentationError}];
      if (v5)
      {
LABEL_43:
        _Block_object_dispose(buf, 8);
LABEL_3:
        v6 = RepresentationError;
        v7 = v5;
        if (!(v5 | RepresentationError))
        {
          v8 = objc_opt_class();
          v6 = _NSIPUnavailableCoercionError(v8, *(a1 + 40), 0);
          v7 = 0;
          RepresentationError = v6;
        }

        goto LABEL_5;
      }

      v20 = _NSIPLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v27 = objc_loadWeak((a1 + 88));
        v28 = NSStringFromClass(*(a1 + 40));
        *v37 = 134349570;
        v38 = v27;
        v39 = 2114;
        v40 = v28;
        v41 = 2112;
        v42 = RepresentationError;
        _os_log_debug_impl(&dword_18075C000, v20, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Calling [%{public}@ objectWithItemProviderData:] failed with error: %@", v37, 0x20u);
      }
    }

    v5 = 0;
    goto LABEL_43;
  }

  v17 = [v16 coerceValueError:&RepresentationError];
  v7 = v17;
  v6 = RepresentationError;
  if (!(v17 | RepresentationError))
  {
    RepresentationError = _NSIPUnexpectedValueClassError(*(a1 + 40), 0);
    goto LABEL_45;
  }

  if (!v17)
  {
LABEL_45:
    v21 = _NSIPLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = objc_loadWeak((a1 + 88));
      *buf = 134349314;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = RepresentationError;
      _os_log_debug_impl(&dword_18075C000, v21, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Selector-based coercion failed with error: %@", buf, 0x16u);
    }

    goto LABEL_2;
  }

LABEL_5:
  if (v6)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v32 = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_153;
    v33 = &unk_1E69F5778;
    v34 = *(a1 + 32);
    if (![(NSString *)[(NSError *)v6 domain] isEqualToString:@"NSItemProviderErrorDomain"])
    {
      v6 = v32(v31, v6);
    }

    RepresentationError = v6;
    v9 = _NSIPLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_loadWeak((a1 + 88));
      *buf = 134349314;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = RepresentationError;
      _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Type coercion failed with error: %@", buf, 0x16u);
    }
  }

LABEL_10:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_154;
  block[3] = &unk_1E69F5C00;
  block[4] = *(a1 + 64);
  objc_copyWeak(&v30, (a1 + 96));
  v10 = *(a1 + 80);
  block[5] = *(a1 + 72);
  block[6] = v7;
  block[7] = RepresentationError;
  block[8] = v10;
  block[9] = v4;
  _NSIPDispatchAsyncCallback(block);
  objc_destroyWeak(&v30);
}

Class __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_144()
{
  _MergedGlobals_7_0 = objc_getClass("UIImage");
  result = objc_getClass("NSImage");
  qword_1ED43F430 = result;
  return result;
}

uint64_t __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_2_151(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) typeIdentifier];
  result = off_1ED439850(v6);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_154(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_2_155;
  v5[3] = &unk_1E69F55A8;
  objc_copyWeak(v6, (a1 + 80));
  v5[4] = *(a1 + 40);
  [(_NSIPCallbackSerialization *)v2 sendEndBlock:v5];
  v3 = *(a1 + 64);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 48), *(a1 + 56));
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    (*(v4 + 16))();
  }

  objc_destroyWeak(v6);
}

uint64_t __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_2_155(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  return [v3 itemProvider:v4 finishedDataTransferTransactionUUID:v5];
}

uint64_t __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_3(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  v3 = [*(a1 + 32) dataTransferDelegate];
  v4 = *(a1 + 32);
  if (Weak)
  {
    v5 = Weak[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);

  return [v3 itemProvider:v4 beganDataTransferTransactionUUID:v5 progress:v6];
}

uint64_t __95__NSItemProvider__loadItemOfClass_forTypeIdentifier_options_coerceForCoding_completionHandler___block_invoke_156(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    RepresentationError = _NSIPCannotLoadRepresentationError(*(result + 32), 0);
    v3 = *(v1 + 16);

    return v3(v1, 0, RepresentationError);
  }

  return result;
}

- (void)_loadPreviewImageOfClass:(Class)a3 options:(id)a4 coerceForCoding:(BOOL)a5 completionHandler:(id)a6
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__NSItemProvider__loadPreviewImageOfClass_options_coerceForCoding_completionHandler___block_invoke;
  v6[3] = &unk_1E69F5C50;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a6;
  v7 = a5;
  _asyncDispatchBlockWithOptions(a4, v6);
}

uint64_t __85__NSItemProvider__loadPreviewImageOfClass_options_coerceForCoding_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[1])
  {
    v3 = a1[5];

    return [v2 _loadItemOfClass:v3 withLoadHandler:? options:? coerceForCoding:? completionHandler:?];
  }

  else
  {
    _NSIPCannotLoadPreviewError(0);
    v5 = *(a1[7] + 16);

    return v5();
  }
}

- (void)_loadItemOfClass:(Class)a3 withLoadHandler:(id)a4 options:(id)a5 coerceForCoding:(BOOL)a6 completionHandler:(id)a7
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__NSItemProvider__loadItemOfClass_withLoadHandler_options_coerceForCoding_completionHandler___block_invoke;
  v7[3] = &unk_1E69F5C78;
  v7[4] = a3;
  v7[5] = a7;
  v8 = a6;
  (*(a4 + 2))(a4, v7, a3, a5);
}

uint64_t __93__NSItemProvider__loadItemOfClass_withLoadHandler_options_coerceForCoding_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  else
  {
    v9[0] = 0;
    if (a2)
    {
      if (*(a1 + 32))
      {
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = [_NSItemProviderTypeCoercion typeCoercionForValue:a2 targetClass:*(a1 + 32)];
          v8 = v7;
          if ((*(a1 + 48) != 1 || [v7 shouldCoerceForCoding]) && !objc_msgSend(v8, "coerceValueError:", v9) && !v9[0])
          {
            v9[0] = _NSIPUnexpectedValueClassError(*(a1 + 32), 0);
          }
        }
      }
    }

    return (*(*(a1 + 40) + 16))();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setUserInfo:{-[NSDictionary copy](self->_userInfo, "copy")}];
  [v4 setPreviewImageHandler:{objc_msgSend(self->_previewImageHandler, "copy")}];
  [v4 set_loadOperator:self->_loadOperator];
  [v4 set_representationByType:{-[NSMutableDictionary mutableCopy](-[NSItemProvider _representationByType](self, "_representationByType"), "mutableCopy")}];
  [v4 set_typeOrder:{-[NSMutableOrderedSet mutableCopy](-[NSItemProvider _typeOrder](self, "_typeOrder"), "mutableCopy")}];
  [v4 set_preferredRepresentationByType:{-[NSMutableDictionary mutableCopy](-[NSItemProvider _preferredRepresentationByType](self, "_preferredRepresentationByType"), "mutableCopy")}];

  v4[2] = [(NSMutableDictionary *)self->_metadata mutableCopy];
  v4[9] = [(NSString *)self->_suggestedName copy];
  return v4;
}

- (NSItemProvider)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0]);
  }

  v5 = [(NSItemProvider *)self init];
  if (v5)
  {
    if (_os_feature_enabled_impl())
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v7 = [&unk_1EEF584A8 countByEnumeratingWithState:&v27 objects:location count:16];
      if (v7)
      {
        v8 = *v28;
        do
        {
          v9 = 0;
          do
          {
            if (*v28 != v8)
            {
              objc_enumerationMutation(&unk_1EEF584A8);
            }

            v10 = NSClassFromString(*(*(&v27 + 1) + 8 * v9));
            if (v10)
            {
              [v6 addObject:v10];
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [&unk_1EEF584A8 countByEnumeratingWithState:&v27 objects:location count:16];
        }

        while (v7);
      }

      v11 = [a3 decodeObjectOfClasses:v6 forKey:@"loadOperator"];
    }

    else
    {
      v11 = [a3 decodeObjectForKey:@"loadOperator"];
    }

    v12 = v11;
    v13 = [a3 decodePropertyListForKey:@"typeIdentifiers"];
    objc_initWeak(location, v5);
    if (v12)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __32__NSItemProvider_initWithCoder___block_invoke;
      v22[3] = &unk_1E69F5CC8;
      v22[4] = v5;
      v14 = &v23;
      objc_copyWeak(&v23, location);
      v22[5] = v12;
      [v13 enumerateObjectsUsingBlock:v22];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __32__NSItemProvider_initWithCoder___block_invoke_169;
      v21[3] = &unk_1E69F5AC0;
      v21[4] = v12;
      v5->_previewImageHandler = [v21 copy];
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __32__NSItemProvider_initWithCoder___block_invoke_2_170;
      v19[3] = &unk_1E69F5D18;
      v19[4] = v5;
      v14 = &v20;
      objc_copyWeak(&v20, location);
      [v13 enumerateObjectsUsingBlock:v19];
    }

    objc_destroyWeak(v14);
    v5->_loadOperator = v12;
    v15 = [a3 decodePropertyListForKey:@"metadata"];
    if (v15)
    {
      [(NSMutableDictionary *)v5->_metadata setDictionary:v15];
    }

    -[NSItemProvider setUserInfo:](v5, "setUserInfo:", [a3 decodePropertyListForKey:@"userInfo"]);
    v16 = [a3 decodeObjectOfClass:objc_opt_self() forKey:@"suggestedName"];
    if (v16 && (objc_opt_self(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v17 = [NSString stringWithFormat:@"Unexpected class '%@' for key '%@'", objc_opt_class(), @"suggestedName"];
      v24 = @"NSLocalizedDescription";
      v25 = v17;
      [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v25, &v24, 1))}];
      objc_destroyWeak(location);
      return 0;
    }

    else
    {
      v5->_suggestedName = [v16 copy];
      objc_destroyWeak(location);
    }
  }

  return v5;
}

void __32__NSItemProvider_initWithCoder___block_invoke(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__NSItemProvider_initWithCoder___block_invoke_2;
  v6[3] = &unk_1E69F5CA0;
  objc_copyWeak(v7, (a1 + 48));
  v5 = *(a1 + 40);
  v6[4] = a2;
  v6[5] = v5;
  [v4 registerItemForTypeIdentifier:a2 loadHandler:v6];
  objc_destroyWeak(v7);
}

uint64_t __32__NSItemProvider_initWithCoder___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = _NSIPLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    Weak = objc_loadWeak((a1 + 48));
    v11 = *(a1 + 32);
    v12 = 134349314;
    v13 = Weak;
    v14 = 2114;
    v15 = v11;
    _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Calling out to a load operator from NSItemProvider's unarchived object for type identifier '%{public}@'", &v12, 0x16u);
  }

  return [*(a1 + 40) loadItemForTypeIdentifier:*(a1 + 32) completionHandler:a2 expectedValueClass:a3 options:a4];
}

void __32__NSItemProvider_initWithCoder___block_invoke_2_170(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__NSItemProvider_initWithCoder___block_invoke_3;
  v4[3] = &unk_1E69F5CF0;
  objc_copyWeak(v5, (a1 + 40));
  [v3 registerItemForTypeIdentifier:a2 loadHandler:v4];
  objc_destroyWeak(v5);
}

uint64_t __32__NSItemProvider_initWithCoder___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = _NSIPLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349056;
    Weak = objc_loadWeak((a1 + 32));
    _os_log_debug_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEBUG, "<NSItemProvider %{public}p> Providing nil response from no-op/non-existent load operator", &v6, 0xCu);
  }

  return (*(a2 + 16))(a2, 0, 0);
}

- (void)encodeWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0]);
  }

  v5 = [(NSItemProvider *)self registeredTypeIdentifiers];
  if (v5)
  {
    [a3 encodeObject:v5 forKey:@"typeIdentifiers"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [a3 encodeObject:userInfo forKey:@"userInfo"];
  }

  loadOperator = self->_loadOperator;
  if (loadOperator)
  {
    [a3 encodeObject:loadOperator forKey:@"loadOperator"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    [a3 encodeObject:metadata forKey:@"metadata"];
  }

  if (self->_suggestedName)
  {

    [a3 encodeObject:? forKey:?];
  }
}

- (void)setPreviewImageHandler:(NSItemProviderLoadHandler)previewImageHandler
{
  v3 = self->_previewImageHandler;
  if (v3 != previewImageHandler)
  {

    self->_previewImageHandler = [previewImageHandler copy];
  }
}

- (void)loadPreviewImageWithOptions:(NSDictionary *)options completionHandler:(NSItemProviderCompletionHandler)completionHandler
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (!_NSIPGetExpectedClassFromCompletionBlock(completionHandler, &v8, 0))
  {
    v7 = _NSIPLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "Cannot derive expected value class from a NSItemProvider preview completion handler.", buf, 2u);
    }
  }

  [(NSItemProvider *)self _loadPreviewImageOfClass:v8 options:options coerceForCoding:0 completionHandler:completionHandler];
}

@end