@interface FPItemToURLResourcesConverter
+ (id)dictionaryFromItem:(id)a3 requestedKeys:(id)a4;
- (FPItemToURLResourcesConverter)initWithItemClass:(Class)a3;
- (id)_dictionaryFromItem:(id)a3 requestedKeys:(id)a4;
- (void)_addHelperMethodsToClass:(Class)a3;
- (void)_addMethod:(SEL)a3 toClass:(Class)a4;
- (void)_cacheImplementedPropertiesForClass:(Class)a3;
@end

@implementation FPItemToURLResourcesConverter

- (FPItemToURLResourcesConverter)initWithItemClass:(Class)a3
{
  v13.receiver = self;
  v13.super_class = FPItemToURLResourcesConverter;
  v4 = [(FPItemToURLResourcesConverter *)&v13 init];
  if (v4)
  {
    section = __fp_create_section();
    v12 = section;
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(FPItemToURLResourcesConverter *)a3 initWithItemClass:v6];
    }

    v7 = objc_opt_new();
    gettersByURLKey = v4->_gettersByURLKey;
    v4->_gettersByURLKey = v7;

    v9 = objc_opt_new();
    typesByURLKey = v4->_typesByURLKey;
    v4->_typesByURLKey = v9;

    [(FPItemToURLResourcesConverter *)v4 _addHelperMethodsToClass:a3];
    [(FPItemToURLResourcesConverter *)v4 _cacheImplementedPropertiesForClass:a3];
    __fp_leave_section_Debug(&v12);
  }

  return v4;
}

- (void)_addMethod:(SEL)a3 toClass:(Class)a4
{
  v6 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v6, a3);
  v8 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v8, a3);
  TypeEncoding = method_getTypeEncoding(InstanceMethod);

  class_addMethod(a4, a3, MethodImplementation, TypeEncoding);
}

- (void)_addHelperMethodsToClass:(Class)a3
{
  [(FPItemToURLResourcesConverter *)self _addMethod:sel_fp_downloadingStatus toClass:a3];
  [(FPItemToURLResourcesConverter *)self _addMethod:sel_fp_isReadable toClass:a3];
  [(FPItemToURLResourcesConverter *)self _addMethod:sel_fp_isWritable toClass:a3];
  [(FPItemToURLResourcesConverter *)self _addMethod:sel_fp_sharingCurrentUserRole toClass:a3];
  [(FPItemToURLResourcesConverter *)self _addMethod:sel_fp_sharingCurrentUserPermissions toClass:a3];

  [(FPItemToURLResourcesConverter *)self _addMethod:sel_fp_supportedSyncControls toClass:a3];
}

- (void)_cacheImplementedPropertiesForClass:(Class)a3
{
  v31 = *MEMORY[0x1E69E9840];
  section = __fp_create_section();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(FPItemToURLResourcesConverter *)&section _cacheImplementedPropertiesForClass:a3, v4];
  }

  FPItemPropertyNamesByURLResourceKey();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v6)
  {
    v8 = *v22;
    *&v7 = 138412546;
    v19 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v19}];
        v12 = NSSelectorFromString(v11);
        if (([(objc_class *)a3 instancesRespondToSelector:v12]& 1) != 0)
        {
          v13 = [(objc_class *)a3 instanceMethodSignatureForSelector:v12];
          v14 = MEMORY[0x1E696AEC0];
          v15 = v13;
          v16 = [v14 stringWithUTF8String:{-[NSObject methodReturnType](v13, "methodReturnType")}];
          [(NSMutableDictionary *)self->_typesByURLKey setObject:v16 forKeyedSubscript:v10];

          v17 = [MEMORY[0x1E696B098] valueWithPointer:{class_getMethodImplementation(a3, v12)}];
          [(NSMutableDictionary *)self->_gettersByURLKey setObject:v17 forKeyedSubscript:v10];
        }

        else
        {
          v13 = fp_current_or_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = v19;
            v27 = v11;
            v28 = 2112;
            v29 = a3;
            _os_log_debug_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] property %@ is unavailable on %@", buf, 0x16u);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v6);
  }

  __fp_leave_section_Debug(&section);
  v18 = *MEMORY[0x1E69E9840];
}

