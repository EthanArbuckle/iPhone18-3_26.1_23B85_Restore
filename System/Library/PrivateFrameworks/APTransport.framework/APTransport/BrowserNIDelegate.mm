@interface BrowserNIDelegate
- (BrowserNIDelegate)initWithBrowser:(OpaqueAPBrowser *)browser;
- (void)dealloc;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason;
- (void)session:(id)session didUpdateNearbyObjects:(id)objects;
@end

@implementation BrowserNIDelegate

- (BrowserNIDelegate)initWithBrowser:(OpaqueAPBrowser *)browser
{
  v6.receiver = self;
  v6.super_class = BrowserNIDelegate;
  v3 = [(BrowserNIDelegate *)&v6 init];
  if (v3)
  {
    v4 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v3->_browserWeak = v4;
    if (!v4)
    {
      [BrowserNIDelegate initWithBrowser:v3];
      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  browserWeak = self->_browserWeak;
  if (browserWeak)
  {
    CFRelease(browserWeak);
    self->_browserWeak = 0;
  }

  v4.receiver = self;
  v4.super_class = BrowserNIDelegate;
  [(BrowserNIDelegate *)&v4 dealloc];
}

- (void)session:(id)session didUpdateNearbyObjects:(id)objects
{
  v51 = *MEMORY[0x277D85DE8];
  browserWeak = self->_browserWeak;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = **DerivedStorage;
    if (v8 <= 30)
    {
      if (v8 == -1)
      {
        v9 = DerivedStorage;
        v10 = *DerivedStorage;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v31 = *v9;
      }

      v32 = [objects count];
      LogPrintF();
    }

LABEL_6:
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = [objects countByEnumeratingWithState:&v37 objects:v50 count:{16, v32}];
    if (!v11)
    {
      goto LABEL_37;
    }

    v12 = *v38;
    v35 = v44;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(objects);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        v15 = CMBaseObjectGetDerivedStorage();
        v16 = v15;
        key = 0;
        v17 = **v15;
        if (v17 <= 30)
        {
          if (v17 == -1)
          {
            v18 = *v15;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_15;
            }

            v28 = *v16;
          }

          discoveryToken = [v14 discoveryToken];
          v34 = v14;
          LogPrintF();
        }

LABEL_15:
        if (APSRotatingKeyMapperIsInitialized())
        {
          [v14 distance];
          v20 = v19;
          v46 = 0;
          v47 = &v46;
          v48 = 0x2020000000;
          v21 = getNINearbyObjectDistanceNotAvailableSymbolLoc_ptr;
          v49 = getNINearbyObjectDistanceNotAvailableSymbolLoc_ptr;
          if (!getNINearbyObjectDistanceNotAvailableSymbolLoc_ptr)
          {
            v42 = MEMORY[0x277D85DD0];
            v43 = 3221225472;
            v44[0] = __getNINearbyObjectDistanceNotAvailableSymbolLoc_block_invoke;
            v44[1] = &unk_278BC7CE0;
            v45 = &v46;
            v22 = NearbyInteractionLibrary_0();
            v23 = dlsym(v22, "NINearbyObjectDistanceNotAvailable");
            *(v45[1] + 24) = v23;
            getNINearbyObjectDistanceNotAvailableSymbolLoc_ptr = *(v45[1] + 24);
            v21 = v47[3];
          }

          _Block_object_dispose(&v46, 8);
          if (!v21)
          {
            [BrowserNIDelegate session:didUpdateNearbyObjects:];
          }

          if (v20 != *v21 && [v14 deviceIdentifier])
          {
            if (APSRotatingKeyMapperSetDataForKey())
            {
              [BrowserNIDelegate session:didUpdateNearbyObjects:];
            }

            else
            {
              if (!key)
              {
                goto LABEL_31;
              }

              Value = CFDictionaryGetValue(v16[27], key);
              if (Value)
              {
                v25 = CFDictionaryGetValue(Value, @"LastEventInfo");
                if (v25)
                {
                  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v25);
                  v27 = MutableCopy;
                  if (MutableCopy)
                  {
                    CFDictionarySetValue(MutableCopy, @"proximityData", v14);
                    if (browser_setEventInfoForDevice(v6, key, v27))
                    {
                      [BrowserNIDelegate session:didUpdateNearbyObjects:];
                    }

                    CFRelease(v27);
                  }
                }
              }

              else
              {
                [BrowserNIDelegate session:didUpdateNearbyObjects:];
              }
            }
          }
        }

        if (key)
        {
          CFRelease(key);
        }

LABEL_31:
        ++v13;
      }

      while (v11 != v13);
      v29 = [objects countByEnumeratingWithState:&v37 objects:v50 count:16];
      v11 = v29;
      if (!v29)
      {
LABEL_37:
        CFRelease(v6);
        break;
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason
{
  v30 = *MEMORY[0x277D85DE8];
  browserWeak = self->_browserWeak;
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    v9 = v8;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v12 = DerivedStorage;
    v13 = **DerivedStorage;
    if (v13 <= 30)
    {
      if (v13 == -1)
      {
        v14 = *DerivedStorage;
        DerivedStorage = OUTLINED_FUNCTION_8_0();
        if (!DerivedStorage)
        {
          goto LABEL_6;
        }

        v25 = *v12;
      }

      v26 = [objects count];
      reasonCopy = reason;
      OUTLINED_FUNCTION_1();
      DerivedStorage = LogPrintF();
    }

LABEL_6:
    v15 = OUTLINED_FUNCTION_19_1(DerivedStorage, v11, v26, reasonCopy, 0);
    if (!v15)
    {
      goto LABEL_19;
    }

    v17 = v15;
    v18 = MEMORY[0];
    while (1)
    {
      v19 = 0;
      do
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(objects);
        }

        v20 = **v12;
        if (v20 <= 30)
        {
          v21 = *(8 * v19);
          if (v20 != -1)
          {
            goto LABEL_13;
          }

          v22 = *v12;
          v15 = OUTLINED_FUNCTION_8_0();
          if (v15)
          {
            v23 = *v12;
LABEL_13:
            discoveryToken = [v21 discoveryToken];
            v29 = v21;
            OUTLINED_FUNCTION_1();
            v15 = LogPrintF();
          }
        }

        ++v19;
      }

      while (v17 != v19);
      v15 = OUTLINED_FUNCTION_19_1(v15, v16);
      v17 = v15;
      if (!v15)
      {
LABEL_19:
        CFRelease(v9);
        break;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  browserWeak = self->_browserWeak;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  NSErrorToOSStatus();
  v8 = **DerivedStorage;
  if (v8 <= 50)
  {
    if (v8 == -1)
    {
      if (!OUTLINED_FUNCTION_8())
      {
        goto LABEL_6;
      }

      v9 = *DerivedStorage;
    }

    OUTLINED_FUNCTION_9();
  }

LABEL_6:

  CFRelease(v6);
}

- (void)session:didUpdateNearbyObjects:.cold.4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"float getNINearbyObjectDistanceNotAvailable(void)") description:{@"APSoftLinking_NearbyInteraction.h", 37, @"%s", dlerror()}];
  __break(1u);
}

@end