@interface AXRemoteElement
+ (BOOL)registerRemoteElement:(id)element remotePort:(unsigned int)port;
+ (id)remoteElementForBlock:(id)block;
+ (id)remoteElementsForBlock:(id)block;
+ (id)remoteElementsForContextId:(unsigned int)id;
+ (void)initialize;
- (AXRemoteElement)initWithUUID:(id)d andRemotePid:(int)pid andContextId:(unsigned int)id;
- (AXRemoteElementChildrenDelegate)remoteChildrenDelegate;
- (BOOL)_accessibilityHasVisibleFrame;
- (BOOL)_accessibilitySetNativeFocus;
- (CGRect)accessibilityFrame;
- (id)_accessibilityActiveKeyboard;
- (id)_accessibilityHandwritingElement;
- (id)_accessibilitySortedElementsWithin;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)_remoteElementWithAttribute:(int64_t)attribute limitToRemoteSubviews:(BOOL)subviews;
- (id)accessibilityContainer;
- (id)accessibilityElements;
- (id)description;
- (int)remotePid;
- (unint64_t)uuidHash;
- (unsigned)_accessibilityContextId;
- (unsigned)contextId;
- (void)_accessibilityIncreaseSelection:(id)selection;
- (void)_accessibilitySetFocusOnElement:(BOOL)element;
- (void)_getRemoteValuesOffMainThread:(id)thread;
- (void)dealloc;
- (void)getLeafElementsFromRemoteSide:(id)side;
- (void)setAccessibilityContainer:(id)container;
- (void)setMachPort:(unsigned int)port;
- (void)unregister;
@end

@implementation AXRemoteElement

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[AXRemoteElement initialize];
  }
}

uint64_t __29__AXRemoteElement_initialize__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = Cache;
  Cache = v0;

  CacheLock = objc_alloc_init(MEMORY[0x1E696AD10]);

  return MEMORY[0x1EEE66BB8]();
}

- (AXRemoteElement)initWithUUID:(id)d andRemotePid:(int)pid andContextId:(unsigned int)id
{
  v5 = *&id;
  v6 = *&pid;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = AXRemoteElement;
  v9 = [(AXRemoteElement *)&v15 init];
  v10 = v9;
  if (v9)
  {
    [(AXRemoteElement *)v9 setUuid:dCopy];
    [(AXRemoteElement *)v10 setRemotePid:v6];
    [(AXRemoteElement *)v10 setContextId:v5];
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    allChildren = v10->_allChildren;
    v10->_allChildren = v11;

    [CacheLock lock];
    [Cache addObject:v10];
    [CacheLock unlock];
    v13 = v10;
  }

  return v10;
}

- (unsigned)contextId
{
  contextRetrieval = [(AXRemoteElement *)self contextRetrieval];

  if (!contextRetrieval)
  {
    return self->_contextId;
  }

  contextRetrieval2 = [(AXRemoteElement *)self contextRetrieval];
  v5 = contextRetrieval2[2]();

  return v5;
}

- (int)remotePid
{
  pidRetrieval = [(AXRemoteElement *)self pidRetrieval];

  if (!pidRetrieval)
  {
    return self->_remotePid;
  }

  pidRetrieval2 = [(AXRemoteElement *)self pidRetrieval];
  v5 = pidRetrieval2[2]();

  return v5;
}

- (unsigned)_accessibilityContextId
{
  v4.receiver = self;
  v4.super_class = AXRemoteElement;
  result = [(AXRemoteElement *)&v4 _accessibilityContextId];
  if (!result)
  {
    if ([(AXRemoteElement *)self onClientSide])
    {
      return 0;
    }

    else
    {
      return [(AXRemoteElement *)self contextId];
    }
  }

  return result;
}

- (id)_accessibilityTextOperations
{
  accessibilityContainer = [(AXRemoteElement *)self accessibilityContainer];
  _accessibilityTextOperations = [accessibilityContainer _accessibilityTextOperations];

  return _accessibilityTextOperations;
}

- (id)_accessibilityTextViewTextOperationResponder
{
  if ([(AXRemoteElement *)self onClientSide])
  {
    accessibilityContainer = [(AXRemoteElement *)self accessibilityContainer];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AXRemoteElement;
    accessibilityContainer = [(AXRemoteElement *)&v5 _accessibilityTextViewTextOperationResponder];
  }

  return accessibilityContainer;
}

