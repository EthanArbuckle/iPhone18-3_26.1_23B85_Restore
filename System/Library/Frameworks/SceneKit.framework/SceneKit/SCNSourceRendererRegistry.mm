@interface SCNSourceRendererRegistry
+ (id)sharedRegistry;
- (SCNSourceRendererRegistry)init;
- (id)sourceRendererForEngineContext:(__C3DEngineContext *)a3 source:(id)a4 textureSource:(id)a5 targetTexture:(id)a6;
- (void)dealloc;
- (void)endFrameForEngineContext:(__C3DEngineContext *)a3;
- (void)removeSourceRenderersForEngineContext:(__C3DEngineContext *)a3;
- (void)removeSourceRenderersForSource:(id)a3;
- (void)rendererDidChange:(id)a3;
@end

@implementation SCNSourceRendererRegistry

- (SCNSourceRendererRegistry)init
{
  v4.receiver = self;
  v4.super_class = SCNSourceRendererRegistry;
  v2 = [(SCNSourceRendererRegistry *)&v4 init];
  if (v2)
  {
    v2->_registry = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  }

  return v2;
}

- (void)dealloc
{
  registry = self->_registry;
  if (registry)
  {
    CFRelease(registry);
  }

  v4.receiver = self;
  v4.super_class = SCNSourceRendererRegistry;
  [(SCNSourceRendererRegistry *)&v4 dealloc];
}

+ (id)sharedRegistry
{
  if (sharedRegistry_onceToken != -1)
  {
    +[SCNSourceRendererRegistry sharedRegistry];
  }

  return sharedRegistry_sharedRegistry;
}

SCNSourceRendererRegistry *__43__SCNSourceRendererRegistry_sharedRegistry__block_invoke()
{
  result = objc_alloc_init(SCNSourceRendererRegistry);
  sharedRegistry_sharedRegistry = result;
  return result;
}

- (void)rendererDidChange:(id)a3
{
  if (pthread_main_np())
  {
    v4 = [a3 layer];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];

    [v5 postNotificationName:@"SCNLayerTreeDidChange" object:v4];
  }

  else
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] activateBackground:1];
    v6 = [a3 layer];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    v7 = MEMORY[0x277CD9FF0];

    [v7 commit];
  }
}

- (id)sourceRendererForEngineContext:(__C3DEngineContext *)a3 source:(id)a4 textureSource:(id)a5 targetTexture:(id)a6
{
  v37[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&sourceRendererRegistryAccessMutex);
  Value = CFDictionaryGetValue(self->_registry, a3);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    CFDictionarySetValue(self->_registry, a3, Value);
    CFRelease(Value);
  }

  v12 = CFDictionaryGetValue(Value, a4);
  if (v12)
  {
    v13 = v12;
    __SKSceneClass();
    if (objc_opt_class())
    {
      __SKSceneClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 setScene:a4];
      }
    }

    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [a4 rendererOptions];
      if (!v14)
      {
LABEL_19:
        v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
LABEL_20:
        v19 = v18;
        if (a6)
        {
          [v18 setObject:C3DColorSpaceLinearSRGB() forKeyedSubscript:*MEMORY[0x277CDA818]];
          RenderContext = C3DEngineContextGetRenderContext(a3);
          [v19 setObject:-[SCNMTLRenderContext commandQueue](RenderContext) forKeyedSubscript:*MEMORY[0x277CDA820]];
          [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDA810]];
          v21 = [MEMORY[0x277CD9F40] rendererWithMTLTexture:a6 options:v19];
        }

        else
        {
          GLContext = C3DRendererContextGetGLContext([a5 rendererContextForTextureSourceWithEngineContext:a3]);
          if (!GLContext)
          {
            v23 = scn_default_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              C3DEngineContextGetScene_cold_1(v23, v24, v25, v26, v27, v28, v29, v30);
            }
          }

          v21 = [MEMORY[0x277CD9F40] rendererWithEAGLContext:GLContext options:v19];
        }

        v13 = v21;
        [v21 setDelegate:self];

        if (v13)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (![objc_msgSend(a4 valueForKey:{@"SCN_isBackingUIView", "BOOLValue"}])
      {
        goto LABEL_19;
      }

      v36 = @"kCARendererFlags";
      v37[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:3];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    v18 = [v14 mutableCopy];
    goto LABEL_20;
  }

  __SKSceneClass();
  if (!objc_opt_class() || (__SKSceneClass(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = 0;
    goto LABEL_28;
  }

  v15 = NSClassFromString(&cfstr_Skscnrenderer.isa);
  v16 = C3DEngineContextGetRenderContext(a3);
  if (v16)
  {
    v17 = [(objc_class *)v15 rendererWithDevice:[(SCNMTLRenderContext *)v16 device] options:0];
  }

  else
  {
    v17 = [(objc_class *)v15 rendererWithContext:C3DEngineContextGetGLContext(a3) options:0];
  }

  v13 = v17;
  [v17 setScene:a4];
  [v13 setBackingScaleFactor:1.0];
  [a4 size];
  v34 = v33;
  [a4 size];
  [v13 setBounds:{0.0, 0.0, v34, v35}];
  if (v13)
  {
LABEL_27:
    CFDictionarySetValue(Value, a4, v13);
  }

LABEL_28:
  v31 = v13;
  os_unfair_lock_unlock(&sourceRendererRegistryAccessMutex);
  return v13;
}

- (void)removeSourceRenderersForEngineContext:(__C3DEngineContext *)a3
{
  os_unfair_lock_lock(&sourceRendererRegistryAccessMutex);
  CFDictionaryRemoveValue(self->_registry, a3);

  os_unfair_lock_unlock(&sourceRendererRegistryAccessMutex);
}

- (void)endFrameForEngineContext:(__C3DEngineContext *)a3
{
  os_unfair_lock_lock(&sourceRendererRegistryAccessMutex);
  Value = CFDictionaryGetValue(self->_registry, a3);
  if (Value)
  {
    v6 = Value;
    Count = CFDictionaryGetCount(Value);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 8 * Count;
      v10 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      v11 = malloc_type_malloc(v9, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(v6, v10, v11);
      for (i = 0; i != v8; ++i)
      {
        v13 = v11[i];
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v13 scene])
        {
          CFDictionaryRemoveValue(v6, v10[i]);
        }
      }

      free(v10);
      free(v11);
      CFDictionaryApplyFunction(v6, _removeSKRendererLinkToSource, 0);
    }
  }

  os_unfair_lock_unlock(&sourceRendererRegistryAccessMutex);
}

- (void)removeSourceRenderersForSource:(id)a3
{
  os_unfair_lock_lock(&sourceRendererRegistryAccessMutex);
  CFDictionaryApplyFunction(self->_registry, _removeSourceRendererForSource, a3);

  os_unfair_lock_unlock(&sourceRendererRegistryAccessMutex);
}

@end