@interface AXPTranslator
+ (id)sharedInstance;
- (AXPTranslationDelegateHelper)bridgeDelegate;
- (AXPTranslationRuntimeHelper)runtimeDelegate;
- (AXPTranslationSystemAppDelegate)systemAppDelegate;
- (AXPTranslationTokenDelegateHelper)bridgeTokenDelegate;
- (AXPTranslator)init;
- (BOOL)_treeDumpResponseIsApplicationOrientationData:(id)a3;
- (id)_checkCacheForFrontmostAppResponseWithBridgeDelegateToken:(id)a3;
- (id)_translationApplicationObjectForPidNumber:(id)a3;
- (id)attributedStringConversionBlock;
- (id)checkTreeDumpCacheForRequest:(id)a3;
- (id)checkTreeDumpCacheResponses:(id)a3 forMatchingResponse:(id)a4 withBridgeTokenDelegate:(id)a5;
- (id)iosPlatformElementFromTranslation:(id)a3;
- (id)platformElementFromTranslation:(id)a3;
- (id)processAXTreeElements:(id)a3;
- (id)processActionRequest:(id)a3;
- (id)processAttributeRequest:(id)a3;
- (id)processCanSetAttribute:(id)a3;
- (id)processFrontMostApp:(id)a3;
- (id)processHitTest:(id)a3;
- (id)processMultipleAttributeRequest:(id)a3;
- (id)processSetAttribute:(id)a3;
- (id)processSupportedActions:(id)a3;
- (id)processSupportsAttributes:(id)a3;
- (id)processTranslatorRequest:(id)a3;
- (id)remoteTranslationDataWithTranslation:(id)a3 pid:(int)a4;
- (id)sendTranslatorRequest:(id)a3;
- (id)translationObjectFromData:(id)a3;
- (id)treeDumpCacheResultDataForAttributeTypeRequest:(id)a3;
- (id)treeDumpCacheResultDataForCanSetAttributeTypeRequest:(id)a3;
- (id)treeDumpCacheResultDataForSupportedActionsTypeRequest:(id)a3;
- (id)treeDumpCacheResultDataForSupportsAttributesTypeRequest:(id)a3;
- (id)treeDumpResponseCacheForBridgeDelegateToken:(id)a3;
- (int64_t)treeDumpApplicationOrientationForBridgeDelegateToken:(id)a3;
- (void)_handleFocusedUIElementChangedForInitialDump:(id)a3;
- (void)_resetBridgeTokensForResponse:(id)a3 bridgeDelegateToken:(id)a4;
- (void)enableAccessibility;
- (void)generateAXTreeDumpTypeOnBackgroundThread:(id)a3 completionHandler:(id)a4;
- (void)handleNotification:(unint64_t)a3 data:(id)a4 associatedObject:(id)a5;
- (void)handleUpdatedAXTree:(id)a3;
- (void)initializeAXRuntimeForSystemAppServer;
- (void)processPlatformAXTreeDump:(id)a3;
- (void)processPlatformNotification:(unint64_t)a3 data:(id)a4;
- (void)setBridgeDelegate:(id)a3;
- (void)setBridgeTokenDelegate:(id)a3;
- (void)setCachedTreeClientType:(unint64_t)a3;
- (void)setRequestResolvingBehavior:(unint64_t)a3;
- (void)setRuntimeDelegate:(id)a3;
- (void)setSystemAppDelegate:(id)a3;
- (void)updateTreeDumpCacheResponse:(id)a3 withAdditionalResponse:(id)a4;
@end

@implementation AXPTranslator

uint64_t __35__AXPTranslator_iOS_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_Translator = [objc_alloc(objc_opt_class()) init];

  return MEMORY[0x2821F96F8]();
}

