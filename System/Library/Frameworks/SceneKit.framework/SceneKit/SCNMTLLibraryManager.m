@interface SCNMTLLibraryManager
+ (id)hashCodeForSource:(id)a3 macros:(id)a4;
- (SCNMTLLibraryManager)initWithDevice:(id)a3;
- (id)defaultLibrary;
- (id)libraryForFile:(id)a3;
- (id)libraryForSourceCode:(id)a3 options:(id)a4;
- (void)clearCompiledLibraries;
- (void)dealloc;
- (void)libraryForProgramDesc:(id *)a3 completionHandler:(id)a4;
@end

@implementation SCNMTLLibraryManager

- (SCNMTLLibraryManager)initWithDevice:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = SCNMTLLibraryManager;
  v4 = [(SCNMTLLibraryManager *)&v28 init];
  v5 = v4;
  if (v4)
  {
    v4->_device = a3;
    v4->_frameworkLibrary = -[SCNMTLLibrary initWithPath:manager:]([SCNMTLLibrary alloc], "initWithPath:manager:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "pathForResource:ofType:", @"default", @"metallib"}], v4);
    v5->_availableLibraries = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v5->_availableCompiledLibraries = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    v5->_availableCompiledLibrariesLock._os_unfair_lock_opaque = 0;
    v5->_deviceQueue = dispatch_queue_create("com.apple.scenekit.device", 0);
    v5->_shaderCompilationGroup = dispatch_group_create();
    v6 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    if (!v6)
    {
      v6 = C3DGetShaderCacheLibraryURL();
      if (!v6)
      {
        v6 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      }
    }

    v7 = v6;
    v27 = 0;
    if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
    {
      v8 = [(MTLDevice *)v5->_device newLibraryWithURL:v7 error:&v27];
      if (v8)
      {
        v9 = v8;
        v10 = CFHash(v7);
        v5->_commonProfileCacheLibrary = v9;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __39__SCNMTLLibraryManager_initWithDevice___block_invoke;
        aBlock[3] = &__block_descriptor_40_e5_Q8__0l;
        aBlock[4] = v10;
        v5->_commonProfileCacheLibraryHasherBlock = _Block_copy(aBlock);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __39__SCNMTLLibraryManager_initWithDevice___block_invoke_2;
        v25[3] = &unk_2782FE8C8;
        v25[4] = v9;
        v5->_commonProfileCacheLibraryProviderBlock = _Block_copy(v25);
        v11 = [(MTLLibrary *)v5->_commonProfileCacheLibrary functionNames];
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v22;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v21 + 1) + 8 * i);
              if (([v17 hasPrefix:@"commonprofile_vert"] & 1) != 0 || objc_msgSend(v17, "hasPrefix:", @"commonprofile_frag"))
              {
                v18 = [(MTLLibrary *)v5->_commonProfileCacheLibrary newFunctionWithName:v17];
                [v12 setObject:v18 forKeyedSubscript:v17];
              }
            }

            v14 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v14);
        }

        if ([v12 count])
        {
          v5->_commonProfilePrecompiledFunctions = [v12 copy];
        }

        else
        {
          CFRelease(v5->_commonProfileCacheLibrary);
          CFRelease(v5->_commonProfileCacheLibraryHasherBlock);
          CFRelease(v5->_commonProfileCacheLibraryProviderBlock);
        }
      }

      else
      {
        v19 = scn_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [SCNMTLLibraryManager initWithDevice:];
        }
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_availableCompiledLibraries);

  dispatch_release(self->_deviceQueue);
  v3.receiver = self;
  v3.super_class = SCNMTLLibraryManager;
  [(SCNMTLLibraryManager *)&v3 dealloc];
}