- (id)_dictionaryFromItem:(id)a3 requestedKeys:(id)a4
{
  v107 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 filename];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E695DC30]];

  if (objc_opt_respondsToSelector())
  {
    v10 = [v6 contentType];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695DAA0]];

    v11 = [v6 contentType];
    v12 = [v11 identifier];
    [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x1E695DC68]];
  }

  else
  {
    v13 = *MEMORY[0x1E695DC68];
    v11 = [v6 typeIdentifier];
    [v8 setObject:v11 forKeyedSubscript:v13];
  }

  v14 = *MEMORY[0x1E695DCB0];
  if ([v7 containsObject:*MEMORY[0x1E695DCB0]])
  {
    v15 = *MEMORY[0x1E695DC98];
    if (([v7 containsObject:*MEMORY[0x1E695DC98]] & 1) == 0)
    {
      v16 = [v7 arrayByAddingObject:v15];

      v7 = v16;
    }
  }

  v89 = *MEMORY[0x1E695DD38];
  if ([v7 containsObject:*MEMORY[0x1E695DD38]])
  {
    v17 = [v7 arrayByAddingObject:*MEMORY[0x1E695DD00]];

    v7 = v17;
  }

  v18 = *MEMORY[0x1E695DD18];
  if ([v7 containsObject:*MEMORY[0x1E695DD18]])
  {
    v19 = [v7 arrayByAddingObject:*MEMORY[0x1E695DD10]];

    v7 = v19;
  }

  v91 = *MEMORY[0x1E695DBD8];
  if ([v7 containsObject:?])
  {
    v20 = *MEMORY[0x1E695DC98];
    if (([v7 containsObject:*MEMORY[0x1E695DC98]] & 1) == 0)
    {
      v21 = [v7 arrayByAddingObject:v20];

      v7 = v21;
    }
  }

  v94 = v8;
  v96 = v6;
  v92 = v7;
  v90 = v18;
  v88 = v14;
  if (v7)
  {
    v22 = v7;
  }

  else
  {
    v22 = [(NSMutableDictionary *)self->_gettersByURLKey allKeys];
  }

  v23 = v22;
  v97 = FPItemPropertyNamesByURLResourceKey();
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v23;
  v24 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v99;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v99 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v98 + 1) + 8 * i);
        v29 = [(NSMutableDictionary *)self->_gettersByURLKey objectForKeyedSubscript:v28];
        v30 = [v29 pointerValue];

        v31 = [(NSMutableDictionary *)self->_typesByURLKey objectForKeyedSubscript:v28];
        if (v30)
        {
          v32 = [v97 objectForKeyedSubscript:v28];
          if (!v32)
          {
            v33 = [MEMORY[0x1E696AAA8] currentHandler];
            [v33 handleFailureInMethod:a2 object:self file:@"FPItemConversion.m" lineNumber:430 description:@"property doesn't exist"];
          }

          v34 = NSSelectorFromString(v32);
          v35 = *[v31 UTF8String];
          if (v35 <= 0x50)
          {
            switch(v35)
            {
              case '@':
                v36 = v30(v6, v34);
                break;
              case 'B':
                v36 = [MEMORY[0x1E696AD98] numberWithBool:{(v30)(v6, v34)}];
                break;
              case 'L':
                v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{(v30)(v6, v34)}];
                break;
              default:
                goto LABEL_38;
            }
          }

          else if (v35 > 107)
          {
            if (v35 == 108)
            {
              v36 = [MEMORY[0x1E696AD98] numberWithLong:{(v30)(v6, v34)}];
            }

            else
            {
              if (v35 != 113)
              {
                goto LABEL_38;
              }

              v36 = [MEMORY[0x1E696AD98] numberWithLongLong:{(v30)(v6, v34)}];
            }
          }

          else
          {
            if (v35 != 81)
            {
              if (v35 == 99)
              {
                v36 = [MEMORY[0x1E696AD98] numberWithChar:{(v30)(v6, v34)}];
                goto LABEL_43;
              }

LABEL_38:
              v37 = fp_current_or_default_log();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v103 = v31;
                v104 = 2112;
                v105 = v32;
                _os_log_error_impl(&dword_1AAAE1000, v37, OS_LOG_TYPE_ERROR, "[ERROR] unsupported type '%@' for property: %@", buf, 0x16u);
              }

LABEL_45:

              goto LABEL_46;
            }

            v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{(v30)(v6, v34)}];
          }

LABEL_43:
          v37 = v36;
          if (v36)
          {
            [v94 setObject:v36 forKeyedSubscript:v28];
            goto LABEL_45;
          }