- (id)_accessibilityHandwritingElement
{
  v19 = *MEMORY[0x1E69E9840];
  accessibilityElements = [(AXRemoteElement *)self accessibilityElements];
  v4 = [accessibilityElements count];

  if (v4)
  {
    [(AXRemoteElement *)self accessibilityElements];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          _accessibilityResponderElement = [*(*(&v14 + 1) + 8 * i) _accessibilityResponderElement];
          if ([_accessibilityResponderElement _accessibilitySupportsHandwriting])
          {

            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    accessibilityContainer = [(AXRemoteElement *)self accessibilityContainer];
    v12 = accessibilityContainer;
    if (accessibilityContainer != self)
    {
      _accessibilityResponderElement = [(AXRemoteElement *)accessibilityContainer _accessibilityHandwritingElement];

      goto LABEL_16;
    }
  }

  _accessibilityResponderElement = 0;
LABEL_16:

  return _accessibilityResponderElement;
}

- (void)setAccessibilityContainer:(id)container
{
  v11 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  if (containerCopy == self)
  {
    v5 = AXLogRemoteElement();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v7 = 138412546;
      v8 = containerCopy;
      v9 = 2112;
      v10 = callStackSymbols;
      _os_log_impl(&dword_1BF78E000, v5, OS_LOG_TYPE_DEFAULT, "Attempt made to set accessibilityContainer to self (%@), stack = %@", &v7, 0x16u);
    }
  }

  objc_storeWeak(&self->_accessibilityContainer, containerCopy);
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_allChildren;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setAccessibilityContainer:0];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(AXRemoteElement *)self platformCleanup];
  [(AXRemoteElement *)self setMachPort:0];
  v8.receiver = self;
  v8.super_class = AXRemoteElement;
  [(AXRemoteElement *)&v8 dealloc];
}

- (unint64_t)uuidHash
{
  uuid = [(AXRemoteElement *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (void)_getRemoteValuesOffMainThread:(id)thread
{
  threadCopy = thread;
  if (_getRemoteValuesOffMainThread__onceToken != -1)
  {
    [AXRemoteElement _getRemoteValuesOffMainThread:];
  }

  memset(&context, 0, sizeof(context));
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  Current = CFRunLoopGetCurrent();
  v5 = CFRunLoopSourceCreate(0, 0, &context);
  v6 = MEMORY[0x1E695E8E0];
  if (v5)
  {
    CFRunLoopAddSource(Current, v5, *MEMORY[0x1E695E8E0]);
  }

  v7 = _getRemoteValuesOffMainThread__Queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AXRemoteElement__getRemoteValuesOffMainThread___block_invoke_2;
  v11[3] = &unk_1E80D40A8;
  v8 = threadCopy;
  v12 = v8;
  v13 = &v16;
  v14 = v5;
  v15 = Current;
  dispatch_async(v7, v11);
  if ((v17[3] & 1) == 0)
  {
    v9 = *v6;
    v10 = 0.0;
    do
    {
      if (v10 >= AXUIElementMessagingTimeout() / 1000.0)
      {
        break;
      }

      CFRunLoopRunInMode(v9, 0.001, 1u);
      v10 = v10 + 0.001;
    }

    while ((v17[3] & 1) == 0);
  }

  _Block_object_dispose(&v16, 8);
}

void __49__AXRemoteElement__getRemoteValuesOffMainThread___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("AXRemoteElement-BackgroundFetch", v2);
  v1 = _getRemoteValuesOffMainThread__Queue;
  _getRemoteValuesOffMainThread__Queue = v0;
}

void __49__AXRemoteElement__getRemoteValuesOffMainThread___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = 1;
  CFRunLoopSourceSignal(v2);
  CFRunLoopWakeUp(*(a1 + 56));
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRunLoopRemoveSource(*(a1 + 56), v3, *MEMORY[0x1E695E8E0]);
    v4 = *(a1 + 48);

    CFRelease(v4);
  }
}