void __52__AXPTranslator_iOS_attributedStringConversionBlock__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v96 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v83 = a4;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v80 = v11;
  obj = [v11 allKeys];
  v84 = [obj countByEnumeratingWithState:&v90 objects:v95 count:16];
  if (v84)
  {
    v82 = *v91;
    v69 = *MEMORY[0x277CE6BC0];
    v68 = *MEMORY[0x277CE6B60];
    v75 = *MEMORY[0x277CE6B80];
    v74 = *MEMORY[0x277CE6B70];
    v67 = *MEMORY[0x277CE6B68];
    v12 = MEMORY[0x277CE6C88];
    v66 = *MEMORY[0x277CE6B78];
    v73 = *MEMORY[0x277CE6C38];
LABEL_3:
    v13 = 0;
    while (2)
    {
      if (*v91 != v82)
      {
        objc_enumerationMutation(obj);
      }

      v85 = v13;
      v14 = *(*(&v90 + 1) + 8 * v13);
      switch([v14 unsignedIntegerValue])
      {
        case 0:
          v15 = [v83 objectForKeyedSubscript:v73];
          v16 = [v15 BOOLValue];

          if (v16)
          {
            v17 = v10;
            v18 = v73;
            goto LABEL_25;
          }

          goto LABEL_45;
        case 1:
          v29 = [v83 objectForKeyedSubscript:*MEMORY[0x277CE6C58]];
          v30 = [v29 BOOLValue];

          if (v30)
          {
            v24 = MEMORY[0x277CE6C58];
            goto LABEL_22;
          }

          goto LABEL_45;
        case 2:
          v22 = [v83 objectForKeyedSubscript:*MEMORY[0x277CE6C90]];
          v23 = [v22 BOOLValue];

          if (v23)
          {
            v24 = MEMORY[0x277CE6C90];
            goto LABEL_22;
          }

          goto LABEL_45;
        case 3:
          v20 = [v83 objectForKeyedSubscript:*MEMORY[0x277CE6C30]];
          v41 = [v83 objectForKeyedSubscript:*MEMORY[0x277CE6C60]];
          if (v20 | v41)
          {
            [v10 removeAttribute:*MEMORY[0x277CE6C30] range:{a5, a6}];
            [v10 removeAttribute:*MEMORY[0x277CE6C60] range:{a5, a6}];
            if (v41)
            {
              v42 = v41;
            }

            else
            {
              v42 = v20;
            }

            v43 = v42;
            v44 = [v80 objectForKeyedSubscript:v14];
            [v10 addAttribute:v44 value:v43 range:{a5, a6}];
          }

          goto LABEL_43;
        case 4:
          v35 = v83;
          v21 = v67;
          goto LABEL_36;
        case 5:
          v25 = [v83 objectForKeyedSubscript:v74];
          v26 = [v25 BOOLValue];

          if (!v26)
          {
            goto LABEL_45;
          }

          v17 = v10;
          v18 = v74;
          goto LABEL_25;
        case 6:
          v31 = [v83 objectForKeyedSubscript:v75];
          v32 = [v31 BOOLValue];

          if (!v32)
          {
            goto LABEL_45;
          }

          v17 = v10;
          v18 = v75;
          goto LABEL_25;
        case 7:
          v19 = MEMORY[0x277CE6BD0];
          v33 = [v83 objectForKeyedSubscript:*MEMORY[0x277CE6BD0]];

          v34 = [*(a1 + 32) translationObjectFromPlatformElement:v33];
          goto LABEL_40;
        case 8:
          v20 = objc_opt_new();
          v54 = MEMORY[0x277CE6C10];
          v55 = [v83 objectForKeyedSubscript:*MEMORY[0x277CE6C10]];
          v79 = v55;
          if (v55)
          {
            v56 = v55;
            [v10 removeAttribute:*v54 range:{a5, a6}];
            [v20 setObject:v56 forKeyedSubscript:&unk_284FCBA78];
            v76 = [MEMORY[0x277CCA900] punctuationCharacterSet];
            v72 = [v56 componentsSeparatedByCharactersInSet:v76];
            v71 = [v72 componentsJoinedByString:@" "];
            v57 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
            v58 = [v71 stringByTrimmingCharactersInSet:v57];
            [v20 setObject:v58 forKeyedSubscript:&unk_284FCBA90];
          }

          v59 = MEMORY[0x277CE6C08];
          v60 = [v83 objectForKeyedSubscript:*MEMORY[0x277CE6C08]];
          if (v60)
          {
            [v10 removeAttribute:*v59 range:{a5, a6}];
            [v20 setObject:v60 forKeyedSubscript:&unk_284FCBAA8];
          }

          v77 = v60;
          v61 = MEMORY[0x277CE6C18];
          v62 = [v83 objectForKeyedSubscript:*MEMORY[0x277CE6C18]];
          if (v62)
          {
            [v10 removeAttribute:*v61 range:{a5, a6}];
            [v20 setObject:v62 forKeyedSubscript:&unk_284FCBAC0];
          }

          if ([v20 count])
          {
            v63 = [v80 objectForKeyedSubscript:v14];
            [v10 addAttribute:v63 value:v20 range:{a5, a6}];
          }

          goto LABEL_44;
        case 13:
          v19 = MEMORY[0x277CE6C20];
          goto LABEL_39;
        case 14:
          v19 = MEMORY[0x277CE6C68];
LABEL_39:
          v34 = [v83 objectForKeyedSubscript:*v19];
LABEL_40:
          v20 = v34;
          if (v34)
          {
            goto LABEL_41;
          }

          goto LABEL_44;
        case 15:
          v27 = [v83 objectForKeyedSubscript:*MEMORY[0x277CE6CA8]];
          v28 = [v27 BOOLValue];

          if (!v28)
          {
            goto LABEL_45;
          }

          v24 = MEMORY[0x277CE6CA8];
LABEL_22:
          v18 = *v24;
          v17 = v10;
LABEL_25:
          [v17 removeAttribute:v18 range:{a5, a6}];
          v20 = [v80 objectForKeyedSubscript:v14];
          [v10 addAttribute:v20 value:MEMORY[0x277CBEC38] range:{a5, a6}];
          goto LABEL_44;
        case 16:
          v21 = v66;
          v20 = [v83 objectForKeyedSubscript:v66];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_37;
        case 17:
          v19 = MEMORY[0x277CE6BC8];
          v20 = [v83 objectForKeyedSubscript:*MEMORY[0x277CE6BC8]];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_44;
          }

LABEL_41:
          v46 = *v19;
          v45 = v10;
          goto LABEL_42;
        case 18:
          v35 = v83;
          v21 = v68;
LABEL_36:
          v20 = [v35 objectForKeyedSubscript:v21];
          if (!v20)
          {
            goto LABEL_44;
          }

LABEL_37:
          v45 = v10;
          v46 = v21;
LABEL_42:
          [v45 removeAttribute:v46 range:{a5, a6}];
          v41 = [v80 objectForKeyedSubscript:v14];
          [v10 addAttribute:v41 value:v20 range:{a5, a6}];
LABEL_43:

LABEL_44:
LABEL_45:
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v47 = [v83 keyEnumerator];
          v48 = [v47 allObjects];

          v49 = [v48 countByEnumeratingWithState:&v86 objects:v94 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v87;
            do
            {
              for (i = 0; i != v50; ++i)
              {
                if (*v87 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                v53 = *(*(&v86 + 1) + 8 * i);
                if ([v53 hasPrefix:@"UIAccessibilityToken"] && (objc_msgSend(v53, "isEqualToString:", *v12) & 1) == 0)
                {
                  [v10 removeAttribute:v53 range:{a5, a6}];
                }
              }

              v50 = [v48 countByEnumeratingWithState:&v86 objects:v94 count:16];
            }

            while (v50);
          }

          v13 = v85 + 1;
          if (v85 + 1 != v84)
          {
            continue;
          }

          v64 = [obj countByEnumeratingWithState:&v90 objects:v95 count:16];
          v84 = v64;
          if (!v64)
          {
            goto LABEL_67;
          }

          goto LABEL_3;
        case 19:
          v20 = [v83 objectForKeyedSubscript:v69];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 removeAttribute:v69 range:{a5, a6}];
            v36 = [v10 string];
            v37 = [v36 substringWithRange:{a5, a6}];

            v38 = [v37 rangeOfString:v20];
            v78 = v39;
            v40 = [v80 objectForKeyedSubscript:v14];
            [v10 addAttribute:v40 value:MEMORY[0x277CBEC38] range:{v38 + a5, v78}];
          }

          goto LABEL_44;
        default:
          goto LABEL_45;
      }
    }
  }

LABEL_67:

  v65 = *MEMORY[0x277D85DE8];
}

uint64_t __44__AXPTranslator_iOS__resetSystemWideElement__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AXPTranslator_iOS _resetSystemWideElement]_block_invoke";
    _os_log_impl(&dword_23D766000, v2, OS_LOG_TYPE_INFO, "%s: system app died", &v5, 0xCu);
  }

  result = [*(a1 + 32) _resetSystemWideElementAfterDelay];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __54__AXPTranslator_iOS__enableAccessibilityBridgeRuntime__block_invoke(uint64_t a1)
{
  if (!_AXSApplicationAccessibilityEnabled())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _appLoadedAccessibilityCallback, *MEMORY[0x277CE6CB0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v3 = MEMORY[0x277D85CD0];
    dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
    dispatch_async(v3, &__block_literal_global_355);

    v4 = dispatch_semaphore_create(0);
    v5 = *(a1 + 32);
    v6 = *(v5 + 136);
    *(v5 + 136) = v4;

    v7 = *(*(a1 + 32) + 136);
    v8 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v7, v8);
    v9 = *(*(a1 + 32) + 128);
    v10 = AXPlatformTranslationLogCommon();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_23D766000, v11, OS_LOG_TYPE_INFO, "App accessibility enabled successfully", v13, 2u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __54__AXPTranslator_iOS__enableAccessibilityBridgeRuntime__block_invoke_cold_1();
    }
  }

  return [*(a1 + 32) _registerAccessibilityNotifications];
}

