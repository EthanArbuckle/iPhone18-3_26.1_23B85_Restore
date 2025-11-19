@interface AXPTranslator_iOS
+ (id)sharedInstance;
+ (id)translationObjectFromUIKitObject:(id)a3;
- (AXPTranslator_iOS)init;
- (AXUIElement)systemAppElement;
- (BOOL)_usingCachedTree;
- (__AXUIElement)createPlatformElementFromTranslationObject:(id)a3;
- (id)_allAXTreeActions;
- (id)_allAXTreeAttrValues;
- (id)_allAXTreeCanSetAttrValues;
- (id)_frontmostAppChildrenForXCTest;
- (id)_nilOutEmptyValue:(id)a3;
- (id)_postProcessAttributeRequest:(id)a3 iosAttribute:(int64_t)a4 axpAttribute:(unint64_t)a5 result:(id)a6 error:(unint64_t *)a7;
- (id)_postProcessResultDataForSecureCoding:(id)a3;
- (id)_preprocessRequest:(int64_t)a3 parameter:(id)a4;
- (id)_processAccessibilityAttributeValue:(int64_t)a3;
- (id)_processApplicationOrientationForTreeDump:(id)a3;
- (id)_processAttributeSpecialCases:(unint64_t)a3 uiElement:(id)a4 parameter:(id)a5 error:(unint64_t *)a6 client:(unint64_t)a7;
- (id)_processAttributedStringForRangeAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processAuditIssuesAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processBoundsForRangeAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processBrailleOverrideForAttributeRequest:(id)a3 error:(unint64_t *)a4 attribute:(unint64_t)a5;
- (id)_processCellWithIndexPathAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processChildrenAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processClassNameAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processCustomActionsAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processCustomRotorData:(id)a3;
- (id)_processDirectAttributeRequest:(id)a3 iosAttribute:(int64_t)a4 axpAttribute:(unint64_t)a5 parameter:(id)a6 error:(unint64_t *)a7;
- (id)_processElementHelpAttributeResquest:(id)a3 error:(unint64_t *)a4;
- (id)_processFirstContainedElement:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processFirstElementForFocus:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processFocusedElementAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processIndexForTextMarkerAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processIsEnabledAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processIsFocusedAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processIsRemoteElementAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processIsSelectedAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processLabelAttributeRequest:(id)a3 error:(unint64_t *)a4 axpAttribute:(unint64_t)a5;
- (id)_processLastContainedElement:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processLineRangeAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processLinkedUIElementsAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processMoveFocusToOpaqueElementAttributeRequest:(id)a3 parameter:(id)a4 direction:(int64_t)a5 error:(unint64_t *)a6;
- (id)_processNextLineRangeAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processNumberOfCharactersAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processOutgoingCustomRotorSearchResult:(id)a3;
- (id)_processParameterizedAttributeRequest:(id)a3 attribute:(int64_t)a4 parameter:(id)a5 error:(unint64_t *)a6;
- (id)_processPreviousLineRangeAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processRawElementDataRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processRoleAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processRoleDescriptionAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processSelectedTextRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processStartsMediaSessionAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processStringForRangeAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_processSubroleAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processSyntheticStringValueAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processTextInputMarkedRangeAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processUserInputLabelsAttributeRequest:(id)a3 error:(unint64_t *)a4 axpAttribute:(unint64_t)a5;
- (id)_processValueAttributeRequest:(id)a3 error:(unint64_t *)a4 axpAttribute:(unint64_t)a5 useAttributes:(BOOL)a6;
- (id)_processViewControllerDescriptionAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processVisibleOpaqueElements:(id)a3 error:(unint64_t *)a4;
- (id)_processVisibleTextRangeAttributeRequest:(id)a3 error:(unint64_t *)a4;
- (id)_processZoomAttributeRequest:(BOOL)a3 axElement:(id)a4 parameter:(id)a5 error:(unint64_t *)a6;
- (id)_processingSmuggledMarzipanRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5;
- (id)_topPriorityAXTreeAttrValues;
- (id)attributedStringConversionBlock;
- (id)axElementFromTranslatorRequest:(id)a3;
- (id)axTreeDumpSharedBackgroundQueue;
- (id)backTranslationCache;
- (id)platformElementFromTranslation:(id)a3;
- (id)processActionRequest:(id)a3;
- (id)processApplicationObject:(id)a3;
- (id)processAttributeRequest:(id)a3;
- (id)processCanSetAttribute:(id)a3;
- (id)processFrontMostApp:(id)a3 withiOSAttribute:(int64_t)a4;
- (id)processHitTest:(id)a3;
- (id)processMultipleAttributeRequest:(id)a3 removeEmptyValue:(BOOL)a4;
- (id)processSetAttribute:(id)a3;
- (id)processSupportedActions:(id)a3;
- (id)processSupportsAttributes:(id)a3;
- (id)translationCache;
- (id)translationObjectFromData:(id)a3;
- (id)translationObjectFromPlatformElement:(__AXUIElement *)a3;
- (int64_t)attributeFromRequest:(unint64_t)a3;
- (unint64_t)_processRoleAttributeRequest:(id)a3 traits:(unint64_t)a4 error:(unint64_t *)a5;
- (void)_addCacheElement:(id)a3 translationObject:(id)a4;
- (void)_attemptToResetSystemWideElement;
- (void)_axTreeDumpCleanUpState;
- (void)_enableAccessibilityBridgeRuntime;
- (void)_registerAccessibilityNotifications;
- (void)_removeCacheEntriesForElement:(id)a3;
- (void)_resetSystemWideElement;
- (void)_resetSystemWideElementAfterDelay;
- (void)_safelyAddAXTreeDumpResponseToCurrentOutput:(id)a3;
- (void)_signalAppAXReady;
- (void)axTreeDumpGenerateNextSetOfElementAttrsOnMainThread;
- (void)fetchNextSetOfElementAttrsOnBackgroundThreadWithEarlyTermination:(BOOL)a3;
- (void)generateAXTreeDumpTypeOnBackgroundThread:(id)a3 completionHandler:(id)a4;
- (void)initializeAXRuntimeForSystemAppServer;
- (void)setAccessibilityEnabled:(BOOL)a3;
- (void)setRequestResolvingBehavior:(unint64_t)a3;
- (void)stopGeneratingAXTreeDump;
@end

@implementation AXPTranslator_iOS

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__AXPTranslator_iOS_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_Translator;

  return v2;
}

- (AXPTranslator_iOS)init
{
  v14.receiver = self;
  v14.super_class = AXPTranslator_iOS;
  v2 = [(AXPTranslator *)&v14 init];
  v3 = dispatch_queue_create("com.apple.axptranslator.cache.queue", 0);
  cacheQueue = v2->_cacheQueue;
  v2->_cacheQueue = v3;

  v5 = [MEMORY[0x277CBEB38] dictionary];
  translationCache = v2->_translationCache;
  v2->_translationCache = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  backTranslationCache = v2->_backTranslationCache;
  v2->_backTranslationCache = v7;

  v9 = [MEMORY[0x277CBEB18] array];
  cachedElements = v2->_cachedElements;
  v2->_cachedElements = v9;

  v2->_shouldHonorGroupsForElementTraversal = 1;
  v11 = objc_opt_new();
  axTreeDumpLock = v2->_axTreeDumpLock;
  v2->_axTreeDumpLock = v11;

  if (AXPIsCatalyst())
  {
    [MEMORY[0x277CE6BB0] applyElementAttributeCacheScheme:7];
  }

  return v2;
}

- (void)_addCacheElement:(id)a3 translationObject:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_cacheQueue);
  if ([(NSMutableArray *)self->_cachedElements count]> 0x1000)
  {
    v8 = [(NSMutableArray *)self->_cachedElements subarrayWithRange:0, 1024];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if (([v13 isEqual:v6] & 1) == 0)
          {
            [(AXPTranslator_iOS *)self _removeCacheEntriesForElement:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  [(NSMutableArray *)self->_cachedElements addObject:v6];
  v14 = [(AXPTranslator_iOS *)self translationCache];
  [v14 setObject:v7 forKey:v6];

  v15 = [(AXPTranslator_iOS *)self backTranslationCache];
  [v15 setObject:v6 forKey:v7];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeCacheEntriesForElement:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_cacheQueue);
  [(NSMutableArray *)self->_cachedElements removeObject:v4];
  v5 = [(AXPTranslator_iOS *)self translationCache];
  [v5 removeObjectForKey:v4];

  v6 = [(AXPTranslator_iOS *)self backTranslationCache];
  v7 = [v6 allKeys];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = [(AXPTranslator_iOS *)self backTranslationCache];
        v15 = [v14 objectForKey:v13];
        v16 = [v15 isEqual:v4];

        if (v16)
        {
          v17 = [(AXPTranslator_iOS *)self backTranslationCache];
          [v17 removeObjectForKey:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)translationCache
{
  dispatch_assert_queue_V2(self->_cacheQueue);
  translationCache = self->_translationCache;

  return translationCache;
}

- (id)backTranslationCache
{
  dispatch_assert_queue_V2(self->_cacheQueue);
  backTranslationCache = self->_backTranslationCache;

  return backTranslationCache;
}

- (id)attributedStringConversionBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__AXPTranslator_iOS_attributedStringConversionBlock__block_invoke;
  v4[3] = &unk_278BE8260;
  v4[4] = self;
  v2 = MEMORY[0x23EEEBC20](v4, a2);

  return v2;
}

- (void)_resetSystemWideElementAfterDelay
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[AXPTranslator_iOS _resetSystemWideElementAfterDelay]";
    _os_log_impl(&dword_23D766000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v4 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__AXPTranslator_iOS__resetSystemWideElementAfterDelay__block_invoke;
  block[3] = &unk_278BE8288;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_attemptToResetSystemWideElement
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[AXPTranslator_iOS _attemptToResetSystemWideElement]";
    _os_log_impl(&dword_23D766000, v3, OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
  }

  [(AXPTranslator_iOS *)self _resetSystemWideElement];
  v4 = [(AXPTranslator_iOS *)self systemWideElement];

  if (!v4)
  {
    v5 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[AXPTranslator_iOS _attemptToResetSystemWideElement]";
      _os_log_impl(&dword_23D766000, v5, OS_LOG_TYPE_INFO, "%s: systemWideElement still nil, will retry after delay", &v7, 0xCu);
    }

    [(AXPTranslator_iOS *)self _resetSystemWideElementAfterDelay];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resetSystemWideElement
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerAccessibilityNotifications
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (id)_processAccessibilityAttributeValue:(int64_t)a3
{
  if (a3 == 1001)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:getpid()];
  }

  else if (a3 == 1102 && ([(AXPTranslator *)self systemAppDelegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [(AXPTranslator *)self systemAppDelegate];
    v7 = [v6 frontmostProcessPids];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)initializeAXRuntimeForSystemAppServer
{
  v3 = [MEMORY[0x277CE6BA8] sharedManager];
  v4 = [(AXPTranslator *)self systemAppDelegate];
  v5 = [v4 isSystemWideElement];

  [v3 setSystemWideServer:v5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__AXPTranslator_iOS_initializeAXRuntimeForSystemAppServer__block_invoke;
  v12[3] = &unk_278BE82B0;
  v12[4] = self;
  [v3 setAttributeCallback:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__AXPTranslator_iOS_initializeAXRuntimeForSystemAppServer__block_invoke_2;
  v11[3] = &unk_278BE82D8;
  v11[4] = self;
  [v3 setParameterizedAttributeCallback:v11];
  [v3 setSetAttributeCallback:&__block_literal_global];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__AXPTranslator_iOS_initializeAXRuntimeForSystemAppServer__block_invoke_4;
  v10[3] = &unk_278BE8320;
  v10[4] = self;
  [v3 setPerformActionCallback:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__AXPTranslator_iOS_initializeAXRuntimeForSystemAppServer__block_invoke_5;
  v9[3] = &unk_278BE8348;
  v9[4] = self;
  [v3 setApplicationElementCallback:v9];
  [v3 setOutgoingValuePreprocessor:&__block_literal_global_344];
  [v3 setClientObserverCallback:&__block_literal_global_347];
  if (_AXUIElementServerRegistered())
  {
    _AXUIElementUnregisterServer();
    v6 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_23D766000, v6, OS_LOG_TYPE_INFO, "Someone beat us here to registered, undo yourself!", v8, 2u);
    }
  }

  if (v5)
  {
    v7 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_23D766000, v7, OS_LOG_TYPE_INFO, "Registering as system wide server!", v8, 2u);
    }

    _AXUIElementRegisterSystemWideServerBroadcastRelayerCallback();
  }

  [v3 start];
}

- (void)setAccessibilityEnabled:(BOOL)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3 && !self->_accessibilityEnabled)
  {
    v4 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[AXPTranslator_iOS setAccessibilityEnabled:]";
      v8 = 2112;
      v9 = @"YES";
      _os_log_impl(&dword_23D766000, v4, OS_LOG_TYPE_INFO, "%s: accessibilityEnabled: %@", &v6, 0x16u);
    }

    [(AXPTranslator_iOS *)self enableAccessibility];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_signalAppAXReady
{
  self->_axAppReadyFlag = 1;
  threadSemaphore = self->_threadSemaphore;
  if (threadSemaphore)
  {
    dispatch_semaphore_signal(threadSemaphore);
  }
}

- (void)_enableAccessibilityBridgeRuntime
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__AXPTranslator_iOS__enableAccessibilityBridgeRuntime__block_invoke;
  block[3] = &unk_278BE8288;
  block[4] = self;
  if (_enableAccessibilityBridgeRuntime_onceToken != -1)
  {
    dispatch_once(&_enableAccessibilityBridgeRuntime_onceToken, block);
  }
}

- (int64_t)attributeFromRequest:(unint64_t)a3
{
  if (a3 > 0x81)
  {
    return 0;
  }

  else
  {
    return qword_23D77E1F8[a3];
  }
}

- (id)processMultipleAttributeRequest:(id)a3 removeEmptyValue:(BOOL)a4
{
  v50 = a4;
  v65 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _convertAXPClientToiOS([v5 clientType]);
  AXOverrideRequestingClientType();
  v6 = [v5 translation];
  v7 = +[AXPTranslator_iOS sharedInstance];
  v45 = v6;
  v8 = [v7 createPlatformElementFromTranslationObject:v6];

  v9 = MEMORY[0x277CE6BB0];
  v10 = objc_opt_new();
  element = v8;
  v51 = [v9 uiElementWithAXElement:v8 cache:v10];

  v62 = 0;
  v52 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v48 = v5;
  v13 = v5;
  v14 = v11;
  v15 = [v13 parameters];
  v16 = [v15 objectForKeyedSubscript:@"attributes"];

  v17 = [v16 countByEnumeratingWithState:&v58 objects:v64 count:16];
  v49 = v14;
  if (v17)
  {
    v18 = v17;
    v19 = *v59;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v59 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v58 + 1) + 8 * i);
        v22 = [v21 integerValue];
        v23 = [(AXPTranslator_iOS *)self attributeFromRequest:v22];
        if (v23)
        {
          v24 = [MEMORY[0x277CCABB0] numberWithLong:v23];
          [v14 addObject:v24];

          [v12 addObject:v21];
        }

        else
        {
          v25 = -[AXPTranslator_iOS _processAttributeSpecialCases:uiElement:error:client:](self, "_processAttributeSpecialCases:uiElement:error:client:", v22, v51, &v62, [v48 clientType]);
          if (v50)
          {
            v26 = [(AXPTranslator_iOS *)self _nilOutEmptyValue:v25];

            v25 = v26;
            v14 = v49;
          }

          [v52 setObject:v25 forKeyedSubscript:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v18);
  }

  v27 = objc_opt_new();
  [v27 setError:v62];
  v28 = element;
  if ([v14 count])
  {
    values = 0;
    v29 = AXUIElementCopyMultipleAttributeValues(element, v14, 0, &values);
    if (v29)
    {
      [v27 setError:_convertAXError(v29)];
    }

    else
    {
      v44 = v27;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v30 = values;
      v31 = [(__CFArray *)v30 countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = 0;
        v47 = *v54;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v54 != v47)
            {
              objc_enumerationMutation(v30);
            }

            v35 = _AXPConvertOutgoingValueWithDesiredType(*(*(&v53 + 1) + 8 * j), 0);
            v36 = [v14 objectAtIndexedSubscript:v33];
            v37 = [v36 intValue];
            v38 = [v12 objectAtIndexedSubscript:v33];
            v39 = -[AXPTranslator_iOS _postProcessAttributeRequest:iosAttribute:axpAttribute:result:error:](self, "_postProcessAttributeRequest:iosAttribute:axpAttribute:result:error:", v51, v37, [v38 intValue], v35, &v62);

            if (v50)
            {
              v40 = [(AXPTranslator_iOS *)self _nilOutEmptyValue:v39];

              v39 = v40;
            }

            v41 = [v12 objectAtIndexedSubscript:v33];
            [v52 setObject:v39 forKeyedSubscript:v41];

            ++v33;
            v14 = v49;
          }

          v32 = [(__CFArray *)v30 countByEnumeratingWithState:&v53 objects:v63 count:16];
        }

        while (v32);
      }

      v27 = v44;
      v28 = element;
    }

    if (values)
    {
      CFRelease(values);
    }
  }

  [v27 setResultData:v52];
  if (v28)
  {
    CFRelease(v28);
  }

  AXOverrideRequestingClientType();

  v42 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_nilOutEmptyValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 count];
