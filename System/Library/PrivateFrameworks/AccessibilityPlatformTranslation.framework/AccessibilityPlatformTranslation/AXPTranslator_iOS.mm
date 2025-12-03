@interface AXPTranslator_iOS
+ (id)sharedInstance;
+ (id)translationObjectFromUIKitObject:(id)object;
- (AXPTranslator_iOS)init;
- (AXUIElement)systemAppElement;
- (BOOL)_usingCachedTree;
- (__AXUIElement)createPlatformElementFromTranslationObject:(id)object;
- (id)_allAXTreeActions;
- (id)_allAXTreeAttrValues;
- (id)_allAXTreeCanSetAttrValues;
- (id)_frontmostAppChildrenForXCTest;
- (id)_nilOutEmptyValue:(id)value;
- (id)_postProcessAttributeRequest:(id)request iosAttribute:(int64_t)attribute axpAttribute:(unint64_t)axpAttribute result:(id)result error:(unint64_t *)error;
- (id)_postProcessResultDataForSecureCoding:(id)coding;
- (id)_preprocessRequest:(int64_t)request parameter:(id)parameter;
- (id)_processAccessibilityAttributeValue:(int64_t)value;
- (id)_processApplicationOrientationForTreeDump:(id)dump;
- (id)_processAttributeSpecialCases:(unint64_t)cases uiElement:(id)element parameter:(id)parameter error:(unint64_t *)error client:(unint64_t)client;
- (id)_processAttributedStringForRangeAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error;
- (id)_processAuditIssuesAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error;
- (id)_processBoundsForRangeAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error;
- (id)_processBrailleOverrideForAttributeRequest:(id)request error:(unint64_t *)error attribute:(unint64_t)attribute;
- (id)_processCellWithIndexPathAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error;
- (id)_processChildrenAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processClassNameAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processCustomActionsAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processCustomRotorData:(id)data;
- (id)_processDirectAttributeRequest:(id)request iosAttribute:(int64_t)attribute axpAttribute:(unint64_t)axpAttribute parameter:(id)parameter error:(unint64_t *)error;
- (id)_processElementHelpAttributeResquest:(id)resquest error:(unint64_t *)error;
- (id)_processFirstContainedElement:(id)element parameter:(id)parameter error:(unint64_t *)error;
- (id)_processFirstElementForFocus:(id)focus parameter:(id)parameter error:(unint64_t *)error;
- (id)_processFocusedElementAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error;
- (id)_processIndexForTextMarkerAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error;
- (id)_processIsEnabledAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processIsFocusedAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error;
- (id)_processIsRemoteElementAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processIsSelectedAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processLabelAttributeRequest:(id)request error:(unint64_t *)error axpAttribute:(unint64_t)attribute;
- (id)_processLastContainedElement:(id)element parameter:(id)parameter error:(unint64_t *)error;
- (id)_processLineRangeAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error;
- (id)_processLinkedUIElementsAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processMoveFocusToOpaqueElementAttributeRequest:(id)request parameter:(id)parameter direction:(int64_t)direction error:(unint64_t *)error;
- (id)_processNextLineRangeAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error;
- (id)_processNumberOfCharactersAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processOutgoingCustomRotorSearchResult:(id)result;
- (id)_processParameterizedAttributeRequest:(id)request attribute:(int64_t)attribute parameter:(id)parameter error:(unint64_t *)error;
- (id)_processPreviousLineRangeAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error;
- (id)_processRawElementDataRequest:(id)request error:(unint64_t *)error;
- (id)_processRoleAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processRoleDescriptionAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processSelectedTextRequest:(id)request error:(unint64_t *)error;
- (id)_processStartsMediaSessionAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processStringForRangeAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error;
- (id)_processSubroleAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processSyntheticStringValueAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processTextInputMarkedRangeAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processUserInputLabelsAttributeRequest:(id)request error:(unint64_t *)error axpAttribute:(unint64_t)attribute;
- (id)_processValueAttributeRequest:(id)request error:(unint64_t *)error axpAttribute:(unint64_t)attribute useAttributes:(BOOL)attributes;
- (id)_processViewControllerDescriptionAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processVisibleOpaqueElements:(id)elements error:(unint64_t *)error;
- (id)_processVisibleTextRangeAttributeRequest:(id)request error:(unint64_t *)error;
- (id)_processZoomAttributeRequest:(BOOL)request axElement:(id)element parameter:(id)parameter error:(unint64_t *)error;
- (id)_processingSmuggledMarzipanRequest:(id)request parameter:(id)parameter error:(unint64_t *)error;
- (id)_topPriorityAXTreeAttrValues;
- (id)attributedStringConversionBlock;
- (id)axElementFromTranslatorRequest:(id)request;
- (id)axTreeDumpSharedBackgroundQueue;
- (id)backTranslationCache;
- (id)platformElementFromTranslation:(id)translation;
- (id)processActionRequest:(id)request;
- (id)processApplicationObject:(id)object;
- (id)processAttributeRequest:(id)request;
- (id)processCanSetAttribute:(id)attribute;
- (id)processFrontMostApp:(id)app withiOSAttribute:(int64_t)attribute;
- (id)processHitTest:(id)test;
- (id)processMultipleAttributeRequest:(id)request removeEmptyValue:(BOOL)value;
- (id)processSetAttribute:(id)attribute;
- (id)processSupportedActions:(id)actions;
- (id)processSupportsAttributes:(id)attributes;
- (id)translationCache;
- (id)translationObjectFromData:(id)data;
- (id)translationObjectFromPlatformElement:(__AXUIElement *)element;
- (int64_t)attributeFromRequest:(unint64_t)request;
- (unint64_t)_processRoleAttributeRequest:(id)request traits:(unint64_t)traits error:(unint64_t *)error;
- (void)_addCacheElement:(id)element translationObject:(id)object;
- (void)_attemptToResetSystemWideElement;
- (void)_axTreeDumpCleanUpState;
- (void)_enableAccessibilityBridgeRuntime;
- (void)_registerAccessibilityNotifications;
- (void)_removeCacheEntriesForElement:(id)element;
- (void)_resetSystemWideElement;
- (void)_resetSystemWideElementAfterDelay;
- (void)_safelyAddAXTreeDumpResponseToCurrentOutput:(id)output;
- (void)_signalAppAXReady;
- (void)axTreeDumpGenerateNextSetOfElementAttrsOnMainThread;
- (void)fetchNextSetOfElementAttrsOnBackgroundThreadWithEarlyTermination:(BOOL)termination;
- (void)generateAXTreeDumpTypeOnBackgroundThread:(id)thread completionHandler:(id)handler;
- (void)initializeAXRuntimeForSystemAppServer;
- (void)setAccessibilityEnabled:(BOOL)enabled;
- (void)setRequestResolvingBehavior:(unint64_t)behavior;
- (void)stopGeneratingAXTreeDump;
@end

@implementation AXPTranslator_iOS

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__AXPTranslator_iOS_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  translationCache = v2->_translationCache;
  v2->_translationCache = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  backTranslationCache = v2->_backTranslationCache;
  v2->_backTranslationCache = dictionary2;

  array = [MEMORY[0x277CBEB18] array];
  cachedElements = v2->_cachedElements;
  v2->_cachedElements = array;

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