uint64_t __54__AXPTranslator_iOS__enableAccessibilityBridgeRuntime__block_invoke_2()
{
  v0 = _AXSApplicationAccessibilitySetEnabled();

  return MEMORY[0x282138F90](v0);
}

id __47__AXPTranslator_iOS__processAuditIssuesResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x277CE6B08];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE6B08]];
  if (v4)
  {
    v5 = *MEMORY[0x277CE6B20];
    v6 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE6B20]];
    v7 = [v6 longLongValue];

    if (v7 > 1999)
    {
      v12 = 200;
      v13 = 300;
      if (v7 != 4001)
      {
        v13 = 0;
      }

      if (v7 != 2000)
      {
        v12 = v13;
      }

      if ((v7 - 2001) >= 2)
      {
        v10 = v12;
      }

      else
      {
        v10 = 201;
      }
    }

    else if ((v7 - 1000) > 7)
    {
      v10 = 0;
    }

    else
    {
      v8 = 1 << (v7 + 24);
      v9 = 102;
      if (v7 != 1001)
      {
        v9 = 0;
      }

      if ((v8 & 0xC8) != 0)
      {
        v9 = 202;
      }

      if ((v8 & 0x15) != 0)
      {
        v10 = 100;
      }

      else
      {
        v10 = v9;
      }
    }

    v11 = objc_opt_new();
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    [v11 setObject:v14 forKeyedSubscript:v5];

    [v11 setObject:v4 forKeyedSubscript:v3];
    v15 = *MEMORY[0x277CE6B18];
    v16 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE6B18]];

    if (v16)
    {
      v17 = [v2 objectForKeyedSubscript:v15];
      [v11 setObject:v17 forKeyedSubscript:v15];
    }

    v18 = *MEMORY[0x277CE6B00];
    v19 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE6B00]];

    if (v19)
    {
      v20 = [v2 objectForKeyedSubscript:v18];
      [v11 setObject:v20 forKeyedSubscript:v18];
    }

    v21 = *MEMORY[0x277CE6B10];
    v22 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE6B10]];

    if (v22)
    {
      v23 = [v2 objectForKeyedSubscript:v21];
      [v11 setObject:v23 forKeyedSubscript:v21];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __79__AXPTranslator_iOS__processCellWithIndexPathAttributeRequest_parameter_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[AXPTranslator_iOS sharedInstance];
    v4 = [v3 createPlatformElementFromTranslationObject:v2];
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

void __72__AXPTranslator_iOS__processTextInputMarkedRangeAttributeRequest_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = [a2 objectForKeyedSubscript:*MEMORY[0x277CE6BC0]];

  if (v9)
  {
    v10 = [MEMORY[0x277CCAE60] valueWithRange:{a3, a4}];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a5 = 1;
  }
}

uint64_t __63__AXPTranslator_iOS__processApplicationOrientationForTreeDump___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateCache:1503];
  v2 = [*(a1 + 40) _processDirectAttributeRequest:*(a1 + 32) iosAttribute:1503 axpAttribute:0 parameter:0 error:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__AXPTranslator_iOS_processFrontMostApp_withiOSAttribute___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateCache:*(a1 + 64)];
  v2 = [*(a1 + 40) _processDirectAttributeRequest:*(a1 + 32) iosAttribute:*(a1 + 64) axpAttribute:0 parameter:0 error:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __52__AXPTranslator_iOS_axTreeDumpSharedBackgroundQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
  v0 = dispatch_queue_create("com.apple.accessibility.AXPRemoteCacheManager.axHierarchyGeneration", v2);
  v1 = axTreeDumpSharedBackgroundQueue_axTreeDumpBackgroundQueue;
  axTreeDumpSharedBackgroundQueue_axTreeDumpBackgroundQueue = v0;
}

void __59__AXPTranslator_iOS__postProcessResultDataForSecureCoding___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) _postProcessResultDataForSecureCoding:a3];
  if (!v5)
  {
    [*(a1 + 40) removeObjectForKey:v6];
  }
}

void __59__AXPTranslator_iOS__postProcessResultDataForSecureCoding___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) _postProcessResultDataForSecureCoding:?];
  if (!v3)
  {
    [*(a1 + 40) removeObject:v4];
  }
}

void __59__AXPTranslator_iOS__postProcessResultDataForSecureCoding___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a2 allValues];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 32) _postProcessResultDataForSecureCoding:*(*(&v10 + 1) + 8 * i)];
        if (!v8)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
}

void __59__AXPTranslator_iOS__postProcessResultDataForSecureCoding___block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a2 allValues];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 32) _postProcessResultDataForSecureCoding:*(*(&v10 + 1) + 8 * i)];
        if (!v8)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
}

void __38__AXPTranslator_iOS__allAXTreeActions__block_invoke()
{
  v0 = _allAXTreeActions_actionValues;
  _allAXTreeActions_actionValues = &unk_284FCC510;
}

void __49__AXPTranslator_iOS__topPriorityAXTreeAttrValues__block_invoke()
{
  v0 = _topPriorityAXTreeAttrValues_attributeValues;
  _topPriorityAXTreeAttrValues_attributeValues = &unk_284FCC528;
}

void __47__AXPTranslator_iOS__allAXTreeCanSetAttrValues__block_invoke()
{
  v0 = _allAXTreeCanSetAttrValues_attributeValues;
  _allAXTreeCanSetAttrValues_attributeValues = &unk_284FCC540;
}

void __41__AXPTranslator_iOS__allAXTreeAttrValues__block_invoke()
{
  v0 = _allAXTreeAttrValues_attributeValues;
  _allAXTreeAttrValues_attributeValues = &unk_284FCC558;
}

void __64__AXPTranslator_iOS_createPlatformElementFromTranslationObject___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v2 = [*(a1 + 32) backTranslationCache];
    v3 = [v2 objectForKey:*(a1 + 40)];

    if (!v3)
    {
      v4 = AXPlatformTranslationLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __64__AXPTranslator_iOS_createPlatformElementFromTranslationObject___block_invoke_cold_1((a1 + 40));
      }
    }

    v5 = [v3 pid];
    v6 = [v3 uid];
    *(*(*(a1 + 48) + 8) + 24) = MEMORY[0x23EEEB800](v5, v6, v7);
  }
}