LABEL_4:
    v5 = v4 != 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = [v3 isEqualToNumber:&unk_284FCBAD8];
LABEL_11:
    v5 = isKindOfClass ^ 1;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 length];
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_11;
  }

  v10 = v3;
  if ([v10 length])
  {
    v5 = 1;
  }

  else
  {
    v11 = [v10 string];
    v5 = [v11 length] != 0;
  }

LABEL_5:
  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)axElementFromTranslatorRequest:(id)a3
{
  v3 = a3;
  v4 = +[AXPTranslator_iOS sharedInstance];
  v5 = [v3 translation];

  v6 = [v4 createPlatformElementFromTranslationObject:v5];
  v7 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:v6];
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

- (id)processActionRequest:(id)a3
{
  v4 = a3;
  _convertAXPClientToiOS([v4 clientType]);
  [(AXPTranslator_iOS *)self _usingCachedTreeForOnenessClient];
  AXOverrideRequestingClientType();
  v5 = _convertAXPActionToiOS([v4 actionType]);
  v6 = [(AXPTranslator_iOS *)self axElementFromTranslatorRequest:v4];
  v7 = v6;
  switch(v5)
  {
    case 0x7D3:
      v8 = [v6 scrollToVisible];
      goto LABEL_7;
    case 0x7E5:
      v9 = [v4 parameters];
      v10 = [v9 objectForKeyedSubscript:@"AXPCustomActionIdentifier"];
      v11 = [v7 performAction:2021 withValue:v10];

      break;
    case 0x7DA:
      v8 = [v6 press];
LABEL_7:
      v11 = v8;
      goto LABEL_10;
    default:
      v9 = [v4 parameters];
      v11 = [v7 performAction:v5 withValue:v9];
      break;
  }

LABEL_10:
  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  [v12 setResultData:v13];

  AXOverrideRequestingClientType();

  return v12;
}

- (id)_processParameterizedAttributeRequest:(id)a3 attribute:(int64_t)a4 parameter:(id)a5 error:(unint64_t *)a6
{
  v6 = [a3 objectWithAXAttribute:a4 parameter:a5];
  v7 = _AXPConvertOutgoingValueWithDesiredType(v6, 0);

  return v7;
}

- (id)_postProcessAttributeRequest:(id)a3 iosAttribute:(int64_t)a4 axpAttribute:(unint64_t)a5 result:(id)a6 error:(unint64_t *)a7
{
  v56 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = v13;
  v15 = 0x277CCA000uLL;
  if (a4 == 2003 || a5 == 106 || a5 == 5)
  {
    v16 = MEMORY[0x277CCAE60];
    v14 = v13;
    v17 = *(MEMORY[0x277CBF398] + 16);
    v51 = *MEMORY[0x277CBF398];
    v52 = v17;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !strcmp([v14 objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}"))
    {
      [v14 getValue:&v51];
    }

    v18 = [v16 valueWithRect:{v51, v52}];
    goto LABEL_8;
  }

  if (a4 <= 95226)
  {
    if (a4 == 2180)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![v14 integerValue])
      {
        v40 = [v12 objectWithAXAttribute:2001];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = [v40 attributeValueForKey:*MEMORY[0x277CE6B90]];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v42 = v41;

            v14 = v42;
          }
        }
      }

      goto LABEL_58;
    }

    if (a4 == 5057)
    {
      v24 = [v13 intValue];
      switch(v24)
      {
        case 2:

          v19 = &unk_284FCBB08;
          goto LABEL_9;
        case 1:

          v19 = &unk_284FCBB20;
          goto LABEL_9;
        case 0:

          v19 = &unk_284FCBAF0;
          goto LABEL_9;
      }

LABEL_58:
      v19 = v14;
      goto LABEL_9;
    }

LABEL_33:
    if (a5 == 83)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = [(AXPTranslator_iOS *)self _processAuditIssuesResult:v14];

        v14 = v43;
      }

      goto LABEL_19;
    }

    if (a5 == 13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_19;
      }

      v44 = a7;
      v45 = v12;
      v46 = objc_opt_new();
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v25 = v14;
      v26 = [v25 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v48;
        v29 = @"CustomActionIdentifier";
        v30 = @"CustomActionName";
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v48 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v32 = *(*(&v47 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = [v32 objectForKeyedSubscript:v29];
              v34 = [v32 objectForKeyedSubscript:v30];
              v35 = v34;
              if (v33)
              {
                v36 = v34 == 0;
              }

              else
              {
                v36 = 1;
              }

              if (!v36)
              {
                v53[0] = @"AXPCustomActionIdentifier";
                v53[1] = @"AXPCustomActionName";
                v54[0] = v33;
                v54[1] = v34;
                [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
                v37 = v30;
                v39 = v38 = v29;
                [v46 addObject:v39];

                v29 = v38;
                v30 = v37;
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v47 objects:v55 count:16];
        }

        while (v27);
      }

      a7 = v44;
      v12 = v45;
      v15 = 0x277CCA000;
      a5 = 13;
      v19 = v46;
      goto LABEL_9;
    }

    goto LABEL_58;
  }

  if (a4 == 95227)
  {
    v18 = [(AXPTranslator_iOS *)self _processOutgoingCustomRotorSearchResult:v13];
  }

  else
  {
    if (a4 != 95228)
    {
      goto LABEL_33;
    }

    v18 = [(AXPTranslator_iOS *)self _processCustomRotorData:v13];
  }

LABEL_8:
  v19 = v18;

LABEL_9:
  if (a5 == 47)
  {
LABEL_12:
    v20 = *(v15 + 3680);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v19 rangeValue] != 0x7FFFFFFF)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (a5 != 119)
  {
    if (a5 != 92)
    {
LABEL_14:
      v14 = v19;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_18:

    v14 = 0;
    goto LABEL_19;
  }

  v21 = [v19 intValue];
  if (v21)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v21 == 1];
  }

  else
  {

    v14 = 0;
    *a7 = 3;
  }

LABEL_19:

  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_processOutgoingCustomRotorSearchResult:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 objectForKeyedSubscript:@"targetElement"];
  [v5 setObject:v6 forKeyedSubscript:@"AXPCustomRotorTargetElement"];

  v7 = [v4 objectForKeyedSubscript:@"targetRange"];

  [v5 setObject:v7 forKeyedSubscript:@"AXPCustomRotorTargetRange"];

  return v5;
}

- (id)_processCustomRotorData:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE6B40]];
  v6 = [v5 BOOLValue];

  if (!v6)
  {
    v10 = 0;
    goto LABEL_43;
  }

  v7 = [v3 objectForKeyedSubscript:@"name"];
  if ([v7 isEqualToString:@"AXCustomSystemRotorTypeLink"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBB38;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeArticle"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBB08;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeVisitedLink"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBB50;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeHeading"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBB68;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel1"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBB80;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel2"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBB98;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel3"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBBB0;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel4"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBBC8;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel5"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBAA8;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel6"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBA78;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeBoldText"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBBE0;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeItalicText"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBAC0;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeUnderlineText"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBBF8;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeMisspelledWord"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBC10;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeImage"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBA90;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeTextField"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBC28;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeTable"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBC40;
  }

  else if ([v7 isEqualToString:@"AXCustomSystemRotorTypeList"])
  {
    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBC58;
  }

  else
  {
    if (![v7 isEqualToString:@"AXCustomSystemRotorTypeLandmark"])
    {
      v8 = @"AXPCustomRotorName";
      v11 = v4;
      v9 = v7;
      goto LABEL_42;
    }

    v8 = @"AXPCustomRotorSystemType";
    v9 = &unk_284FCBC70;
  }

  v11 = v4;
LABEL_42:
  [v11 setObject:v9 forKeyedSubscript:v8];
  v10 = v4;

LABEL_43:

  return v10;
}