- (void)getLeafElementsFromRemoteSide:(id)side
{
  sideCopy = side;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AXRemoteElement_getLeafElementsFromRemoteSide___block_invoke;
  v6[3] = &unk_1E80D40D0;
  v6[4] = self;
  v7 = sideCopy;
  v5 = sideCopy;
  [(AXRemoteElement *)self _getRemoteValuesOffMainThread:v6];
}

void __49__AXRemoteElement_getLeafElementsFromRemoteSide___block_invoke(uint64_t a1)
{
  v2 = _AXUIElementCreateWithPIDAndID([*(a1 + 32) remotePid], objc_msgSend(*(a1 + 32), "uuidHash"), 9999);
  v4 = [AXUIElement uiElementWithAXElement:v2];
  v3 = [v4 childrenIncludingPrefetchedAttributesWithCount:1000];
  (*(*(a1 + 40) + 16))();
  if (v2)
  {
    CFRelease(v2);
  }
}

- (id)_remoteElementWithAttribute:(int64_t)attribute limitToRemoteSubviews:(BOOL)subviews
{
  v44 = *MEMORY[0x1E69E9840];
  AppElementWithPid = _AXUIElementCreateAppElementWithPid([(AXRemoteElement *)self remotePid]);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if ([(AXRemoteElement *)self machPort])
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __69__AXRemoteElement__remoteElementWithAttribute_limitToRemoteSubviews___block_invoke;
    v37[3] = &unk_1E80D40F8;
    v37[6] = AppElementWithPid;
    v37[7] = attribute;
    v37[4] = self;
    v37[5] = &v38;
    [(AXRemoteElement *)self _getRemoteValuesOffMainThread:v37];
    if (AppElementWithPid)
    {
      CFRelease(AppElementWithPid);
    }

    if (!v39[3] || (TypeID = AXUIElementGetTypeID(), TypeID != CFGetTypeID(v39[3])))
    {
      selfCopy = 0;
LABEL_20:
      v21 = v39[3];
      if (selfCopy != v21 && v21)
      {
        CFRelease(v21);
        v39[3] = 0;
      }

      goto LABEL_29;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v43 = 0;
    if (!subviews)
    {
      selfCopy = v39[3];
      _Block_object_dispose(buf, 8);
      goto LABEL_29;
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v9 = v39[3];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __69__AXRemoteElement__remoteElementWithAttribute_limitToRemoteSubviews___block_invoke_2;
    v32[3] = &unk_1E80D4120;
    v32[4] = self;
    v32[5] = &v33;
    v32[6] = &v38;
    v32[7] = buf;
    [(AXRemoteElement *)self _getRemoteValuesOffMainThread:v32];
    if (*(v34 + 6))
    {
      pid = 0;
      AXUIElementGetPid(v39[3], &pid);
      v10 = pid;
      if (v10 == [(AXRemoteElement *)self remotePid])
      {
LABEL_15:
        v17 = *&buf[8];
        v18 = *(*&buf[8] + 24);
        if (v18)
        {
          CFRelease(v18);
          v17 = *&buf[8];
          *(*&buf[8] + 24) = 0;
        }

        v19 = AXUIElementCopyAttributeValue(v39[3], 0x7E5, (v17 + 24));
        *(v34 + 6) = v19;
        if (v19)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9820];
        while (1)
        {
          v27 = 0;
          v28 = &v27;
          v29 = 0x2020000000;
          v30 = 0;
          v26[0] = v11;
          v26[1] = 3221225472;
          v26[2] = __69__AXRemoteElement__remoteElementWithAttribute_limitToRemoteSubviews___block_invoke_3;
          v26[3] = &unk_1E80D4148;
          v26[4] = &v33;
          v26[5] = &v38;
          v26[6] = &v27;
          [(AXRemoteElement *)self _getRemoteValuesOffMainThread:v26];
          v12 = v28[3];
          if (*(v34 + 6))
          {
            break;
          }

          if (!v12)
          {
            goto LABEL_34;
          }

          v39[3] = v12;
          AXUIElementGetPid(v12, &pid);
          v13 = v39;
          v14 = v39[3];
          if (v14)
          {
            CFRelease(v14);
            v13 = v39;
            v39[3] = 0;
          }

          v13[3] = 0;
          v15 = pid;
          remotePid = [(AXRemoteElement *)self remotePid];
          _Block_object_dispose(&v27, 8);
          if (v15 == remotePid)
          {
            goto LABEL_15;
          }
        }

        if (v12)
        {
          CFRelease(v12);
          v28[3] = 0;
        }

LABEL_34:
        _Block_object_dispose(&v27, 8);
        if (*(v34 + 6))
        {
          goto LABEL_39;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntValue = [*(*&buf[8] + 24) unsignedIntValue];
      if (unsignedIntValue == [(AXRemoteElement *)self contextId])
      {
        selfCopy = v9;
      }

      else
      {
        selfCopy = 0;
      }

      goto LABEL_40;
    }

LABEL_39:
    selfCopy = 0;
LABEL_40:
    _Block_object_dispose(&v33, 8);
    v25 = *(*&buf[8] + 24);
    if (v25)
    {
      CFRelease(v25);
      *(*&buf[8] + 24) = 0;
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_20;
  }

  v22 = AXLogRemoteElement();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = attribute;
    _os_log_impl(&dword_1BF78E000, v22, OS_LOG_TYPE_INFO, "%@: attempted to get remote element for attribute %ld but there was no mach port", buf, 0x16u);
  }

  if (AppElementWithPid)
  {
    CFRelease(AppElementWithPid);
  }

  selfCopy = self;
LABEL_29:
  _Block_object_dispose(&v38, 8);

  return selfCopy;
}

uint64_t __69__AXRemoteElement__remoteElementWithAttribute_limitToRemoteSubviews___block_invoke(uint64_t a1)
{
  _AXUIElementSetMachPortForNextMessage([*(a1 + 32) machPort]);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = (*(*(a1 + 40) + 8) + 24);

  return AXUIElementCopyAttributeValue(v2, v3, v4);
}

uint64_t __69__AXRemoteElement__remoteElementWithAttribute_limitToRemoteSubviews___block_invoke_2(uint64_t a1)
{
  _AXUIElementSetMachPortForNextMessage([*(a1 + 32) machPort]);
  result = AXUIElementCopyAttributeValue(*(*(*(a1 + 48) + 8) + 24), 0x7E5, (*(*(a1 + 56) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __69__AXRemoteElement__remoteElementWithAttribute_limitToRemoteSubviews___block_invoke_3(void *a1)
{
  result = AXUIElementCopyAttributeValue(*(*(a1[5] + 8) + 24), 0x906, (*(a1[6] + 8) + 24));
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

- (id)_accessibilityActiveKeyboard
{
  if ([(AXRemoteElement *)self onClientSide])
  {
    _accessibilityActiveKeyboard = [(AXRemoteElement *)self _remoteElementWithAttribute:2076 limitToRemoteSubviews:0];
  }

  else
  {
    remoteChildrenDelegate = [(AXRemoteElement *)self remoteChildrenDelegate];
    _accessibilityActiveKeyboard = [remoteChildrenDelegate _accessibilityActiveKeyboard];
  }

  return _accessibilityActiveKeyboard;
}

- (id)_accessibilitySortedElementsWithin
{
  remoteChildrenDelegate = [(AXRemoteElement *)self remoteChildrenDelegate];
  v4 = [remoteChildrenDelegate accessibilityRemoteSubstituteChildren:self];

  return v4;
}

- (id)accessibilityElements
{
  v17 = *MEMORY[0x1E69E9840];
  remoteChildrenDelegate = [(AXRemoteElement *)self remoteChildrenDelegate];
  v4 = [remoteChildrenDelegate accessibilityRemoteSubstituteChildren:self];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_allChildren;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * i) setAccessibilityContainer:0];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_allChildren removeAllObjects];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__AXRemoteElement_accessibilityElements__block_invoke;
  v11[3] = &unk_1E80D4170;
  v11[4] = self;
  [v4 enumerateObjectsUsingBlock:v11];

  return v4;
}

void __40__AXRemoteElement_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAccessibilityContainer:v3];
  [*(*(a1 + 32) + 32) addObject:v4];
}

+ (id)remoteElementForBlock:(id)block
{
  v3 = [self remoteElementsForBlock:block];
  firstObject = [v3 firstObject];

  return firstObject;
}

+ (id)remoteElementsForBlock:(id)block
{
  blockCopy = block;
  [CacheLock lock];
  v4 = Cache;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__AXRemoteElement_remoteElementsForBlock___block_invoke;
  v9[3] = &unk_1E80D41B8;
  v5 = blockCopy;
  v10 = v5;
  v6 = [v4 indexesOfObjectsPassingTest:v9];
  if ([v6 count])
  {
    v7 = [Cache objectsAtIndexes:v6];
  }

  else
  {
    v7 = 0;
  }

  [CacheLock unlock];

  return v7;
}

+ (id)remoteElementsForContextId:(unsigned int)id
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AXRemoteElement_remoteElementsForContextId___block_invoke;
  v5[3] = &__block_descriptor_36_e25_B16__0__AXRemoteElement_8l;
  idCopy = id;
  v3 = [self remoteElementsForBlock:v5];

  return v3;
}

+ (BOOL)registerRemoteElement:(id)element remotePort:(unsigned int)port
{
  v37 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  v6 = AXLogRemoteElement();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = elementCopy;
    _os_log_impl(&dword_1BF78E000, v6, OS_LOG_TYPE_INFO, "+[AXRemoteElement registerRemoteElement]: %@", buf, 0xCu);
  }

  v7 = [elementCopy objectForKey:@"ax-pid"];
  intValue = [v7 intValue];

  v9 = [elementCopy objectForKey:@"ax-context"];
  unsignedIntValue = [v9 unsignedIntValue];

  v11 = [elementCopy objectForKey:@"ax-contextretrieval"];
  v12 = [elementCopy objectForKey:@"ax-pidretrieval"];
  v13 = [elementCopy objectForKey:@"ax-uuid"];
  v14 = [elementCopy objectForKey:@"ax-register"];
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
    [CacheLock lock];
    v16 = Cache;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __52__AXRemoteElement_registerRemoteElement_remotePort___block_invoke;
    v31[3] = &unk_1E80D4200;
    v17 = &v32;
    v18 = v13;
    v32 = v18;
    v19 = [v16 indexesOfObjectsPassingTest:v31];
    [CacheLock unlock];
    if ([v19 count])
    {
      v20 = AXLogRemoteElement();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v19;
        _os_log_impl(&dword_1BF78E000, v20, OS_LOG_TYPE_INFO, "We don't need to re-register, we already have a remote element that works with this UUID: %@", buf, 0xCu);
      }

      v21 = 0;
    }

    else
    {
      v25 = [[AXRemoteElement alloc] initWithUUID:v18 andRemotePid:intValue andContextId:unsignedIntValue];
      [(AXRemoteElement *)v25 setContextRetrieval:v11];
      [(AXRemoteElement *)v25 setPidRetrieval:v12];
      [(AXRemoteElement *)v25 setMachPort:port];
      v33 = @"element";
      v34 = v25;
      v21 = 1;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"ax_remote_element_registered" object:0 userInfo:v26];
    }
  }

  else
  {
    v22 = AXLogRemoteElement();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v13;
      _os_log_impl(&dword_1BF78E000, v22, OS_LOG_TYPE_INFO, "Unregistering remote element: %@", buf, 0xCu);
    }

    [CacheLock lock];
    v23 = Cache;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __52__AXRemoteElement_registerRemoteElement_remotePort___block_invoke_46;
    v29[3] = &unk_1E80D4200;
    v17 = &v30;
    v30 = v13;
    v24 = [v23 indexesOfObjectsPassingTest:v29];
    [v23 removeObjectsAtIndexes:v24];

    [CacheLock unlock];
    v21 = 1;
  }

  return v21;
}