void __58__AXPTranslator_iOS_translationObjectFromPlatformElement___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) translationCache];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = objc_opt_new();
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(*(*(a1 + 56) + 8) + 40) setPid:{objc_msgSend(*(a1 + 48), "pid")}];
    v9 = *(a1 + 64);
    [*(*(*(a1 + 56) + 8) + 40) setIsApplicationElement:AXUIElementIsApplication()];
    [*(*(*(a1 + 56) + 8) + 40) setDidPopuldateAppInfo:1];
    cf = 0;
    v10 = *(a1 + 64);
    v11 = getpid();
    v12 = _AXPAXUIElementReplaceWithRemotePid(v10, &cf, v11);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!v12 || !AXPIsCatalyst())
    {
      [*(a1 + 32) _addCacheElement:*(a1 + 40) translationObject:*(*(*(a1 + 56) + 8) + 40)];
    }
  }
}

id __58__AXPTranslator_iOS_translationObjectFromPlatformElement___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[AXPTranslator_iOS sharedInstance];
  v4 = [v3 createPlatformElementFromTranslationObject:v2];

  v5 = MEMORY[0x277CE6BB0];
  v6 = objc_opt_new();
  v7 = [v5 uiElementWithAXElement:v4 cache:v6];

  v8 = [v7 description];
  v9 = [v7 stringWithAXAttribute:2185];
  v10 = [v8 stringByAppendingFormat:@" -- ORIGINAL DESCRIPTION: %@", v9];

  if (v4)
  {
    CFRelease(v4);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%d] %@", objc_msgSend(v7, "pid"), v10];

  return v11;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__AXPTranslator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_Translator_0;

  return v2;
}

uint64_t __31__AXPTranslator_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_Translator_0 = [objc_alloc(objc_opt_class()) init];

  return MEMORY[0x2821F96F8]();
}

- (AXPTranslator)init
{
  v5.receiver = self;
  v5.super_class = AXPTranslator;
  v2 = [(AXPTranslator *)&v5 init];
  v3 = objc_opt_new();
  [(AXPTranslator *)v2 setFakeElementCache:v3];

  v2->_requestResolvingBehavior = 0;
  v2->_cachedTreeClientType = 0;
  return v2;
}

- (id)_translationApplicationObjectForPidNumber:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [AXPTranslatorRequest requestWithTranslation:0];
  [v5 setRequestType:1];
  if (v4)
  {
    v11 = @"pid";
    v12[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v5 setParameters:v6];
  }

  v7 = [(AXPTranslator *)self sendTranslatorRequest:v5];
  v8 = [v7 translationResponse];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_checkCacheForFrontmostAppResponseWithBridgeDelegateToken:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AXPTranslator *)self treeDumpResponseCacheForBridgeDelegateToken:v4];
  v6 = [v5 treeDumpResponse];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 associatedRequestType] == 4)
        {
          v13 = v12;

          v9 = v13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v14 = v9;

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)handleNotification:(unint64_t)a3 data:(id)a4 associatedObject:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AXPTranslator handleNotification:a3 data:v8 associatedObject:v10];
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __58__AXPTranslator_handleNotification_data_associatedObject___block_invoke;
  v20 = &unk_278BE86A0;
  v21 = self;
  v24 = a3;
  v11 = v8;
  v22 = v11;
  v12 = v9;
  v23 = v12;
  dispatch_async(MEMORY[0x277D85CD0], &v17);
  if ([(AXPTranslator *)self requestResolvingBehavior:v17]!= 1)
  {
    v13 = [(AXPTranslator *)self requestResolvingBehavior];
    if (a3 == 2 && v13 != 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = AXPlatformTranslationLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [AXPTranslator handleNotification:v12 data:self associatedObject:v14];
        }

        v15 = [(AXPTranslator *)self fakeElementCache];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "objectID")}];
        [v15 setObject:0 forKeyedSubscript:v16];
      }
    }
  }
}

void __58__AXPTranslator_handleNotification_data_associatedObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformTranslator];
  [v2 processPlatformNotification:*(a1 + 56) data:*(a1 + 40) associatedObject:*(a1 + 48)];
}

- (void)handleUpdatedAXTree:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXPTranslator handleUpdatedAXTree:v5];
  }

  v6 = [v4 associatedTranslationObject];
  v7 = [v6 bridgeDelegateToken];

  if (v7)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v8 = [v4 treeDumpResponse];
    v9 = [v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v47;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v47 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v46 + 1) + 8 * i);
          v14 = [v13 resultData];
          [(AXPTranslator *)self _resetBridgeTokensForResponse:v14 bridgeDelegateToken:v7];

          v15 = [v13 associatedNotificationObject];
          [v15 setBridgeDelegateToken:v7];

          v16 = [v13 associatedTranslationObject];
          [v16 setBridgeDelegateToken:v7];
        }

        v10 = [v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v10);
    }

    v17 = [v4 treeDumpType];
    v18 = [v17 isEqualToString:@"AXPTreeDumpTypeInitialDump"];

    if (v18)
    {
      v19 = [(AXPTranslator *)self bridgeDelegateTokenToTreeDumpLookup];
      [v19 setObject:v4 forKeyedSubscript:v7];
    }

    else
    {
      v21 = [v4 treeDumpType];
      v22 = [v21 isEqualToString:@"AXPTreeDumpTypeAdditionalData"];

      if (!v22)
      {
        v38 = [v4 treeDumpType];
        v39 = [v38 isEqualToString:@"AXPTreeDumpTypeTreeDestroyed"];

        if (v39)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v23 = [(AXPTranslator *)self treeDumpResponseCacheForBridgeDelegateToken:v7];
      v24 = MEMORY[0x277CBEB18];
      v41 = v23;
      v25 = [v23 treeDumpResponse];
      v26 = [v24 arrayWithArray:v25];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v27 = [v4 treeDumpResponse];
      v28 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v43;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v43 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v42 + 1) + 8 * j);
            v33 = [(AXPTranslator *)self checkTreeDumpCacheResponses:v26 forMatchingResponse:v32 withBridgeTokenDelegate:v7];
            if (v33)
            {
              [(AXPTranslator *)self updateTreeDumpCacheResponse:v33 withAdditionalResponse:v32];
            }

            else
            {
              [v26 addObject:v32];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v29);
      }

      v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v34 setObject:v26 forKeyedSubscript:@"treeDump"];
      v19 = v41;
      v35 = [v41 treeDumpType];
      [v34 setObject:v35 forKeyedSubscript:@"treeDumpType"];

      [v41 setResultData:v34];
    }