- (id)_processDirectAttributeRequest:(id)a3 iosAttribute:(int64_t)a4 axpAttribute:(unint64_t)a5 parameter:(id)a6 error:(unint64_t *)a7
{
  v12 = a3;
  v13 = v12;
  if (a6)
  {
    [v12 objectWithAXAttribute:a4 parameter:a6];
  }

  else
  {
    [v12 objectWithAXAttribute:a4];
  }
  v14 = ;
  v15 = _AXPConvertOutgoingValueWithDesiredType(v14, 0);

  v16 = [(AXPTranslator_iOS *)self _postProcessAttributeRequest:v13 iosAttribute:a4 axpAttribute:a5 result:v15 error:a7];

  return v16;
}

- (id)_processStartsMediaSessionAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v4 = [a3 numberWithAXAttribute:{2004, a4}];
  v5 = [v4 unsignedLongLongValue];

  v6 = MEMORY[0x277CCABB0];
  v7 = (*MEMORY[0x277CE6DE0] & ~v5) == 0;

  return [v6 numberWithInt:v7];
}

- (id)_processViewControllerDescriptionAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v4 = a3;
  v5 = [v4 stringWithAXAttribute:5041];
  v6 = [v4 stringWithAXAttribute:5042];

  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ [%@]", v5, v6];
    v7 = LABEL_6:;
    goto LABEL_8;
  }

  if ([v6 length])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]", v6, v9];
    goto LABEL_6;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)_processIsSelectedAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v4 = [a3 numberWithAXAttribute:{2004, a4}];
  v5 = [v4 unsignedLongLongValue];

  v6 = MEMORY[0x277CCABB0];
  v7 = (*MEMORY[0x277CE6DD0] & ~v5) == 0;

  return [v6 numberWithInt:v7];
}

- (id)_processIsRemoteElementAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v4 = MEMORY[0x277CCABB0];
  [a3 axElement];
  _AXUIElementIDForElement();

  return [v4 numberWithInt:v5 == 9999];
}

- (id)_processIsEnabledAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v4 = [a3 numberWithAXAttribute:{2004, a4}];
  v5 = [v4 unsignedLongLongValue];

  v6 = MEMORY[0x277CCABB0];
  v7 = (*MEMORY[0x277CE6D90] & ~v5) != 0;

  return [v6 numberWithInt:v7];
}

- (id)_processUserInputLabelsAttributeRequest:(id)a3 error:(unint64_t *)a4 axpAttribute:(unint64_t)a5
{
  v8 = a3;
  v9 = [v8 objectWithAXAttribute:2186];
  if (a5 == 87)
  {
    v10 = 0;
  }

  else
  {
    if (a5 != 88)
    {
      goto LABEL_6;
    }

    v10 = objc_opt_class();
  }

  v11 = _AXPConvertOutgoingValueWithDesiredType(v9, v10);

  v9 = v11;
LABEL_6:
  v12 = [(AXPTranslator_iOS *)self _postProcessAttributeRequest:v8 iosAttribute:2186 axpAttribute:a5 result:v9 error:a4];

  return v12;
}

- (id)_processBrailleOverrideForAttributeRequest:(id)a3 error:(unint64_t *)a4 attribute:(unint64_t)a5
{
  v6 = a3;
  v7 = v6;
  if (a5 == 33)
  {
    v8 = 2001;
  }

  else
  {
    if (a5 != 46)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = 2077;
  }

  v9 = [v6 objectWithAXAttribute:v8];
LABEL_7:
  if (AXPNilOrEmptyString(v9) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
  }

  else
  {
    v10 = [v9 attributeValueForKey:*MEMORY[0x277CE6BE8]];
  }

  return v10;
}

- (id)_processChildrenAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(AXPTranslator_iOS *)self _usingCachedTree])
  {
    v7 = [v6 objectWithAXAttribute:3073];
    v8 = _AXPConvertOutgoingValueWithDesiredType(v7, 0);
  }

  else
  {
    v13 = *MEMORY[0x277CE6B48];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[AXPTranslator_iOS shouldHonorGroupsForElementTraversal](self, "shouldHonorGroupsForElementTraversal")}];
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    v8 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:v6 attribute:95236 parameter:v10 error:a4];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_processClassNameAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v6 = a3;
  if (AXPIsCatalyst())
  {
    v7 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v6 iosAttribute:5045 axpAttribute:7 parameter:0 error:a4];
  }

  else
  {
    v7 = 0;
    *a4 = 3;
  }

  return v7;
}

- (id)_processCellWithIndexPathAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v8 = a3;
  v9 = _AXPiOSParameterFromPlatformParameter(a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 ax_mappedArrayUsingBlock:&__block_literal_global_483];

    v9 = v10;
  }

  v11 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:v8 attribute:92600 parameter:v9 error:a5];

  return v11;
}

- (id)_processElementHelpAttributeResquest:(id)a3 error:(unint64_t *)a4
{
  v6 = a3;
  v7 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v6 iosAttribute:2188 axpAttribute:23 parameter:0 error:a4];
  if (AXPNilOrEmptyString(v7) && (!AXPIsCatalyst() || AXPLinkedOnOrAfterGozul() && !AXPIsGoodOldAppleCatalystApp()))
  {
    v8 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v6 iosAttribute:2002 axpAttribute:23 parameter:0 error:a4];

    v7 = v8;
  }

  return v7;
}

- (id)_processLinkedUIElementsAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v6 iosAttribute:2167 axpAttribute:76 parameter:0 error:a4];
  v8 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v6 iosAttribute:2033 axpAttribute:76 parameter:0 error:a4];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v7 count])
  {
    v17 = v8;
LABEL_21:
    v10 = v17;
    goto LABEL_22;
  }

  if (!v8)
  {
    v17 = v7;
    goto LABEL_21;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 addObjectsFromArray:v7];
    [v10 addObjectsFromArray:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if (([v9 containsObject:{v16, v20}] & 1) == 0)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_processIndexForTextMarkerAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v6 = a3;
  v7 = _AXPiOSParameterFromPlatformParameter(a4);
  v8 = [v6 objectWithAXAttribute:94012 parameter:v7];

  if (!v8 || (_AXPConvertAXValueRefToNSValue(v8), (v9 = objc_claimAutoreleasedReturnValue()) == 0) || (v10 = v9, v11 = [v9 rangeValue], objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v11), v12 = objc_claimAutoreleasedReturnValue(), v10, !v12))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:0x7FFFFFFFFFFFFFFFLL];
  }

  v13 = _AXPConvertOutgoingValueWithDesiredType(v12, 0);

  return v13;
}

- (id)_processTextInputMarkedRangeAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v5 = [v4 stringWithAXAttribute:2006];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__AXPTranslator_iOS__processTextInputMarkedRangeAttributeRequest_error___block_invoke;
    v8[3] = &unk_278BE83F0;
    v8[4] = &v9;
    [v5 enumerateAttributesUsingBlock:v8];
  }

  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_processZoomAttributeRequest:(BOOL)a3 axElement:(id)a4 parameter:(id)a5 error:(unint64_t *)a6
{
  v7 = a3;
  v8 = a4;
  v9 = _AXPiOSParameterFromPlatformParameter(a5);
  v10 = MEMORY[0x277CCABB0];
  if (v7)
  {
    v11 = 2001;
  }

  else
  {
    v11 = 2002;
  }

  v12 = [v8 performAXAction:v11 withValue:v9];

  v13 = [v10 numberWithBool:v12];
  v14 = _AXPConvertOutgoingValueWithDesiredType(v13, 0);

  return v14;
}

- (id)_processLineRangeAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v6 = a3;
  v7 = _AXPiOSParameterFromPlatformParameter(a4);
  v8 = [v6 objectWithAXAttribute:94009 parameter:v7];

  v9 = _AXPConvertOutgoingValueWithDesiredType(v8, 0);

  return v9;
}

- (id)_processNextLineRangeAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(AXPTranslator_iOS *)self _processLineRangeAttributeRequest:v8 parameter:a4 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 rangeValue];
    v19 = @"parameter";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12 + v11 + 1];
    v20[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v15 = [(AXPTranslator_iOS *)self _processLineRangeAttributeRequest:v8 parameter:v14 error:a5];

    if (v15 && [v15 rangeValue] == 0x7FFFFFFF)
    {
      v16 = v10;

      v15 = v16;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_processPreviousLineRangeAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(AXPTranslator_iOS *)self _processLineRangeAttributeRequest:v8 parameter:a4 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 rangeValue];
    v18 = @"parameter";
    if (v11)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11 - 1];
    }

    else
    {
      v12 = &unk_284FCBAD8;
    }

    v19[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = [(AXPTranslator_iOS *)self _processLineRangeAttributeRequest:v8 parameter:v14 error:a5];

    if (v11)
    {
    }

    if (v13 && [v13 rangeValue] == 0x7FFFFFFF)
    {
      v15 = v10;

      v13 = v15;
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_processMoveFocusToOpaqueElementAttributeRequest:(id)a3 parameter:(id)a4 direction:(int64_t)a5 error:(unint64_t *)a6
{
  v20[6] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 objectForKeyedSubscript:@"parameter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CE6B38]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [MEMORY[0x277CCABB0] numberWithLong:a5];
        v20[0] = v14;
        v20[1] = &unk_284FCBC88;
        v15 = [MEMORY[0x277CCAE60] valueWithRange:{0x7FFFFFFFLL, 0}];
        v20[2] = v15;
        v20[3] = v13;
        v20[4] = MEMORY[0x277CBEC38];
        v20[5] = MEMORY[0x277CBEC38];
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:6];

        v17 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:v10 attribute:95225 parameter:v16 error:a6];
      }

      else
      {
        v17 = 0;
        *a6 = 7;
      }
    }

    else
    {
      v17 = 0;
      *a6 = 7;
    }
  }

  else
  {
    v17 = 0;
    *a6 = 7;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_processRawElementDataRequest:(id)a3 error:(unint64_t *)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  if ([a3 axElement] && (Data = _AXUIElementCreateData()) != 0)
  {
    v5 = Data;
    v9[0] = @"TokenType";
    v9[1] = @"ElementData";
    v10[0] = @"AXElementTokenSimulator";
    v10[1] = Data;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_processSelectedTextRequest:(id)a3 error:(unint64_t *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 rangeWithAXAttribute:2005];
  if (v7 != 0x7FFFFFFF && v7 | v8)
  {
    v14 = @"parameter";
    v10 = [MEMORY[0x277CCAE60] valueWithRange:{v7, v8}];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

    v9 = [(AXPTranslator_iOS *)self _processStringForRangeAttributeRequest:v6 parameter:v11 error:a4];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v9 = &stru_284FC8428;
    }
  }

  else
  {
    v9 = &stru_284FC8428;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_processingSmuggledMarzipanRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 objectForKeyedSubscript:@"parameter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 objectForKeyedSubscript:@"attribute"];
      v12 = [v11 intValue];

      v13 = [v10 objectForKeyedSubscript:@"parameter"];
      v14 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v8 iosAttribute:v12 axpAttribute:0 parameter:v13 error:a5];
    }

    else
    {
      v14 = 0;
      *a5 = 7;
    }
  }

  else
  {
    v14 = 0;
    *a5 = 7;
  }

  return v14;
}

- (id)_processValueAttributeRequest:(id)a3 error:(unint64_t *)a4 axpAttribute:(unint64_t)a5 useAttributes:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = [v10 objectWithAXAttribute:2006];
  if (v6)
  {
    v12 = objc_opt_class();
  }

  else
  {
    v12 = 0;
  }

  v13 = _AXPConvertOutgoingValueWithDesiredType(v11, v12);

  if (a5 == 118 || a5 == 53)
  {
    v14 = [v10 numberWithAXAttribute:2004];
    v15 = [v14 unsignedLongLongValue];

    v16 = [(AXPTranslator_iOS *)self _processRoleAttributeRequest:v10 traits:v15 error:a4];
    if (v16 == 9)
    {
      [(AXPTranslator_iOS *)self _processIsSelectedAttributeRequest:v10 error:a4];
      v13 = v17 = v13;
LABEL_12:

      goto LABEL_13;
    }

    if (v16 == 18 || v16 == 13)
    {
      v17 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v10 iosAttribute:5059 axpAttribute:54 parameter:0 error:a4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v17;

        v13 = v17;
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  if (a5 == 118)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v13 = 0;
    }
  }

  return v13;
}

- (id)_processSyntheticStringValueAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v6 = a3;
  v7 = [(AXPTranslator_iOS *)self _processValueAttributeRequest:v6 error:a4 axpAttribute:53 useAttributes:0];
  if (AXPNilOrEmptyString(v7))
  {
    v8 = [(AXPTranslator_iOS *)self _processRoleAttributeRequest:v6 error:a4];
    v9 = [v8 unsignedIntegerValue];

    if ((v9 & 0xFFFFFFFFFFFFFFF7) == 6)
    {
      v10 = [(AXPTranslator_iOS *)self _processLabelAttributeRequest:v6 error:a4 axpAttribute:33];

      v7 = v10;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v7;
LABEL_8:
    v12 = v11;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v7 string];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)_processLabelAttributeRequest:(id)a3 error:(unint64_t *)a4 axpAttribute:(unint64_t)a5
{
  v6 = [a3 objectWithAXAttribute:{2001, a4}];
  if (a5 == 3)
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = 0;
  }

  v8 = _AXPConvertOutgoingValueWithDesiredType(v6, v7);

  return v8;
}