uint64_t __52__AXRemoteElement_registerRemoteElement_remotePort___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __52__AXRemoteElement_registerRemoteElement_remotePort___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)setMachPort:(unsigned int)port
{
  v5 = MEMORY[0x1E69E9A60];
  if (port)
  {
    v6 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], port, 0, 1) == 0;
  }

  else
  {
    v6 = 0;
  }

  machPort = self->_machPort;
  if (machPort)
  {
    mach_port_deallocate(*v5, machPort);
    self->_machPort = 0;
  }

  if (v6)
  {
    self->_machPort = port;
  }
}

- (void)unregister
{
  [CacheLock lock];
  [Cache removeObjectIdenticalTo:self];
  v3 = CacheLock;

  [v3 unlock];
}

- (CGRect)accessibilityFrame
{
  v36 = *MEMORY[0x1E69E9840];
  accessibilityElements = [(AXRemoteElement *)self accessibilityElements];
  if ([accessibilityElements count])
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    accessibilityContainer = accessibilityElements;
    v9 = [accessibilityContainer countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      v12 = v7;
      v13 = v6;
      v14 = v5;
      v15 = v4;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(accessibilityContainer);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v37.origin.x = v15;
          v37.origin.y = v14;
          v37.size.width = v13;
          v37.size.height = v12;
          v39.origin.x = v4;
          v39.origin.y = v5;
          v39.size.width = v6;
          v39.size.height = v7;
          v18 = CGRectEqualToRect(v37, v39);
          [v17 accessibilityFrame];
          if (!v18)
          {
            v40.origin.x = v15;
            v40.origin.y = v14;
            v40.size.width = v13;
            v40.size.height = v12;
            *&v19 = CGRectUnion(*&v19, v40);
          }

          v15 = v19;
          v14 = v20;
          v13 = v21;
          v12 = v22;
        }

        v10 = [accessibilityContainer countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = v7;
      v13 = v6;
      v14 = v5;
      v15 = v4;
    }
  }

  else
  {
    accessibilityContainer = [(AXRemoteElement *)self accessibilityContainer];
    [accessibilityContainer accessibilityFrame];
    v15 = v23;
    v14 = v24;
    v13 = v25;
    v12 = v26;
  }

  v27 = v15;
  v28 = v14;
  v29 = v13;
  v30 = v12;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (BOOL)_accessibilityHasVisibleFrame
{
  v16 = *MEMORY[0x1E69E9840];
  accessibilityElements = [(AXRemoteElement *)self accessibilityElements];
  if ([accessibilityElements count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    accessibilityContainer = accessibilityElements;
    v5 = [accessibilityContainer countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(accessibilityContainer);
          }

          if ([*(*(&v11 + 1) + 8 * i) _accessibilityHasVisibleFrame])
          {
            _accessibilityHasVisibleFrame = 1;
            goto LABEL_13;
          }
        }

        v6 = [accessibilityContainer countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  accessibilityContainer = [(AXRemoteElement *)self accessibilityContainer];
  _accessibilityHasVisibleFrame = [accessibilityContainer _accessibilityHasVisibleFrame];
LABEL_13:

  return _accessibilityHasVisibleFrame;
}

- (void)_accessibilityIncreaseSelection:(id)selection
{
  selectionCopy = selection;
  accessibilityContainer = [(AXRemoteElement *)self accessibilityContainer];
  [accessibilityContainer _accessibilityIncreaseSelection:selectionCopy];
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  remotePid = [(AXRemoteElement *)self remotePid];
  machPort = [(AXRemoteElement *)self machPort];
  contextId = [(AXRemoteElement *)self contextId];
  uuidHash = [(AXRemoteElement *)self uuidHash];
  uuid = [(AXRemoteElement *)self uuid];
  accessibilityContainer = [(AXRemoteElement *)self accessibilityContainer];
  accessibilityContainer2 = [(AXRemoteElement *)self accessibilityContainer];
  v11 = [accessibilityContainer2 valueForKey:@"_accessibilityWindow"];
  v12 = [v14 stringWithFormat:@"%@:%p - pid: %d, mach port: %d context: %u, uuid hash: %lld uuid: %@\n\tParent: %@[%@]", v3, self, remotePid, machPort, contextId, uuidHash, uuid, accessibilityContainer, v11];

  return v12;
}

- (void)_accessibilitySetFocusOnElement:(BOOL)element
{
  elementCopy = element;
  accessibilityContainer = [(AXRemoteElement *)self accessibilityContainer];
  [accessibilityContainer _accessibilitySetFocusOnElement:elementCopy];
}

- (BOOL)_accessibilitySetNativeFocus
{
  accessibilityContainer = [(AXRemoteElement *)self accessibilityContainer];
  _accessibilitySetNativeFocus = [accessibilityContainer _accessibilitySetNativeFocus];

  return _accessibilitySetNativeFocus;
}

- (AXRemoteElementChildrenDelegate)remoteChildrenDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteChildrenDelegate);

  return WeakRetained;
}

- (id)accessibilityContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityContainer);

  return WeakRetained;
}

@end