LABEL_29:
    v36 = [v4 treeDumpType];
    v37 = [v36 isEqualToString:@"AXPTreeDumpTypeInitialDump"];

    if (v37)
    {
      [(AXPTranslator *)self _handleFocusedUIElementChangedForInitialDump:v4];
    }

    goto LABEL_32;
  }

  v20 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [AXPTranslator handleUpdatedAXTree:v20];
  }

LABEL_32:
  v40 = *MEMORY[0x277D85DE8];
}

- (int64_t)treeDumpApplicationOrientationForBridgeDelegateToken:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(AXPTranslator *)self treeDumpResponseCacheForBridgeDelegateToken:a3];
  v5 = [v4 treeDumpResponse];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([(AXPTranslator *)self _treeDumpResponseIsApplicationOrientationData:v11])
        {
          v12 = [v11 resultData];
          v8 = [v12 intValue];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_treeDumpResponseIsApplicationOrientationData:(id)a3
{
  v3 = a3;
  v4 = [v3 associatedRequestType] == 2 && objc_msgSend(v3, "attribute") == 129;

  return v4;
}

- (void)_handleFocusedUIElementChangedForInitialDump:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = a3;
  v3 = [v13 treeDumpResponse];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v31 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        if ([v7 associatedRequestType] == 2)
        {
          v8 = [v7 resultData];
          v9 = v8 == 0;

          if (!v9)
          {
            continue;
          }
        }

        if ([v7 associatedRequestType] == 5)
        {
          v10 = [v7 resultData];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __62__AXPTranslator__handleFocusedUIElementChangedForInitialDump___block_invoke;
          v14[3] = &unk_278BE86C8;
          v14[4] = v7;
          v14[5] = &v19;
          v14[6] = &v25;
          [v10 enumerateKeysAndObjectsUsingBlock:v14];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v31 count:16];
    }

    while (v4);
  }

  v11 = v26[5];
  if (!v11)
  {
    v11 = v20[5];
  }

  objc_storeStrong(v26 + 5, v11);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __62__AXPTranslator__handleFocusedUIElementChangedForInitialDump___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) associatedTranslationObject];
  v7 = [v6 isApplicationElement];

  if (v7)
  {
    v8 = [*(a1 + 32) associatedTranslationObject];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if ([v11 isEqualToNumber:&unk_284FCC4F8])
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    }
  }
}

- (void)_resetBridgeTokensForResponse:(id)a3 bridgeDelegateToken:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
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

            [(AXPTranslator *)self _resetBridgeTokensForResponse:*(*(&v23 + 1) + 8 * i) bridgeDelegateToken:v7];
          }

          v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v10);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_21;
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = v6;
      v13 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v8);
            }

            v17 = [v8 objectForKey:{*(*(&v19 + 1) + 8 * j), v19}];
            [(AXPTranslator *)self _resetBridgeTokensForResponse:v17 bridgeDelegateToken:v7];
          }

          v14 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v14);
      }
    }

    goto LABEL_21;
  }

  [v6 setBridgeDelegateToken:v7];
LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)sendTranslatorRequest:(id)a3
{
  v4 = a3;
  v5 = [(AXPTranslator *)self bridgeDelegate];
  if (v5)
  {
  }

  else
  {
    v6 = [(AXPTranslator *)self bridgeTokenDelegate];

    if (!v6)
    {
      v38 = AXPlatformTranslationLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [AXPTranslator sendTranslatorRequest:v38];
      }

      goto LABEL_21;
    }
  }

  v7 = [(AXPTranslator *)self requestResolvingBehavior];
  v8 = [(AXPTranslator *)self requestResolvingBehavior];
  [(AXPTranslator *)self requestResolvingBehavior];
  if (!AXPClientIsEntitledForRemoteDeviceContent())
  {
LABEL_21:
    v9 = +[AXPTranslatorResponse emptyResponse];
    goto LABEL_22;
  }

  if (v7 != 1 && v8 != 2 || !-[AXPTranslator shouldCheckTreeDumpCacheForRequestType:](self, "shouldCheckTreeDumpCacheForRequestType:", [v4 requestType]))
  {
    v9 = 0;
    goto LABEL_14;
  }

  v9 = [(AXPTranslator *)self checkTreeDumpCacheForRequest:v4];
  if (v7 != 1)
  {
    goto LABEL_11;
  }

  if ([v4 requestType] != 5)
  {
    goto LABEL_11;
  }

  v10 = [v9 resultData];
  v11 = [v10 allKeys];
  v12 = [v4 parameters];
  v13 = [v12 objectForKeyedSubscript:@"attributes"];
  v14 = [v11 isEqualToArray:v13];

  if (v14)
  {
LABEL_11:
    if (v9)
    {
      v15 = [v9 resultData];
      v16 = [v4 translation];
      v17 = [v16 bridgeDelegateToken];
      [(AXPTranslator *)self _resetBridgeTokensForResponse:v15 bridgeDelegateToken:v17];

      v18 = [v4 translation];
      v19 = [v18 bridgeDelegateToken];
      v20 = [v9 associatedNotificationObject];
      [v20 setBridgeDelegateToken:v19];

      v21 = [v4 translation];
      v22 = [v21 bridgeDelegateToken];
      v23 = [v9 associatedTranslationObject];
      [v23 setBridgeDelegateToken:v22];

      goto LABEL_22;
    }
  }

  if ([(AXPTranslator *)self requestResolvingBehavior]!= 2)
  {
LABEL_14:
    if ([(AXPTranslator *)self supportsDelegateTokens])
    {
      v24 = [(AXPTranslator *)self bridgeTokenDelegate];
      v25 = [v4 translation];
      v26 = [v25 bridgeDelegateToken];
      v27 = [v24 accessibilityTranslationDelegateBridgeCallbackWithToken:v26];
      v28 = (v27)[2](v27, v4);

      v9 = v26;
    }

    else
    {
      v24 = [(AXPTranslator *)self bridgeDelegate];
      v25 = [v24 accessibilityTranslationDelegateBridgeCallback];
      v28 = (v25)[2](v25, v4);
    }

    v29 = [v28 resultData];
    v30 = [v4 translation];
    v31 = [v30 bridgeDelegateToken];
    [(AXPTranslator *)self _resetBridgeTokensForResponse:v29 bridgeDelegateToken:v31];

    v32 = [v4 translation];
    v33 = [v32 bridgeDelegateToken];
    v34 = [v28 associatedNotificationObject];
    [v34 setBridgeDelegateToken:v33];

    v35 = [v4 translation];
    v36 = [v35 bridgeDelegateToken];
    v37 = [v28 associatedTranslationObject];
    [v37 setBridgeDelegateToken:v36];

    v9 = v28;
    goto LABEL_22;
  }

  v40 = +[AXPTranslatorResponse emptyResponse];

  v9 = v40;