- (id)_processNumberOfCharactersAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v4 = [(AXPTranslator_iOS *)self _processSyntheticStringValueAttributeRequest:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_processRoleAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v6 = a3;
  [v6 axElement];
  if (AXUIElementIsApplication())
  {
    v7 = &unk_284FCBB08;
  }

  else
  {
    v8 = [v6 numberWithAXAttribute:2004];
    v9 = [v8 unsignedLongLongValue];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXPTranslator_iOS _processRoleAttributeRequest:traits:error:](self, "_processRoleAttributeRequest:traits:error:", v6, v9, a4)}];
  }

  return v7;
}

- (unint64_t)_processRoleAttributeRequest:(id)a3 traits:(unint64_t)a4 error:(unint64_t *)a5
{
  v8 = a3;
  if ([v8 BOOLWithAXAttribute:5020] && !objc_msgSend(v8, "BOOLWithAXAttribute:", 2016))
  {
    v9 = 5;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6DB0] & ~a4) == 0 || (*MEMORY[0x277CE6DF0] & ~a4) == 0)
  {
    v9 = 9;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6E70] & ~a4) == 0)
  {
    v9 = 3;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6DA0] & ~a4) == 0)
  {
    v9 = 19;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6D00] & ~a4) == 0 || (*MEMORY[0x277CE6D68] & ~a4) == 0 || (*MEMORY[0x277CE6D70] & ~a4) == 0)
  {
    v10 = _AXPElementIsTabButton(v8, a4) == 0;
    v11 = 9;
    v12 = 2;
    goto LABEL_15;
  }

  if ((*MEMORY[0x277CE6D50] & ~a4) == 0)
  {
    v9 = 6;
    goto LABEL_18;
  }

  if (!AXPIsSwiftPlaygrounds() && (*MEMORY[0x277CE6E00] & ~a4) == 0 && (*MEMORY[0x277CE6E68] & ~a4) == 0)
  {
    goto LABEL_24;
  }

  if ((*MEMORY[0x277CE6D78] & ~a4) == 0)
  {
    v9 = 8;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6D58] & ~a4) == 0 || (*MEMORY[0x277CE6DA8] & ~a4) == 0 || (*MEMORY[0x277CE6D80] & ~a4) == 0)
  {
    v9 = 7;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6DE8] & ~a4) == 0)
  {
    v9 = 14;
    goto LABEL_18;
  }

  if (!AXPIsSwiftPlaygrounds() && (*MEMORY[0x277CE6E00] & ~a4) == 0)
  {
    goto LABEL_24;
  }

  if ((*MEMORY[0x277CE6E08] & ~a4) == 0)
  {
    v9 = 15;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6CB8] & ~a4) != 0)
  {
    if ([v8 BOOLWithAXAttribute:5056])
    {
      v9 = 11;
      goto LABEL_18;
    }

    if (!AXPIsSwiftPlaygrounds())
    {
      v14 = *MEMORY[0x277CE6E68];
      goto LABEL_46;
    }

    v14 = *MEMORY[0x277CE6E68];
    if ((*MEMORY[0x277CE6E00] & ~a4) != 0 || (v14 & a4) != v14)
    {
LABEL_46:
      v15 = [MEMORY[0x277CE6BA0] elementWithUIElement:v8];
      v16 = [v15 containerType];
      if ((v14 & ~a4) == 0 && !v16)
      {
        v17 = [(AXPTranslator_iOS *)self _processChildrenAttributeRequest:v8 error:a5];
        if (v17)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v17 count])
          {

            goto LABEL_57;
          }
        }

        v9 = 14;
LABEL_69:

        goto LABEL_18;
      }

      if (v16 > 1023)
      {
        switch(v16)
        {
          case 0x400:
            v9 = 20;
            goto LABEL_69;
          case 0x800:
            v9 = 12;
            goto LABEL_69;
          case 0x4000:
            v9 = 16;
            goto LABEL_69;
        }
      }

      else
      {
        switch(v16)
        {
          case 0:
LABEL_57:
            if ([v8 BOOLWithAXAttribute:2016])
            {
              v9 = 4;
            }

            else
            {
              v9 = 5;
            }

            goto LABEL_69;
          case 2:
            v9 = 21;
            goto LABEL_69;
          case 512:
            v9 = 10;
            goto LABEL_69;
        }
      }

      v9 = 5;
      goto LABEL_69;
    }

LABEL_24:
    v9 = 17;
    goto LABEL_18;
  }

  v10 = (*MEMORY[0x277CE6DD8] & ~a4) == 0;
  v11 = 13;
  v12 = 18;
LABEL_15:
  if (v10)
  {
    v9 = v12;
  }

  else
  {
    v9 = v11;
  }

LABEL_18:

  return v9;
}

- (id)_processRoleDescriptionAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v6 = a3;
  v7 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v6 iosAttribute:2077 axpAttribute:46 parameter:0 error:a4];
  if (AXPNilOrEmptyString(v7))
  {
    v8 = [v6 numberWithAXAttribute:2004];
    v9 = [v8 unsignedLongLongValue];

    if ((*MEMORY[0x277CE6CF8] & ~v9) == 0)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.accessibility.AccessibilityPlatformTranslation"];
      v11 = [v10 localizedStringForKey:@"back.button.role.description" value:&stru_284FC8428 table:@"Localizable"];
      goto LABEL_4;
    }

    if (([(AXPTranslator_iOS *)self _processRoleAttributeRequest:v6 traits:v9 error:a4]& 0xFFFFFFFFFFFFFFEFLL) == 5)
    {
      v10 = [MEMORY[0x277CE6BA0] elementWithUIElement:v6];
      v12 = [v10 containerType];
      v13 = v12;
      if ((v12 & 2) != 0)
      {
        v14 = @"container.role.description.table";
      }

      else if ((v12 & 4) != 0)
      {
        v14 = @"container.role.description.list";
      }

      else if (v12)
      {
        v14 = @"container.role.description.landmark";
      }

      else if ((v12 & 8) != 0)
      {
        v14 = @"container.role.description.fieldset";
      }

      else if ((v12 & 0x10) != 0)
      {
        v14 = @"container.role.description.dialog";
      }

      else if ((v12 & 0x20) != 0)
      {
        v14 = @"container.role.description.tree";
      }

      else if ((v12 & 0x40) != 0)
      {
        v14 = @"container.role.description.frame";
      }

      else if ((v12 & 0x80) != 0)
      {
        v14 = @"container.role.description.article";
      }

      else if ((v12 & 0x1000) != 0)
      {
        v14 = @"container.role.description.dataseries";
      }

      else
      {
        if ((v12 & 0x2000) == 0)
        {
          goto LABEL_31;
        }

        v14 = @"container.role.description.tableofcontents";
      }

      v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.accessibility.AccessibilityPlatformTranslation"];
      v17 = [v16 localizedStringForKey:v14 value:&stru_284FC8428 table:@"Localizable"];

      v7 = v17;
LABEL_31:
      v18 = AXPNilOrEmptyString(v7);
      if ((v13 & 0x100) == 0 || !v18)
      {
        goto LABEL_5;
      }

      v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.accessibility.AccessibilityPlatformTranslation"];
      v11 = [v19 localizedStringForKey:@"container.role.description.semanticgroup" value:&stru_284FC8428 table:@"Localizable"];

      v7 = v19;
LABEL_4:

      v7 = v11;
LABEL_5:
    }
  }

  return v7;
}

- (id)_processBoundsForRangeAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"parameter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v7 BOOLWithAXAttribute:2301])
      {
        v10 = 92703;
      }

      else
      {
        v10 = 92506;
      }

      v11 = [v7 objectWithAXAttribute:v10 parameter:v9];
      v12 = _AXPConvertOutgoingValueWithDesiredType(v11, 0);
    }

    else
    {
      v12 = 0;
      *a5 = 7;
    }
  }

  else
  {
    v12 = 0;
    *a5 = 7;
  }

  return v12;
}

- (id)_processVisibleTextRangeAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v6 = a3;
  if ([v6 rangeWithAXAttribute:2216] == 0x7FFFFFFF && objc_msgSend(v6, "BOOLWithAXAttribute:", 2025))
  {
    v7 = [(AXPTranslator_iOS *)self _processSyntheticStringValueAttributeRequest:v6 error:a4];
    v8 = v7;
    if (v7)
    {
      v9 = [MEMORY[0x277CCAE60] valueWithRange:{0, objc_msgSend(v7, "length")}];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_processAuditIssuesAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v24 = self;
  v25 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = v6;
  v8 = _AXPiOSParameterFromPlatformParameter(v6);
  v9 = [v8 allKeys];

  v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    v13 = *MEMORY[0x277CE6B30];
    v14 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v32 = v13;
        v33 = v14;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:{1, v24, v25, v26}];
        [v7 setObject:v17 forKeyedSubscript:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v11);
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:AXPIsCatalyst()];
  [v7 setObject:v18 forKeyedSubscript:*MEMORY[0x277CE6B28]];

  v19 = [v27 objectWithAXAttribute:95005 parameter:v7];
  v20 = _AXPConvertOutgoingValueWithDesiredType(v19, 0);
  v21 = [(AXPTranslator_iOS *)v24 _postProcessAttributeRequest:v27 iosAttribute:95005 axpAttribute:83 result:v20 error:v25];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_processAttributedStringForRangeAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v8 = a3;
  v9 = _AXPiOSParameterFromPlatformParameter(a4);
  v10 = [v8 objectWithAXAttribute:92508 parameter:v9];
  v11 = 0x277CCA000uLL;
  if (!v10 || ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && ![v10 length])
  {
    v12 = [(AXPTranslator_iOS *)self _processRoleAttributeRequest:v8 error:a5];
    v13 = [v12 unsignedIntegerValue];

    if ((v13 & 0xFFFFFFFFFFFFFFF7) == 6)
    {
      v14 = [v8 objectWithAXAttribute:2001];
      v15 = [v9 rangeValue];
      v17 = v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v15 + v17 <= [v14 length])
        {
          v18 = [v14 substringWithRange:{v15, v17}];
LABEL_13:
          v19 = v18;
          v11 = 0x277CCA000uLL;

          v10 = v19;
          goto LABEL_14;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_14:

          goto LABEL_15;
        }

        if (v15 + v17 <= [v14 length])
        {
          v18 = [v14 attributedSubstringFromRange:{v15, v17}];
          goto LABEL_13;
        }
      }

      v11 = 0x277CCA000;
      goto LABEL_14;
    }
  }

LABEL_15:
  v20 = objc_opt_class();
  v21 = _AXPConvertOutgoingValueWithDesiredType(v10, v20);
  v22 = [(AXPTranslator_iOS *)self _postProcessAttributeRequest:v8 iosAttribute:92508 axpAttribute:4 result:v21 error:a5];

  v23 = *(v11 + 3240);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v22];

    v22 = v24;
  }

  return v22;
}

- (id)_processStringForRangeAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v8 = a3;
  v9 = _AXPiOSParameterFromPlatformParameter(a4);
  v10 = [v8 objectWithAXAttribute:92505 parameter:v9];
  if (!v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(AXPTranslator_iOS *)self _processSyntheticStringValueAttributeRequest:v8 error:a5];
      v12 = [v9 rangeValue];
      v14 = v13;
      if (v12 + v13 <= [v11 length])
      {
        v10 = [v11 substringWithRange:{v12, v14}];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = _AXPConvertOutgoingValueWithDesiredType(v10, 0);
  v16 = [(AXPTranslator_iOS *)self _postProcessAttributeRequest:v8 iosAttribute:92505 axpAttribute:50 result:v15 error:a5];

  return v16;
}

- (id)_processSubroleAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v4 = a3;
  v5 = [v4 numberWithAXAttribute:2004];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 numberWithAXAttribute:2048];
  v8 = [v7 unsignedIntegerValue];

  v9 = &unk_284FCBAF0;
  if ((*MEMORY[0x277CE6DB0] & ~v6) != 0)
  {
    if ((*MEMORY[0x277CE6DF0] & ~v6) == 0)
    {
      goto LABEL_3;
    }

    if ((*MEMORY[0x277CE6E70] & ~v6) == 0 && ![v4 BOOLWithAXAttribute:2232])
    {
      v9 = &unk_284FCBBE0;
      goto LABEL_16;
    }

    if ((*MEMORY[0x277CE6D80] & ~v6) == 0)
    {
      v9 = &unk_284FCBB68;
      goto LABEL_16;
    }

    if ((*MEMORY[0x277CE6DC8] & ~v6) == 0)
    {
      v9 = &unk_284FCBB80;
      goto LABEL_16;
    }

    if ((*MEMORY[0x277CE6DC0] & ~v6) == 0)
    {
      v9 = &unk_284FCBB08;
      goto LABEL_16;
    }

    if (_AXPElementIsTabButton(v4, v6))
    {
LABEL_3:
      v9 = &unk_284FCBB20;
    }

    else if (v8)
    {
      v9 = &unk_284FCBB98;
    }
  }