+ (id)hashCodeForSource:(id)a3 macros:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  CC_SHA256_Init(&c);
  CFStringUpdateHash();
  v5 = [objc_msgSend(a4 "allKeys")];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [a4 objectForKeyedSubscript:*(*(&v23 + 1) + 8 * i)];
        CFStringUpdateHash();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CFStringUpdateHash();
        }

        else
        {
          data[0] = [v10 hash];
          CC_SHA256_Update(&c, data, 8u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }

  CC_SHA256_Final(md, &c);
  v11 = 0;
  v12 = data;
  v13.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v13.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v14.i64[0] = 0x3737373737373737;
  v14.i64[1] = 0x3737373737373737;
  v15.i64[0] = 0x3030303030303030;
  v15.i64[1] = 0x3030303030303030;
  v16.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v16.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v17.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v17.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  do
  {
    v18 = *&md[v11];
    v19.i64[0] = 0x3737373737373737;
    v19.i64[1] = 0x3737373737373737;
    v20.i64[0] = 0x3030303030303030;
    v20.i64[1] = 0x3030303030303030;
    v33.val[0] = vbslq_s8(vcgtq_u8(v13, v18), vsraq_n_u8(v20, v18, 4uLL), vsraq_n_u8(v19, v18, 4uLL));
    v21 = vandq_s8(v18, v16);
    v33.val[1] = vbslq_s8(vcgtq_u8(v17, v21), vorrq_s8(v21, v15), vaddq_s8(v21, v14));
    vst2q_s8(v12, v33);
    v12 += 32;
    v11 += 16;
  }

  while (v11 != 32);
  v29 = 0;
  return [MEMORY[0x277CCACA8] stringWithCString:data encoding:1];
}

- (void)clearCompiledLibraries
{
  os_unfair_lock_lock(&self->_availableCompiledLibrariesLock);
  CFDictionaryRemoveAllValues(self->_availableCompiledLibraries);

  os_unfair_lock_unlock(&self->_availableCompiledLibrariesLock);
}

- (id)defaultLibrary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SCNMTLLibraryManager_defaultLibrary__block_invoke;
  block[3] = &unk_2782FB608;
  block[4] = self;
  if ([SCNMTLLibraryManager defaultLibrary]::onceToken != -1)
  {
    dispatch_once(&[SCNMTLLibraryManager defaultLibrary]::onceToken, block);
  }

  return [(SCNMTLLibrary *)self->_defaultLibrary library];
}