- (void)_addCacheElement:(id)element translationObject:(id)object
{
  v22 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  objectCopy = object;
  dispatch_assert_queue_V2(self->_cacheQueue);
  if ([(NSMutableArray *)self->_cachedElements count]> 0x1000)
  {
    1024 = [(NSMutableArray *)self->_cachedElements subarrayWithRange:0, 1024];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [1024 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(1024);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if (([v13 isEqual:elementCopy] & 1) == 0)
          {
            [(AXPTranslator_iOS *)self _removeCacheEntriesForElement:v13];
          }
        }

        v10 = [1024 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  [(NSMutableArray *)self->_cachedElements addObject:elementCopy];
  translationCache = [(AXPTranslator_iOS *)self translationCache];
  [translationCache setObject:objectCopy forKey:elementCopy];

  backTranslationCache = [(AXPTranslator_iOS *)self backTranslationCache];
  [backTranslationCache setObject:elementCopy forKey:objectCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeCacheEntriesForElement:(id)element
{
  v24 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  dispatch_assert_queue_V2(self->_cacheQueue);
  [(NSMutableArray *)self->_cachedElements removeObject:elementCopy];
  translationCache = [(AXPTranslator_iOS *)self translationCache];
  [translationCache removeObjectForKey:elementCopy];

  backTranslationCache = [(AXPTranslator_iOS *)self backTranslationCache];
  allKeys = [backTranslationCache allKeys];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = allKeys;
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
        backTranslationCache2 = [(AXPTranslator_iOS *)self backTranslationCache];
        v15 = [backTranslationCache2 objectForKey:v13];
        v16 = [v15 isEqual:elementCopy];

        if (v16)
        {
          backTranslationCache3 = [(AXPTranslator_iOS *)self backTranslationCache];
          [backTranslationCache3 removeObjectForKey:v13];
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
  systemWideElement = [(AXPTranslator_iOS *)self systemWideElement];

  if (!systemWideElement)
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

- (id)_processAccessibilityAttributeValue:(int64_t)value
{
  if (value == 1001)
  {
    frontmostProcessPids = [MEMORY[0x277CCABB0] numberWithInt:getpid()];
  }

  else if (value == 1102 && ([(AXPTranslator *)self systemAppDelegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    systemAppDelegate = [(AXPTranslator *)self systemAppDelegate];
    frontmostProcessPids = [systemAppDelegate frontmostProcessPids];
  }

  else
  {
    frontmostProcessPids = 0;
  }

  return frontmostProcessPids;
}

- (void)initializeAXRuntimeForSystemAppServer
{
  mEMORY[0x277CE6BA8] = [MEMORY[0x277CE6BA8] sharedManager];
  systemAppDelegate = [(AXPTranslator *)self systemAppDelegate];
  isSystemWideElement = [systemAppDelegate isSystemWideElement];

  [mEMORY[0x277CE6BA8] setSystemWideServer:isSystemWideElement];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__AXPTranslator_iOS_initializeAXRuntimeForSystemAppServer__block_invoke;
  v12[3] = &unk_278BE82B0;
  v12[4] = self;
  [mEMORY[0x277CE6BA8] setAttributeCallback:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__AXPTranslator_iOS_initializeAXRuntimeForSystemAppServer__block_invoke_2;
  v11[3] = &unk_278BE82D8;
  v11[4] = self;
  [mEMORY[0x277CE6BA8] setParameterizedAttributeCallback:v11];
  [mEMORY[0x277CE6BA8] setSetAttributeCallback:&__block_literal_global];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__AXPTranslator_iOS_initializeAXRuntimeForSystemAppServer__block_invoke_4;
  v10[3] = &unk_278BE8320;
  v10[4] = self;
  [mEMORY[0x277CE6BA8] setPerformActionCallback:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__AXPTranslator_iOS_initializeAXRuntimeForSystemAppServer__block_invoke_5;
  v9[3] = &unk_278BE8348;
  v9[4] = self;
  [mEMORY[0x277CE6BA8] setApplicationElementCallback:v9];
  [mEMORY[0x277CE6BA8] setOutgoingValuePreprocessor:&__block_literal_global_344];
  [mEMORY[0x277CE6BA8] setClientObserverCallback:&__block_literal_global_347];
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

  if (isSystemWideElement)
  {
    v7 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_23D766000, v7, OS_LOG_TYPE_INFO, "Registering as system wide server!", v8, 2u);
    }

    _AXUIElementRegisterSystemWideServerBroadcastRelayerCallback();
  }

  [mEMORY[0x277CE6BA8] start];
}

- (void)setAccessibilityEnabled:(BOOL)enabled
{
  v10 = *MEMORY[0x277D85DE8];
  if (enabled && !self->_accessibilityEnabled)
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

- (int64_t)attributeFromRequest:(unint64_t)request
{
  if (request > 0x81)
  {
    return 0;
  }

  else
  {
    return qword_23D77E1F8[request];
  }
}

- (id)processMultipleAttributeRequest:(id)request removeEmptyValue:(BOOL)value
{
  valueCopy = value;
  v65 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  _convertAXPClientToiOS([requestCopy clientType]);
  AXOverrideRequestingClientType();
  translation = [requestCopy translation];
  v7 = +[AXPTranslator_iOS sharedInstance];
  v45 = translation;
  v8 = [v7 createPlatformElementFromTranslationObject:translation];

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
  v48 = requestCopy;
  v13 = requestCopy;
  v14 = v11;
  parameters = [v13 parameters];
  v16 = [parameters objectForKeyedSubscript:@"attributes"];

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
        integerValue = [v21 integerValue];
        v23 = [(AXPTranslator_iOS *)self attributeFromRequest:integerValue];
        if (v23)
        {
          v24 = [MEMORY[0x277CCABB0] numberWithLong:v23];
          [v14 addObject:v24];

          [v12 addObject:v21];
        }

        else
        {
          v25 = -[AXPTranslator_iOS _processAttributeSpecialCases:uiElement:error:client:](self, "_processAttributeSpecialCases:uiElement:error:client:", integerValue, v51, &v62, [v48 clientType]);
          if (valueCopy)
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
            intValue = [v36 intValue];
            v38 = [v12 objectAtIndexedSubscript:v33];
            v39 = -[AXPTranslator_iOS _postProcessAttributeRequest:iosAttribute:axpAttribute:result:error:](self, "_postProcessAttributeRequest:iosAttribute:axpAttribute:result:error:", v51, intValue, [v38 intValue], v35, &v62);

            if (valueCopy)
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

- (id)_nilOutEmptyValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [valueCopy count];
LABEL_4:
    v5 = v4 != 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = [valueCopy isEqualToNumber:&unk_284FCBAD8];
LABEL_11:
    v5 = isKindOfClass ^ 1;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [valueCopy length];
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_11;
  }

  v10 = valueCopy;
  if ([v10 length])
  {
    v5 = 1;
  }

  else
  {
    string = [v10 string];
    v5 = [string length] != 0;
  }

LABEL_5:
  if (v5)
  {
    v6 = valueCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)axElementFromTranslatorRequest:(id)request
{
  requestCopy = request;
  v4 = +[AXPTranslator_iOS sharedInstance];
  translation = [requestCopy translation];

  v6 = [v4 createPlatformElementFromTranslationObject:translation];
  v7 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:v6];
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

- (id)processActionRequest:(id)request
{
  requestCopy = request;
  _convertAXPClientToiOS([requestCopy clientType]);
  [(AXPTranslator_iOS *)self _usingCachedTreeForOnenessClient];
  AXOverrideRequestingClientType();
  v5 = _convertAXPActionToiOS([requestCopy actionType]);
  v6 = [(AXPTranslator_iOS *)self axElementFromTranslatorRequest:requestCopy];
  v7 = v6;
  switch(v5)
  {
    case 0x7D3:
      scrollToVisible = [v6 scrollToVisible];
      goto LABEL_7;
    case 0x7E5:
      parameters = [requestCopy parameters];
      v10 = [parameters objectForKeyedSubscript:@"AXPCustomActionIdentifier"];
      v11 = [v7 performAction:2021 withValue:v10];

      break;
    case 0x7DA:
      scrollToVisible = [v6 press];
LABEL_7:
      v11 = scrollToVisible;
      goto LABEL_10;
    default:
      parameters = [requestCopy parameters];
      v11 = [v7 performAction:v5 withValue:parameters];
      break;
  }

LABEL_10:
  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  [v12 setResultData:v13];

  AXOverrideRequestingClientType();

  return v12;
}

- (id)_processParameterizedAttributeRequest:(id)request attribute:(int64_t)attribute parameter:(id)parameter error:(unint64_t *)error
{
  v6 = [request objectWithAXAttribute:attribute parameter:parameter];
  v7 = _AXPConvertOutgoingValueWithDesiredType(v6, 0);

  return v7;
}

- (id)_postProcessAttributeRequest:(id)request iosAttribute:(int64_t)attribute axpAttribute:(unint64_t)axpAttribute result:(id)result error:(unint64_t *)error
{
  v56 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  resultCopy = result;
  v14 = resultCopy;
  v15 = 0x277CCA000uLL;
  if (attribute == 2003 || axpAttribute == 106 || axpAttribute == 5)
  {
    v16 = MEMORY[0x277CCAE60];
    v14 = resultCopy;
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

  if (attribute <= 95226)
  {
    if (attribute == 2180)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![v14 integerValue])
      {
        v40 = [requestCopy objectWithAXAttribute:2001];
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

    if (attribute == 5057)
    {
      intValue = [resultCopy intValue];
      switch(intValue)
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
    if (axpAttribute == 83)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = [(AXPTranslator_iOS *)self _processAuditIssuesResult:v14];

        v14 = v43;
      }

      goto LABEL_19;
    }

    if (axpAttribute == 13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_19;
      }

      errorCopy = error;
      v45 = requestCopy;
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

      error = errorCopy;
      requestCopy = v45;
      v15 = 0x277CCA000;
      axpAttribute = 13;
      v19 = v46;
      goto LABEL_9;
    }

    goto LABEL_58;
  }

  if (attribute == 95227)
  {
    v18 = [(AXPTranslator_iOS *)self _processOutgoingCustomRotorSearchResult:resultCopy];
  }

  else
  {
    if (attribute != 95228)
    {
      goto LABEL_33;
    }

    v18 = [(AXPTranslator_iOS *)self _processCustomRotorData:resultCopy];
  }

LABEL_8:
  v19 = v18;

LABEL_9:
  if (axpAttribute == 47)
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

  if (axpAttribute != 119)
  {
    if (axpAttribute != 92)
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

  intValue2 = [v19 intValue];
  if (intValue2)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInt:intValue2 == 1];
  }

  else
  {

    v14 = 0;
    *error = 3;
  }

LABEL_19:

  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_processOutgoingCustomRotorSearchResult:(id)result
{
  v3 = MEMORY[0x277CBEB38];
  resultCopy = result;
  dictionary = [v3 dictionary];
  v6 = [resultCopy objectForKeyedSubscript:@"targetElement"];
  [dictionary setObject:v6 forKeyedSubscript:@"AXPCustomRotorTargetElement"];

  v7 = [resultCopy objectForKeyedSubscript:@"targetRange"];

  [dictionary setObject:v7 forKeyedSubscript:@"AXPCustomRotorTargetRange"];

  return dictionary;
}

- (id)_processCustomRotorData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy mutableCopy];
  v5 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CE6B40]];
  bOOLValue = [v5 BOOLValue];

  if (!bOOLValue)
  {
    v10 = 0;
    goto LABEL_43;
  }

  v7 = [dataCopy objectForKeyedSubscript:@"name"];
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

- (id)_processDirectAttributeRequest:(id)request iosAttribute:(int64_t)attribute axpAttribute:(unint64_t)axpAttribute parameter:(id)parameter error:(unint64_t *)error
{
  requestCopy = request;
  v13 = requestCopy;
  if (parameter)
  {
    [requestCopy objectWithAXAttribute:attribute parameter:parameter];
  }

  else
  {
    [requestCopy objectWithAXAttribute:attribute];
  }
  v14 = ;
  v15 = _AXPConvertOutgoingValueWithDesiredType(v14, 0);

  v16 = [(AXPTranslator_iOS *)self _postProcessAttributeRequest:v13 iosAttribute:attribute axpAttribute:axpAttribute result:v15 error:error];

  return v16;
}

- (id)_processStartsMediaSessionAttributeRequest:(id)request error:(unint64_t *)error
{
  v4 = [request numberWithAXAttribute:{2004, error}];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  v6 = MEMORY[0x277CCABB0];
  v7 = (*MEMORY[0x277CE6DE0] & ~unsignedLongLongValue) == 0;

  return [v6 numberWithInt:v7];
}

- (id)_processViewControllerDescriptionAttributeRequest:(id)request error:(unint64_t *)error
{
  requestCopy = request;
  v5 = [requestCopy stringWithAXAttribute:5041];
  v6 = [requestCopy stringWithAXAttribute:5042];

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

- (id)_processIsSelectedAttributeRequest:(id)request error:(unint64_t *)error
{
  v4 = [request numberWithAXAttribute:{2004, error}];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  v6 = MEMORY[0x277CCABB0];
  v7 = (*MEMORY[0x277CE6DD0] & ~unsignedLongLongValue) == 0;

  return [v6 numberWithInt:v7];
}

- (id)_processIsRemoteElementAttributeRequest:(id)request error:(unint64_t *)error
{
  v4 = MEMORY[0x277CCABB0];
  [request axElement];
  _AXUIElementIDForElement();

  return [v4 numberWithInt:v5 == 9999];
}

- (id)_processIsEnabledAttributeRequest:(id)request error:(unint64_t *)error
{
  v4 = [request numberWithAXAttribute:{2004, error}];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  v6 = MEMORY[0x277CCABB0];
  v7 = (*MEMORY[0x277CE6D90] & ~unsignedLongLongValue) != 0;

  return [v6 numberWithInt:v7];
}

- (id)_processUserInputLabelsAttributeRequest:(id)request error:(unint64_t *)error axpAttribute:(unint64_t)attribute
{
  requestCopy = request;
  v9 = [requestCopy objectWithAXAttribute:2186];
  if (attribute == 87)
  {
    v10 = 0;
  }

  else
  {
    if (attribute != 88)
    {
      goto LABEL_6;
    }

    v10 = objc_opt_class();
  }

  v11 = _AXPConvertOutgoingValueWithDesiredType(v9, v10);

  v9 = v11;
LABEL_6:
  v12 = [(AXPTranslator_iOS *)self _postProcessAttributeRequest:requestCopy iosAttribute:2186 axpAttribute:attribute result:v9 error:error];

  return v12;
}

- (id)_processBrailleOverrideForAttributeRequest:(id)request error:(unint64_t *)error attribute:(unint64_t)attribute
{
  requestCopy = request;
  v7 = requestCopy;
  if (attribute == 33)
  {
    v8 = 2001;
  }

  else
  {
    if (attribute != 46)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = 2077;
  }

  v9 = [requestCopy objectWithAXAttribute:v8];
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

- (id)_processChildrenAttributeRequest:(id)request error:(unint64_t *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([(AXPTranslator_iOS *)self _usingCachedTree])
  {
    v7 = [requestCopy objectWithAXAttribute:3073];
    v8 = _AXPConvertOutgoingValueWithDesiredType(v7, 0);
  }

  else
  {
    v13 = *MEMORY[0x277CE6B48];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[AXPTranslator_iOS shouldHonorGroupsForElementTraversal](self, "shouldHonorGroupsForElementTraversal")}];
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    v8 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:requestCopy attribute:95236 parameter:v10 error:error];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_processClassNameAttributeRequest:(id)request error:(unint64_t *)error
{
  requestCopy = request;
  if (AXPIsCatalyst())
  {
    v7 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:requestCopy iosAttribute:5045 axpAttribute:7 parameter:0 error:error];
  }

  else
  {
    v7 = 0;
    *error = 3;
  }

  return v7;
}

- (id)_processCellWithIndexPathAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error
{
  requestCopy = request;
  v9 = _AXPiOSParameterFromPlatformParameter(parameter);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 ax_mappedArrayUsingBlock:&__block_literal_global_483];

    v9 = v10;
  }

  v11 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:requestCopy attribute:92600 parameter:v9 error:error];

  return v11;
}

- (id)_processElementHelpAttributeResquest:(id)resquest error:(unint64_t *)error
{
  resquestCopy = resquest;
  v7 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:resquestCopy iosAttribute:2188 axpAttribute:23 parameter:0 error:error];
  if (AXPNilOrEmptyString(v7) && (!AXPIsCatalyst() || AXPLinkedOnOrAfterGozul() && !AXPIsGoodOldAppleCatalystApp()))
  {
    v8 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:resquestCopy iosAttribute:2002 axpAttribute:23 parameter:0 error:error];

    v7 = v8;
  }

  return v7;
}

- (id)_processLinkedUIElementsAttributeRequest:(id)request error:(unint64_t *)error
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:requestCopy iosAttribute:2167 axpAttribute:76 parameter:0 error:error];
  v8 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:requestCopy iosAttribute:2033 axpAttribute:76 parameter:0 error:error];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v7 count])
  {
    v17 = v8;
LABEL_21:
    array = v17;
    goto LABEL_22;
  }

  if (!v8)
  {
    v17 = v7;
    goto LABEL_21;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  array = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 addObjectsFromArray:v7];
    [array addObjectsFromArray:v7];
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
            [array addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_processIndexForTextMarkerAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error
{
  requestCopy = request;
  v7 = _AXPiOSParameterFromPlatformParameter(parameter);
  v8 = [requestCopy objectWithAXAttribute:94012 parameter:v7];

  if (!v8 || (_AXPConvertAXValueRefToNSValue(v8), (v9 = objc_claimAutoreleasedReturnValue()) == 0) || (v10 = v9, v11 = [v9 rangeValue], objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v11), v12 = objc_claimAutoreleasedReturnValue(), v10, !v12))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:0x7FFFFFFFFFFFFFFFLL];
  }

  v13 = _AXPConvertOutgoingValueWithDesiredType(v12, 0);

  return v13;
}