LABEL_16:

  return v9;
}

- (id)_processCustomActionsAttributeRequest:(id)a3 error:(unint64_t *)a4
{
  v6 = a3;
  v7 = [v6 arrayWithAXAttribute:2036];
  v8 = [(AXPTranslator_iOS *)self _postProcessAttributeRequest:v6 iosAttribute:0 axpAttribute:13 result:v7 error:a4];

  return v8;
}

- (id)_processFirstContainedElement:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v20[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277CBEB38];
  v19[0] = *MEMORY[0x277CE6B48];
  v10 = MEMORY[0x277CCABB0];
  v11 = a4;
  v12 = [v10 numberWithBool:{-[AXPTranslator_iOS shouldHonorGroupsForElementTraversal](self, "shouldHonorGroupsForElementTraversal")}];
  v19[1] = *MEMORY[0x277CE6B50];
  v20[0] = v12;
  v20[1] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v14 = [v9 dictionaryWithDictionary:v13];

  v15 = _AXPiOSParameterFromPlatformParameter(v11);

  if (v15)
  {
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277CE6B38]];
  }

  v16 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:v8 attribute:95230 parameter:v14 error:a5];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_processFocusedElementAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v8 iosAttribute:3002 axpAttribute:19 parameter:v9 error:a5];
  if (!v10)
  {
    v10 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v8 iosAttribute:3027 axpAttribute:19 parameter:v9 error:a5];
  }

  return v10;
}

- (id)_processIsFocusedAttributeRequest:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v8 iosAttribute:2198 axpAttribute:28 parameter:v9 error:a5];
  if (([v10 BOOLValue] & 1) == 0)
  {
    v11 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v8 iosAttribute:2094 axpAttribute:28 parameter:v9 error:a5];

    v10 = v11;
  }

  return v10;
}

