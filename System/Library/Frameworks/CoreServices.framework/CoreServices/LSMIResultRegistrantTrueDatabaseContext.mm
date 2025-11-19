@interface LSMIResultRegistrantTrueDatabaseContext
- (BOOL)containerizedBundleExistsForIdentifier:(id)a3;
- (BOOL)fullBundleExistsForIdentifier:(id)a3 matchingNode:(id)a4;
- (BOOL)registerPluginNodeReinitializingContext:(id)a3 installDictionary:(id)a4 existingPlugin:(unsigned int)a5 error:(id *)a6;
- (BOOL)unregisterNonBundledExtensionPointWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)unregisterPluginBundleByUnit:(unsigned int)a3 error:(id *)a4;
- (LSMIResultRegistrantTrueDatabaseContext)initWithDatabase:(id)a3;
- (const)pluginDataForPlugin:(unsigned int)a3;
- (id)unregisterApplicationWithBundleIdentifier:(id)a3 type:(unsigned int)a4 error:(id *)a5;
- (unsigned)findApplicationBundleAtNode:(id)a3 error:(id *)a4;
- (unsigned)findPluginAtNode:(id)a3 error:(id *)a4;
- (unsigned)registerBundleNodeReinitializingContext:(id)a3 inBundleContainer:(BOOL)a4 installDictionary:(id)a5 personasWithAttributes:(id)a6 error:(id *)a7;
- (void)enumerateExtensionPointRecords:(id)a3;
@end

@implementation LSMIResultRegistrantTrueDatabaseContext

- (LSMIResultRegistrantTrueDatabaseContext)initWithDatabase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LSMIResultRegistrantTrueDatabaseContext;
  v6 = [(LSMIResultRegistrantTrueDatabaseContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context.db, a3);
  }

  return v7;
}