SCNMTLLibrary *__38__SCNMTLLibraryManager_defaultLibrary__block_invoke(uint64_t a1)
{
  result = -[SCNMTLLibrary initWithPath:manager:]([SCNMTLLibrary alloc], "initWithPath:manager:", [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")], *(a1 + 32));
  *(*(a1 + 32) + 24) = result;
  return result;
}

- (id)libraryForFile:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  deviceQueue = self->_deviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SCNMTLLibraryManager_libraryForFile___block_invoke;
  block[3] = &unk_2782FE8F0;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(deviceQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __39__SCNMTLLibraryManager_libraryForFile___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKey:a1[5]];
  if (!v2)
  {
    v2 = [[SCNMTLLibrary alloc] initWithPath:a1[5] manager:a1[4]];
    [*(a1[4] + 88) setObject:v2 forKey:a1[5]];
  }

  result = [(SCNMTLLibrary *)v2 library];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (id)libraryForSourceCode:(id)a3 options:(id)a4
{
  v7 = +[SCNMTLLibraryManager hashCodeForSource:macros:](SCNMTLLibraryManager, "hashCodeForSource:macros:", a3, [a4 preprocessorMacros]);
  os_unfair_lock_lock(&self->_availableCompiledLibrariesLock);
  Value = CFDictionaryGetValue(self->_availableCompiledLibraries, v7);
  if (!Value)
  {
    v12 = 0;
    ++self->__engineStats->onlineShaderCount;
    v9 = CACurrentMediaTime();
    Value = [(MTLDevice *)self->_device newLibraryWithSource:a3 options:a4 error:&v12];
    self->__engineStats->onlineShaderCompilationTime = CACurrentMediaTime() - v9 + self->__engineStats->onlineShaderCompilationTime;
    if (Value)
    {
      CFDictionarySetValue(self->_availableCompiledLibraries, v7, Value);
    }

    else
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLLibraryManager libraryForSourceCode:options:];
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableCompiledLibrariesLock);
  return Value;
}

- (void)libraryForProgramDesc:(id *)a3 completionHandler:(id)a4
{
  if (a3->var0)
  {
    TypeID = C3DFXMetalProgramGetTypeID();
    if (TypeID == CFGetTypeID(a3->var0))
    {
      var0 = a3->var0;
      LibraryProviderBlock = C3DFXMetalProgramGetLibraryProviderBlock(&a3->var0->var0.var0.var0.var0);
      if (!LibraryProviderBlock || (v10 = (*(LibraryProviderBlock + 16))(LibraryProviderBlock, self->_device)) == 0)
      {
        SourceCode = C3DFXMetalProgramGetSourceCode(var0);
        if (SourceCode)
        {
          v12 = SourceCode;
          PreprocessorsMacros = C3DFXMetalProgramGetPreprocessorsMacros(var0);
          v14 = [SCNMTLLibraryManager hashCodeForSource:v12 macros:PreprocessorsMacros];
          os_unfair_lock_lock(&self->_availableCompiledLibrariesLock);
          Value = CFDictionaryGetValue(self->_availableCompiledLibraries, v14);
          os_unfair_lock_unlock(&self->_availableCompiledLibrariesLock);
          if (Value)
          {
            v16 = *(a4 + 2);
            v17 = a4;
            commonProfileCacheLibrary = Value;
LABEL_19:

            v16(v17, commonProfileCacheLibrary, 0);
            return;
          }

          v20 = C3DShouldCollectGeneratedShaders();
          v21 = [(NSDictionary *)self->_commonProfilePrecompiledFunctions count];
          if (!v21 && !v20)
          {
LABEL_34:
            OverrideMaterial = C3DGeometryGetOverrideMaterial(var0);
            v28 = SCNMetalLanguageVersion();
            LanguageVersion = C3DFXMetalProgramGetLanguageVersion(var0);
            if (v28 <= LanguageVersion)
            {
              v30 = LanguageVersion;
            }

            else
            {
              v30 = v28;
            }

            v31 = objc_alloc_init(MEMORY[0x277CD6D08]);
            [v31 setPreprocessorMacros:PreprocessorsMacros];
            [v31 setLanguageVersion:v30];
            [v31 setAdditionalCompilerArguments:@" -w "];
            kdebug_trace();
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v47 = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_49;
            v48 = &unk_2782FE9B8;
            v32 = *&a3->var13;
            v57 = *&a3->var11;
            v58 = v32;
            var16 = a3->var16;
            var17 = a3->var17;
            v34 = *&a3->var2;
            v53 = *&a3->var0;
            v54 = v34;
            v35 = *&a3->var6;
            v55 = *&a3->var4;
            v56 = v35;
            v60 = var17;
            v61 = OverrideMaterial;
            v49 = v12;
            v50 = self;
            v51 = v14;
            v52 = a4;
            v62 = var0;
            ++self->__engineStats->onlineShaderCount;
            v36 = CACurrentMediaTime();
            var14 = a3->var14;
            if (a3->var14)
            {
              if (var14 == 2)
              {
                device = self->_device;
                v44[0] = MEMORY[0x277D85DD0];
                v44[1] = 3221225472;
                v44[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3_56;
                v44[3] = &unk_2782FEA58;
                v44[4] = self;
                v44[5] = v46;
                v39 = v44;
              }

              else
              {
                if (var14 != 1)
                {
                  v41 = scn_default_log();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    [SCNMTLLibraryManager libraryForProgramDesc:completionHandler:];
                  }

                  goto LABEL_46;
                }

                dispatch_group_enter(self->_shaderCompilationGroup);
                device = self->_device;
                v45[0] = MEMORY[0x277D85DD0];
                v45[1] = 3221225472;
                v45[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_54;
                v45[3] = &unk_2782FEA08;
                *&v45[6] = v36;
                v45[4] = self;
                v45[5] = v46;
                v39 = v45;
              }

              [(MTLDevice *)device newLibraryWithSource:v12 options:v31 completionHandler:v39];
            }

            else
            {
              v43 = 0;
              v40 = [(MTLDevice *)self->_device newLibraryWithSource:v12 options:v31 error:&v43];
              self->__engineStats->onlineShaderCompilationTime = CACurrentMediaTime() - v36 + self->__engineStats->onlineShaderCompilationTime;
              v47(v46, v40, v43);
            }

LABEL_46:

            return;
          }

          v22 = [@"commonprofile_vert" stringByAppendingString:v14];
          v42 = [@"commonprofile_frag" stringByAppendingString:v14];
          if (v21)
          {
            if ([(NSDictionary *)self->_commonProfilePrecompiledFunctions objectForKeyedSubscript:v22]&& [(NSDictionary *)self->_commonProfilePrecompiledFunctions objectForKeyedSubscript:v42])
            {
              C3DFXMetalProgramSetFunctionName(var0, 0, v22);
              C3DFXMetalProgramSetFunctionName(var0, 1, v42);
              C3DFXMetalProgramReplaceSourceCodeWithLibrary(var0, self->_commonProfileCacheLibraryHasherBlock, self->_commonProfileCacheLibraryProviderBlock);
              commonProfileCacheLibrary = self->_commonProfileCacheLibrary;
              goto LABEL_18;
            }

            v23 = scn_default_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = v22;
              [SCNMTLLibraryManager libraryForProgramDesc:completionHandler:];
              if (!v20)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v24 = v22;
              if (!v20)
              {
                goto LABEL_34;
              }
            }
          }

          else
          {
            v24 = v22;
            if (!v20)
            {
              goto LABEL_34;
            }
          }

          v25 = C3DGetShaderCompilationDirectory();
          if (v25)
          {
            v26 = v25;
            if ([SCNMTLLibraryManager libraryForProgramDesc:completionHandler:]::onceToken != -1)
            {
              [SCNMTLLibraryManager libraryForProgramDesc:completionHandler:];
            }

            CFRetain(var0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_2;
            block[3] = &unk_2782FE968;
            block[4] = v26;
            block[5] = v14;
            block[6] = v24;
            block[7] = v42;
            block[8] = var0;
            dispatch_async([SCNMTLLibraryManager libraryForProgramDesc:completionHandler:]::shaderCollectionQueue, block);
          }

          goto LABEL_34;
        }

        if (C3DFXProgramIsClientProgram(a3->var0))
        {
          v10 = [(SCNMTLLibraryManager *)self defaultLibrary];
        }

        else
        {
          v10 = [(SCNMTLLibraryManager *)self frameworkLibrary];
        }
      }

      commonProfileCacheLibrary = v10;
LABEL_18:
      v16 = *(a4 + 2);
      v17 = a4;
      goto LABEL_19;
    }
  }

  v19 = scn_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLLibraryManager libraryForProgramDesc:completionHandler:];
  }
}