LABEL_22:

  return v9;
}

- (id)treeDumpResponseCacheForBridgeDelegateToken:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(AXPTranslator *)self bridgeDelegateTokenToTreeDumpLookup];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateTreeDumpCacheResponse:(id)a3 withAdditionalResponse:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 associatedRequestType];
  v8 = [v5 associatedRequestType];
  v9 = [v5 associatedRequestType];
  v10 = [v5 associatedRequestType];
  v11 = [v5 associatedRequestType];
  if (v7 != 2)
  {
    if (v8 == 5)
    {
      v12 = MEMORY[0x277CBEB38];
      v13 = [v5 resultData];
      v14 = [v12 dictionaryWithDictionary:v13];

      if ([v6 associatedRequestType] == 2 && (objc_msgSend(v6, "resultData"), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
      {
        v16 = [v6 resultData];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "attribute")}];
        [v14 setObject:v16 forKey:v17];
      }

      else if ([v6 associatedRequestType] == 5)
      {
        v18 = [v6 resultData];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __68__AXPTranslator_updateTreeDumpCacheResponse_withAdditionalResponse___block_invoke;
        v30[3] = &unk_278BE86F0;
        v31 = v14;
        [v18 enumerateKeysAndObjectsUsingBlock:v30];
      }

      v19 = [v14 copy];
      [v5 setResultData:v19];

      goto LABEL_13;
    }

    if (v9 != 3)
    {
      if (v10 == 10)
      {
        v20 = MEMORY[0x277CBEB38];
        v21 = [v5 resultData];
        v22 = [v20 dictionaryWithDictionary:v21];

        v23 = [v6 resultData];
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __68__AXPTranslator_updateTreeDumpCacheResponse_withAdditionalResponse___block_invoke_2;
        v28 = &unk_278BE86F0;
        v29 = v22;
        v14 = v22;
        [v23 enumerateKeysAndObjectsUsingBlock:&v25];

        v24 = [v14 copy];
        [v5 setResultData:v24];

        goto LABEL_13;
      }

      if (v11 != 9)
      {
        goto LABEL_14;
      }
    }

LABEL_9:
    v14 = [v6 resultData];
    [v5 setResultData:v14];
LABEL_13:

    goto LABEL_14;
  }

  if ([v6 associatedRequestType] == 2)
  {
    goto LABEL_9;
  }

  [v6 associatedRequestType];
LABEL_14:
}

- (id)checkTreeDumpCacheResponses:(id)a3 forMatchingResponse:(id)a4 withBridgeTokenDelegate:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 associatedRequestType] == 4)
  {
    v11 = [(AXPTranslator *)self _checkCacheForFrontmostAppResponseWithBridgeDelegateToken:v10];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v8;
    v11 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v23 = v8;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v15 associatedRequestType];
          if (v16 == [v9 associatedRequestType])
          {
            v17 = [v15 associatedTranslationObject];
            v18 = [v9 associatedTranslationObject];
            v19 = [v17 isEqual:v18];

            if (v19)
            {
              if ([v15 associatedRequestType] != 3 || (v20 = objc_msgSend(v15, "attribute"), v20 == objc_msgSend(v9, "attribute")))
              {
                v11 = v15;
                goto LABEL_16;
              }
            }
          }
        }

        v11 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_16:
      v8 = v23;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)treeDumpCacheResultDataForAttributeTypeRequest:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 requestType];
  v6 = [v4 requestType];
  v7 = [v4 translation];
  v8 = [v7 bridgeDelegateToken];
  v9 = [(AXPTranslator *)self treeDumpResponseCacheForBridgeDelegateToken:v8];

  v40 = v5;
  if (v5 == 2)
  {
    v10 = MEMORY[0x277CBEA60];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "attributeType")}];
    v12 = [v10 arrayWithObject:v11];

    if (!v9)
    {
      goto LABEL_48;
    }

    goto LABEL_6;
  }

  if (v6 != 5)
  {
    v12 = 0;
    goto LABEL_48;
  }

  v13 = [v4 parameters];
  v12 = [v13 objectForKeyedSubscript:@"attributes"];

  if (!v9)
  {
LABEL_48:
    v36 = 0;
    goto LABEL_51;
  }