LABEL_46:
        }
      }

      v25 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
    }

    while (v25);
  }

  v38 = *MEMORY[0x1E695DBF0];
  v39 = [v94 objectForKeyedSubscript:*MEMORY[0x1E695DBF0]];
  if (v39)
  {
    v40 = v39;
    v41 = [v94 objectForKeyedSubscript:*MEMORY[0x1E695DCC8]];
    v42 = [v41 BOOLValue];

    if (v42)
    {
      v43 = [v94 objectForKeyedSubscript:v38];
      v44 = [v43 BOOLValue];

      v45 = MEMORY[0x1E695DD30];
      if (!v44)
      {
        v45 = MEMORY[0x1E695DD28];
      }

      v46 = *v45;
      [v94 setObject:v46 forKeyedSubscript:*MEMORY[0x1E695DCF8]];
    }
  }

  if ([v92 containsObject:v88])
  {
    v47 = fp_current_or_default_log();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [(FPItemToURLResourcesConverter *)v47 _dictionaryFromItem:v48 requestedKeys:v49, v50, v51, v52, v53, v54];
    }

    v55 = [v94 objectForKeyedSubscript:*MEMORY[0x1E695DC98]];
    v56 = v55;
    if (v55)
    {
      v57 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v55, "isEqual:", *MEMORY[0x1E695DCA0]) ^ 1}];
      [v94 setObject:v57 forKeyedSubscript:v88];
    }
  }

  if ([v92 containsObject:v89])
  {
    v58 = fp_current_or_default_log();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      [(FPItemToURLResourcesConverter *)v58 _dictionaryFromItem:v59 requestedKeys:v60, v61, v62, v63, v64, v65];
    }

    v66 = [v94 objectForKeyedSubscript:*MEMORY[0x1E695DD00]];
    [v94 setObject:v66 forKeyedSubscript:v89];
  }

  if ([v92 containsObject:v90])
  {
    v67 = [v94 objectForKeyedSubscript:*MEMORY[0x1E695DD10]];
    v68 = fp_current_or_default_log();
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG);
    if (v67)
    {
      if (v69)
      {
        [(FPItemToURLResourcesConverter *)v68 _dictionaryFromItem:v70 requestedKeys:v71, v72, v73, v74, v75, v76];
      }

      v77 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v67 style:0 options:0];
      [v94 setObject:v77 forKeyedSubscript:v90];
    }

    else
    {
      if (v69)
      {
        [FPItemToURLResourcesConverter _dictionaryFromItem:v96 requestedKeys:v68];
      }

      [v94 setObject:0 forKeyedSubscript:v90];
    }
  }

  if ([v92 containsObject:v91])
  {
    v78 = [v94 objectForKeyedSubscript:v91];

    if (!v78)
    {
      v79 = MEMORY[0x1E696AD98];
      v80 = [v94 objectForKeyedSubscript:*MEMORY[0x1E695DC98]];
      v81 = [v79 numberWithInt:v80 != 0];
      [v94 setObject:v81 forKeyedSubscript:v91];
    }
  }

  v82 = *MEMORY[0x1E695DCD0];
  if ([v92 containsObject:*MEMORY[0x1E695DCD0]])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_opt_respondsToSelector())
      {
        v83 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v96, "isSyncPaused")}];
        [v94 setObject:v83 forKeyedSubscript:v82];
      }

      else
      {
        [v94 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v82];
      }
    }
  }

  v84 = *MEMORY[0x1E695DCE8];
  if ([v92 containsObject:*MEMORY[0x1E695DCE8]])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_supportedSyncControlsForVendorItem(v96)];
    [v94 setObject:v85 forKeyedSubscript:v84];
  }

  v86 = *MEMORY[0x1E69E9840];

  return v94;
}

+ (id)dictionaryFromItem:(id)a3 requestedKeys:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    if (dictionaryFromItem_requestedKeys__once != -1)
    {
      +[FPItemToURLResourcesConverter dictionaryFromItem:requestedKeys:];
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__31;
    v27 = __Block_byref_object_dispose__31;
    v28 = 0;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = dictionaryFromItem_requestedKeys__queue;
    block = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __66__FPItemToURLResourcesConverter_dictionaryFromItem_requestedKeys___block_invoke_377;
    v19 = &unk_1E793EF40;
    v21 = &v23;
    v12 = v10;
    v20 = v12;
    v22 = v9;
    dispatch_sync(v11, &block);
    v13 = [v24[5] _dictionaryFromItem:v7 requestedKeys:v8];
    if (!v13)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:a1 file:@"FPItemConversion.m" lineNumber:564 description:{@"couldn't convert item: %@", v7, block, v17, v18, v19}];
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __66__FPItemToURLResourcesConverter_dictionaryFromItem_requestedKeys___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("NSFileProviderPropertyDictionary", v0);
  v2 = dictionaryFromItem_requestedKeys__queue;
  dictionaryFromItem_requestedKeys__queue = v1;

  v3 = objc_opt_new();
  v4 = dictionaryFromItem_requestedKeys__convertersByItemClass;
  dictionaryFromItem_requestedKeys__convertersByItemClass = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __66__FPItemToURLResourcesConverter_dictionaryFromItem_requestedKeys___block_invoke_377(void *a1)
{
  v2 = [dictionaryFromItem_requestedKeys__convertersByItemClass objectForKeyedSubscript:a1[4]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[5] + 8) + 40))
  {
    v5 = [[FPItemToURLResourcesConverter alloc] initWithItemClass:a1[6]];
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = a1[4];
    v9 = *(*(a1[5] + 8) + 40);
    v10 = dictionaryFromItem_requestedKeys__convertersByItemClass;

    [v10 setObject:v9 forKeyedSubscript:v8];
  }
}

- (void)initWithItemClass:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, a2, a3, "[DEBUG] ┏%llx instantiating dictionary converter for %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_cacheImplementedPropertiesForClass:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, a2, a3, "[DEBUG] ┏%llx caching properties of %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_dictionaryFromItem:(uint64_t)a1 requestedKeys:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Deprecated NSURLUbiquitousSharedItemOwnerNameKey was called for item %@ that does not have name components", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end