dispatch_queue_t __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("com.apple.scenekit.shader-collection-queue", v1);
  [SCNMTLLibraryManager libraryForProgramDesc:completionHandler:]::shaderCollectionQueue = result;
  return result;
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_2(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3;
  v8[3] = &unk_2782FE918;
  v9 = *(a1 + 32);
  v2 = [SCNCommonProfileProgramGenerator generatorWithProfile:0 allowingHotReload:0];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_43;
  v7[3] = &unk_2782FE940;
  v7[4] = *(a1 + 32);
  [(SCNCommonProfileProgramGenerator *)v2 collectShaderForProgram:v5 hashCode:v3 newVertexFunctionName:v4 newFragmentFunctionName:v6 sourceCodeBlock:v8 additionalFileBlock:v7];
  CFRelease(*(a1 + 64));
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = 0;
  if ([a2 writeToURL:objc_msgSend(v2 atomically:"URLByAppendingPathComponent:" encoding:objc_msgSend(MEMORY[0x277CCACA8] error:{"stringWithFormat:", @"commonProfile_%@.metal", v5)), 1, 4, &v6}])
  {
    v3 = v6 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3_cold_1(&v6);
    }
  }
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_43(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = [*(a1 + 32) URLByAppendingPathComponent:?];
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    if (([objc_msgSend(MEMORY[0x277CCACA8] stringWithContentsOfURL:v3 encoding:4 error:{0), "isEqualToString:", a2}] & 1) == 0)
    {
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_43_cold_2();
      }
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (![a2 writeToURL:v3 atomically:1 encoding:4 error:&v6] || v6)
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3_cold_1(&v6);
      }
    }
  }
}