- (id)_processLastContainedElement:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v20[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277CBEB38];
  v19[0] = *MEMORY[0x277CE6B48];
  v10 = MEMORY[0x277CCABB0];
  v11 = a4;
  v12 = [v10 numberWithBool:{-[AXPTranslator_iOS shouldHonorGroupsForElementTraversal](self, "shouldHonorGroupsForElementTraversal")}];
  v19[1] = *MEMORY[0x277CE6B50];
  v20[0] = v12;
  v20[1] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v14 = [v9 dictionaryWithDictionary:v13];

  v15 = _AXPiOSParameterFromPlatformParameter(v11);

  if (v15)
  {
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277CE6B38]];
  }

  v16 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:v8 attribute:95231 parameter:v14 error:a5];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_processFirstElementForFocus:(id)a3 parameter:(id)a4 error:(unint64_t *)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277CE6B48];
  v7 = MEMORY[0x277CCABB0];
  v8 = a3;
  v9 = [v7 numberWithBool:{-[AXPTranslator_iOS shouldHonorGroupsForElementTraversal](self, "shouldHonorGroupsForElementTraversal")}];
  v15[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v11 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:v8 attribute:95250 parameter:v10 error:a5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_processVisibleOpaqueElements:(id)a3 error:(unint64_t *)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277CE6B48];
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithBool:{-[AXPTranslator_iOS shouldHonorGroupsForElementTraversal](self, "shouldHonorGroupsForElementTraversal")}];
  v13[1] = *MEMORY[0x277CE6B58];
  v14[0] = v8;
  v14[1] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:v7 attribute:95249 parameter:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_processAttributeSpecialCases:(unint64_t)a3 uiElement:(id)a4 parameter:(id)a5 error:(unint64_t *)a6 client:(unint64_t)a7
{
  v12 = a4;
  v13 = a5;
  v14 = 0;
  if (a3 <= 107)
  {
    switch(a3)
    {
      case 3uLL:
        v31 = self;
        v32 = v12;
        v33 = a6;
        v34 = 3;
        goto LABEL_47;
      case 4uLL:
        v15 = [(AXPTranslator_iOS *)self _processAttributedStringForRangeAttributeRequest:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 5uLL:
        v15 = [(AXPTranslator_iOS *)self _processBoundsForRangeAttributeRequest:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 7uLL:
        v15 = [(AXPTranslator_iOS *)self _processClassNameAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 8uLL:
      case 9uLL:
        v15 = [(AXPTranslator_iOS *)self _processChildrenAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 0xDuLL:
        v15 = [(AXPTranslator_iOS *)self _processCustomActionsAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 0x12uLL:
        v15 = [(AXPTranslator_iOS *)self _processFirstContainedElement:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 0x13uLL:
        v15 = [(AXPTranslator_iOS *)self _processFocusedElementAttributeRequest:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 0x17uLL:
        v15 = [(AXPTranslator_iOS *)self _processElementHelpAttributeResquest:v12 error:a6];
        goto LABEL_66;
      case 0x1BuLL:
        v15 = [(AXPTranslator_iOS *)self _processIsEnabledAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 0x1CuLL:
        v15 = [(AXPTranslator_iOS *)self _processIsFocusedAttributeRequest:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 0x1EuLL:
        v15 = [(AXPTranslator_iOS *)self _processIsSelectedAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 0x21uLL:
        v31 = self;
        v32 = v12;
        v33 = a6;
        v34 = 33;
LABEL_47:
        v15 = [(AXPTranslator_iOS *)v31 _processLabelAttributeRequest:v32 error:v33 axpAttribute:v34];
        goto LABEL_66;
      case 0x22uLL:
        v15 = [(AXPTranslator_iOS *)self _processLastContainedElement:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 0x23uLL:
        v23 = self;
        v24 = v12;
        v25 = v13;
        v26 = 1;
        goto LABEL_50;
      case 0x24uLL:
        v23 = self;
        v24 = v12;
        v25 = v13;
        v26 = 2;
LABEL_50:
        v15 = [(AXPTranslator_iOS *)v23 _processMoveFocusToOpaqueElementAttributeRequest:v24 parameter:v25 direction:v26 error:a6];
        goto LABEL_66;
      case 0x26uLL:
        v15 = [(AXPTranslator_iOS *)self _processNumberOfCharactersAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 0x2DuLL:
        v15 = [(AXPTranslator_iOS *)self _processRoleAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 0x2EuLL:
        v15 = [(AXPTranslator_iOS *)self _processRoleDescriptionAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 0x31uLL:
        v15 = [(AXPTranslator_iOS *)self _processStartsMediaSessionAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 0x32uLL:
        v15 = [(AXPTranslator_iOS *)self _processStringForRangeAttributeRequest:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 0x33uLL:
        v15 = [(AXPTranslator_iOS *)self _processSubroleAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 0x35uLL:
        v18 = self;
        v19 = v12;
        v20 = a6;
        v21 = 53;
        goto LABEL_21;
      case 0x3AuLL:
        v15 = [(AXPTranslator_iOS *)self _processVisibleOpaqueElements:v12 error:a6];
        goto LABEL_66;
      case 0x3BuLL:
        v15 = [(AXPTranslator_iOS *)self _processingSmuggledMarzipanRequest:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 0x3CuLL:
        v15 = [(AXPTranslator_iOS *)self _processRawElementDataRequest:v12 error:a6];
        goto LABEL_66;
      case 0x40uLL:
        v18 = self;
        v19 = v12;
        v20 = a6;
        v21 = 64;
LABEL_21:
        v22 = 0;
        goto LABEL_22;
      case 0x42uLL:
        v15 = [(AXPTranslator_iOS *)self _processIsRemoteElementAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 0x48uLL:
        v15 = [(AXPTranslator_iOS *)self _processLineRangeAttributeRequest:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 0x4AuLL:
        v15 = [(AXPTranslator_iOS *)self _processNextLineRangeAttributeRequest:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 0x4BuLL:
        v15 = [(AXPTranslator_iOS *)self _processPreviousLineRangeAttributeRequest:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 0x4CuLL:
        v15 = [(AXPTranslator_iOS *)self _processLinkedUIElementsAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 0x52uLL:
        v15 = [(AXPTranslator_iOS *)self _processViewControllerDescriptionAttributeRequest:v12 error:a6];
        goto LABEL_66;
      case 0x53uLL:
        v15 = [(AXPTranslator_iOS *)self _processAuditIssuesAttributeRequest:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 0x55uLL:
        v15 = [(AXPTranslator_iOS *)self _processFirstElementForFocus:v12 parameter:v13 error:a6];
        goto LABEL_66;
      case 0x56uLL:
        v15 = [(AXPTranslator_iOS *)self _processSelectedTextRequest:v12 error:a6];
        goto LABEL_66;
      case 0x57uLL:
        v27 = self;
        v28 = v12;
        v29 = a6;
        v30 = 87;
        goto LABEL_30;
      case 0x58uLL:
        v27 = self;
        v28 = v12;
        v29 = a6;
        v30 = 88;
LABEL_30:
        v15 = [(AXPTranslator_iOS *)v27 _processUserInputLabelsAttributeRequest:v28 error:v29 axpAttribute:v30];
        goto LABEL_66;
      case 0x5CuLL:
        v15 = [(AXPTranslator_iOS *)self _processVisibleTextRangeAttributeRequest:v12 error:a6];
        goto LABEL_66;
      default:
        goto LABEL_67;
    }
  }

  if (a3 <= 117)
  {
    switch(a3)
    {
      case 'l':
        v35 = self;
        v36 = v12;
        v37 = a6;
        v38 = 33;
        break;
      case 'm':
        v35 = self;
        v36 = v12;
        v37 = a6;
        v38 = 46;
        break;
      case 'o':
        v15 = [(AXPTranslator_iOS *)self _processIndexForTextMarkerAttributeRequest:v12 parameter:v13 error:a6];
        goto LABEL_66;
      default:
        goto LABEL_67;
    }

    v15 = [(AXPTranslator_iOS *)v35 _processBrailleOverrideForAttributeRequest:v36 error:v37 attribute:v38];
LABEL_66:
    v14 = v15;
    goto LABEL_67;
  }

  if (a3 > 121)
  {
    if (a3 != 122)
    {
      if (a3 != 123)
      {
        goto LABEL_67;
      }

      v15 = [(AXPTranslator_iOS *)self _processTextInputMarkedRangeAttributeRequest:v12 error:a6];
      goto LABEL_66;
    }

    v16 = self;
    v17 = 0;
    goto LABEL_65;
  }

  if (a3 != 118)
  {
    if (a3 != 121)
    {
      goto LABEL_67;
    }

    v16 = self;
    v17 = 1;
LABEL_65:
    v15 = [(AXPTranslator_iOS *)v16 _processZoomAttributeRequest:v17 axElement:v12 parameter:v13 error:a6];
    goto LABEL_66;
  }

  if (a7 == 7)
  {
    v18 = self;
    v19 = v12;
    v20 = a6;
    v21 = 118;
    v22 = 1;
LABEL_22:
    v15 = [(AXPTranslator_iOS *)v18 _processValueAttributeRequest:v19 error:v20 axpAttribute:v21 useAttributes:v22];
    goto LABEL_66;
  }

  v14 = 0;
LABEL_67:

  return v14;
}

- (id)processCanSetAttribute:(id)a3
{
  v4 = a3;
  _convertAXPClientToiOS([v4 clientType]);
  AXOverrideRequestingClientType();
  v5 = objc_opt_new();
  v6 = [(AXPTranslator_iOS *)self axElementFromTranslatorRequest:v4];
  v7 = [v4 attributeType];

  if (v7 > 46)
  {
    if (v7 == 53)
    {
      v14 = [v6 traits];
      v15 = (*MEMORY[0x277CE6D60] & ~v14) == 0;
      v16 = (*MEMORY[0x277CE6CB8] & ~v14) == 0 || (*MEMORY[0x277CE6E08] & ~v14) == 0;
      if ((*MEMORY[0x277CE6CB8] & ~v14) == 0)
      {
        v15 = 1;
      }

      v17 = (*MEMORY[0x277CE6D90] & ~v14) == 0;
      v13 = MEMORY[0x277CCABB0];
      if (v17)
      {
        v16 = 0;
      }

      v12 = v15 | v16;
    }

    else
    {
      if (v7 != 47)
      {
        goto LABEL_22;
      }

      v10 = *MEMORY[0x277CE6E68];
      v11 = MEMORY[0x277CCABB0];
      v12 = (v10 & ~[v6 traits]) == 0;
      v13 = v11;
    }

    v18 = [v13 numberWithInt:v12];
  }

  else
  {
    if (v7 == 2)
    {
      [v5 setResultData:MEMORY[0x277CBEC38]];
      goto LABEL_22;
    }

    if (v7 != 28)
    {
      goto LABEL_22;
    }

    v8 = [v6 uiElement];
    if ([v8 BOOLWithAXAttribute:2204])
    {
      v9 = 1;
    }

    else
    {
      v19 = [v6 uiElement];
      v9 = [v19 BOOLWithAXAttribute:3002];
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  }

  v20 = v18;
  [v5 setResultData:v18];

LABEL_22:
  AXOverrideRequestingClientType();

  return v5;
}

- (id)processSetAttribute:(id)a3
{
  v4 = a3;
  _convertAXPClientToiOS([v4 clientType]);
  AXOverrideRequestingClientType();
  v5 = [(AXPTranslator_iOS *)self axElementFromTranslatorRequest:v4];
  v6 = [v4 attributeType];
  if (v6 > 52)
  {
    switch(v6)
    {
      case '5':
        v8 = [v5 uiElement];
        v13 = [v4 parameters];
        v15 = [v13 objectForKeyedSubscript:@"value"];
        [v8 setAXAttribute:2006 withString:v15];
LABEL_14:

        goto LABEL_21;
      case 'b':
        v17 = [v4 parameters];
        v8 = [v17 objectForKeyedSubscript:@"value"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_22;
        }

        v12 = [v5 uiElement];
        v13 = v12;
        v14 = 2708;
        break;
      case 'a':
        v11 = [v4 parameters];
        v8 = [v11 objectForKeyedSubscript:@"value"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_22;
        }

        v12 = [v5 uiElement];
        v13 = v12;
        v14 = 2716;
        break;
      default:
        goto LABEL_23;
    }

    [v12 setAXAttribute:v14 withNumber:v8];
    goto LABEL_21;
  }

  switch(v6)
  {
    case 2:
      v8 = [v5 uiElement];
      v13 = [v4 parameters];
      [v8 setAXAttribute:2018 withObject:v13];
LABEL_21:

      goto LABEL_22;
    case 28:
      v16 = [v4 parameters];
      v8 = [v16 objectForKeyedSubscript:@"focused"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v8 BOOLValue])
        {
          [v5 setNativeFocus];
          goto LABEL_22;
        }

        v13 = [v5 uiElement];
        v15 = [v5 uiElement];
        [v13 setAXAttribute:3002 withUIElement:v15];
        goto LABEL_14;
      }

LABEL_22:

      break;
    case 47:
      v7 = [v4 parameters];
      v8 = [v7 objectForKeyedSubscript:@"range"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 rangeValue];
        [v5 setSelectedTextRange:{v9, v10}];
      }

      goto LABEL_22;
  }

LABEL_23:
  AXOverrideRequestingClientType();

  return 0;
}

- (id)processSupportedActions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _convertAXPClientToiOS([v4 clientType]);
  AXOverrideRequestingClientType();
  v5 = objc_opt_new();
  v6 = [(AXPTranslator_iOS *)self axElementFromTranslatorRequest:v4];
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v4 parameters];
  v9 = [v8 objectForKeyedSubscript:@"actions"];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v6 supportsAction:{_convertAXPActionToiOS(objc_msgSend(v14, "intValue"))}])
        {
          [v7 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [v5 setResultData:v7];
  AXOverrideRequestingClientType();

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)processSupportsAttributes:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _convertAXPClientToiOS([v4 clientType]);
  AXOverrideRequestingClientType();
  v22 = objc_opt_new();
  v5 = [(AXPTranslator_iOS *)self axElementFromTranslatorRequest:v4];
  v6 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v4 parameters];
  v8 = [v7 objectForKeyedSubscript:@"attributes"];

  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 integerValue];
        if (v14 == 96)
        {
          v15 = MEMORY[0x277CCABB0];
          v16 = [v5 uiElement];
          v17 = v16;
          v18 = 2713;
          goto LABEL_10;
        }

        if (v14 == 81)
        {
          v15 = MEMORY[0x277CCABB0];
          v16 = [v5 uiElement];
          v17 = v16;
          v18 = 2317;
LABEL_10:
          v19 = [v15 numberWithBool:{objc_msgSend(v16, "BOOLWithAXAttribute:", v18)}];
          [v6 setObject:v19 forKeyedSubscript:v13];

          continue;
        }

        [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  [v22 setResultData:v6];
  AXOverrideRequestingClientType();

  v20 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_preprocessRequest:(int64_t)a3 parameter:(id)a4
{
  v5 = a4;
  if (a3 == 92516)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v5 objectForKey:@"AXStartElement"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v5 mutableCopy];
        v20 = +[AXPTranslator_iOS sharedInstance];
        v21 = [v20 createPlatformElementFromTranslationObject:v18];

        [v19 setObject:v21 forKeyedSubscript:@"AXStartElement"];
        v5 = v19;
      }
    }

    goto LABEL_15;
  }

  if (a3 != 95227 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_15:
    v11 = v5;
    goto LABEL_16;
  }

  v6 = [v5 objectForKey:@"AXPCustomRotorTargetElement"];
  v7 = [v5 objectForKey:@"AXPCustomRotorTargetRange"];
  v8 = [v5 objectForKey:@"AXPCustomRotorDirection"];
  v9 = [v8 intValue];

  v10 = [v5 objectForKey:@"AXPCustomRotorUUID"];
  v11 = [MEMORY[0x277CBEB38] dictionary];
  [v11 setObject:v10 forKeyedSubscript:@"uuid"];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v9 != 1];
  [v11 setObject:v12 forKeyedSubscript:@"direction"];

  v13 = +[AXPTranslator_iOS sharedInstance];
  v14 = [v13 createPlatformElementFromTranslationObject:v6];

  v15 = [MEMORY[0x277CBEB38] dictionary];
  [v15 setObject:v14 forKeyedSubscript:@"targetElement"];
  if (v14)
  {
    CFRelease(v14);
  }

  if (v7)
  {
    v23 = [v7 rangeValue];
    v24 = v16;
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = AXValueCreate(kAXValueTypeCFRange, &v23);
      [v15 setObject:v17 forKeyedSubscript:{@"targetRange", v23, v24}];
      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  [v11 setObject:v15 forKeyedSubscript:{@"currentItem", v23, v24}];

LABEL_16:

  return v11;
}

- (id)processAttributeRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 translation];
  _convertAXPClientToiOS([v4 clientType]);
  AXOverrideRequestingClientType();
  v6 = [(AXPTranslator_iOS *)self createPlatformElementFromTranslationObject:v5];
  v7 = MEMORY[0x277CE6BB0];
  v8 = objc_opt_new();
  v9 = [v7 uiElementWithAXElement:v6 cache:v8];

  v10 = objc_opt_new();
  v11 = [v4 attributeType];
  [v10 setAttribute:v11];
  v26 = 0;
  v12 = [v4 parameters];
  v13 = -[AXPTranslator_iOS _processAttributeSpecialCases:uiElement:parameter:error:client:](self, "_processAttributeSpecialCases:uiElement:parameter:error:client:", v11, v9, v12, &v26, [v4 clientType]);
  [v10 setResultData:v13];

  v14 = [v10 resultData];

  if (!v14)
  {
    v15 = [v4 parameters];
    v16 = [v15 objectForKeyedSubscript:@"parameter"];

    if (!v16)
    {
      v16 = [v4 parameters];
    }

    if ([v4 attributeType] == 63)
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [v16 longValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v16;
          v21 = _AXPConvertAXAttribute(v20);
          if (v21)
          {
            v17 = v21;
          }

          else
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"k%@Attribute", v20];
            v17 = _AXPConvertAXAttribute(v24);

            if (!v17)
            {
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"kAX%@Attribute", v20];
              v17 = _AXPConvertAXAttribute(v25);
            }
          }
        }

        else
        {
          v17 = 0;
        }
      }

      v16 = 0;
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = [(AXPTranslator_iOS *)self attributeFromRequest:v11];
      if (!v17)
      {
LABEL_17:
        v26 = -25205;
        goto LABEL_18;
      }
    }

    v18 = [(AXPTranslator_iOS *)self _preprocessRequest:v17 parameter:v16];

    v19 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v9 iosAttribute:v17 axpAttribute:v11 parameter:v18 error:&v26];
    [v10 setResultData:v19];

    v16 = v18;
LABEL_18:
  }

  [v10 setError:v26];
  v22 = [v4 translation];
  [v10 setAssociatedTranslationObject:v22];

  if (v6)
  {
    CFRelease(v6);
  }

  AXOverrideRequestingClientType();

  return v10;
}

- (AXUIElement)systemAppElement
{
  v15 = *MEMORY[0x277D85DE8];
  systemAppElement = self->_systemAppElement;
  if (!systemAppElement)
  {
    v4 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v14 = 136315138;
      *&v14[4] = "[AXPTranslator_iOS systemAppElement]";
      _os_log_impl(&dword_23D766000, v4, OS_LOG_TYPE_INFO, "%s: setting _systemAppElement", v14, 0xCu);
    }

    v5 = [(AXPTranslator_iOS *)self systemWideElement];
    *v14 = 0;
    v6 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v5 iosAttribute:1001 axpAttribute:0 parameter:0 error:v14];
    if (v6)
    {
      v7 = [(AXPTranslator_iOS *)self createPlatformElementFromTranslationObject:v6];
      v8 = MEMORY[0x277CE6BB0];
      v9 = objc_opt_new();
      v10 = [v8 uiElementWithAXElement:v7 cache:v9];
      v11 = self->_systemAppElement;
      self->_systemAppElement = v10;

      if (v7)
      {
        CFRelease(v7);
      }
    }

    systemAppElement = self->_systemAppElement;
  }

  v12 = *MEMORY[0x277D85DE8];

  return systemAppElement;
}

- (id)processApplicationObject:(id)a3
{
  v4 = a3;
  _convertAXPClientToiOS([v4 clientType]);
  AXOverrideRequestingClientType();
  v5 = [v4 parameters];

  v6 = [v5 objectForKeyedSubscript:@"pid"];

  if (v6)
  {
    [v6 intValue];
  }

  else
  {
    getpid();
  }

  AppElementWithPid = _AXUIElementCreateAppElementWithPid();
  v8 = objc_opt_new();
  v9 = [(AXPTranslator_iOS *)self translationObjectFromPlatformElement:AppElementWithPid];
  [v8 setResultData:v9];
  if (AppElementWithPid)
  {
    CFRelease(AppElementWithPid);
  }

  AXOverrideRequestingClientType();

  return v8;
}

- (id)_processApplicationOrientationForTreeDump:(id)a3
{
  v4 = a3;
  _convertAXPClientToiOS([v4 clientType]);
  AXOverrideRequestingClientType();
  v5 = [(AXPTranslator_iOS *)self systemAppElement];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __63__AXPTranslator_iOS__processApplicationOrientationForTreeDump___block_invoke;
  v14 = &unk_278BE8418;
  v6 = v5;
  v15 = v6;
  v16 = self;
  v17 = &v23;
  v18 = &v19;
  v7 = MEMORY[0x23EEEBC20](&v11);
  v8 = [v6 pid];
  if (v8 == getpid())
  {
    dispatch_sync(MEMORY[0x277D85CD0], v7);
  }

  else
  {
    v7[2](v7);
  }

  v9 = objc_opt_new();
  [v9 setError:v20[3]];
  [v9 setAttribute:129];
  if (v24[5])
  {
    [v9 setResultData:?];
  }

  AXOverrideRequestingClientType();

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

- (id)processFrontMostApp:(id)a3 withiOSAttribute:(int64_t)a4
{
  v6 = a3;
  _convertAXPClientToiOS([v6 clientType]);
  AXOverrideRequestingClientType();
  v7 = [(AXPTranslator_iOS *)self systemAppElement];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__AXPTranslator_iOS_processFrontMostApp_withiOSAttribute___block_invoke;
  v16[3] = &unk_278BE8440;
  v8 = v7;
  v20 = &v22;
  v21 = a4;
  v17 = v8;
  v18 = self;
  v19 = &v26;
  v9 = MEMORY[0x23EEEBC20](v16);
  v10 = [v8 pid];
  if (v10 == getpid())
  {
    dispatch_sync(MEMORY[0x277D85CD0], v9);
  }

  else
  {
    v9[2](v9);
  }

  v11 = objc_opt_new();
  [v11 setError:v23[3]];
  v12 = [v27[5] firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 intValue];
    AppElementWithPid = _AXUIElementCreateAppElementWithPid();
    v14 = [(AXPTranslator_iOS *)self translationObjectFromPlatformElement:AppElementWithPid];
    [v11 setResultData:v14];
    if (AppElementWithPid)
    {
      CFRelease(AppElementWithPid);
    }
  }

  else
  {
    v14 = [v27[5] firstObject];
    [v11 setResultData:v14];
  }

  AXOverrideRequestingClientType();
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v11;
}

- (void)setRequestResolvingBehavior:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[AXPTranslator_iOS setRequestResolvingBehavior:]";
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&dword_23D766000, v5, OS_LOG_TYPE_INFO, "%s: %lu", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = AXPTranslator_iOS;
  [(AXPTranslator *)&v7 setRequestResolvingBehavior:a3];
  [(AXPTranslator_iOS *)self setShouldHonorGroupsForElementTraversal:[(AXPTranslator_iOS *)self _usingCachedTree]^ 1];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_usingCachedTree
{
  v3 = [(AXPTranslator *)self requestResolvingBehavior];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(AXPTranslator *)self requestResolvingBehavior]== 2;
  }

  return v3;
}

- (id)axTreeDumpSharedBackgroundQueue
{
  if (axTreeDumpSharedBackgroundQueue_onceAttrToken != -1)
  {
    [AXPTranslator_iOS axTreeDumpSharedBackgroundQueue];
  }

  v3 = axTreeDumpSharedBackgroundQueue_axTreeDumpBackgroundQueue;

  return v3;
}

- (void)stopGeneratingAXTreeDump
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[AXPTranslator_iOS stopGeneratingAXTreeDump]";
    _os_log_impl(&dword_23D766000, v3, OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
  }

  v4 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [v4 lock];

  [(AXPTranslator_iOS *)self setShouldStopGeneratingAXTree:1];
  v5 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [v5 unlock];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchNextSetOfElementAttrsOnBackgroundThreadWithEarlyTermination:(BOOL)a3
{
  v3 = a3;
  v5 = [(AXPTranslator_iOS *)self axTreeDumpSharedBackgroundQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [v6 lock];

  v7 = [(AXPTranslator_iOS *)self axTreeDumpCurrentChildIndex];
  v8 = [(AXPTranslator_iOS *)self axTreeDumpCurrentlyProcessingChildren];
  v9 = [v8 count];

  v10 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [v10 unlock];

  if (v3 || v7 >= v9)
  {
    v19 = objc_opt_new();
    [v19 setAssociatedRequestType:11];
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = [(AXPTranslator_iOS *)self axTreeDumpLock];
    [v12 lock];

    v13 = [(AXPTranslator_iOS *)self axTreeDumpCurrentOutput];
    v14 = [v13 copy];
    [v11 setObject:v14 forKeyedSubscript:@"treeDump"];

    v15 = [(AXPTranslator_iOS *)self axTreeDumpCurrentType];
    v16 = [v15 copy];
    [v11 setObject:v16 forKeyedSubscript:@"treeDumpType"];

    v17 = [(AXPTranslator_iOS *)self axTreeDumpLock];
    [v17 unlock];

    [v19 setResultData:v11];
    [(AXPTranslator_iOS *)self _axTreeDumpCleanUpState];
    AXOverrideRequestingClientType();
    v18 = [(AXPTranslator_iOS *)self axTreeDumpCompletionHandler];
    (v18)[2](v18, !v3, v19);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__AXPTranslator_iOS_fetchNextSetOfElementAttrsOnBackgroundThreadWithEarlyTermination___block_invoke;
    block[3] = &unk_278BE8288;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_axTreeDumpCleanUpState
{
  v3 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [v3 lock];

  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentChildIndex:0];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentlyProcessingChildren:v4];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentOutput:v5];

  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentType:0];
  [(AXPTranslator_iOS *)self setShouldStopGeneratingAXTree:0];
  v6 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [v6 unlock];
}

- (void)axTreeDumpGenerateNextSetOfElementAttrsOnMainThread
{
  v91[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [v3 lock];

  LODWORD(v3) = [(AXPTranslator_iOS *)self shouldStopGeneratingAXTree];
  v4 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [v4 unlock];

  if (!v3)
  {
    if ([(AXPTranslator_iOS *)self _usingCachedTreeForOnenessClient])
    {
      AXOverrideRequestingClientType();
    }

    v9 = [MEMORY[0x277CBEA60] array];
    v10 = [(AXPTranslator_iOS *)self axTreeDumpLock];
    [v10 lock];

    v11 = [(AXPTranslator_iOS *)self axTreeDumpCurrentChildIndex];
    v12 = [(AXPTranslator_iOS *)self axTreeDumpCurrentlyProcessingChildren];
    v13 = [v12 count];

    v14 = [(AXPTranslator_iOS *)self axTreeDumpCurrentType];
    v15 = [(AXPTranslator_iOS *)self axTreeDumpLock];
    [v15 unlock];

    v16 = [v14 isEqualToString:?];
    v18 = 10;
    if (v16)
    {
      v18 = v13;
    }

    v69 = v18;
    if (!v18 || v11 >= v13)
    {
LABEL_46:
      v62 = [(AXPTranslator_iOS *)self axTreeDumpLock];
      [v62 lock];

      [(AXPTranslator_iOS *)self setAxTreeDumpCurrentChildIndex:v11];
      v63 = [(AXPTranslator_iOS *)self axTreeDumpLock];
      [v63 unlock];

      v64 = dispatch_time(0, 0);
      v65 = [(AXPTranslator_iOS *)self axTreeDumpSharedBackgroundQueue];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __72__AXPTranslator_iOS_axTreeDumpGenerateNextSetOfElementAttrsOnMainThread__block_invoke_586;
      v75[3] = &unk_278BE8288;
      v75[4] = self;
      dispatch_after(v64, v65, v75);

      goto LABEL_47;
    }

    v72 = 0;
    v19 = 0x277CBE000uLL;
    *&v17 = 136315394;
    v67 = v17;
    v68 = v14;
    while (1)
    {
      v20 = [(AXPTranslator_iOS *)self axTreeDumpLock];
      [v20 lock];

      v21 = [(AXPTranslator_iOS *)self axTreeDumpCurrentlyProcessingChildren];
      v22 = [v21 axSafeObjectAtIndex:v11];

      v23 = [(AXPTranslator_iOS *)self axTreeDumpLock];
      [v23 unlock];

      if (!v22)
      {
        goto LABEL_46;
      }

      if ([v14 isEqualToString:@"AXPTreeDumpTypeInitialDump"])
      {
        v24 = [(AXPTranslator_iOS *)self _topPriorityAXTreeAttrValues];
      }

      else
      {
        if (![v14 isEqualToString:@"AXPTreeDumpTypeAdditionalData"])
        {
          goto LABEL_18;
        }

        v24 = [(AXPTranslator_iOS *)self _allAXTreeAttrValues];
      }

      v25 = v24;

      v9 = v25;
LABEL_18:
      v26 = objc_alloc_init(AXPTranslatorRequest);
      [(AXPTranslatorRequest *)v26 setTranslation:v22];
      v90 = @"attributes";
      v91[0] = v9;
      v27 = [*(v19 + 2752) dictionaryWithObjects:v91 forKeys:&v90 count:1];
      [(AXPTranslatorRequest *)v26 setParameters:v27];

      v70 = v26;
      v28 = [(AXPTranslator_iOS *)self processMultipleAttributeRequest:v26 removeEmptyValue:0];
      if ([v28 error])
      {
        v29 = AXPlatformTranslationLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v61 = [v28 error];
          *buf = v67;
          v87 = "[AXPTranslator_iOS axTreeDumpGenerateNextSetOfElementAttrsOnMainThread]";
          v88 = 2048;
          v89 = v61;
          _os_log_error_impl(&dword_23D766000, v29, OS_LOG_TYPE_ERROR, "%s: error while attempting to process attrs: %lu", buf, 0x16u);
        }
      }

      v73 = v11;
      v71 = v9;
      [v28 setAssociatedTranslationObject:v22];
      [v28 setAssociatedRequestType:5];
      v74 = v28;
      [(AXPTranslator_iOS *)self _safelyAddAXTreeDumpResponseToCurrentOutput:v28];
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v30 = [(AXPTranslator_iOS *)self _allAXTreeCanSetAttrValues];
      v31 = [v30 countByEnumeratingWithState:&v76 objects:v85 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v77;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v77 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = [*(*(&v76 + 1) + 8 * i) unsignedIntegerValue];
            v36 = objc_alloc_init(AXPTranslatorRequest);
            [(AXPTranslatorRequest *)v36 setAttributeType:v35];
            [(AXPTranslatorRequest *)v36 setTranslation:v22];
            v37 = [(AXPTranslator_iOS *)self processCanSetAttribute:v36];
            [v37 setAssociatedTranslationObject:v22];
            [v37 setAttribute:v35];
            [v37 setAssociatedRequestType:3];
            v38 = [v37 resultData];

            if (v38)
            {
              [(AXPTranslator_iOS *)self _safelyAddAXTreeDumpResponseToCurrentOutput:v37];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v76 objects:v85 count:16];
        }

        while (v32);
      }

      v39 = [v74 resultData];
      v19 = 0x277CBE000uLL;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v41 = [v74 resultData];
        v42 = [v41 objectForKeyedSubscript:&unk_284FCBAA8];
      }

      else
      {
        v42 = 0;
      }

      v14 = v68;
      v43 = v73;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = [(AXPTranslator_iOS *)self axTreeDumpLock];
        [v44 lock];

        v45 = [(AXPTranslator_iOS *)self axTreeDumpCurrentlyProcessingChildren];
        [v45 addObjectsFromArray:v42];

        v46 = [(AXPTranslator_iOS *)self axTreeDumpLock];
        [v46 unlock];
      }

      if ([v68 isEqualToString:@"AXPTreeDumpTypeAdditionalData"])
      {
        v47 = objc_alloc_init(AXPTranslatorRequest);
        v83 = @"actions";
        v48 = [(AXPTranslator_iOS *)self _allAXTreeActions];
        v84 = v48;
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        [(AXPTranslatorRequest *)v47 setParameters:v49];

        [(AXPTranslatorRequest *)v47 setTranslation:v22];
        v50 = [(AXPTranslator_iOS *)self processSupportedActions:v47];
        [v50 setAssociatedTranslationObject:v22];
        [v50 setAssociatedRequestType:9];
        v51 = [v50 resultData];

        if (v51)
        {
          [(AXPTranslator_iOS *)self _safelyAddAXTreeDumpResponseToCurrentOutput:v50];
        }

        v52 = objc_alloc_init(AXPTranslatorRequest);
        v81 = @"attributes";
        v53 = [(AXPTranslator_iOS *)self _allAXTreeAttrValues];
        v82 = v53;
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        [(AXPTranslatorRequest *)v52 setParameters:v54];

        [(AXPTranslatorRequest *)v52 setTranslation:v22];
        v55 = [(AXPTranslator_iOS *)self processSupportsAttributes:v52];
        [v55 setAssociatedTranslationObject:v22];
        [v55 setAssociatedRequestType:10];
        v56 = [v55 resultData];

        if (v56)
        {
          [(AXPTranslator_iOS *)self _safelyAddAXTreeDumpResponseToCurrentOutput:v55];
        }

        v43 = v73;
        v19 = 0x277CBE000;
      }

      v11 = v43 + 1;
      v57 = [(AXPTranslator_iOS *)self axTreeDumpLock];
      [v57 lock];

      v58 = [(AXPTranslator_iOS *)self axTreeDumpCurrentlyProcessingChildren];
      v59 = [v58 count];

      v60 = [(AXPTranslator_iOS *)self axTreeDumpLock];
      [v60 unlock];

      if (++v72 >= v69)
      {
        v9 = v71;
        goto LABEL_46;
      }

      v9 = v71;
      if (v11 >= v59)
      {
        goto LABEL_46;
      }
    }
  }

  v5 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v87 = "[AXPTranslator_iOS axTreeDumpGenerateNextSetOfElementAttrsOnMainThread]";
    _os_log_impl(&dword_23D766000, v5, OS_LOG_TYPE_INFO, "%s: shouldStopGeneratingAXTree", buf, 0xCu);
  }

  v6 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [v6 lock];

  [(AXPTranslator_iOS *)self setShouldStopGeneratingAXTree:0];
  v7 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [v7 unlock];

  v8 = [(AXPTranslator_iOS *)self axTreeDumpSharedBackgroundQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__AXPTranslator_iOS_axTreeDumpGenerateNextSetOfElementAttrsOnMainThread__block_invoke;
  block[3] = &unk_278BE8288;
  block[4] = self;
  dispatch_async(v8, block);

LABEL_47:
  v66 = *MEMORY[0x277D85DE8];
}