- (BOOL)fullBundleExistsForIdentifier:(id)a3 matchingNode:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v10 = 0;
  memset(v11, 0, sizeof(v11));
  if (_LSBundleFindWithInfoAndNo_IOFilter(&self->_context, 0, a3, 0, v11, 2, 128, 0, 0, &v10, 0, 0))
  {
    if (v6)
    {
      *&v11[0] = 0;
      if (_LSBundleCopyNode(self->_context.db, v10, 0, 0, v11))
      {
        v7 = 0;
      }

      else
      {
        v7 = [*&v11[0] isEqual:v6];
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)containerizedBundleExistsForIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0;
  v11 = kLSVersionNumberNull;
  v12 = unk_1817E90C0;
  v5 = _LSBundleFindWithInfoAndNo_IOFilter([(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer], 0, v4, 0, &v11, 2, 128, @"app in container", &__block_literal_global_271, &v10, 0, 0);
  v6 = self;
  v7 = [(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer];
  v11 = kLSVersionNumberNull;
  v12 = unk_1817E90C0;
  LOBYTE(self) = _LSBundleFindWithInfoAndNo_IOFilter(v7, 0, v4, 0, &v11, 2, 1152, @"app in container", &__block_literal_global_271, &v10, 0, 0);

  v8 = *MEMORY[0x1E69E9840];
  return (self | v5) & 1;
}

- (unsigned)registerBundleNodeReinitializingContext:(id)a3 inBundleContainer:(BOOL)a4 installDictionary:(id)a5 personasWithAttributes:(id)a6 error:(id *)a7
{
  v25[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v23 = 0;
  v14 = [(FSNode *)v12 mutableCopy];
  v15 = v14;
  if (v13)
  {
    [v14 setObject:v13 forKeyedSubscript:@"LSPersonaUniqueStrings"];
  }

  v16 = _LSFindOrRegisterBundleNode(&self->_context, v11, 0, 0x2000001u, v12, &v23, 0);
  if (v16)
  {
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"could not register full bundle unit while registering parallel placeholder";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v16, v17, "[LSMIResultRegistrantTrueDatabaseContext registerBundleNodeReinitializingContext:inBundleContainer:installDictionary:personasWithAttributes:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 996);
  }

  else
  {
    v18 = 0;
  }

  v19 = v23;
  if (a7 && !v23)
  {
    v20 = v18;
    *a7 = v18;
    v19 = v23;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)registerPluginNodeReinitializingContext:(id)a3 installDictionary:(id)a4 existingPlugin:(unsigned int)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  LOBYTE(a6) = _LSRegisterPluginNode([(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer], v9, v10, 0x2000000, 0, a6);

  return a6;
}

- (unsigned)findApplicationBundleAtNode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10 = 0;
  v7 = _LSBundleFindWithNode([(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer], v6, &v10, 0);
  if (a4 && v7)
  {
    *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v7, 0, "[LSMIResultRegistrantTrueDatabaseContext findApplicationBundleAtNode:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 1015);
  }

  v8 = v10;

  return v8;
}

- (unsigned)findPluginAtNode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = 0;
  if (_LSPluginFindWithInfo(*[(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer], 0, 0, 0, v6, &v9, a4))
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (const)pluginDataForPlugin:(unsigned int)a3
{
  v4 = *[(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer];

  return _LSGetPlugin(v4, a3);
}

- (id)unregisterApplicationWithBundleIdentifier:(id)a3 type:(unsigned int)a4 error:(id *)a5
{
  v6 = a4;
  v12 = a3;
  v20 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = v6 & 2 | 5;
  }

  else
  {
    v13 = v6 & 3;
  }

  v14 = _LSUnregisterAppWithBundleID(&self->_context.db, v12, v13, &v20, v8, v9, v10, v11);
  if (v14)
  {
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v14, 0, "[LSMIResultRegistrantTrueDatabaseContext unregisterApplicationWithBundleIdentifier:type:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 1093);
    v16 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __96__LSMIResultRegistrantTrueDatabaseContext_unregisterApplicationWithBundleIdentifier_type_error___block_invoke;
    v18[3] = &__block_descriptor_36_e8_v16__0_8l;
    v19 = v20;
    v16 = [v18 copy];
    v15 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  if (!v16)
  {
    v15 = v15;
    *a5 = v15;
  }

LABEL_10:

  return v16;
}

void __96__LSMIResultRegistrantTrueDatabaseContext_unregisterApplicationWithBundleIdentifier_type_error___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([__LSDefaultsGetSharedInstance() isLightweightSystemServer])
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v4 applicationType];
  v6 = [v5 isEqualToString:@"System"];

  if (v6)
  {
    v7 = *(a1 + 32);
    if ((v7 - 8) < 2)
    {
      v8 = [v4 bundleIdentifier];
      _LSNoteSystemAppInstallOrUninstall(v8, 0);
LABEL_7:

      goto LABEL_8;
    }

    if (v7 == 10)
    {
      v8 = [v4 bundleIdentifier];
      _LSNoteSystemAppInstallOrUninstall(v8, 1u);
      goto LABEL_7;
    }
  }

LABEL_8:
  if (*(a1 + 32) == 8)
  {
    v9 = +[LSApplicationRestrictionsManager sharedInstance];
    [(LSApplicationRestrictionsManager *)v9 schedulePruneObsoleteTrustedSignerIdentities];
  }

  v10 = +[_LSInstallProgressService sharedInstance];
  v11 = *(a1 + 32);
  v14[0] = v4;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v10 sendNotification:v11 forAppProxies:v12 Plugins:0 completion:0];

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];
}

void __83__LSMIResultRegistrantTrueDatabaseContext_unregisterApplicationBundleByUnit_error___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_LSInstallProgressService sharedInstance];
  v5 = *(a1 + 32);
  v8[0] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v4 sendNotification:v5 forAppProxies:v6 Plugins:0 completion:0];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)unregisterPluginBundleByUnit:(unsigned int)a3 error:(id *)a4
{
  v5 = _LSPluginUnregister(*[(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer], a3);
  v6 = v5;
  if (a4 && v5)
  {
    *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v5, 0, "[LSMIResultRegistrantTrueDatabaseContext unregisterPluginBundleByUnit:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 1127);
  }

  return v6 == 0;
}

- (void)enumerateExtensionPointRecords:(id)a3
{
  v4 = a3;
  v5 = *[(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer];
  [(_LSDatabase *)v5 store];
  v6 = *([(_LSDatabase *)v5 schema]+ 1592);
  v7 = v5;
  v8 = v4;
  _CSStoreEnumerateUnits();
}

void __74__LSMIResultRegistrantTrueDatabaseContext_enumerateExtensionPointRecords___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(LSRecord *)[LSExtensionPointRecord alloc] _initWithContext:*(a1 + 48) tableID:*([(_LSDatabase *)*(a1 + 32) schema]+ 1592) unitID:a2];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)unregisterNonBundledExtensionPointWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x4812000000;
  v16 = __Block_byref_object_copy__286;
  v17 = __Block_byref_object_dispose__287;
  v18 = &unk_1818533FF;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v6 = *[(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer];
  [(_LSDatabase *)v6 store];
  v7 = *([(_LSDatabase *)v6 schema]+ 1592);
  v8 = v6;
  v9 = v5;
  _CSStoreEnumerateUnits();
  v10 = v14[6];
  v11 = v14[7];
  while (v10 != v11)
  {
    _LSExtensionPointRemove(v8, *v10++);
  }

  _Block_object_dispose(&v13, 8);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return 1;
}

void __98__LSMIResultRegistrantTrueDatabaseContext_unregisterNonBundledExtensionPointWithIdentifier_error___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a3 + 56))
  {
    v5 = *(a3 + 4);
    [(_LSDatabase *)*(a1 + 32) store];
    v6 = _CSStringCopyCFString();
    v7 = [v6 isEqual:*(a1 + 40)];

    if (v7)
    {
      v8 = *(*(a1 + 48) + 8);
      v10 = v8[7];
      v9 = v8[8];
      if (v10 >= v9)
      {
        v12 = v8[6];
        v13 = v10 - v12;
        v14 = (v10 - v12) >> 2;
        v15 = v14 + 1;
        if ((v14 + 1) >> 62)
        {
          std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
        }

        v16 = v9 - v12;
        if (v16 >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
        v18 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v17)
        {
          v18 = v15;
        }

        if (v18)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:nn200100]((v8 + 6), v18);
        }

        v19 = (v10 - v12) >> 2;
        v20 = (4 * v14);
        v21 = (4 * v14 - 4 * v19);
        *v20 = a2;
        v11 = v20 + 1;
        memcpy(v21, v12, v13);
        v22 = v8[6];
        v8[6] = v21;
        v8[7] = v11;
        v8[8] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v10 = a2;
        v11 = v10 + 4;
      }

      v8[7] = v11;
    }
  }
}

- (void)unregisterApplicationBundleByUnit:(unsigned int)a1 error:(NSObject *)a2 .cold.1(unsigned int a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "couldn't find bundle for unit %llx, but we should have it in this flow!", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end