uint64_t __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_49(uint64_t a1, const void *a2, void *a3)
{
  if (a3)
  {
    v6 = *(a1 + 152);
    if (v6)
    {
      [v6 setObject:a3 forKeyedSubscript:*(a1 + 32)];
    }
  }

  if (a2)
  {
    os_unfair_lock_lock((*(a1 + 40) + 104));
    if (!CFDictionaryGetValue(*(*(a1 + 40) + 96), *(a1 + 48)))
    {
      CFDictionarySetValue(*(*(a1 + 40) + 96), *(a1 + 48), a2);
    }

    os_unfair_lock_unlock((*(a1 + 40) + 104));
  }

  else
  {
    v7 = *(a1 + 184);
    if (v7 && (Callbacks = C3DFXProgramDelegateGetCallbacks(v7)) != 0 && (v9 = *(Callbacks + 16)) != 0)
    {
      UserInfo = C3DFXProgramDelegateGetUserInfo(*(a1 + 184));
      v9(0, a3, UserInfo);
    }

    else
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_49_cold_1(a3);
      }

      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x2020000000;
      v16 = 0;
      v12 = *(a1 + 32);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_50;
      v14[3] = &unk_2782FE990;
      v14[4] = v15;
      [v12 enumerateLinesUsingBlock:v14];
      _Block_object_dispose(v15, 8);
    }
  }

  (*(*(a1 + 56) + 16))();
  return kdebug_trace();
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_50(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = scn_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 24);
    *(v5 + 24) = v6 + 1;
    v7[0] = 67109378;
    v7[1] = v6;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_DEFAULT, "%d: %@", v7, 0x12u);
  }
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_54(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[4];
  v4 = *(v3 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_2_55;
  block[3] = &unk_2782FE9E0;
  block[8] = a1[6];
  v5 = a1[5];
  block[4] = v3;
  block[5] = a2;
  block[6] = a3;
  block[7] = v5;
  dispatch_async(v4, block);
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_2_55(uint64_t a1)
{
  *(*(*(a1 + 32) + 32) + 288) = CACurrentMediaTime() - *(a1 + 64) + *(*(*(a1 + 32) + 32) + 288);
  (*(*(a1 + 56) + 16))();
  v2 = *(*(a1 + 32) + 48);

  dispatch_group_leave(v2);
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3_56(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_4;
  block[3] = &unk_2782FEA30;
  v4 = *(a1 + 40);
  block[5] = a3;
  block[6] = v4;
  block[4] = a2;
  dispatch_async(v3, block);
}

- (void)initWithDevice:.cold.1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)libraryForSourceCode:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)libraryForProgramDesc:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3_cold_1(id *a1)
{
  [*a1 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Error: Failed to collect shader: %@", v3, v4, v5, v6, v7);
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_43_cold_2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_49_cold_1(void *a1)
{
  [a1 description];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Error: FATAL ERROR : failed compiling shader:\n%@", v3, v4, v5, v6, v7);
}

@end