- (void)generateAXTreeDumpTypeOnBackgroundThread:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXPTranslator_iOS *)self axTreeDumpSharedBackgroundQueue];
  dispatch_assert_queue_V2(v8);

  v9 = AXRequestingClient();
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(AXPTranslator_iOS *)self _axTreeDumpCleanUpState];
  [(AXPTranslator_iOS *)self setAxTreeDumpCompletionHandler:v6];

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(AXPTranslatorRequest);
  if ([(AXPTranslator_iOS *)self _usingCachedTreeForOnenessClient])
  {
    [(AXPTranslator_iOS *)self _processFrontMostAppForContinuity:v11];
  }

  else
  {
    [(AXPTranslator_iOS *)self processFrontMostApp:v11];
  }
  v12 = ;
  [v12 setAssociatedRequestType:4];
  [v36 addObject:v12];
  v13 = [v12 translationResponse];

  if (v13)
  {
    v14 = [v12 translationResponse];
    [v10 addObject:v14];

    if ([(AXPTranslator_iOS *)self _usingCachedTreeForOnenessClient])
    {
      v35 = v9;
      AXOverrideRequestingClientType();
      v15 = +[AXPTranslator_iOS sharedInstance];
      v16 = [v12 translationResponse];
      v17 = [v15 createPlatformElementFromTranslationObject:v16];

      v18 = MEMORY[0x277CE6BB0];
      v19 = objc_opt_new();
      v20 = [v18 uiElementWithAXElement:v17 cache:v19];

      [v20 setAXAttribute:3071 withNumber:MEMORY[0x277CBEC38]];
      v21 = [(AXPTranslator_iOS *)self frontmostAppOnContinuityDisplay];
      if (v21)
      {
        v22 = v21;
        v23 = [(AXPTranslator_iOS *)self frontmostAppOnContinuityDisplay];
        v24 = [v20 isEqual:v23];

        if ((v24 & 1) == 0)
        {
          v25 = [(AXPTranslator_iOS *)self frontmostAppOnContinuityDisplay];
          [v25 setAXAttribute:3071 withNumber:MEMORY[0x277CBEC28]];
        }
      }

      [(AXPTranslator_iOS *)self setFrontmostAppOnContinuityDisplay:v20];
      if (v17)
      {
        CFRelease(v17);
      }

      v9 = v35;
    }
  }

  if (v9 == 2)
  {
    v26 = MEMORY[0x277CBEB18];
    v27 = [(AXPTranslator_iOS *)self _frontmostAppChildrenForXCTest];
    v28 = [v26 arrayWithArray:v27];

    v10 = v28;
  }

  if ([(AXPTranslator_iOS *)self _usingCachedTreeForDevicesAppClient])
  {
    v29 = objc_alloc_init(AXPTranslatorRequest);
    v30 = [(AXPTranslator_iOS *)self _processApplicationOrientationForTreeDump:v29];
    [v30 setAssociatedRequestType:2];
    [v36 addObject:v30];
  }

  v31 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [v31 lock];

  v32 = [v10 mutableCopy];
  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentlyProcessingChildren:v32];

  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentType:v7];
  v33 = [v36 mutableCopy];
  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentOutput:v33];

  v34 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [v34 unlock];

  [(AXPTranslator_iOS *)self fetchNextSetOfElementAttrsOnBackgroundThreadWithEarlyTermination:0];
}