- (id)_processTextInputMarkedRangeAttributeRequest:(id)request error:(unint64_t *)error
{
  requestCopy = request;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v5 = [requestCopy stringWithAXAttribute:2006];
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

- (id)_processZoomAttributeRequest:(BOOL)request axElement:(id)element parameter:(id)parameter error:(unint64_t *)error
{
  requestCopy = request;
  elementCopy = element;
  v9 = _AXPiOSParameterFromPlatformParameter(parameter);
  v10 = MEMORY[0x277CCABB0];
  if (requestCopy)
  {
    v11 = 2001;
  }

  else
  {
    v11 = 2002;
  }

  v12 = [elementCopy performAXAction:v11 withValue:v9];

  v13 = [v10 numberWithBool:v12];
  v14 = _AXPConvertOutgoingValueWithDesiredType(v13, 0);

  return v14;
}

- (id)_processLineRangeAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error
{
  requestCopy = request;
  v7 = _AXPiOSParameterFromPlatformParameter(parameter);
  v8 = [requestCopy objectWithAXAttribute:94009 parameter:v7];

  v9 = _AXPConvertOutgoingValueWithDesiredType(v8, 0);

  return v9;
}

- (id)_processNextLineRangeAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v9 = [(AXPTranslator_iOS *)self _processLineRangeAttributeRequest:requestCopy parameter:parameter error:error];
  v10 = v9;
  if (v9)
  {
    rangeValue = [v9 rangeValue];
    v19 = @"parameter";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12 + rangeValue + 1];
    v20[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v15 = [(AXPTranslator_iOS *)self _processLineRangeAttributeRequest:requestCopy parameter:v14 error:error];

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

- (id)_processPreviousLineRangeAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v9 = [(AXPTranslator_iOS *)self _processLineRangeAttributeRequest:requestCopy parameter:parameter error:error];
  v10 = v9;
  if (v9)
  {
    rangeValue = [v9 rangeValue];
    v18 = @"parameter";
    if (rangeValue)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:rangeValue - 1];
    }

    else
    {
      v12 = &unk_284FCBAD8;
    }

    v19[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = [(AXPTranslator_iOS *)self _processLineRangeAttributeRequest:requestCopy parameter:v14 error:error];

    if (rangeValue)
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

- (id)_processMoveFocusToOpaqueElementAttributeRequest:(id)request parameter:(id)parameter direction:(int64_t)direction error:(unint64_t *)error
{
  v20[6] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  parameterCopy = parameter;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [parameterCopy objectForKeyedSubscript:@"parameter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CE6B38]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [MEMORY[0x277CCABB0] numberWithLong:direction];
        v20[0] = v14;
        v20[1] = &unk_284FCBC88;
        v15 = [MEMORY[0x277CCAE60] valueWithRange:{0x7FFFFFFFLL, 0}];
        v20[2] = v15;
        v20[3] = v13;
        v20[4] = MEMORY[0x277CBEC38];
        v20[5] = MEMORY[0x277CBEC38];
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:6];

        v17 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:requestCopy attribute:95225 parameter:v16 error:error];
      }

      else
      {
        v17 = 0;
        *error = 7;
      }
    }

    else
    {
      v17 = 0;
      *error = 7;
    }
  }

  else
  {
    v17 = 0;
    *error = 7;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_processRawElementDataRequest:(id)request error:(unint64_t *)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  if ([request axElement] && (Data = _AXUIElementCreateData()) != 0)
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

- (id)_processSelectedTextRequest:(id)request error:(unint64_t *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = [requestCopy rangeWithAXAttribute:2005];
  if (v7 != 0x7FFFFFFF && v7 | v8)
  {
    v14 = @"parameter";
    v10 = [MEMORY[0x277CCAE60] valueWithRange:{v7, v8}];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

    v9 = [(AXPTranslator_iOS *)self _processStringForRangeAttributeRequest:requestCopy parameter:v11 error:error];
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

- (id)_processingSmuggledMarzipanRequest:(id)request parameter:(id)parameter error:(unint64_t *)error
{
  requestCopy = request;
  parameterCopy = parameter;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [parameterCopy objectForKeyedSubscript:@"parameter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 objectForKeyedSubscript:@"attribute"];
      intValue = [v11 intValue];

      v13 = [v10 objectForKeyedSubscript:@"parameter"];
      v14 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:requestCopy iosAttribute:intValue axpAttribute:0 parameter:v13 error:error];
    }

    else
    {
      v14 = 0;
      *error = 7;
    }
  }

  else
  {
    v14 = 0;
    *error = 7;
  }

  return v14;
}

- (id)_processValueAttributeRequest:(id)request error:(unint64_t *)error axpAttribute:(unint64_t)attribute useAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  requestCopy = request;
  v11 = [requestCopy objectWithAXAttribute:2006];
  if (attributesCopy)
  {
    v12 = objc_opt_class();
  }

  else
  {
    v12 = 0;
  }

  v13 = _AXPConvertOutgoingValueWithDesiredType(v11, v12);

  if (attribute == 118 || attribute == 53)
  {
    v14 = [requestCopy numberWithAXAttribute:2004];
    unsignedLongLongValue = [v14 unsignedLongLongValue];

    v16 = [(AXPTranslator_iOS *)self _processRoleAttributeRequest:requestCopy traits:unsignedLongLongValue error:error];
    if (v16 == 9)
    {
      [(AXPTranslator_iOS *)self _processIsSelectedAttributeRequest:requestCopy error:error];
      v13 = v17 = v13;
LABEL_12:

      goto LABEL_13;
    }

    if (v16 == 18 || v16 == 13)
    {
      v17 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:requestCopy iosAttribute:5059 axpAttribute:54 parameter:0 error:error];
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
  if (attribute == 118)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v13 = 0;
    }
  }

  return v13;
}