LABEL_6:
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v12;
  v45 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (!v45)
  {
    v43 = 0;
    goto LABEL_50;
  }

  v39 = v6;
  v43 = 0;
  v44 = *v53;
  v42 = v9;
  do
  {
    for (i = 0; i != v45; ++i)
    {
      if (*v53 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v47 = *(*(&v52 + 1) + 8 * i);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v15 = [v9 treeDumpResponse];
      v16 = [v15 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (!v16)
      {
        goto LABEL_44;
      }

      v17 = v16;
      v46 = i;
      v18 = 0;
      v19 = *v49;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v49 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v48 + 1) + 8 * j);
          v22 = [v21 associatedRequestType];
          v23 = [v21 associatedRequestType];
          if (v22 == 2 || v23 == 5)
          {
            v25 = [v21 associatedTranslationObject];
            v26 = [v4 translation];
            v27 = [v25 isEqual:v26];

            if (v27)
            {
              if ([v4 attributeType] && objc_msgSend(v21, "attribute") && (v28 = objc_msgSend(v21, "attribute"), v28 == objc_msgSend(v4, "attributeType")))
              {
                v29 = [v21 resultData];
                v18 = 1;
LABEL_30:
                if (v29)
                {
                  if (v40 == 2)
                  {
                    v34 = v29;

                    v43 = v34;
                    v9 = v42;
                    i = v46;
                  }

                  else
                  {
                    v9 = v42;
                    i = v46;
                    if (v39 == 5)
                    {
                      v35 = v43;
                      if (!v43)
                      {
                        v35 = objc_opt_new();
                      }

                      v43 = v35;
                      [v35 setObject:v29 forKey:v47];
                    }
                  }

                  goto LABEL_44;
                }
              }

              else
              {
                v30 = [v21 resultData];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v32 = [v21 resultData];
                  v29 = [v32 objectForKey:v47];

                  if (v29)
                  {
                    v33 = v29;
                    v18 = 1;
                  }

                  if (v18)
                  {
                    goto LABEL_30;
                  }
                }

                else
                {
                  v29 = 0;
                }
              }

              continue;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      v9 = v42;
      i = v46;
LABEL_44:
    }

    v45 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  }

  while (v45);
LABEL_50:
  v12 = obj;

  v36 = v43;
LABEL_51:

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)treeDumpCacheResultDataForCanSetAttributeTypeRequest:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 requestType];
  v6 = [v4 translation];
  v7 = [v6 bridgeDelegateToken];
  v8 = [(AXPTranslator *)self treeDumpResponseCacheForBridgeDelegateToken:v7];

  v9 = 0;
  if (v5 == 3 && v8)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [v8 treeDumpResponse];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if ([v15 associatedRequestType] == 3)
          {
            v16 = [v15 associatedTranslationObject];
            v17 = [v4 translation];
            v18 = [v16 isEqual:v17];

            if (v18)
            {
              if ([v4 attributeType])
              {
                if ([v15 attribute])
                {
                  v19 = [v15 attribute];
                  if (v19 == [v4 attributeType])
                  {
                    v20 = [v15 resultData];
                    if (v20)
                    {
                      v9 = v20;
                      goto LABEL_18;
                    }
                  }
                }
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_18:
  }

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)treeDumpCacheResultDataForSupportedActionsTypeRequest:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 requestType];
  v6 = [v4 translation];
  v7 = [v6 bridgeDelegateToken];
  v8 = [(AXPTranslator *)self treeDumpResponseCacheForBridgeDelegateToken:v7];

  v9 = 0;
  if (v5 == 9 && v8)
  {
    v10 = [v4 parameters];
    v11 = [v10 objectForKeyedSubscript:@"actions"];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v11;
    v36 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v36)
    {
      v34 = 0;
      v35 = *v43;
      v33 = v8;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v14 = [v8 treeDumpResponse];
          v15 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v15)
          {
            v16 = v15;
            v37 = i;
            v17 = *v39;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v39 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v38 + 1) + 8 * j);
                if ([v19 associatedRequestType] == 9)
                {
                  v20 = [v19 associatedTranslationObject];
                  v21 = [v4 translation];
                  v22 = [v20 isEqual:v21];

                  if (v22)
                  {
                    v23 = [v19 resultData];
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    if (isKindOfClass)
                    {
                      v25 = [v19 resultData];
                      v26 = [v25 containsObject:v13];

                      if (v26)
                      {
                        v27 = v13;
                        if (v13)
                        {
                          v28 = v27;
                          v29 = v34;
                          if (!v34)
                          {
                            v29 = [MEMORY[0x277CBEB18] array];
                          }

                          v34 = v29;
                          [v29 addObject:v28];

                          goto LABEL_24;
                        }
                      }
                    }
                  }
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }

LABEL_24:
            v8 = v33;
            i = v37;
          }
        }

        v36 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v36);
    }

    else
    {
      v34 = 0;
    }

    v9 = v34;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)treeDumpCacheResultDataForSupportsAttributesTypeRequest:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 requestType];
  v6 = [v4 translation];
  v7 = [v6 bridgeDelegateToken];
  v8 = [(AXPTranslator *)self treeDumpResponseCacheForBridgeDelegateToken:v7];

  v9 = 0;
  if (v5 == 10 && v8)
  {
    v10 = [v4 parameters];
    v11 = [v10 objectForKeyedSubscript:@"attributes"];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v11;
    v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v34)
    {
      v32 = *v41;
      v33 = 0;
      v31 = v8;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v41 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v40 + 1) + 8 * i);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v14 = [v8 treeDumpResponse];
          v15 = [v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v15)
          {
            v16 = v15;
            v35 = i;
            v17 = *v37;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v37 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v36 + 1) + 8 * j);
                if ([v19 associatedRequestType] == 10)
                {
                  v20 = [v19 associatedTranslationObject];
                  v21 = [v4 translation];
                  v22 = [v20 isEqual:v21];

                  if (v22)
                  {
                    v23 = [v19 resultData];
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    if (isKindOfClass)
                    {
                      v25 = [v19 resultData];
                      v26 = [v25 objectForKey:v13];

                      if (v26)
                      {
                        v27 = v33;
                        if (!v33)
                        {
                          v27 = objc_opt_new();
                        }

                        v33 = v27;
                        [v27 setObject:v26 forKey:v13];

                        goto LABEL_23;
                      }
                    }
                  }
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }

LABEL_23:
            v8 = v31;
            i = v35;
          }
        }

        v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v34);
    }

    else
    {
      v33 = 0;
    }

    v9 = v33;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)checkTreeDumpCacheForRequest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 requestType];
  v7 = 0;
  if (v6 > 4)
  {
    if (v6 != 5)
    {
      if (v6 == 9)
      {
        v10 = [(AXPTranslator *)self treeDumpCacheResultDataForSupportedActionsTypeRequest:v4];
      }

      else
      {
        if (v6 != 10)
        {
          goto LABEL_18;
        }

        v10 = [(AXPTranslator *)self treeDumpCacheResultDataForSupportsAttributesTypeRequest:v4];
      }

LABEL_14:
      v11 = v10;
      [v5 setResultData:v10];

      v12 = [v5 resultData];

      if (v12)
      {
        v13 = v5;
      }

      else
      {
        v13 = 0;
      }

      v7 = v13;
      goto LABEL_18;
    }

LABEL_11:
    v10 = [(AXPTranslator *)self treeDumpCacheResultDataForAttributeTypeRequest:v4];
    goto LABEL_14;
  }

  switch(v6)
  {
    case 2:
      [v5 setAttribute:{objc_msgSend(v4, "attributeType")}];
      goto LABEL_11;
    case 3:
      [v5 setAttribute:{objc_msgSend(v4, "attributeType")}];
      v10 = [(AXPTranslator *)self treeDumpCacheResultDataForCanSetAttributeTypeRequest:v4];
      goto LABEL_14;
    case 4:
      v8 = [v4 translation];
      v9 = [v8 bridgeDelegateToken];
      v7 = [(AXPTranslator *)self _checkCacheForFrontmostAppResponseWithBridgeDelegateToken:v9];

      break;
  }

LABEL_18:

  return v7;
}