- (void)_safelyAddAXTreeDumpResponseToCurrentOutput:(id)a3
{
  v4 = a3;
  v5 = [v4 resultData];
  v6 = [(AXPTranslator_iOS *)self _postProcessResultDataForSecureCoding:v5];

  if (v6)
  {
    [v4 setResultData:v6];
    v7 = [(AXPTranslator_iOS *)self axTreeDumpLock];
    [v7 lock];

    v8 = [(AXPTranslator_iOS *)self axTreeDumpCurrentOutput];
    [v8 addObject:v4];

    v9 = [(AXPTranslator_iOS *)self axTreeDumpLock];
    [v9 unlock];
  }

  else
  {
    v9 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AXPTranslator_iOS *)v4 _safelyAddAXTreeDumpResponseToCurrentOutput:v9];
    }
  }
}

- (id)_postProcessResultDataForSecureCoding:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v4];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __59__AXPTranslator_iOS__postProcessResultDataForSecureCoding___block_invoke;
    v20[3] = &unk_278BE8468;
    v20[4] = self;
    v6 = v5;
    v21 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v20];
    if ([v6 count] || !objc_msgSend(v4, "count"))
    {
      v7 = [v6 copy];
    }

    else
    {
      v7 = 0;
    }

    v9 = v21;
LABEL_19:

    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v4];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__AXPTranslator_iOS__postProcessResultDataForSecureCoding___block_invoke_2;
    v18[3] = &unk_278BE8490;
    v18[4] = self;
    v6 = v8;
    v19 = v6;
    [v4 enumerateObjectsUsingBlock:v18];
    if ([v6 count] || !objc_msgSend(v4, "count"))
    {
      v7 = [v6 copy];
    }

    else
    {
      v7 = 0;
    }

    v9 = v19;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__AXPTranslator_iOS__postProcessResultDataForSecureCoding___block_invoke_3;
    v13[3] = &unk_278BE84B8;
    v13[4] = self;
    v13[5] = &v14;
    [v4 enumerateAttributesUsingBlock:v13];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_opt_class() supportsSecureCoding])
      {
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_20;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v10 = [v4 length];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__AXPTranslator_iOS__postProcessResultDataForSecureCoding___block_invoke_4;
    v12[3] = &unk_278BE84B8;
    v12[4] = self;
    v12[5] = &v14;
    [v4 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v12}];
  }

  if (*(v15 + 24) == 1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v14, 8);
LABEL_20:

  return v7;
}

- (id)_frontmostAppChildrenForXCTest
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(AXPTranslator_iOS *)self processFrontMostApp:0];
  v4 = [v3 translationResponse];
  v5 = [(AXPTranslator_iOS *)self createPlatformElementFromTranslationObject:v4];

  v6 = [MEMORY[0x277CE6BB0] uiElementWithAXElement:v5];
  v7 = [v6 arrayWithAXAttribute:5001];
  v8 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(AXPTranslator_iOS *)self translationObjectFromPlatformElement:*(*(&v17 + 1) + 8 * i), v17];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_allAXTreeActions
{
  if (_allAXTreeActions_onceAttrToken != -1)
  {
    [AXPTranslator_iOS _allAXTreeActions];
  }

  v3 = _allAXTreeActions_actionValues;

  return v3;
}

- (id)_topPriorityAXTreeAttrValues
{
  if (_topPriorityAXTreeAttrValues_onceAttrToken != -1)
  {
    [AXPTranslator_iOS _topPriorityAXTreeAttrValues];
  }

  v3 = _topPriorityAXTreeAttrValues_attributeValues;

  return v3;
}

- (id)_allAXTreeCanSetAttrValues
{
  if (_allAXTreeCanSetAttrValues_onceAttrToken != -1)
  {
    [AXPTranslator_iOS _allAXTreeCanSetAttrValues];
  }

  v3 = _allAXTreeCanSetAttrValues_attributeValues;

  return v3;
}

- (id)_allAXTreeAttrValues
{
  if (_allAXTreeAttrValues_onceAttrToken != -1)
  {
    [AXPTranslator_iOS _allAXTreeAttrValues];
  }

  v3 = _allAXTreeAttrValues_attributeValues;

  return v3;
}

- (id)processHitTest:(id)a3
{
  v4 = a3;
  _convertAXPClientToiOS([v4 clientType]);
  AXOverrideRequestingClientType();
  v5 = [v4 parameters];
  v6 = [v5 objectForKeyedSubscript:@"point"];
  *cf = *MEMORY[0x277CBF348];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !strcmp([v6 objCType], "{CGPoint=dd}"))
  {
    [v6 getValue:cf];
  }

  v8 = cf[0];
  v7 = cf[1];

  v9 = [v4 parameters];
  v10 = [v9 objectForKeyedSubscript:@"displayId"];
  v11 = [v10 unsignedIntValue];

  v12 = [v4 parameters];
  v13 = [v12 objectForKeyedSubscript:@"contextId"];
  v14 = [v13 unsignedIntValue];

  v15 = [v4 translation];
  v16 = [v15 rawElementData];
  v17 = _AXUIElementCreateWithData();

  pid = [v15 pid];
  if (!pid)
  {
    if (([v15 didPopuldateAppInfo] & 1) != 0 || (AXUIElementGetPid(v17, &pid), objc_msgSend(v15, "setPid:", pid), objc_msgSend(v15, "setIsApplicationElement:", AXUIElementIsApplication()), objc_msgSend(v15, "setDidPopuldateAppInfo:", 1), !pid))
    {
      v23 = [(AXPTranslator *)self systemAppDelegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        v25 = [(AXPTranslator *)self systemAppDelegate];
        v26 = [v25 frontmostProcessPids];
        v27 = [v26 firstObject];
        pid = [v27 intValue];
      }
    }
  }

  cf[0] = 0;
  v18 = objc_opt_new();
  if (!pid)
  {
    v21 = [(AXPTranslator_iOS *)self systemWideElement];
    [v21 axElement];
    if (v11)
    {
      v28 = AXUIElementCopyElementUsingDisplayIdAtPosition();
    }

    else
    {
      v28 = _AXUIElementCopyElementAtPositionWithParams();
    }

    v22 = v28;
    goto LABEL_20;
  }

  AppElementWithPid = _AXUIElementCreateAppElementWithPid();
  v20 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:AppElementWithPid];
  v21 = v20;
  if (v14)
  {
    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = [v20 contextIdForPoint:{*&v8, *&v7}];
    if (v11)
    {
      goto LABEL_8;
    }
  }

  [v21 displayIdForContextId:v14];
LABEL_8:
  AXConvertPointFromHostedCoordinates();
  v22 = _AXUIElementCopyElementAtPositionWithParams();
  if (AppElementWithPid)
  {
    CFRelease(AppElementWithPid);
  }

LABEL_20:

  [v18 setError:_convertAXError(v22)];
  if (v17)
  {
    CFRelease(v17);
  }

  v29 = [(AXPTranslator_iOS *)self translationObjectFromPlatformElement:cf[0]];
  [v18 setResultData:v29];
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  AXOverrideRequestingClientType();

  return v18;
}

- (__AXUIElement)createPlatformElementFromTranslationObject:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  cacheQueue = self->_cacheQueue;
  v15 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__AXPTranslator_iOS_createPlatformElementFromTranslationObject___block_invoke;
  block[3] = &unk_278BE84E0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(cacheQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (id)translationObjectFromPlatformElement:(__AXUIElement *)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = MEMORY[0x277CE6BB0];
    v6 = objc_opt_new();
    v7 = [v5 uiElementWithAXElement:v3 cache:v6];

    v8 = objc_opt_new();
    v9 = _AXUIElementIDForElement();
    [v8 setUid:{v9, v10}];
    [v8 setPid:{objc_msgSend(v7, "pid")}];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = 0;
    cacheQueue = self->_cacheQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__AXPTranslator_iOS_translationObjectFromPlatformElement___block_invoke;
    block[3] = &unk_278BE8508;
    v19 = &v21;
    block[4] = self;
    v12 = v8;
    v17 = v12;
    v13 = v7;
    v18 = v13;
    v20 = v3;
    dispatch_sync(cacheQueue, block);
    v14 = [v22[5] remoteDescriptionBlock];

    if (!v14)
    {
      [v22[5] setRemoteDescriptionBlock:&__block_literal_global_791];
    }

    v3 = v22[5];

    _Block_object_dispose(&v21, 8);
  }

  return v3;
}

+ (id)translationObjectFromUIKitObject:(id)a3
{
  v4 = _AXCreateAXUIElementWithElement();
  if (v4)
  {
    v5 = v4;
    v6 = [a1 sharedInstance];
    v7 = [v6 translationObjectFromPlatformElement:v5];

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)platformElementFromTranslation:(id)a3
{
  v4 = a3;
  v5 = [(AXPTranslator *)self fakeElementCache];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "objectID")}];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v7 = [AXPIOSPlatformElement platformElementWithTranslationObject:v4];
    v8 = [(AXPTranslator *)self fakeElementCache];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "objectID")}];
    [v8 setObject:v7 forKey:v9];
  }

  return v7;
}

- (id)translationObjectFromData:(id)a3
{
  v4 = _AXUIElementCreateWithData();
  v5 = [(AXPTranslator_iOS *)self translationObjectFromPlatformElement:v4];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

- (void)_safelyAddAXTreeDumpResponseToCurrentOutput:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 resultData];
  v5 = 136315394;
  v6 = "[AXPTranslator_iOS _safelyAddAXTreeDumpResponseToCurrentOutput:]";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_23D766000, a2, OS_LOG_TYPE_ERROR, "%s: resultData does not conform to NSSecureCoding: %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end