- (id)_processSyntheticStringValueAttributeRequest:(id)request error:(unint64_t *)error
{
  requestCopy = request;
  v7 = [(AXPTranslator_iOS *)self _processValueAttributeRequest:requestCopy error:error axpAttribute:53 useAttributes:0];
  if (AXPNilOrEmptyString(v7))
  {
    v8 = [(AXPTranslator_iOS *)self _processRoleAttributeRequest:requestCopy error:error];
    unsignedIntegerValue = [v8 unsignedIntegerValue];

    if ((unsignedIntegerValue & 0xFFFFFFFFFFFFFFF7) == 6)
    {
      v10 = [(AXPTranslator_iOS *)self _processLabelAttributeRequest:requestCopy error:error axpAttribute:33];

      v7 = v10;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = v7;
LABEL_8:
    v12 = string;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [v7 string];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)_processLabelAttributeRequest:(id)request error:(unint64_t *)error axpAttribute:(unint64_t)attribute
{
  v6 = [request objectWithAXAttribute:{2001, error}];
  if (attribute == 3)
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

- (id)_processNumberOfCharactersAttributeRequest:(id)request error:(unint64_t *)error
{
  v4 = [(AXPTranslator_iOS *)self _processSyntheticStringValueAttributeRequest:request error:error];
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

- (id)_processRoleAttributeRequest:(id)request error:(unint64_t *)error
{
  requestCopy = request;
  [requestCopy axElement];
  if (AXUIElementIsApplication())
  {
    v7 = &unk_284FCBB08;
  }

  else
  {
    v8 = [requestCopy numberWithAXAttribute:2004];
    unsignedLongLongValue = [v8 unsignedLongLongValue];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXPTranslator_iOS _processRoleAttributeRequest:traits:error:](self, "_processRoleAttributeRequest:traits:error:", requestCopy, unsignedLongLongValue, error)}];
  }

  return v7;
}

- (unint64_t)_processRoleAttributeRequest:(id)request traits:(unint64_t)traits error:(unint64_t *)error
{
  requestCopy = request;
  if ([requestCopy BOOLWithAXAttribute:5020] && !objc_msgSend(requestCopy, "BOOLWithAXAttribute:", 2016))
  {
    v9 = 5;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6DB0] & ~traits) == 0 || (*MEMORY[0x277CE6DF0] & ~traits) == 0)
  {
    v9 = 9;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6E70] & ~traits) == 0)
  {
    v9 = 3;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6DA0] & ~traits) == 0)
  {
    v9 = 19;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6D00] & ~traits) == 0 || (*MEMORY[0x277CE6D68] & ~traits) == 0 || (*MEMORY[0x277CE6D70] & ~traits) == 0)
  {
    v10 = _AXPElementIsTabButton(requestCopy, traits) == 0;
    v11 = 9;
    v12 = 2;
    goto LABEL_15;
  }

  if ((*MEMORY[0x277CE6D50] & ~traits) == 0)
  {
    v9 = 6;
    goto LABEL_18;
  }

  if (!AXPIsSwiftPlaygrounds() && (*MEMORY[0x277CE6E00] & ~traits) == 0 && (*MEMORY[0x277CE6E68] & ~traits) == 0)
  {
    goto LABEL_24;
  }

  if ((*MEMORY[0x277CE6D78] & ~traits) == 0)
  {
    v9 = 8;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6D58] & ~traits) == 0 || (*MEMORY[0x277CE6DA8] & ~traits) == 0 || (*MEMORY[0x277CE6D80] & ~traits) == 0)
  {
    v9 = 7;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6DE8] & ~traits) == 0)
  {
    v9 = 14;
    goto LABEL_18;
  }

  if (!AXPIsSwiftPlaygrounds() && (*MEMORY[0x277CE6E00] & ~traits) == 0)
  {
    goto LABEL_24;
  }

  if ((*MEMORY[0x277CE6E08] & ~traits) == 0)
  {
    v9 = 15;
    goto LABEL_18;
  }

  if ((*MEMORY[0x277CE6CB8] & ~traits) != 0)
  {
    if ([requestCopy BOOLWithAXAttribute:5056])
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
    if ((*MEMORY[0x277CE6E00] & ~traits) != 0 || (v14 & traits) != v14)
    {
LABEL_46:
      v15 = [MEMORY[0x277CE6BA0] elementWithUIElement:requestCopy];
      containerType = [v15 containerType];
      if ((v14 & ~traits) == 0 && !containerType)
      {
        v17 = [(AXPTranslator_iOS *)self _processChildrenAttributeRequest:requestCopy error:error];
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

      if (containerType > 1023)
      {
        switch(containerType)
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
        switch(containerType)
        {
          case 0:
LABEL_57:
            if ([requestCopy BOOLWithAXAttribute:2016])
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

  v10 = (*MEMORY[0x277CE6DD8] & ~traits) == 0;
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

- (id)_processRoleDescriptionAttributeRequest:(id)request error:(unint64_t *)error
{
  requestCopy = request;
  v7 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:requestCopy iosAttribute:2077 axpAttribute:46 parameter:0 error:error];
  if (AXPNilOrEmptyString(v7))
  {
    v8 = [requestCopy numberWithAXAttribute:2004];
    unsignedLongLongValue = [v8 unsignedLongLongValue];

    if ((*MEMORY[0x277CE6CF8] & ~unsignedLongLongValue) == 0)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.accessibility.AccessibilityPlatformTranslation"];
      v11 = [v10 localizedStringForKey:@"back.button.role.description" value:&stru_284FC8428 table:@"Localizable"];
      goto LABEL_4;
    }

    if (([(AXPTranslator_iOS *)self _processRoleAttributeRequest:requestCopy traits:unsignedLongLongValue error:error]& 0xFFFFFFFFFFFFFFEFLL) == 5)
    {
      v10 = [MEMORY[0x277CE6BA0] elementWithUIElement:requestCopy];
      containerType = [v10 containerType];
      v13 = containerType;
      if ((containerType & 2) != 0)
      {
        v14 = @"container.role.description.table";
      }

      else if ((containerType & 4) != 0)
      {
        v14 = @"container.role.description.list";
      }

      else if (containerType)
      {
        v14 = @"container.role.description.landmark";
      }

      else if ((containerType & 8) != 0)
      {
        v14 = @"container.role.description.fieldset";
      }

      else if ((containerType & 0x10) != 0)
      {
        v14 = @"container.role.description.dialog";
      }

      else if ((containerType & 0x20) != 0)
      {
        v14 = @"container.role.description.tree";
      }

      else if ((containerType & 0x40) != 0)
      {
        v14 = @"container.role.description.frame";
      }

      else if ((containerType & 0x80) != 0)
      {
        v14 = @"container.role.description.article";
      }

      else if ((containerType & 0x1000) != 0)
      {
        v14 = @"container.role.description.dataseries";
      }

      else
      {
        if ((containerType & 0x2000) == 0)
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

- (id)_processBoundsForRangeAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error
{
  requestCopy = request;
  parameterCopy = parameter;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [parameterCopy objectForKeyedSubscript:@"parameter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([requestCopy BOOLWithAXAttribute:2301])
      {
        v10 = 92703;
      }

      else
      {
        v10 = 92506;
      }

      v11 = [requestCopy objectWithAXAttribute:v10 parameter:v9];
      v12 = _AXPConvertOutgoingValueWithDesiredType(v11, 0);
    }

    else
    {
      v12 = 0;
      *error = 7;
    }
  }

  else
  {
    v12 = 0;
    *error = 7;
  }

  return v12;
}

- (id)_processVisibleTextRangeAttributeRequest:(id)request error:(unint64_t *)error
{
  requestCopy = request;
  if ([requestCopy rangeWithAXAttribute:2216] == 0x7FFFFFFF && objc_msgSend(requestCopy, "BOOLWithAXAttribute:", 2025))
  {
    v7 = [(AXPTranslator_iOS *)self _processSyntheticStringValueAttributeRequest:requestCopy error:error];
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

- (id)_processAuditIssuesAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error
{
  selfCopy = self;
  errorCopy = error;
  v35 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  parameterCopy = parameter;
  v7 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = parameterCopy;
  v8 = _AXPiOSParameterFromPlatformParameter(parameterCopy);
  allKeys = [v8 allKeys];

  v10 = [allKeys countByEnumeratingWithState:&v28 objects:v34 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v32 = v13;
        v33 = v14;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:{1, selfCopy, errorCopy, v26}];
        [v7 setObject:v17 forKeyedSubscript:v16];
      }

      v11 = [allKeys countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v11);
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:AXPIsCatalyst()];
  [v7 setObject:v18 forKeyedSubscript:*MEMORY[0x277CE6B28]];

  v19 = [requestCopy objectWithAXAttribute:95005 parameter:v7];
  v20 = _AXPConvertOutgoingValueWithDesiredType(v19, 0);
  v21 = [(AXPTranslator_iOS *)selfCopy _postProcessAttributeRequest:requestCopy iosAttribute:95005 axpAttribute:83 result:v20 error:errorCopy];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_processAttributedStringForRangeAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error
{
  requestCopy = request;
  v9 = _AXPiOSParameterFromPlatformParameter(parameter);
  v10 = [requestCopy objectWithAXAttribute:92508 parameter:v9];
  v11 = 0x277CCA000uLL;
  if (!v10 || ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && ![v10 length])
  {
    v12 = [(AXPTranslator_iOS *)self _processRoleAttributeRequest:requestCopy error:error];
    unsignedIntegerValue = [v12 unsignedIntegerValue];

    if ((unsignedIntegerValue & 0xFFFFFFFFFFFFFFF7) == 6)
    {
      v14 = [requestCopy objectWithAXAttribute:2001];
      rangeValue = [v9 rangeValue];
      v17 = v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (rangeValue + v17 <= [v14 length])
        {
          v18 = [v14 substringWithRange:{rangeValue, v17}];
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

        if (rangeValue + v17 <= [v14 length])
        {
          v18 = [v14 attributedSubstringFromRange:{rangeValue, v17}];
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
  v22 = [(AXPTranslator_iOS *)self _postProcessAttributeRequest:requestCopy iosAttribute:92508 axpAttribute:4 result:v21 error:error];

  v23 = *(v11 + 3240);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v22];

    v22 = v24;
  }

  return v22;
}

- (id)_processStringForRangeAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error
{
  requestCopy = request;
  v9 = _AXPiOSParameterFromPlatformParameter(parameter);
  v10 = [requestCopy objectWithAXAttribute:92505 parameter:v9];
  if (!v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(AXPTranslator_iOS *)self _processSyntheticStringValueAttributeRequest:requestCopy error:error];
      rangeValue = [v9 rangeValue];
      v14 = v13;
      if (rangeValue + v13 <= [v11 length])
      {
        v10 = [v11 substringWithRange:{rangeValue, v14}];
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
  v16 = [(AXPTranslator_iOS *)self _postProcessAttributeRequest:requestCopy iosAttribute:92505 axpAttribute:50 result:v15 error:error];

  return v16;
}

- (id)_processSubroleAttributeRequest:(id)request error:(unint64_t *)error
{
  requestCopy = request;
  v5 = [requestCopy numberWithAXAttribute:2004];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = [requestCopy numberWithAXAttribute:2048];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = &unk_284FCBAF0;
  if ((*MEMORY[0x277CE6DB0] & ~unsignedLongLongValue) != 0)
  {
    if ((*MEMORY[0x277CE6DF0] & ~unsignedLongLongValue) == 0)
    {
      goto LABEL_3;
    }

    if ((*MEMORY[0x277CE6E70] & ~unsignedLongLongValue) == 0 && ![requestCopy BOOLWithAXAttribute:2232])
    {
      v9 = &unk_284FCBBE0;
      goto LABEL_16;
    }

    if ((*MEMORY[0x277CE6D80] & ~unsignedLongLongValue) == 0)
    {
      v9 = &unk_284FCBB68;
      goto LABEL_16;
    }

    if ((*MEMORY[0x277CE6DC8] & ~unsignedLongLongValue) == 0)
    {
      v9 = &unk_284FCBB80;
      goto LABEL_16;
    }

    if ((*MEMORY[0x277CE6DC0] & ~unsignedLongLongValue) == 0)
    {
      v9 = &unk_284FCBB08;
      goto LABEL_16;
    }

    if (_AXPElementIsTabButton(requestCopy, unsignedLongLongValue))
    {
LABEL_3:
      v9 = &unk_284FCBB20;
    }

    else if (unsignedIntegerValue)
    {
      v9 = &unk_284FCBB98;
    }
  }

LABEL_16:

  return v9;
}

- (id)_processCustomActionsAttributeRequest:(id)request error:(unint64_t *)error
{
  requestCopy = request;
  v7 = [requestCopy arrayWithAXAttribute:2036];
  v8 = [(AXPTranslator_iOS *)self _postProcessAttributeRequest:requestCopy iosAttribute:0 axpAttribute:13 result:v7 error:error];

  return v8;
}

- (id)_processFirstContainedElement:(id)element parameter:(id)parameter error:(unint64_t *)error
{
  v20[2] = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v9 = MEMORY[0x277CBEB38];
  v19[0] = *MEMORY[0x277CE6B48];
  v10 = MEMORY[0x277CCABB0];
  parameterCopy = parameter;
  v12 = [v10 numberWithBool:{-[AXPTranslator_iOS shouldHonorGroupsForElementTraversal](self, "shouldHonorGroupsForElementTraversal")}];
  v19[1] = *MEMORY[0x277CE6B50];
  v20[0] = v12;
  v20[1] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v14 = [v9 dictionaryWithDictionary:v13];

  v15 = _AXPiOSParameterFromPlatformParameter(parameterCopy);

  if (v15)
  {
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277CE6B38]];
  }

  v16 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:elementCopy attribute:95230 parameter:v14 error:error];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_processFocusedElementAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error
{
  requestCopy = request;
  parameterCopy = parameter;
  v10 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:requestCopy iosAttribute:3002 axpAttribute:19 parameter:parameterCopy error:error];
  if (!v10)
  {
    v10 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:requestCopy iosAttribute:3027 axpAttribute:19 parameter:parameterCopy error:error];
  }

  return v10;
}

- (id)_processIsFocusedAttributeRequest:(id)request parameter:(id)parameter error:(unint64_t *)error
{
  requestCopy = request;
  parameterCopy = parameter;
  v10 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:requestCopy iosAttribute:2198 axpAttribute:28 parameter:parameterCopy error:error];
  if (([v10 BOOLValue] & 1) == 0)
  {
    v11 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:requestCopy iosAttribute:2094 axpAttribute:28 parameter:parameterCopy error:error];

    v10 = v11;
  }

  return v10;
}

- (id)_processLastContainedElement:(id)element parameter:(id)parameter error:(unint64_t *)error
{
  v20[2] = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v9 = MEMORY[0x277CBEB38];
  v19[0] = *MEMORY[0x277CE6B48];
  v10 = MEMORY[0x277CCABB0];
  parameterCopy = parameter;
  v12 = [v10 numberWithBool:{-[AXPTranslator_iOS shouldHonorGroupsForElementTraversal](self, "shouldHonorGroupsForElementTraversal")}];
  v19[1] = *MEMORY[0x277CE6B50];
  v20[0] = v12;
  v20[1] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v14 = [v9 dictionaryWithDictionary:v13];

  v15 = _AXPiOSParameterFromPlatformParameter(parameterCopy);

  if (v15)
  {
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277CE6B38]];
  }

  v16 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:elementCopy attribute:95231 parameter:v14 error:error];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_processFirstElementForFocus:(id)focus parameter:(id)parameter error:(unint64_t *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277CE6B48];
  v7 = MEMORY[0x277CCABB0];
  focusCopy = focus;
  v9 = [v7 numberWithBool:{-[AXPTranslator_iOS shouldHonorGroupsForElementTraversal](self, "shouldHonorGroupsForElementTraversal")}];
  v15[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v11 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:focusCopy attribute:95250 parameter:v10 error:error];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_processVisibleOpaqueElements:(id)elements error:(unint64_t *)error
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277CE6B48];
  v6 = MEMORY[0x277CCABB0];
  elementsCopy = elements;
  v8 = [v6 numberWithBool:{-[AXPTranslator_iOS shouldHonorGroupsForElementTraversal](self, "shouldHonorGroupsForElementTraversal")}];
  v13[1] = *MEMORY[0x277CE6B58];
  v14[0] = v8;
  v14[1] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = [(AXPTranslator_iOS *)self _processParameterizedAttributeRequest:elementsCopy attribute:95249 parameter:v9 error:error];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_processAttributeSpecialCases:(unint64_t)cases uiElement:(id)element parameter:(id)parameter error:(unint64_t *)error client:(unint64_t)client
{
  elementCopy = element;
  parameterCopy = parameter;
  v14 = 0;
  if (cases <= 107)
  {
    switch(cases)
    {
      case 3uLL:
        selfCopy2 = self;
        v32 = elementCopy;
        errorCopy2 = error;
        v34 = 3;
        goto LABEL_47;
      case 4uLL:
        v15 = [(AXPTranslator_iOS *)self _processAttributedStringForRangeAttributeRequest:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 5uLL:
        v15 = [(AXPTranslator_iOS *)self _processBoundsForRangeAttributeRequest:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 7uLL:
        v15 = [(AXPTranslator_iOS *)self _processClassNameAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 8uLL:
      case 9uLL:
        v15 = [(AXPTranslator_iOS *)self _processChildrenAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 0xDuLL:
        v15 = [(AXPTranslator_iOS *)self _processCustomActionsAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x12uLL:
        v15 = [(AXPTranslator_iOS *)self _processFirstContainedElement:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 0x13uLL:
        v15 = [(AXPTranslator_iOS *)self _processFocusedElementAttributeRequest:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 0x17uLL:
        v15 = [(AXPTranslator_iOS *)self _processElementHelpAttributeResquest:elementCopy error:error];
        goto LABEL_66;
      case 0x1BuLL:
        v15 = [(AXPTranslator_iOS *)self _processIsEnabledAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x1CuLL:
        v15 = [(AXPTranslator_iOS *)self _processIsFocusedAttributeRequest:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 0x1EuLL:
        v15 = [(AXPTranslator_iOS *)self _processIsSelectedAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x21uLL:
        selfCopy2 = self;
        v32 = elementCopy;
        errorCopy2 = error;
        v34 = 33;
LABEL_47:
        v15 = [(AXPTranslator_iOS *)selfCopy2 _processLabelAttributeRequest:v32 error:errorCopy2 axpAttribute:v34];
        goto LABEL_66;
      case 0x22uLL:
        v15 = [(AXPTranslator_iOS *)self _processLastContainedElement:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 0x23uLL:
        selfCopy4 = self;
        v24 = elementCopy;
        v25 = parameterCopy;
        v26 = 1;
        goto LABEL_50;
      case 0x24uLL:
        selfCopy4 = self;
        v24 = elementCopy;
        v25 = parameterCopy;
        v26 = 2;
LABEL_50:
        v15 = [(AXPTranslator_iOS *)selfCopy4 _processMoveFocusToOpaqueElementAttributeRequest:v24 parameter:v25 direction:v26 error:error];
        goto LABEL_66;
      case 0x26uLL:
        v15 = [(AXPTranslator_iOS *)self _processNumberOfCharactersAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x2DuLL:
        v15 = [(AXPTranslator_iOS *)self _processRoleAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x2EuLL:
        v15 = [(AXPTranslator_iOS *)self _processRoleDescriptionAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x31uLL:
        v15 = [(AXPTranslator_iOS *)self _processStartsMediaSessionAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x32uLL:
        v15 = [(AXPTranslator_iOS *)self _processStringForRangeAttributeRequest:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 0x33uLL:
        v15 = [(AXPTranslator_iOS *)self _processSubroleAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x35uLL:
        selfCopy13 = self;
        v19 = elementCopy;
        errorCopy9 = error;
        v21 = 53;
        goto LABEL_21;
      case 0x3AuLL:
        v15 = [(AXPTranslator_iOS *)self _processVisibleOpaqueElements:elementCopy error:error];
        goto LABEL_66;
      case 0x3BuLL:
        v15 = [(AXPTranslator_iOS *)self _processingSmuggledMarzipanRequest:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 0x3CuLL:
        v15 = [(AXPTranslator_iOS *)self _processRawElementDataRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x40uLL:
        selfCopy13 = self;
        v19 = elementCopy;
        errorCopy9 = error;
        v21 = 64;
LABEL_21:
        v22 = 0;
        goto LABEL_22;
      case 0x42uLL:
        v15 = [(AXPTranslator_iOS *)self _processIsRemoteElementAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x48uLL:
        v15 = [(AXPTranslator_iOS *)self _processLineRangeAttributeRequest:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 0x4AuLL:
        v15 = [(AXPTranslator_iOS *)self _processNextLineRangeAttributeRequest:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 0x4BuLL:
        v15 = [(AXPTranslator_iOS *)self _processPreviousLineRangeAttributeRequest:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 0x4CuLL:
        v15 = [(AXPTranslator_iOS *)self _processLinkedUIElementsAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x52uLL:
        v15 = [(AXPTranslator_iOS *)self _processViewControllerDescriptionAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x53uLL:
        v15 = [(AXPTranslator_iOS *)self _processAuditIssuesAttributeRequest:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 0x55uLL:
        v15 = [(AXPTranslator_iOS *)self _processFirstElementForFocus:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      case 0x56uLL:
        v15 = [(AXPTranslator_iOS *)self _processSelectedTextRequest:elementCopy error:error];
        goto LABEL_66;
      case 0x57uLL:
        selfCopy8 = self;
        v28 = elementCopy;
        errorCopy6 = error;
        v30 = 87;
        goto LABEL_30;
      case 0x58uLL:
        selfCopy8 = self;
        v28 = elementCopy;
        errorCopy6 = error;
        v30 = 88;
LABEL_30:
        v15 = [(AXPTranslator_iOS *)selfCopy8 _processUserInputLabelsAttributeRequest:v28 error:errorCopy6 axpAttribute:v30];
        goto LABEL_66;
      case 0x5CuLL:
        v15 = [(AXPTranslator_iOS *)self _processVisibleTextRangeAttributeRequest:elementCopy error:error];
        goto LABEL_66;
      default:
        goto LABEL_67;
    }
  }

  if (cases <= 117)
  {
    switch(cases)
    {
      case 'l':
        selfCopy10 = self;
        v36 = elementCopy;
        errorCopy8 = error;
        v38 = 33;
        break;
      case 'm':
        selfCopy10 = self;
        v36 = elementCopy;
        errorCopy8 = error;
        v38 = 46;
        break;
      case 'o':
        v15 = [(AXPTranslator_iOS *)self _processIndexForTextMarkerAttributeRequest:elementCopy parameter:parameterCopy error:error];
        goto LABEL_66;
      default:
        goto LABEL_67;
    }

    v15 = [(AXPTranslator_iOS *)selfCopy10 _processBrailleOverrideForAttributeRequest:v36 error:errorCopy8 attribute:v38];
LABEL_66:
    v14 = v15;
    goto LABEL_67;
  }

  if (cases > 121)
  {
    if (cases != 122)
    {
      if (cases != 123)
      {
        goto LABEL_67;
      }

      v15 = [(AXPTranslator_iOS *)self _processTextInputMarkedRangeAttributeRequest:elementCopy error:error];
      goto LABEL_66;
    }

    selfCopy12 = self;
    v17 = 0;
    goto LABEL_65;
  }

  if (cases != 118)
  {
    if (cases != 121)
    {
      goto LABEL_67;
    }

    selfCopy12 = self;
    v17 = 1;
LABEL_65:
    v15 = [(AXPTranslator_iOS *)selfCopy12 _processZoomAttributeRequest:v17 axElement:elementCopy parameter:parameterCopy error:error];
    goto LABEL_66;
  }

  if (client == 7)
  {
    selfCopy13 = self;
    v19 = elementCopy;
    errorCopy9 = error;
    v21 = 118;
    v22 = 1;
LABEL_22:
    v15 = [(AXPTranslator_iOS *)selfCopy13 _processValueAttributeRequest:v19 error:errorCopy9 axpAttribute:v21 useAttributes:v22];
    goto LABEL_66;
  }

  v14 = 0;
LABEL_67:

  return v14;
}

- (id)processCanSetAttribute:(id)attribute
{
  attributeCopy = attribute;
  _convertAXPClientToiOS([attributeCopy clientType]);
  AXOverrideRequestingClientType();
  v5 = objc_opt_new();
  v6 = [(AXPTranslator_iOS *)self axElementFromTranslatorRequest:attributeCopy];
  attributeType = [attributeCopy attributeType];

  if (attributeType > 46)
  {
    if (attributeType == 53)
    {
      traits = [v6 traits];
      v15 = (*MEMORY[0x277CE6D60] & ~traits) == 0;
      v16 = (*MEMORY[0x277CE6CB8] & ~traits) == 0 || (*MEMORY[0x277CE6E08] & ~traits) == 0;
      if ((*MEMORY[0x277CE6CB8] & ~traits) == 0)
      {
        v15 = 1;
      }

      v17 = (*MEMORY[0x277CE6D90] & ~traits) == 0;
      v13 = MEMORY[0x277CCABB0];
      if (v17)
      {
        v16 = 0;
      }

      v12 = v15 | v16;
    }

    else
    {
      if (attributeType != 47)
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
    if (attributeType == 2)
    {
      [v5 setResultData:MEMORY[0x277CBEC38]];
      goto LABEL_22;
    }

    if (attributeType != 28)
    {
      goto LABEL_22;
    }

    uiElement = [v6 uiElement];
    if ([uiElement BOOLWithAXAttribute:2204])
    {
      v9 = 1;
    }

    else
    {
      uiElement2 = [v6 uiElement];
      v9 = [uiElement2 BOOLWithAXAttribute:3002];
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  }

  v20 = v18;
  [v5 setResultData:v18];

LABEL_22:
  AXOverrideRequestingClientType();

  return v5;
}

- (id)processSetAttribute:(id)attribute
{
  attributeCopy = attribute;
  _convertAXPClientToiOS([attributeCopy clientType]);
  AXOverrideRequestingClientType();
  v5 = [(AXPTranslator_iOS *)self axElementFromTranslatorRequest:attributeCopy];
  attributeType = [attributeCopy attributeType];
  if (attributeType > 52)
  {
    switch(attributeType)
    {
      case '5':
        uiElement = [v5 uiElement];
        parameters = [attributeCopy parameters];
        uiElement3 = [parameters objectForKeyedSubscript:@"value"];
        [uiElement setAXAttribute:2006 withString:uiElement3];
LABEL_14:

        goto LABEL_21;
      case 'b':
        parameters2 = [attributeCopy parameters];
        uiElement = [parameters2 objectForKeyedSubscript:@"value"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_22;
        }

        uiElement2 = [v5 uiElement];
        parameters = uiElement2;
        v14 = 2708;
        break;
      case 'a':
        parameters3 = [attributeCopy parameters];
        uiElement = [parameters3 objectForKeyedSubscript:@"value"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_22;
        }

        uiElement2 = [v5 uiElement];
        parameters = uiElement2;
        v14 = 2716;
        break;
      default:
        goto LABEL_23;
    }

    [uiElement2 setAXAttribute:v14 withNumber:uiElement];
    goto LABEL_21;
  }

  switch(attributeType)
  {
    case 2:
      uiElement = [v5 uiElement];
      parameters = [attributeCopy parameters];
      [uiElement setAXAttribute:2018 withObject:parameters];
LABEL_21:

      goto LABEL_22;
    case 28:
      parameters4 = [attributeCopy parameters];
      uiElement = [parameters4 objectForKeyedSubscript:@"focused"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([uiElement BOOLValue])
        {
          [v5 setNativeFocus];
          goto LABEL_22;
        }

        parameters = [v5 uiElement];
        uiElement3 = [v5 uiElement];
        [parameters setAXAttribute:3002 withUIElement:uiElement3];
        goto LABEL_14;
      }

LABEL_22:

      break;
    case 47:
      parameters5 = [attributeCopy parameters];
      uiElement = [parameters5 objectForKeyedSubscript:@"range"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        rangeValue = [uiElement rangeValue];
        [v5 setSelectedTextRange:{rangeValue, v10}];
      }

      goto LABEL_22;
  }

LABEL_23:
  AXOverrideRequestingClientType();

  return 0;
}

- (id)processSupportedActions:(id)actions
{
  v22 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  _convertAXPClientToiOS([actionsCopy clientType]);
  AXOverrideRequestingClientType();
  v5 = objc_opt_new();
  v6 = [(AXPTranslator_iOS *)self axElementFromTranslatorRequest:actionsCopy];
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  parameters = [actionsCopy parameters];
  v9 = [parameters objectForKeyedSubscript:@"actions"];

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

- (id)processSupportsAttributes:(id)attributes
{
  v28 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  _convertAXPClientToiOS([attributesCopy clientType]);
  AXOverrideRequestingClientType();
  v22 = objc_opt_new();
  v5 = [(AXPTranslator_iOS *)self axElementFromTranslatorRequest:attributesCopy];
  v6 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  parameters = [attributesCopy parameters];
  v8 = [parameters objectForKeyedSubscript:@"attributes"];

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
        integerValue = [v13 integerValue];
        if (integerValue == 96)
        {
          v15 = MEMORY[0x277CCABB0];
          uiElement = [v5 uiElement];
          v17 = uiElement;
          v18 = 2713;
          goto LABEL_10;
        }

        if (integerValue == 81)
        {
          v15 = MEMORY[0x277CCABB0];
          uiElement = [v5 uiElement];
          v17 = uiElement;
          v18 = 2317;
LABEL_10:
          v19 = [v15 numberWithBool:{objc_msgSend(uiElement, "BOOLWithAXAttribute:", v18)}];
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

- (id)_preprocessRequest:(int64_t)request parameter:(id)parameter
{
  parameterCopy = parameter;
  if (request == 92516)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [parameterCopy objectForKey:@"AXStartElement"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [parameterCopy mutableCopy];
        v20 = +[AXPTranslator_iOS sharedInstance];
        v21 = [v20 createPlatformElementFromTranslationObject:v18];

        [v19 setObject:v21 forKeyedSubscript:@"AXStartElement"];
        parameterCopy = v19;
      }
    }

    goto LABEL_15;
  }

  if (request != 95227 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_15:
    dictionary = parameterCopy;
    goto LABEL_16;
  }

  v6 = [parameterCopy objectForKey:@"AXPCustomRotorTargetElement"];
  v7 = [parameterCopy objectForKey:@"AXPCustomRotorTargetRange"];
  v8 = [parameterCopy objectForKey:@"AXPCustomRotorDirection"];
  intValue = [v8 intValue];

  v10 = [parameterCopy objectForKey:@"AXPCustomRotorUUID"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:v10 forKeyedSubscript:@"uuid"];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:intValue != 1];
  [dictionary setObject:v12 forKeyedSubscript:@"direction"];

  v13 = +[AXPTranslator_iOS sharedInstance];
  v14 = [v13 createPlatformElementFromTranslationObject:v6];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary2 setObject:v14 forKeyedSubscript:@"targetElement"];
  if (v14)
  {
    CFRelease(v14);
  }

  if (v7)
  {
    rangeValue = [v7 rangeValue];
    v24 = v16;
    if (rangeValue != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = AXValueCreate(kAXValueTypeCFRange, &rangeValue);
      [dictionary2 setObject:v17 forKeyedSubscript:{@"targetRange", rangeValue, v24}];
      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  [dictionary setObject:dictionary2 forKeyedSubscript:{@"currentItem", rangeValue, v24}];

LABEL_16:

  return dictionary;
}

- (id)processAttributeRequest:(id)request
{
  requestCopy = request;
  translation = [requestCopy translation];
  _convertAXPClientToiOS([requestCopy clientType]);
  AXOverrideRequestingClientType();
  v6 = [(AXPTranslator_iOS *)self createPlatformElementFromTranslationObject:translation];
  v7 = MEMORY[0x277CE6BB0];
  v8 = objc_opt_new();
  v9 = [v7 uiElementWithAXElement:v6 cache:v8];

  v10 = objc_opt_new();
  attributeType = [requestCopy attributeType];
  [v10 setAttribute:attributeType];
  v26 = 0;
  parameters = [requestCopy parameters];
  v13 = -[AXPTranslator_iOS _processAttributeSpecialCases:uiElement:parameter:error:client:](self, "_processAttributeSpecialCases:uiElement:parameter:error:client:", attributeType, v9, parameters, &v26, [requestCopy clientType]);
  [v10 setResultData:v13];

  resultData = [v10 resultData];

  if (!resultData)
  {
    parameters2 = [requestCopy parameters];
    parameters3 = [parameters2 objectForKeyedSubscript:@"parameter"];

    if (!parameters3)
    {
      parameters3 = [requestCopy parameters];
    }

    if ([requestCopy attributeType] == 63)
    {
      if (objc_opt_respondsToSelector())
      {
        longValue = [parameters3 longValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = parameters3;
          v21 = _AXPConvertAXAttribute(v20);
          if (v21)
          {
            longValue = v21;
          }

          else
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"k%@Attribute", v20];
            longValue = _AXPConvertAXAttribute(v24);

            if (!longValue)
            {
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"kAX%@Attribute", v20];
              longValue = _AXPConvertAXAttribute(v25);
            }
          }
        }

        else
        {
          longValue = 0;
        }
      }

      parameters3 = 0;
      if (!longValue)
      {
        goto LABEL_17;
      }
    }

    else
    {
      longValue = [(AXPTranslator_iOS *)self attributeFromRequest:attributeType];
      if (!longValue)
      {
LABEL_17:
        v26 = -25205;
        goto LABEL_18;
      }
    }

    v18 = [(AXPTranslator_iOS *)self _preprocessRequest:longValue parameter:parameters3];

    v19 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:v9 iosAttribute:longValue axpAttribute:attributeType parameter:v18 error:&v26];
    [v10 setResultData:v19];

    parameters3 = v18;
LABEL_18:
  }

  [v10 setError:v26];
  translation2 = [requestCopy translation];
  [v10 setAssociatedTranslationObject:translation2];

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

    systemWideElement = [(AXPTranslator_iOS *)self systemWideElement];
    *v14 = 0;
    v6 = [(AXPTranslator_iOS *)self _processDirectAttributeRequest:systemWideElement iosAttribute:1001 axpAttribute:0 parameter:0 error:v14];
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

- (id)processApplicationObject:(id)object
{
  objectCopy = object;
  _convertAXPClientToiOS([objectCopy clientType]);
  AXOverrideRequestingClientType();
  parameters = [objectCopy parameters];

  v6 = [parameters objectForKeyedSubscript:@"pid"];

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

- (id)_processApplicationOrientationForTreeDump:(id)dump
{
  dumpCopy = dump;
  _convertAXPClientToiOS([dumpCopy clientType]);
  AXOverrideRequestingClientType();
  systemAppElement = [(AXPTranslator_iOS *)self systemAppElement];
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
  v6 = systemAppElement;
  v15 = v6;
  selfCopy = self;
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

- (id)processFrontMostApp:(id)app withiOSAttribute:(int64_t)attribute
{
  appCopy = app;
  _convertAXPClientToiOS([appCopy clientType]);
  AXOverrideRequestingClientType();
  systemAppElement = [(AXPTranslator_iOS *)self systemAppElement];
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
  v8 = systemAppElement;
  v20 = &v22;
  attributeCopy = attribute;
  v17 = v8;
  selfCopy = self;
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
  firstObject = [v27[5] firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [firstObject intValue];
    AppElementWithPid = _AXUIElementCreateAppElementWithPid();
    firstObject2 = [(AXPTranslator_iOS *)self translationObjectFromPlatformElement:AppElementWithPid];
    [v11 setResultData:firstObject2];
    if (AppElementWithPid)
    {
      CFRelease(AppElementWithPid);
    }
  }

  else
  {
    firstObject2 = [v27[5] firstObject];
    [v11 setResultData:firstObject2];
  }

  AXOverrideRequestingClientType();
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v11;
}

- (void)setRequestResolvingBehavior:(unint64_t)behavior
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[AXPTranslator_iOS setRequestResolvingBehavior:]";
    v10 = 2048;
    behaviorCopy = behavior;
    _os_log_impl(&dword_23D766000, v5, OS_LOG_TYPE_INFO, "%s: %lu", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = AXPTranslator_iOS;
  [(AXPTranslator *)&v7 setRequestResolvingBehavior:behavior];
  [(AXPTranslator_iOS *)self setShouldHonorGroupsForElementTraversal:[(AXPTranslator_iOS *)self _usingCachedTree]^ 1];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_usingCachedTree
{
  requestResolvingBehavior = [(AXPTranslator *)self requestResolvingBehavior];
  if (requestResolvingBehavior != 1)
  {
    LOBYTE(requestResolvingBehavior) = [(AXPTranslator *)self requestResolvingBehavior]== 2;
  }

  return requestResolvingBehavior;
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

  axTreeDumpLock = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [axTreeDumpLock lock];

  [(AXPTranslator_iOS *)self setShouldStopGeneratingAXTree:1];
  axTreeDumpLock2 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [axTreeDumpLock2 unlock];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchNextSetOfElementAttrsOnBackgroundThreadWithEarlyTermination:(BOOL)termination
{
  terminationCopy = termination;
  axTreeDumpSharedBackgroundQueue = [(AXPTranslator_iOS *)self axTreeDumpSharedBackgroundQueue];
  dispatch_assert_queue_V2(axTreeDumpSharedBackgroundQueue);

  axTreeDumpLock = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [axTreeDumpLock lock];

  axTreeDumpCurrentChildIndex = [(AXPTranslator_iOS *)self axTreeDumpCurrentChildIndex];
  axTreeDumpCurrentlyProcessingChildren = [(AXPTranslator_iOS *)self axTreeDumpCurrentlyProcessingChildren];
  v9 = [axTreeDumpCurrentlyProcessingChildren count];

  axTreeDumpLock2 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [axTreeDumpLock2 unlock];

  if (terminationCopy || axTreeDumpCurrentChildIndex >= v9)
  {
    v19 = objc_opt_new();
    [v19 setAssociatedRequestType:11];
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    axTreeDumpLock3 = [(AXPTranslator_iOS *)self axTreeDumpLock];
    [axTreeDumpLock3 lock];

    axTreeDumpCurrentOutput = [(AXPTranslator_iOS *)self axTreeDumpCurrentOutput];
    v14 = [axTreeDumpCurrentOutput copy];
    [v11 setObject:v14 forKeyedSubscript:@"treeDump"];

    axTreeDumpCurrentType = [(AXPTranslator_iOS *)self axTreeDumpCurrentType];
    v16 = [axTreeDumpCurrentType copy];
    [v11 setObject:v16 forKeyedSubscript:@"treeDumpType"];

    axTreeDumpLock4 = [(AXPTranslator_iOS *)self axTreeDumpLock];
    [axTreeDumpLock4 unlock];

    [v19 setResultData:v11];
    [(AXPTranslator_iOS *)self _axTreeDumpCleanUpState];
    AXOverrideRequestingClientType();
    axTreeDumpCompletionHandler = [(AXPTranslator_iOS *)self axTreeDumpCompletionHandler];
    (axTreeDumpCompletionHandler)[2](axTreeDumpCompletionHandler, !terminationCopy, v19);
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
  axTreeDumpLock = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [axTreeDumpLock lock];

  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentChildIndex:0];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentlyProcessingChildren:v4];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentOutput:v5];

  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentType:0];
  [(AXPTranslator_iOS *)self setShouldStopGeneratingAXTree:0];
  axTreeDumpLock2 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [axTreeDumpLock2 unlock];
}

- (void)axTreeDumpGenerateNextSetOfElementAttrsOnMainThread
{
  v91[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  axTreeDumpLock = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [axTreeDumpLock lock];

  LODWORD(axTreeDumpLock) = [(AXPTranslator_iOS *)self shouldStopGeneratingAXTree];
  axTreeDumpLock2 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [axTreeDumpLock2 unlock];

  if (!axTreeDumpLock)
  {
    if ([(AXPTranslator_iOS *)self _usingCachedTreeForOnenessClient])
    {
      AXOverrideRequestingClientType();
    }

    array = [MEMORY[0x277CBEA60] array];
    axTreeDumpLock3 = [(AXPTranslator_iOS *)self axTreeDumpLock];
    [axTreeDumpLock3 lock];

    axTreeDumpCurrentChildIndex = [(AXPTranslator_iOS *)self axTreeDumpCurrentChildIndex];
    axTreeDumpCurrentlyProcessingChildren = [(AXPTranslator_iOS *)self axTreeDumpCurrentlyProcessingChildren];
    v13 = [axTreeDumpCurrentlyProcessingChildren count];

    axTreeDumpCurrentType = [(AXPTranslator_iOS *)self axTreeDumpCurrentType];
    axTreeDumpLock4 = [(AXPTranslator_iOS *)self axTreeDumpLock];
    [axTreeDumpLock4 unlock];

    v16 = [axTreeDumpCurrentType isEqualToString:?];
    v18 = 10;
    if (v16)
    {
      v18 = v13;
    }

    v69 = v18;
    if (!v18 || axTreeDumpCurrentChildIndex >= v13)
    {
LABEL_46:
      axTreeDumpLock5 = [(AXPTranslator_iOS *)self axTreeDumpLock];
      [axTreeDumpLock5 lock];

      [(AXPTranslator_iOS *)self setAxTreeDumpCurrentChildIndex:axTreeDumpCurrentChildIndex];
      axTreeDumpLock6 = [(AXPTranslator_iOS *)self axTreeDumpLock];
      [axTreeDumpLock6 unlock];

      v64 = dispatch_time(0, 0);
      axTreeDumpSharedBackgroundQueue = [(AXPTranslator_iOS *)self axTreeDumpSharedBackgroundQueue];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __72__AXPTranslator_iOS_axTreeDumpGenerateNextSetOfElementAttrsOnMainThread__block_invoke_586;
      v75[3] = &unk_278BE8288;
      v75[4] = self;
      dispatch_after(v64, axTreeDumpSharedBackgroundQueue, v75);

      goto LABEL_47;
    }

    v72 = 0;
    v19 = 0x277CBE000uLL;
    *&v17 = 136315394;
    v67 = v17;
    v68 = axTreeDumpCurrentType;
    while (1)
    {
      axTreeDumpLock7 = [(AXPTranslator_iOS *)self axTreeDumpLock];
      [axTreeDumpLock7 lock];

      axTreeDumpCurrentlyProcessingChildren2 = [(AXPTranslator_iOS *)self axTreeDumpCurrentlyProcessingChildren];
      v22 = [axTreeDumpCurrentlyProcessingChildren2 axSafeObjectAtIndex:axTreeDumpCurrentChildIndex];

      axTreeDumpLock8 = [(AXPTranslator_iOS *)self axTreeDumpLock];
      [axTreeDumpLock8 unlock];

      if (!v22)
      {
        goto LABEL_46;
      }

      if ([axTreeDumpCurrentType isEqualToString:@"AXPTreeDumpTypeInitialDump"])
      {
        _topPriorityAXTreeAttrValues = [(AXPTranslator_iOS *)self _topPriorityAXTreeAttrValues];
      }

      else
      {
        if (![axTreeDumpCurrentType isEqualToString:@"AXPTreeDumpTypeAdditionalData"])
        {
          goto LABEL_18;
        }

        _topPriorityAXTreeAttrValues = [(AXPTranslator_iOS *)self _allAXTreeAttrValues];
      }

      v25 = _topPriorityAXTreeAttrValues;

      array = v25;
LABEL_18:
      v26 = objc_alloc_init(AXPTranslatorRequest);
      [(AXPTranslatorRequest *)v26 setTranslation:v22];
      v90 = @"attributes";
      v91[0] = array;
      v27 = [*(v19 + 2752) dictionaryWithObjects:v91 forKeys:&v90 count:1];
      [(AXPTranslatorRequest *)v26 setParameters:v27];

      v70 = v26;
      v28 = [(AXPTranslator_iOS *)self processMultipleAttributeRequest:v26 removeEmptyValue:0];
      if ([v28 error])
      {
        v29 = AXPlatformTranslationLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          error = [v28 error];
          *buf = v67;
          v87 = "[AXPTranslator_iOS axTreeDumpGenerateNextSetOfElementAttrsOnMainThread]";
          v88 = 2048;
          v89 = error;
          _os_log_error_impl(&dword_23D766000, v29, OS_LOG_TYPE_ERROR, "%s: error while attempting to process attrs: %lu", buf, 0x16u);
        }
      }

      v73 = axTreeDumpCurrentChildIndex;
      v71 = array;
      [v28 setAssociatedTranslationObject:v22];
      [v28 setAssociatedRequestType:5];
      v74 = v28;
      [(AXPTranslator_iOS *)self _safelyAddAXTreeDumpResponseToCurrentOutput:v28];
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      _allAXTreeCanSetAttrValues = [(AXPTranslator_iOS *)self _allAXTreeCanSetAttrValues];
      v31 = [_allAXTreeCanSetAttrValues countByEnumeratingWithState:&v76 objects:v85 count:16];
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
              objc_enumerationMutation(_allAXTreeCanSetAttrValues);
            }

            unsignedIntegerValue = [*(*(&v76 + 1) + 8 * i) unsignedIntegerValue];
            v36 = objc_alloc_init(AXPTranslatorRequest);
            [(AXPTranslatorRequest *)v36 setAttributeType:unsignedIntegerValue];
            [(AXPTranslatorRequest *)v36 setTranslation:v22];
            v37 = [(AXPTranslator_iOS *)self processCanSetAttribute:v36];
            [v37 setAssociatedTranslationObject:v22];
            [v37 setAttribute:unsignedIntegerValue];
            [v37 setAssociatedRequestType:3];
            resultData = [v37 resultData];

            if (resultData)
            {
              [(AXPTranslator_iOS *)self _safelyAddAXTreeDumpResponseToCurrentOutput:v37];
            }
          }

          v32 = [_allAXTreeCanSetAttrValues countByEnumeratingWithState:&v76 objects:v85 count:16];
        }

        while (v32);
      }

      resultData2 = [v74 resultData];
      v19 = 0x277CBE000uLL;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        resultData3 = [v74 resultData];
        v42 = [resultData3 objectForKeyedSubscript:&unk_284FCBAA8];
      }

      else
      {
        v42 = 0;
      }

      axTreeDumpCurrentType = v68;
      v43 = v73;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        axTreeDumpLock9 = [(AXPTranslator_iOS *)self axTreeDumpLock];
        [axTreeDumpLock9 lock];

        axTreeDumpCurrentlyProcessingChildren3 = [(AXPTranslator_iOS *)self axTreeDumpCurrentlyProcessingChildren];
        [axTreeDumpCurrentlyProcessingChildren3 addObjectsFromArray:v42];

        axTreeDumpLock10 = [(AXPTranslator_iOS *)self axTreeDumpLock];
        [axTreeDumpLock10 unlock];
      }

      if ([v68 isEqualToString:@"AXPTreeDumpTypeAdditionalData"])
      {
        v47 = objc_alloc_init(AXPTranslatorRequest);
        v83 = @"actions";
        _allAXTreeActions = [(AXPTranslator_iOS *)self _allAXTreeActions];
        v84 = _allAXTreeActions;
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        [(AXPTranslatorRequest *)v47 setParameters:v49];

        [(AXPTranslatorRequest *)v47 setTranslation:v22];
        v50 = [(AXPTranslator_iOS *)self processSupportedActions:v47];
        [v50 setAssociatedTranslationObject:v22];
        [v50 setAssociatedRequestType:9];
        resultData4 = [v50 resultData];

        if (resultData4)
        {
          [(AXPTranslator_iOS *)self _safelyAddAXTreeDumpResponseToCurrentOutput:v50];
        }

        v52 = objc_alloc_init(AXPTranslatorRequest);
        v81 = @"attributes";
        _allAXTreeAttrValues = [(AXPTranslator_iOS *)self _allAXTreeAttrValues];
        v82 = _allAXTreeAttrValues;
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        [(AXPTranslatorRequest *)v52 setParameters:v54];

        [(AXPTranslatorRequest *)v52 setTranslation:v22];
        v55 = [(AXPTranslator_iOS *)self processSupportsAttributes:v52];
        [v55 setAssociatedTranslationObject:v22];
        [v55 setAssociatedRequestType:10];
        resultData5 = [v55 resultData];

        if (resultData5)
        {
          [(AXPTranslator_iOS *)self _safelyAddAXTreeDumpResponseToCurrentOutput:v55];
        }

        v43 = v73;
        v19 = 0x277CBE000;
      }

      axTreeDumpCurrentChildIndex = v43 + 1;
      axTreeDumpLock11 = [(AXPTranslator_iOS *)self axTreeDumpLock];
      [axTreeDumpLock11 lock];

      axTreeDumpCurrentlyProcessingChildren4 = [(AXPTranslator_iOS *)self axTreeDumpCurrentlyProcessingChildren];
      v59 = [axTreeDumpCurrentlyProcessingChildren4 count];

      axTreeDumpLock12 = [(AXPTranslator_iOS *)self axTreeDumpLock];
      [axTreeDumpLock12 unlock];

      if (++v72 >= v69)
      {
        array = v71;
        goto LABEL_46;
      }

      array = v71;
      if (axTreeDumpCurrentChildIndex >= v59)
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

  axTreeDumpLock13 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [axTreeDumpLock13 lock];

  [(AXPTranslator_iOS *)self setShouldStopGeneratingAXTree:0];
  axTreeDumpLock14 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [axTreeDumpLock14 unlock];

  axTreeDumpSharedBackgroundQueue2 = [(AXPTranslator_iOS *)self axTreeDumpSharedBackgroundQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__AXPTranslator_iOS_axTreeDumpGenerateNextSetOfElementAttrsOnMainThread__block_invoke;
  block[3] = &unk_278BE8288;
  block[4] = self;
  dispatch_async(axTreeDumpSharedBackgroundQueue2, block);

LABEL_47:
  v66 = *MEMORY[0x277D85DE8];
}

- (void)generateAXTreeDumpTypeOnBackgroundThread:(id)thread completionHandler:(id)handler
{
  handlerCopy = handler;
  threadCopy = thread;
  axTreeDumpSharedBackgroundQueue = [(AXPTranslator_iOS *)self axTreeDumpSharedBackgroundQueue];
  dispatch_assert_queue_V2(axTreeDumpSharedBackgroundQueue);

  v9 = AXRequestingClient();
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(AXPTranslator_iOS *)self _axTreeDumpCleanUpState];
  [(AXPTranslator_iOS *)self setAxTreeDumpCompletionHandler:handlerCopy];

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
  translationResponse = [v12 translationResponse];

  if (translationResponse)
  {
    translationResponse2 = [v12 translationResponse];
    [v10 addObject:translationResponse2];

    if ([(AXPTranslator_iOS *)self _usingCachedTreeForOnenessClient])
    {
      v35 = v9;
      AXOverrideRequestingClientType();
      v15 = +[AXPTranslator_iOS sharedInstance];
      translationResponse3 = [v12 translationResponse];
      v17 = [v15 createPlatformElementFromTranslationObject:translationResponse3];

      v18 = MEMORY[0x277CE6BB0];
      v19 = objc_opt_new();
      v20 = [v18 uiElementWithAXElement:v17 cache:v19];

      [v20 setAXAttribute:3071 withNumber:MEMORY[0x277CBEC38]];
      frontmostAppOnContinuityDisplay = [(AXPTranslator_iOS *)self frontmostAppOnContinuityDisplay];
      if (frontmostAppOnContinuityDisplay)
      {
        v22 = frontmostAppOnContinuityDisplay;
        frontmostAppOnContinuityDisplay2 = [(AXPTranslator_iOS *)self frontmostAppOnContinuityDisplay];
        v24 = [v20 isEqual:frontmostAppOnContinuityDisplay2];

        if ((v24 & 1) == 0)
        {
          frontmostAppOnContinuityDisplay3 = [(AXPTranslator_iOS *)self frontmostAppOnContinuityDisplay];
          [frontmostAppOnContinuityDisplay3 setAXAttribute:3071 withNumber:MEMORY[0x277CBEC28]];
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
    _frontmostAppChildrenForXCTest = [(AXPTranslator_iOS *)self _frontmostAppChildrenForXCTest];
    v28 = [v26 arrayWithArray:_frontmostAppChildrenForXCTest];

    v10 = v28;
  }

  if ([(AXPTranslator_iOS *)self _usingCachedTreeForDevicesAppClient])
  {
    v29 = objc_alloc_init(AXPTranslatorRequest);
    v30 = [(AXPTranslator_iOS *)self _processApplicationOrientationForTreeDump:v29];
    [v30 setAssociatedRequestType:2];
    [v36 addObject:v30];
  }

  axTreeDumpLock = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [axTreeDumpLock lock];

  v32 = [v10 mutableCopy];
  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentlyProcessingChildren:v32];

  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentType:threadCopy];
  v33 = [v36 mutableCopy];
  [(AXPTranslator_iOS *)self setAxTreeDumpCurrentOutput:v33];

  axTreeDumpLock2 = [(AXPTranslator_iOS *)self axTreeDumpLock];
  [axTreeDumpLock2 unlock];

  [(AXPTranslator_iOS *)self fetchNextSetOfElementAttrsOnBackgroundThreadWithEarlyTermination:0];
}

- (void)_safelyAddAXTreeDumpResponseToCurrentOutput:(id)output
{
  outputCopy = output;
  resultData = [outputCopy resultData];
  v6 = [(AXPTranslator_iOS *)self _postProcessResultDataForSecureCoding:resultData];

  if (v6)
  {
    [outputCopy setResultData:v6];
    axTreeDumpLock = [(AXPTranslator_iOS *)self axTreeDumpLock];
    [axTreeDumpLock lock];

    axTreeDumpCurrentOutput = [(AXPTranslator_iOS *)self axTreeDumpCurrentOutput];
    [axTreeDumpCurrentOutput addObject:outputCopy];

    axTreeDumpLock2 = [(AXPTranslator_iOS *)self axTreeDumpLock];
    [axTreeDumpLock2 unlock];
  }

  else
  {
    axTreeDumpLock2 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(axTreeDumpLock2, OS_LOG_TYPE_ERROR))
    {
      [(AXPTranslator_iOS *)outputCopy _safelyAddAXTreeDumpResponseToCurrentOutput:axTreeDumpLock2];
    }
  }
}

- (id)_postProcessResultDataForSecureCoding:(id)coding
{
  codingCopy = coding;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:codingCopy];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __59__AXPTranslator_iOS__postProcessResultDataForSecureCoding___block_invoke;
    v20[3] = &unk_278BE8468;
    v20[4] = self;
    v6 = v5;
    v21 = v6;
    [codingCopy enumerateKeysAndObjectsUsingBlock:v20];
    if ([v6 count] || !objc_msgSend(codingCopy, "count"))
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
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:codingCopy];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__AXPTranslator_iOS__postProcessResultDataForSecureCoding___block_invoke_2;
    v18[3] = &unk_278BE8490;
    v18[4] = self;
    v6 = v8;
    v19 = v6;
    [codingCopy enumerateObjectsUsingBlock:v18];
    if ([v6 count] || !objc_msgSend(codingCopy, "count"))
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
    [codingCopy enumerateAttributesUsingBlock:v13];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_opt_class() supportsSecureCoding])
      {
        v7 = codingCopy;
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
    v10 = [codingCopy length];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__AXPTranslator_iOS__postProcessResultDataForSecureCoding___block_invoke_4;
    v12[3] = &unk_278BE84B8;
    v12[4] = self;
    v12[5] = &v14;
    [codingCopy enumerateAttributesInRange:0 options:v10 usingBlock:{0, v12}];
  }

  if (*(v15 + 24) == 1)
  {
    v7 = codingCopy;
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
  translationResponse = [v3 translationResponse];
  v5 = [(AXPTranslator_iOS *)self createPlatformElementFromTranslationObject:translationResponse];

  v6 = [MEMORY[0x277CE6BB0] uiElementWithAXElement:v5];
  v7 = [v6 arrayWithAXAttribute:5001];
  array = [MEMORY[0x277CBEB18] array];
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
        [array addObject:v14];
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

  return array;
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

- (id)processHitTest:(id)test
{
  testCopy = test;
  _convertAXPClientToiOS([testCopy clientType]);
  AXOverrideRequestingClientType();
  parameters = [testCopy parameters];
  v6 = [parameters objectForKeyedSubscript:@"point"];
  *cf = *MEMORY[0x277CBF348];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !strcmp([v6 objCType], "{CGPoint=dd}"))
  {
    [v6 getValue:cf];
  }

  v8 = cf[0];
  v7 = cf[1];

  parameters2 = [testCopy parameters];
  v10 = [parameters2 objectForKeyedSubscript:@"displayId"];
  unsignedIntValue = [v10 unsignedIntValue];

  parameters3 = [testCopy parameters];
  v13 = [parameters3 objectForKeyedSubscript:@"contextId"];
  unsignedIntValue2 = [v13 unsignedIntValue];

  translation = [testCopy translation];
  rawElementData = [translation rawElementData];
  v17 = _AXUIElementCreateWithData();

  pid = [translation pid];
  if (!pid)
  {
    if (([translation didPopuldateAppInfo] & 1) != 0 || (AXUIElementGetPid(v17, &pid), objc_msgSend(translation, "setPid:", pid), objc_msgSend(translation, "setIsApplicationElement:", AXUIElementIsApplication()), objc_msgSend(translation, "setDidPopuldateAppInfo:", 1), !pid))
    {
      systemAppDelegate = [(AXPTranslator *)self systemAppDelegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        systemAppDelegate2 = [(AXPTranslator *)self systemAppDelegate];
        frontmostProcessPids = [systemAppDelegate2 frontmostProcessPids];
        firstObject = [frontmostProcessPids firstObject];
        pid = [firstObject intValue];
      }
    }
  }

  cf[0] = 0;
  v18 = objc_opt_new();
  if (!pid)
  {
    systemWideElement = [(AXPTranslator_iOS *)self systemWideElement];
    [systemWideElement axElement];
    if (unsignedIntValue)
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
  systemWideElement = v20;
  if (unsignedIntValue2)
  {
    if (unsignedIntValue)
    {
      goto LABEL_8;
    }
  }

  else
  {
    unsignedIntValue2 = [v20 contextIdForPoint:{*&v8, *&v7}];
    if (unsignedIntValue)
    {
      goto LABEL_8;
    }
  }

  [systemWideElement displayIdForContextId:unsignedIntValue2];
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

- (__AXUIElement)createPlatformElementFromTranslationObject:(id)object
{
  objectCopy = object;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  cacheQueue = self->_cacheQueue;
  v15 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__AXPTranslator_iOS_createPlatformElementFromTranslationObject___block_invoke;
  block[3] = &unk_278BE84E0;
  v10 = objectCopy;
  v11 = &v12;
  block[4] = self;
  v6 = objectCopy;
  dispatch_sync(cacheQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (id)translationObjectFromPlatformElement:(__AXUIElement *)element
{
  elementCopy = element;
  if (element)
  {
    v5 = MEMORY[0x277CE6BB0];
    v6 = objc_opt_new();
    v7 = [v5 uiElementWithAXElement:elementCopy cache:v6];

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
    v20 = elementCopy;
    dispatch_sync(cacheQueue, block);
    remoteDescriptionBlock = [v22[5] remoteDescriptionBlock];

    if (!remoteDescriptionBlock)
    {
      [v22[5] setRemoteDescriptionBlock:&__block_literal_global_791];
    }

    elementCopy = v22[5];

    _Block_object_dispose(&v21, 8);
  }

  return elementCopy;
}

+ (id)translationObjectFromUIKitObject:(id)object
{
  v4 = _AXCreateAXUIElementWithElement();
  if (v4)
  {
    v5 = v4;
    sharedInstance = [self sharedInstance];
    v7 = [sharedInstance translationObjectFromPlatformElement:v5];

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)platformElementFromTranslation:(id)translation
{
  translationCopy = translation;
  fakeElementCache = [(AXPTranslator *)self fakeElementCache];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(translationCopy, "objectID")}];
  v7 = [fakeElementCache objectForKey:v6];

  if (!v7)
  {
    v7 = [AXPIOSPlatformElement platformElementWithTranslationObject:translationCopy];
    fakeElementCache2 = [(AXPTranslator *)self fakeElementCache];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(translationCopy, "objectID")}];
    [fakeElementCache2 setObject:v7 forKey:v9];
  }

  return v7;
}

- (id)translationObjectFromData:(id)data
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