- (id)processTranslatorRequest:(id)a3
{
  v4 = a3;
  v5 = [(AXPTranslator *)self platformTranslator];
  [v5 enableAccessibility];
  v6 = [v4 requestType];
  if (v6 <= 5)
  {
    if (v6 > 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          [v5 processFrontMostApp:v4];
        }

        else
        {
          [v5 processMultipleAttributeRequest:v4];
        }

        goto LABEL_6;
      }

      v7 = [v5 processCanSetAttribute:v4];
LABEL_25:
      v8 = v7;
      if (v7)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v6 == 1)
    {
      v7 = [v5 processApplicationObject:v4];
      goto LABEL_25;
    }

    if (v6 == 2)
    {
      v7 = [v5 processAttributeRequest:v4];
      goto LABEL_25;
    }
  }

  else
  {
    if (v6 <= 8)
    {
      if (v6 != 6)
      {
        if (v6 == 7)
        {
          [v5 processActionRequest:v4];
        }

        else
        {
          [v5 processSetAttribute:v4];
        }

        v7 = LABEL_6:;
        goto LABEL_25;
      }

      v7 = [v5 processHitTest:v4];
      goto LABEL_25;
    }

    switch(v6)
    {
      case 9:
        v7 = [v5 processSupportedActions:v4];
        goto LABEL_25;
      case 10:
        v7 = [v5 processSupportsAttributes:v4];
        goto LABEL_25;
      case 11:
        v7 = [v5 processAXTreeElements:v4];
        goto LABEL_25;
    }
  }

LABEL_26:
  v8 = +[AXPTranslatorResponse emptyResponse];
LABEL_27:
  [v8 setAssociatedRequestType:{objc_msgSend(v4, "requestType")}];

  return v8;
}

- (id)iosPlatformElementFromTranslation:(id)a3
{
  v4 = a3;
  v5 = [(AXPTranslator *)self platformTranslator];
  v6 = [v5 platformElementFromTranslation:v4];

  return v6;
}

- (void)setSystemAppDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_systemAppDelegate, v4);
  v5 = [(AXPTranslator *)self platformTranslator];
  v6 = v5;
  if (v5 != self)
  {
    [(AXPTranslator *)v5 setSystemAppDelegate:v4];
    if ([v4 requiresAXRuntimeInitialization])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__AXPTranslator_setSystemAppDelegate___block_invoke;
      block[3] = &unk_278BE8288;
      v8 = v6;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)setBridgeDelegate:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_bridgeDelegate, v6);
  v4 = [(AXPTranslator *)self platformTranslator];
  v5 = v4;
  if (v4 != self)
  {
    [(AXPTranslator *)v4 setBridgeDelegate:v6];
  }
}

- (void)setBridgeTokenDelegate:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_bridgeTokenDelegate, v6);
  [(AXPTranslator *)self setSupportsDelegateTokens:v6 != 0];
  v4 = [(AXPTranslator *)self platformTranslator];
  v5 = v4;
  if (v4 != self)
  {
    [(AXPTranslator *)v4 setBridgeTokenDelegate:v6];
    [(AXPTranslator *)v5 setSupportsDelegateTokens:[(AXPTranslator *)self supportsDelegateTokens]];
  }
}

- (void)setRuntimeDelegate:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_runtimeDelegate, v6);
  v4 = [(AXPTranslator *)self platformTranslator];

  if (v4 != self)
  {
    v5 = [(AXPTranslator *)self platformTranslator];
    [v5 setRuntimeDelegate:v6];
  }
}

- (void)setRequestResolvingBehavior:(unint64_t)a3
{
  if (self->_requestResolvingBehavior != a3)
  {
    if (a3)
    {
      if (a3 <= 2)
      {
        v5 = objc_opt_new();
        [(AXPTranslator *)self setBridgeDelegateTokenToTreeDumpLookup:v5];
      }
    }

    else
    {
      [(AXPTranslator *)self setBridgeDelegateTokenToTreeDumpLookup:0];
    }

    self->_requestResolvingBehavior = a3;
    v6 = [(AXPTranslator *)self platformTranslator];

    if (v6 != self)
    {
      v7 = [(AXPTranslator *)self platformTranslator];
      [v7 setRequestResolvingBehavior:a3];
    }
  }
}

- (void)setCachedTreeClientType:(unint64_t)a3
{
  if (self->_cachedTreeClientType != a3)
  {
    self->_cachedTreeClientType = a3;
    v5 = [(AXPTranslator *)self platformTranslator];

    if (v5 != self)
    {
      v6 = [(AXPTranslator *)self platformTranslator];
      [v6 setCachedTreeClientType:a3];
    }
  }
}

- (AXPTranslationDelegateHelper)bridgeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bridgeDelegate);

  return WeakRetained;
}

- (AXPTranslationTokenDelegateHelper)bridgeTokenDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bridgeTokenDelegate);

  return WeakRetained;
}

- (AXPTranslationRuntimeHelper)runtimeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_runtimeDelegate);

  return WeakRetained;
}

- (AXPTranslationSystemAppDelegate)systemAppDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemAppDelegate);

  return WeakRetained;
}

void __64__AXPTranslator_iOS_createPlatformElementFromTranslationObject___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)processMultipleAttributeRequest:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)processActionRequest:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)processSetAttribute:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)processCanSetAttribute:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)processAttributeRequest:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)processHitTest:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)processFrontMostApp:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)processSupportedActions:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)processSupportsAttributes:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)processAXTreeElements:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)attributedStringConversionBlock
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)processPlatformNotification:(unint64_t)a3 data:(id)a4
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();

  NSRequestConcreteImplementation();
}

- (void)processPlatformAXTreeDump:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();

  NSRequestConcreteImplementation();
}

- (void)enableAccessibility
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();

  NSRequestConcreteImplementation();
}

- (void)initializeAXRuntimeForSystemAppServer
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();

  NSRequestConcreteImplementation();
}

- (id)platformElementFromTranslation:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)translationObjectFromData:(id)a3
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)remoteTranslationDataWithTranslation:(id)a3 pid:(int)a4
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)generateAXTreeDumpTypeOnBackgroundThread:(id)a3 completionHandler:(id)a4
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();

  NSRequestConcreteImplementation();
}

- (void)handleNotification:(unint64_t)a1 data:(uint64_t)a2 associatedObject:(NSObject *)a3 .cold.1(unint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = _AXPNotificationToString(a1);
  v7 = 138412547;
  v8 = v5;
  v9 = 2117;
  v10 = a2;
  _os_log_debug_impl(&dword_23D766000, a3, OS_LOG_TYPE_DEBUG, "Handle notification: %@: %{sensitive}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleNotification:(void *)a1 data:(void *)a2 associatedObject:(NSObject *)a3 .cold.2(void *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a2 fakeElementCache];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "objectID")}];
  v7 = [v5 objectForKeyedSubscript:v6];
  v9 = 138412546;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  _os_log_debug_impl(&dword_23D766000, a3, OS_LOG_TYPE_DEBUG, "Removing element: %@ -> %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedAXTree:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[AXPTranslator handleUpdatedAXTree:]";
  _os_log_error_impl(&dword_23D766000, log, OS_LOG_TYPE_ERROR, "%s: bridgeTokenDelegate is nil!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end