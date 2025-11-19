@interface AXUIElement
+ (id)proxiedMLElementsForApp:(id)a3;
+ (id)scrollAncestorAtCoordinate:(CGPoint)a3;
+ (id)uiApplicationAtCoordinate:(CGPoint)a3;
+ (id)uiApplicationForContext:(unsigned int)a3;
+ (id)uiApplicationWithPid:(int)a3;
+ (id)uiElementAtCoordinate:(CGPoint)a3 displayId:(unsigned int)a4 allowSameProcess:(BOOL)a5;
+ (id)uiElementAtCoordinate:(CGPoint)a3 forApplication:(__AXUIElement *)a4 contextId:(unsigned int)a5 displayId:(unsigned int)a6 allowSameProcess:(BOOL)a7;
+ (id)uiElementAtCoordinate:(CGPoint)a3 startWithElement:(id)a4;
+ (id)uiElementWithAXElement:(__AXUIElement *)a3;
+ (id)uiElementWithAXElement:(__AXUIElement *)a3 cache:(id)a4;
+ (void)applyElementAttributeCacheScheme:(unint64_t)a3;
+ (void)applyElementCustomAttributeCacheScheme:(id)a3;
+ (void)initialize;
- (AXUIElement)initWithAXElement:(__AXUIElement *)a3;
- (AXUIElement)initWithAXElement:(__AXUIElement *)a3 cache:(id)a4;
- (BOOL)BOOLWithAXAttribute:(int64_t)a3;
- (BOOL)canPerformAXAction:(int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (BOOL)isValidForApplication:(id)a3;
- (BOOL)performAXAction:(int)a3;
- (BOOL)performAXAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5;
- (CGColor)colorWithAXAttribute:(int64_t)a3;
- (CGPath)pathWithAXAttribute:(int64_t)a3;
- (CGPoint)pointWithAXAttribute:(int64_t)a3;
- (CGRect)rectWithAXAttribute:(int64_t)a3;
- (NSDictionary)cachedAttributes;
- (NSMutableDictionary)copyCachedAttributes;
- (_NSRange)_lineRangeForPosition:(unint64_t)a3;
- (_NSRange)_lineRangeWithFaultTolerance:(int64_t)a3 forward:(BOOL)a4;
- (_NSRange)_selectedTextRange;
- (_NSRange)nextCursorRangeInDirection:(unint64_t)a3 unit:(unint64_t)a4 outputRange:(_NSRange *)a5 currentCursorRange:(_NSRange)a6 outputStyleSpeakToRight:(BOOL)a7;
- (_NSRange)rangeWithAXAttribute:(int64_t)a3;
- (__AXUIElement)axElement;
- (id)_attributedValueForRange:(_NSRange)a3;
- (id)_elementsWithParameter:(int64_t)a3 parameters:(id)a4 prefetchAttributes:(BOOL)a5;
- (id)_objectForRange:(_NSRange)a3 withParameterizedAttribute:(int64_t)a4;
- (id)_outputCache;
- (id)_valueForRange:(_NSRange)a3;
- (id)arrayWithAXAttribute:(int64_t)a3;
- (id)childrenIncludingPrefetchedAttributesWithCount:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)nextElementsIncludingPrefetchedAttributesWithCount:(unint64_t)a3;
- (id)nextElementsWithCount:(unint64_t)a3;
- (id)numberWithAXAttribute:(int64_t)a3;
- (id)objectWithAXAttribute:(int64_t)a3;
- (id)objectWithAXAttribute:(int64_t)a3 parameter:(void *)a4;
- (id)previousElementsWithCount:(unint64_t)a3;
- (id)stringWithAXAttribute:(int64_t)a3;
- (id)uiElementsWithAttribute:(int64_t)a3 parameter:(void *)a4 fetchAttributes:(BOOL)a5;
- (id)valueArrayWithAXAttributes:(__CFArray *)a3;
- (int)pid;
- (int64_t)_lineEndPosition;
- (int64_t)_lineStartPosition;
- (unint64_t)hash;
- (unsigned)_activeKeyboardContextId;
- (void)_cachedValueForAttribute:(int64_t)a3;
- (void)_createCache:(BOOL)a3;
- (void)_setCachedValue:(void *)a3 forAttribute:(int64_t)a4;
- (void)dealloc;
- (void)disableCache;
- (void)modifyStaticCacheValue:(void *)a3;
- (void)setAXAttribute:(int64_t)a3 withArray:(id)a4;
- (void)setAXAttribute:(int64_t)a3 withBOOL:(BOOL)a4;
- (void)setAXAttribute:(int64_t)a3 withFloat:(float)a4;
- (void)setAXAttribute:(int64_t)a3 withLong:(int64_t)a4;
- (void)setAXAttribute:(int64_t)a3 withNumber:(id)a4;
- (void)setAXAttribute:(int64_t)a3 withObject:(id)a4 synchronous:(BOOL)a5;
- (void)setAXAttribute:(int64_t)a3 withPoint:(CGPoint)a4;
- (void)setAXAttribute:(int64_t)a3 withRange:(_NSRange)a4;
- (void)setAXAttribute:(int64_t)a3 withSize:(CGSize)a4;
- (void)setAXAttribute:(int64_t)a3 withString:(id)a4;
- (void)setAXAttribute:(int64_t)a3 withUIElement:(id)a4;
- (void)setAXAttribute:(int64_t)a3 withUIElementArray:(id)a4;
- (void)setAXElement:(__AXUIElement *)a3;
- (void)setCachedAttributes:(id)a3;
- (void)updateCache:(int64_t)a3;
- (void)updateCacheWithAttributes:(id)a3;
@end

@implementation AXUIElement

- (id)copyWithZone:(_NSZone *)a3
{
  Data = _AXUIElementCreateData(self->_axElement);
  v5 = _AXUIElementCreateWithData(Data);
  v6 = [(AXUIElement *)self copyCachedAttributes];
  v7 = [AXUIElement uiElementWithAXElement:v5 cache:v6];

  if (Data)
  {
    CFRelease(Data);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

+ (void)applyElementAttributeCacheScheme:(unint64_t)a3
{
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 != 7 && a3 != 8)
      {
        goto LABEL_18;
      }

      v4 = objc_opt_new();
    }

    else if (a3 == 5)
    {
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{&unk_1F3E6B880, &unk_1F3E6B7D8, &unk_1F3E6B820, &unk_1F3E6BE68, &unk_1F3E6BE80, &unk_1F3E6BE98, &unk_1F3E6B808, &unk_1F3E6BEB0, 0}];
    }

    else
    {
      v4 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F3E6B7D8, &unk_1F3E6BCB8, &unk_1F3E6B7F0, &unk_1F3E6B808, &unk_1F3E6B820, &unk_1F3E6B838, &unk_1F3E6B850, &unk_1F3E6B880, &unk_1F3E6BEC8, &unk_1F3E6B898, &unk_1F3E6B988, &unk_1F3E6B8E0, &unk_1F3E6B928, &unk_1F3E6B940, &unk_1F3E6BC28, &unk_1F3E6BB20, &unk_1F3E6BEE0, &unk_1F3E6BEF8, &unk_1F3E6BF10, &unk_1F3E6BF28, &unk_1F3E6BF40, &unk_1F3E6B8B0, &unk_1F3E6BF58, &unk_1F3E6BF70, &unk_1F3E6BF88, 0, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50}];
    }
  }

  else if (a3 > 2)
  {
    if (a3 == 3)
    {
      v3 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
      v14 = &unk_1F3E6BD78;
      v15 = 0;
      v12 = &unk_1F3E6BD48;
      v13 = &unk_1F3E6BD60;
      v10 = &unk_1F3E6BD30;
      goto LABEL_17;
    }

    v4 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F3E6B880, &unk_1F3E6BD90, &unk_1F3E6BDA8, &unk_1F3E6BDC0, &unk_1F3E6BDD8, &unk_1F3E6B808, &unk_1F3E6B7F0, &unk_1F3E6BDF0, &unk_1F3E6BE08, &unk_1F3E6BE20, &unk_1F3E6BE38, &unk_1F3E6BE50, 0, v7, v8, v9, v11, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50}];
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v3 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
        v10 = &unk_1F3E6BD18;
        v12 = 0;
LABEL_17:
        v4 = [v3 initWithObjects:{&unk_1F3E6B7D8, &unk_1F3E6BCB8, &unk_1F3E6B7F0, &unk_1F3E6B808, &unk_1F3E6B820, &unk_1F3E6B838, &unk_1F3E6B880, &unk_1F3E6B898, &unk_1F3E6B988, &unk_1F3E6B8E0, &unk_1F3E6BCD0, &unk_1F3E6BCE8, &unk_1F3E6B940, &unk_1F3E6BD00, &unk_1F3E6BC28, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50}];
        goto LABEL_19;
      }

LABEL_18:
      v4 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F3E6B7D8, &unk_1F3E6BCB8, &unk_1F3E6B7F0, &unk_1F3E6B808, &unk_1F3E6B820, &unk_1F3E6B838, &unk_1F3E6B850, &unk_1F3E6B868, &unk_1F3E6B880, &unk_1F3E6B898, &unk_1F3E6B8B0, &unk_1F3E6B8C8, &unk_1F3E6BB80, &unk_1F3E6BB38, &unk_1F3E6BB50, &unk_1F3E6B988, &unk_1F3E6BB08, &unk_1F3E6B8E0, &unk_1F3E6B928, &unk_1F3E6B940, &unk_1F3E6BC28, &unk_1F3E6BBC8, 0, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50}];
      goto LABEL_19;
    }

    v4 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F3E6B7D8, &unk_1F3E6B7F0, &unk_1F3E6B808, &unk_1F3E6B820, &unk_1F3E6B838, &unk_1F3E6B850, &unk_1F3E6B868, &unk_1F3E6B880, &unk_1F3E6B898, &unk_1F3E6B8B0, &unk_1F3E6B8C8, &unk_1F3E6B8E0, &unk_1F3E6B8F8, &unk_1F3E6B910, &unk_1F3E6B928, &unk_1F3E6B940, &unk_1F3E6B958, &unk_1F3E6B970, &unk_1F3E6B988, &unk_1F3E6B9A0, &unk_1F3E6B9B8, &unk_1F3E6B9D0, &unk_1F3E6B9E8, &unk_1F3E6BA00, &unk_1F3E6BA18, &unk_1F3E6BA30, &unk_1F3E6BA48, &unk_1F3E6BA60, &unk_1F3E6BA78, &unk_1F3E6BA90, &unk_1F3E6BAA8, &unk_1F3E6BAC0, &unk_1F3E6BAD8, &unk_1F3E6BAF0, &unk_1F3E6BB08, &unk_1F3E6BB20, &unk_1F3E6BB38, &unk_1F3E6BB50, &unk_1F3E6BB68, &unk_1F3E6BB80, &unk_1F3E6BB98, &unk_1F3E6BBB0, &unk_1F3E6BBC8, &unk_1F3E6BBE0, &unk_1F3E6BBF8, &unk_1F3E6BC10, &unk_1F3E6BC28, &unk_1F3E6BB80, &unk_1F3E6BB68, &unk_1F3E6BC40, &unk_1F3E6BC58, &unk_1F3E6BC70, &unk_1F3E6BC88, &unk_1F3E6BCA0, 0}];
  }

LABEL_19:
  v5 = _CacheAttributeNamesAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AXUIElement_applyElementAttributeCacheScheme___block_invoke;
  block[3] = &unk_1E80D4250;
  v52 = v4;
  v6 = v4;
  dispatch_sync(v5, block);
}

+ (void)applyElementCustomAttributeCacheScheme:(id)a3
{
  v3 = a3;
  v4 = _CacheAttributeNamesAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AXUIElement_applyElementCustomAttributeCacheScheme___block_invoke;
  block[3] = &unk_1E80D4250;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

+ (void)initialize
{
  if (objc_opt_class() == a1 && _SCRSystemWideAXUIElementRef == 0)
  {
    _SCRSystemWideAXUIElementRef = AXUIElementCreateSystemWide();
    v4 = [AXUIElement uiElementWithAXElement:_SCRSystemWideAXUIElementRef cache:0];
    v5 = _SCRSystemWideUIElement;
    _SCRSystemWideUIElement = v4;

    v6 = dispatch_queue_create("VOElementSyncNotification", 0);
    v7 = _ElementChangedQueue;
    _ElementChangedQueue = v6;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__AXUIElement_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initialize_onceToken_0 != -1)
  {
    dispatch_once(&initialize_onceToken_0, block);
  }
}

uint64_t __25__AXUIElement_initialize__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("AXUIElementCacheNameAccessQueue", 0);
  v3 = _CacheAttributeNamesAccessQueue;
  _CacheAttributeNamesAccessQueue = v2;

  v4 = *(a1 + 32);

  return [v4 applyElementAttributeCacheScheme:0];
}

+ (id)uiElementWithAXElement:(__AXUIElement *)a3
{
  pid = -1;
  AXUIElementGetPid(a3, &pid);
  v5 = pid;
  if (pid <= -2 && v5 + getpid() && pid != kAXUIServerFakePid)
  {
    _AXUIElementIDForElement(a3);
    if (v8 == 9999)
    {
      v9 = -pid;
    }

    else
    {
      v9 = pid;
    }

    v10 = _AXUIElementIDForElement(a3);
    v12 = _AXUIElementCreateWithPIDAndID(v9, v10, v11);
    v13 = [AXUIMLElement cachedElementForParent:v12];
    if (v13)
    {
      if (v12)
      {
        CFRelease(v12);
      }

      v6 = v13;
    }

    else
    {
      v6 = [objc_allocWithZone(AXUIMLElement) initWithParentElement:v12];
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }

  else
  {
    v6 = [objc_allocWithZone(a1) initWithAXElement:a3];
  }

  return v6;
}

+ (id)uiElementWithAXElement:(__AXUIElement *)a3 cache:(id)a4
{
  v6 = a4;
  pid = 0;
  AXUIElementGetPid(a3, &pid);
  v7 = pid;
  if (pid <= -2 && v7 + getpid() && pid != kAXUIServerFakePid)
  {
    _AXUIElementIDForElement(a3);
    if (v10 == 9999)
    {
      v11 = -pid;
    }

    else
    {
      v11 = pid;
    }

    v12 = _AXUIElementIDForElement(a3);
    v14 = _AXUIElementCreateWithPIDAndID(v11, v12, v13);
    v15 = [AXUIMLElement cachedElementForParent:v14];
    if (v15)
    {
      if (v14)
      {
        CFRelease(v14);
      }

      v8 = v15;
    }

    else
    {
      v8 = [objc_allocWithZone(AXUIMLElement) initWithParentElement:v14];
      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  else
  {
    v8 = [objc_allocWithZone(a1) initWithAXElement:a3 cache:v6];
  }

  return v8;
}

+ (id)proxiedMLElementsForApp:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (AXProcessEverWantsMLElements())
  {
    v4 = [v3 stringWithAXAttribute:3003];
    if (AXProcessWantsMLElementsForBundle(v4))
    {
      v5 = AXMediaLogElementVision();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_1BF78E000, v5, OS_LOG_TYPE_INFO, "App wants ML Elements: %@", &v8, 0xCu);
      }

      v6 = [v3 uiElementsWithAttribute:3051];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)scrollAncestorAtCoordinate:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v10[3] = *MEMORY[0x1E69E9840];
  cf = 0;
  v9[0] = @"application";
  v10[0] = AXUIElementSharedSystemWide();
  v9[1] = @"point";
  v5 = [MEMORY[0x1E696B098] valueWithPoint:{x, y}];
  v9[2] = @"hitTestType";
  v10[1] = v5;
  v10[2] = &unk_1F3E6BFA0;
  AXUIElementCopyElementWithParameters(&cf, [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3]);

  if (cf)
  {
    v6 = [AXUIElement uiElementWithAXElement:?];
    CFRelease(cf);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)_activeKeyboardContextId
{
  v2 = [(AXUIElement *)self uiElementsWithAttribute:2076];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 numberWithAXAttribute:2021];
    v5 = [v4 unsignedIntValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)uiElementAtCoordinate:(CGPoint)a3 forApplication:(__AXUIElement *)a4 contextId:(unsigned int)a5 displayId:(unsigned int)a6 allowSameProcess:(BOOL)a7
{
  v40 = *MEMORY[0x1E69E9840];
  element = 0;
  if (a4)
  {
    v8 = *&a6;
    y = a3.y;
    x = a3.x;
    v14 = [AXUIElement uiElementWithAXElement:?];
    v15 = [a1 proxiedMLElementsForApp:v14];
    if (![v15 count] || (v16 = objc_msgSend(v14, "_activeKeyboardContextId")) != 0 && (v17 = v16, +[AXElement systemWideElement](AXElement, "systemWideElement"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "contextIdForPoint:", x, y), v18, v19 == v17))
    {
      v20 = x;
      v21 = y;
      v22 = _AXUIElementCopyElementAtPositionWithParams(a4, &element, 0, 0, a5, v8, 0, v20, v21);
      v23 = 0;
      if (!v22 && element)
      {
        pid = 0;
        AXUIElementGetPid(element, &pid);
        if (a7 || (v24 = pid, v24 != getpid()))
        {
          v23 = [AXUIElement uiElementWithAXElement:element];
          CFRelease(element);
        }

        else
        {
          CFRelease(element);
          v23 = 0;
        }
      }
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v25 = v15;
      v23 = [v25 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v23)
      {
        v26 = *v35;
        while (2)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(v25);
            }

            v28 = *(*(&v34 + 1) + 8 * i);
            if ([v28 isMLElement])
            {
              v29 = v28;
              v30 = [v29 copyElementAtPosition:{x, y}];
              if (v30)
              {
                v31 = v30;
                v23 = [AXUIElement uiElementWithAXElement:v30];
                CFRelease(v31);

                goto LABEL_23;
              }
            }
          }

          v23 = [v25 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)uiElementAtCoordinate:(CGPoint)a3 displayId:(unsigned int)a4 allowSameProcess:(BOOL)a5
{
  y = a3.y;
  x = a3.x;
  cf = 0;
  v13 = 0;
  v8 = a3.x;
  v9 = a3.y;
  if (AXUIElementCopyApplicationAndContextAtPositionWithDisplayID(_SCRSystemWideAXUIElementRef, &cf, &v13, *&a4, v8, v9))
  {
    cf = _SCRSystemWideAXUIElementRef;
  }

  v10 = [a1 uiElementAtCoordinate:x forApplication:y contextId:? displayId:? allowSameProcess:?];
  if (cf)
  {
    v11 = cf == _SCRSystemWideAXUIElementRef;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    CFRelease(cf);
  }

  return v10;
}

+ (id)uiElementAtCoordinate:(CGPoint)a3 startWithElement:(id)a4
{
  valuePtr = a3;
  result = 0;
  v4 = a4;
  v5 = AXValueCreate(kAXValueTypeCGPoint, &valuePtr);
  v6 = [v4 axElement];

  v7 = 0;
  if (AXUIElementCopyParameterizedAttributeValue(v6, 0x16960, v5, &result) || !result)
  {
LABEL_5:
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = CFGetTypeID(result);
  if (v8 == AXUIElementGetTypeID())
  {
    v7 = [AXUIElement uiElementWithAXElement:result];
    CFRelease(result);
    goto LABEL_5;
  }

  v7 = 0;
  if (v5)
  {
LABEL_6:
    CFRelease(v5);
  }

LABEL_7:

  return v7;
}

+ (id)uiApplicationWithPid:(int)a3
{
  AppElementWithPid = _AXUIElementCreateAppElementWithPid(a3);
  v4 = [AXUIElement uiElementWithAXElement:AppElementWithPid];
  if (AppElementWithPid)
  {
    CFRelease(AppElementWithPid);
  }

  return v4;
}

+ (id)uiApplicationAtCoordinate:(CGPoint)a3
{
  cf = 0;
  if (_SCRSystemWideAXUIElementRef)
  {
    x = a3.x;
    y = a3.y;
    if (AXUIElementCopyApplicationAtPosition(_SCRSystemWideAXUIElementRef, &cf, x, y))
    {
      v5 = 0;
    }

    else
    {
      v5 = [AXUIElement uiElementWithAXElement:cf];
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)uiApplicationForContext:(unsigned int)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_13;
  }

  result = 0;
  v13 = @"contextId";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v14[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v5 = AXUIElementCopyParameterizedAttributeValue(_SCRSystemWideAXUIElementRef, 0x16574, v4, &result);
  if (!result || ((CFAutorelease(result), v5 == kAXErrorSuccess) ? (v6 = result == 0) : (v6 = 1), v6 || (v7 = CFGetTypeID(result), v7 != CFNumberGetTypeID()) || (valuePtr = 0, CFNumberGetValue(result, kCFNumberIntType, &valuePtr), !valuePtr)))
  {

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  AppElementWithPid = _AXUIElementCreateAppElementWithPid(valuePtr);
  v9 = [AXUIElement uiElementWithAXElement:AppElementWithPid];
  if (AppElementWithPid)
  {
    CFRelease(AppElementWithPid);
  }

LABEL_14:

  return v9;
}

- (AXUIElement)initWithAXElement:(__AXUIElement *)a3 cache:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = AXUIElement;
  v7 = [(AXUIElement *)&v12 init];
  v8 = v7;
  if (a3)
  {
    if (!v7)
    {
LABEL_8:
      a3 = v8;
      goto LABEL_9;
    }

    v9 = CFRetain(a3);
    v8->_axElement = v9;
    if (v9)
    {
      v8->_isValid = 1;
      if (v6)
      {
        v10 = [v6 mutableCopy];
        [(AXUIElement *)v8 setCachedAttributes:v10];
      }

      else
      {
        [(AXUIElement *)v8 enableCache:0];
      }

      goto LABEL_8;
    }

    a3 = 0;
  }

LABEL_9:

  return a3;
}

- (AXUIElement)initWithAXElement:(__AXUIElement *)a3
{
  v3 = [(AXUIElement *)self initWithAXElement:a3 cache:0];
  v4 = v3;
  if (v3)
  {
    [(AXUIElement *)v3 enableCache:1];
  }

  return v4;
}

- (void)dealloc
{
  axElement = self->_axElement;
  if (axElement)
  {
    CFRelease(axElement);
    self->_axElement = 0;
  }

  v4.receiver = self;
  v4.super_class = AXUIElement;
  [(AXUIElement *)&v4 dealloc];
}

- (NSDictionary)cachedAttributes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_cachedAttributes copy];
  objc_sync_exit(v2);

  return v3;
}

- (NSMutableDictionary)copyCachedAttributes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_cachedAttributes ax_deepMutableCopy];
  objc_sync_exit(v2);

  return v3;
}

- (void)_cachedValueForAttribute:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  cachedAttributes = v4->_cachedAttributes;
  v6 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  v7 = [(NSMutableDictionary *)cachedAttributes objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = CFRetain(v7);
    v9 = CFAutorelease(v8);
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v4);

  return v9;
}

- (void)_setCachedValue:(void *)a3 forAttribute:(int64_t)a4
{
  obj = self;
  objc_sync_enter(obj);
  cachedAttributes = obj->_cachedAttributes;
  v7 = [MEMORY[0x1E696AD98] numberWithLong:a4];
  if (a3)
  {
    [(NSMutableDictionary *)cachedAttributes setObject:a3 forKeyedSubscript:v7];
  }

  else
  {
    [(NSMutableDictionary *)cachedAttributes removeObjectForKey:v7];
  }

  objc_sync_exit(obj);
}

- (int)pid
{
  axElement = self->_axElement;
  if (axElement)
  {
    pid = 0;
    AXUIElementGetPid(axElement, &pid);
    LODWORD(axElement) = pid;
  }

  return axElement;
}

- (unint64_t)hash
{
  if (self->_axElement)
  {
    axElement = self->_axElement;

    return CFHash(axElement);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = AXUIElement;
    return [(AXUIElement *)&v6 hash];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    goto LABEL_8;
  }

  if (!v4)
  {
    v8 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ((axElement = v5->_axElement, v7 = self->_axElement, v7 == axElement) || axElement && v7 && CFEqual(v7, axElement)))
  {
LABEL_8:
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = AXUIElement;
    v8 = [(AXUIElement *)&v10 isEqual:v5];
  }

LABEL_11:

  return v8;
}

- (__AXUIElement)axElement
{
  if (self->_isValid)
  {
    return self->_axElement;
  }

  else
  {
    return 0;
  }
}

- (void)setAXElement:(__AXUIElement *)a3
{
  axElement = self->_axElement;
  if (axElement != a3)
  {
    if (axElement)
    {
      CFRelease(axElement);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_axElement = a3;
  }
}

- (void)modifyStaticCacheValue:(void *)a3
{
  if (!a3)
  {
    return *MEMORY[0x1E695E738];
  }

  v3 = a3;
  if (AXValueGetType(a3) == kAXValueTypeAXError)
  {
    return *MEMORY[0x1E695E738];
  }

  v5 = CFGetTypeID(v3);
  if (v5 != AXUIElementGetTypeID())
  {
    return v3;
  }

  return [AXUIElement uiElementWithAXElement:v3];
}

- (void)setCachedAttributes:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  cachedAttributes = obj->_cachedAttributes;
  obj->_cachedRefCount = 0;
  obj->_cachedAttributes = v4;

  obj->_cachedRefCount = obj->_cachedAttributes != 0;
  objc_sync_exit(obj);
}

- (void)disableCache
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = 134218496;
  v6 = a1;
  v7 = 2048;
  v8 = v3;
  v9 = 2048;
  v10 = v4;
  _os_log_debug_impl(&dword_1BF78E000, log, OS_LOG_TYPE_DEBUG, "SCRAX[%p] AX[%p]: CACHE DISABLED(%ld)", &v5, 0x20u);
}

- (void)_createCache:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (!v4->_cachedAttributes)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    cachedAttributes = v4->_cachedAttributes;
    v4->_cachedAttributes = v5;
  }

  objc_sync_exit(v4);

  if (v3)
  {
    if (_CacheAttributeNamesAccessQueue)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__0;
      v12 = __Block_byref_object_dispose__0;
      v13 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__AXUIElement__createCache___block_invoke;
      block[3] = &unk_1E80D3D68;
      block[4] = &v8;
      dispatch_sync(_CacheAttributeNamesAccessQueue, block);
      [(AXUIElement *)v4 updateCacheWithAttributes:v9[5]];
      _Block_object_dispose(&v8, 8);
    }
  }
}

- (void)updateCacheWithAttributes:(id)a3
{
  v14 = a3;
  v4 = [(AXUIElement *)self valueArrayWithAXAttributes:?];
  v5 = [v4 count];
  if (v4)
  {
    if (v5)
    {
      v6 = [v14 count];
      if (v6)
      {
        v7 = v6;
        for (i = 0; i != v7; ++i)
        {
          v9 = [v4 objectAtIndexedSubscript:i];

          if (v9)
          {
            v10 = [v14 objectAtIndex:i];
            v11 = [v10 unsignedIntValue];

            if (AXValueGetType(v9) == kAXValueTypeAXError)
            {
              v12 = [MEMORY[0x1E695DFB0] null];
              v13 = self;
            }

            else
            {
              v13 = self;
              v12 = v9;
            }

            [(AXUIElement *)v13 _setCachedValue:v12 forAttribute:v11];
          }
        }
      }
    }
  }
}

- (BOOL)isValidForApplication:(id)a3
{
  v4 = a3;
  if (!v4 || (pid = 0, (axElement = self->_axElement) == 0) || (v21 = 0, AXUIElementGetPid(axElement, &pid) == kAXErrorInvalidUIElement) || (v6 = v4[1]) == 0 || AXUIElementGetPid(v6, &v21) == kAXErrorInvalidUIElement || pid != v21 || (cachedRefCount = self->_cachedRefCount, self->_cachedRefCount = 0, -[AXUIElement pointWithAXAttribute:](self, "pointWithAXAttribute:", 2062), v9 = v8, v11 = v10, -[AXUIElement numberWithAXAttribute:](self, "numberWithAXAttribute:", 2021), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 unsignedIntValue], v12, -[AXUIElement numberWithAXAttribute:](self, "numberWithAXAttribute:", 2123), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "unsignedIntValue"), v14, v16 = AXConvertPointFromHostedCoordinates(v13, v15, v9, v11), self->_cachedRefCount = cachedRefCount, v17 = 1, +[AXUIElement uiElementAtCoordinate:forApplication:contextId:displayId:allowSameProcess:](AXUIElement, "uiElementAtCoordinate:forApplication:contextId:displayId:allowSameProcess:", self->_axElement, v13, v15, 1, v16), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqual:", self), v18, (v19 & 1) == 0))
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)isValid
{
  if (!self->_isValid)
  {
    return 0;
  }

  axElement = self->_axElement;
  pid = 0;
  v4 = AXUIElementGetPid(axElement, &pid);
  if (axElement)
  {
    v5 = v4 == kAXErrorInvalidUIElement;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5 || pid <= 0;
  v7 = !v6;
  if (v6)
  {
    [(AXUIElement *)self _invalidate];
  }

  return v7;
}

- (id)_outputCache
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = self;
  objc_sync_enter(v4);
  cachedAttributes = v4->_cachedAttributes;
  if (cachedAttributes)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(NSMutableDictionary *)cachedAttributes allKeys];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)v4->_cachedAttributes objectForKeyedSubscript:v10];
          [v3 appendFormat:@"Cache: key: %@ - value: %@", v10, v11];
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    objc_sync_exit(v4);
    v12 = v3;
  }

  else
  {
    objc_sync_exit(v4);

    v12 = @"No Cache";
  }

  return v12;
}

- (void)updateCache:(int64_t)a3
{
  if (self->_isValid)
  {
    value[3] = v3;
    value[4] = v4;
    axElement = self->_axElement;
    if (axElement)
    {
      value[0] = 0;
      v8 = AXUIElementCopyAttributeValue(axElement, a3, value);
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = value[0] == 0;
      }

      if (v9)
      {
        if (v8 == kAXErrorNoValue)
        {
          -[AXUIElement _setCachedValue:forAttribute:](self, "_setCachedValue:forAttribute:", [MEMORY[0x1E695DFB0] null], a3);
        }
      }

      else
      {
        [AXUIElement _setCachedValue:"_setCachedValue:forAttribute:" forAttribute:?];
        CFRelease(value[0]);
      }
    }
  }
}

- (id)arrayWithAXAttribute:(int64_t)a3
{
  v5 = [(AXUIElement *)self _cachedValueForAttribute:?];
  value = v5;
  if (v5 == *MEMORY[0x1E695E738])
  {
    v9 = 0;
    goto LABEL_17;
  }

  if (v5)
  {
    goto LABEL_14;
  }

  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v7 = AXUIElementCopyAttributeValue(axElement, a3, &value);
      switch(v7)
      {
        case kAXErrorNoValue:
          -[AXUIElement _setCachedValue:forAttribute:](self, "_setCachedValue:forAttribute:", [MEMORY[0x1E695DFB0] null], a3);
          break;
        case kAXErrorInvalidUIElement:
          [(AXUIElement *)self _invalidate];
          break;
        case kAXErrorSuccess:
          v8 = CFGetTypeID(value);
          if (v8 != CFArrayGetTypeID())
          {
            CFRelease(value);
            v12 = 0;
            value = 0;
            goto LABEL_16;
          }

          [(AXUIElement *)self _setCachedValue:value forAttribute:a3];
          CFAutorelease(value);
          break;
      }
    }
  }

  v5 = value;
  if (value)
  {
LABEL_14:
    v10 = CFGetTypeID(v5);
    TypeID = CFNullGetTypeID();
    v12 = value;
    if (v10 == TypeID)
    {
      v12 = 0;
    }

    goto LABEL_16;
  }

  v12 = 0;
LABEL_16:
  v9 = v12;
LABEL_17:

  return v9;
}

- (id)stringWithAXAttribute:(int64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(AXUIElement *)self _cachedValueForAttribute:?];
  value = v5;
  if (v5 == *MEMORY[0x1E695E738])
  {
    goto LABEL_5;
  }

  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFStringGetTypeID() && !AXIsAXAttributedString())
    {
LABEL_5:
      v8 = 0;
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v10 = AXUIElementCopyAttributeValue(axElement, a3, &value);
      if (v10 == kAXErrorNoValue)
      {
        -[AXUIElement _setCachedValue:forAttribute:](self, "_setCachedValue:forAttribute:", [MEMORY[0x1E695DFB0] null], a3);
      }

      else
      {
        v11 = v10;
        if (v10)
        {
          v13 = AXRuntimeLogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v18 = self->_axElement;
            *buf = 134218752;
            v21 = self;
            v22 = 2048;
            v23 = v18;
            v24 = 2048;
            v25 = a3;
            v26 = 2048;
            v27 = v11;
            _os_log_error_impl(&dword_1BF78E000, v13, OS_LOG_TYPE_ERROR, "error in stringWithAXAttribute. AXUIElement:%p ref:%p attr:%ld error:%ld", buf, 0x2Au);
          }

          if (v11 == kAXErrorInvalidUIElement)
          {
            [(AXUIElement *)self _invalidate];
          }
        }

        else
        {
          v12 = CFGetTypeID(value);
          if (v12 != CFStringGetTypeID() && !AXIsAXAttributedString())
          {
            CFRelease(value);
            v16 = 0;
            value = 0;
            goto LABEL_21;
          }

          [(AXUIElement *)self _setCachedValue:value forAttribute:a3];
          CFAutorelease(value);
        }
      }
    }
  }

  v6 = value;
  if (value)
  {
LABEL_19:
    v14 = CFGetTypeID(v6);
    TypeID = CFNullGetTypeID();
    v16 = value;
    if (v14 == TypeID)
    {
      v16 = 0;
    }

    goto LABEL_21;
  }

  v16 = 0;
LABEL_21:
  v8 = v16;
LABEL_22:

  return v8;
}

- (BOOL)BOOLWithAXAttribute:(int64_t)a3
{
  v5 = [(AXUIElement *)self _cachedValueForAttribute:?];
  value = v5;
  if (v5 == *MEMORY[0x1E695E738])
  {
    return 0;
  }

  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFNullGetTypeID())
    {
      return CFBooleanGetValue(v6) != 0;
    }

    return 0;
  }

  if (!self->_isValid)
  {
    return 0;
  }

  axElement = self->_axElement;
  if (!axElement)
  {
    return 0;
  }

  v10 = AXUIElementCopyAttributeValue(axElement, a3, &value);
  if (v10 == kAXErrorNoValue)
  {
    -[AXUIElement _setCachedValue:forAttribute:](self, "_setCachedValue:forAttribute:", [MEMORY[0x1E695DFB0] null], a3);
    return 0;
  }

  if (v10 == kAXErrorInvalidUIElement)
  {
    [(AXUIElement *)self _invalidate];
    return 0;
  }

  if (v10)
  {
    return 0;
  }

  v11 = CFGetTypeID(value);
  if (v11 == CFBooleanGetTypeID())
  {
    [(AXUIElement *)self _setCachedValue:value forAttribute:a3];
    v8 = CFBooleanGetValue(value) != 0;
  }

  else
  {
    v13 = CFGetTypeID(value);
    if (v13 == CFNumberGetTypeID())
    {
      [(AXUIElement *)self _setCachedValue:value forAttribute:a3];
      v8 = [value BOOLValue];
    }

    else
    {
      v8 = 0;
    }
  }

  CFRelease(value);
  return v8;
}

- (id)numberWithAXAttribute:(int64_t)a3
{
  v5 = [(AXUIElement *)self _cachedValueForAttribute:?];
  value = v5;
  if (v5 == *MEMORY[0x1E695E738])
  {
    v9 = 0;
    goto LABEL_17;
  }

  if (v5)
  {
    goto LABEL_14;
  }

  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v7 = AXUIElementCopyAttributeValue(axElement, a3, &value);
      switch(v7)
      {
        case kAXErrorNoValue:
          -[AXUIElement _setCachedValue:forAttribute:](self, "_setCachedValue:forAttribute:", [MEMORY[0x1E695DFB0] null], a3);
          break;
        case kAXErrorInvalidUIElement:
          [(AXUIElement *)self _invalidate];
          break;
        case kAXErrorSuccess:
          v8 = CFGetTypeID(value);
          if (v8 != CFNumberGetTypeID())
          {
            CFRelease(value);
            v12 = 0;
            value = 0;
            goto LABEL_16;
          }

          [(AXUIElement *)self _setCachedValue:value forAttribute:a3];
          CFAutorelease(value);
          break;
      }
    }
  }

  v5 = value;
  if (value)
  {
LABEL_14:
    v10 = CFGetTypeID(v5);
    TypeID = CFNullGetTypeID();
    v12 = value;
    if (v10 == TypeID)
    {
      v12 = 0;
    }

    goto LABEL_16;
  }

  v12 = 0;
LABEL_16:
  v9 = v12;
LABEL_17:

  return v9;
}

- (CGPoint)pointWithAXAttribute:(int64_t)a3
{
  v5 = [(AXUIElement *)self _cachedValueForAttribute:?];
  value = v5;
  v6 = *MEMORY[0x1E695E738];
  valuePtr = *MEMORY[0x1E695EFF8];
  if (v5 != v6)
  {
    v7 = v5;
    if (v5)
    {
      v8 = CFGetTypeID(v5);
      if (v8 != CFNullGetTypeID())
      {
        AXValueGetValue(v7, kAXValueTypeCGPoint, &valuePtr);
      }
    }

    else if (self->_isValid)
    {
      axElement = self->_axElement;
      if (axElement)
      {
        v10 = AXUIElementCopyAttributeValue(axElement, a3, &value);
        switch(v10)
        {
          case kAXErrorNoValue:
            -[AXUIElement _setCachedValue:forAttribute:](self, "_setCachedValue:forAttribute:", [MEMORY[0x1E695DFB0] null], a3);
            break;
          case kAXErrorInvalidUIElement:
            [(AXUIElement *)self _invalidate];
            break;
          case kAXErrorSuccess:
            if (AXValueGetType(value) == kAXValueTypeCGPoint)
            {
              [(AXUIElement *)self _setCachedValue:value forAttribute:a3];
              AXValueGetValue(value, kAXValueTypeCGPoint, &valuePtr);
            }

            CFRelease(value);
            break;
        }
      }
    }
  }

  v12 = *(&valuePtr + 1);
  v11 = *&valuePtr;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPath)pathWithAXAttribute:(int64_t)a3
{
  result = [(AXUIElement *)self _cachedValueForAttribute:?];
  value = result;
  if (result == *MEMORY[0x1E695E738])
  {
    return 0;
  }

  if (!result)
  {
    if (self->_isValid)
    {
      axElement = self->_axElement;
      if (axElement)
      {
        v7 = AXUIElementCopyAttributeValue(axElement, a3, &value);
        if (v7 == kAXErrorNoValue)
        {
          -[AXUIElement _setCachedValue:forAttribute:](self, "_setCachedValue:forAttribute:", [MEMORY[0x1E695DFB0] null], a3);
        }

        else
        {
          if (v7 != kAXErrorInvalidUIElement)
          {
            if (v7)
            {
              goto LABEL_12;
            }

            v8 = CFGetTypeID(value);
            if (v8 == CGPathGetTypeID())
            {
              [(AXUIElement *)self _setCachedValue:value forAttribute:a3];
              CFAutorelease(value);
              goto LABEL_12;
            }

            CFRelease(value);
            return 0;
          }

          [(AXUIElement *)self _invalidate];
        }
      }
    }

LABEL_12:
    result = value;
    if (!value)
    {
      return result;
    }
  }

  v9 = CFGetTypeID(result);
  if (v9 == CFNullGetTypeID())
  {
    return 0;
  }

  else
  {
    return value;
  }
}

- (CGRect)rectWithAXAttribute:(int64_t)a3
{
  v5 = [(AXUIElement *)self _cachedValueForAttribute:?];
  value = v5;
  v6 = *MEMORY[0x1E695E738];
  v7 = *(MEMORY[0x1E695F058] + 16);
  valuePtr = *MEMORY[0x1E695F058];
  v18 = v7;
  if (v5 != v6)
  {
    v8 = v5;
    if (v5)
    {
      v9 = CFGetTypeID(v5);
      if (v9 != CFNullGetTypeID())
      {
        AXValueGetValue(v8, kAXValueTypeCGRect, &valuePtr);
      }
    }

    else if (self->_isValid)
    {
      axElement = self->_axElement;
      if (axElement)
      {
        v11 = AXUIElementCopyAttributeValue(axElement, a3, &value);
        switch(v11)
        {
          case kAXErrorNoValue:
            -[AXUIElement _setCachedValue:forAttribute:](self, "_setCachedValue:forAttribute:", [MEMORY[0x1E695DFB0] null], a3);
            break;
          case kAXErrorInvalidUIElement:
            [(AXUIElement *)self _invalidate];
            break;
          case kAXErrorSuccess:
            if (AXValueGetType(value) == kAXValueTypeCGRect)
            {
              [(AXUIElement *)self _setCachedValue:value forAttribute:a3];
              AXValueGetValue(value, kAXValueTypeCGRect, &valuePtr);
            }

            CFRelease(value);
            break;
        }
      }
    }
  }

  v13 = *(&valuePtr + 1);
  v12 = *&valuePtr;
  v15 = *(&v18 + 1);
  v14 = *&v18;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (_NSRange)rangeWithAXAttribute:(int64_t)a3
{
  v5 = [(AXUIElement *)self _cachedValueForAttribute:?];
  value = v5;
  if (v5 == *MEMORY[0x1E695E738])
  {
    valuePtr = xmmword_1BF7DE640;
  }

  else
  {
    v6 = v5;
    valuePtr = 0uLL;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      if (v7 != CFNullGetTypeID())
      {
        AXValueGetValue(v6, kAXValueTypeCFRange, &valuePtr);
      }
    }

    else if (self->_isValid)
    {
      axElement = self->_axElement;
      if (axElement)
      {
        v9 = AXUIElementCopyAttributeValue(axElement, a3, &value);
        switch(v9)
        {
          case kAXErrorNoValue:
            -[AXUIElement _setCachedValue:forAttribute:](self, "_setCachedValue:forAttribute:", [MEMORY[0x1E695DFB0] null], a3);
            break;
          case kAXErrorInvalidUIElement:
            [(AXUIElement *)self _invalidate];
            break;
          case kAXErrorSuccess:
            if (AXValueGetType(value) == kAXValueTypeCFRange)
            {
              [(AXUIElement *)self _setCachedValue:value forAttribute:a3];
              AXValueGetValue(value, kAXValueTypeCFRange, &valuePtr);
            }

            CFRelease(value);
            break;
        }
      }
    }
  }

  v11 = *(&valuePtr + 1);
  v10 = valuePtr;
  result.length = v11;
  result.location = v10;
  return result;
}

- (CGColor)colorWithAXAttribute:(int64_t)a3
{
  result = [(AXUIElement *)self _cachedValueForAttribute:?];
  value = result;
  if (!result)
  {
    if (self->_isValid)
    {
      axElement = self->_axElement;
      if (axElement)
      {
        v7 = AXUIElementCopyAttributeValue(axElement, a3, &value);
        if (v7 == kAXErrorNoValue)
        {
          v8 = [MEMORY[0x1E695DFB0] null];
        }

        else
        {
          if (v7 == kAXErrorInvalidUIElement)
          {
            [(AXUIElement *)self _invalidate];
            goto LABEL_13;
          }

          if (v7)
          {
            goto LABEL_13;
          }

          if (value)
          {
            CFAutorelease(value);
            v8 = value;
          }

          else
          {
            v8 = 0;
          }
        }

        [(AXUIElement *)self _setCachedValue:v8 forAttribute:a3];
      }
    }

LABEL_13:
    result = value;
    if (!value)
    {
      return result;
    }
  }

  v9 = CFGetTypeID(result);
  if (v9 == CGColorGetTypeID())
  {
    return value;
  }

  else
  {
    return 0;
  }
}

- (id)objectWithAXAttribute:(int64_t)a3
{
  value = [(AXUIElement *)self _cachedValueForAttribute:?];
  if (!value && self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v6 = AXUIElementCopyAttributeValue(axElement, a3, &value);
      switch(v6)
      {
        case kAXErrorNoValue:
          v7 = [MEMORY[0x1E695DFB0] null];
LABEL_12:
          [(AXUIElement *)self _setCachedValue:v7 forAttribute:a3];
          break;
        case kAXErrorInvalidUIElement:
          [(AXUIElement *)self _invalidate];
          break;
        case kAXErrorSuccess:
          if (value)
          {
            CFAutorelease(value);
            v7 = value;
          }

          else
          {
            v7 = 0;
          }

          goto LABEL_12;
      }
    }
  }

  if ((a3 - 3000) <= 9 && ((1 << (a3 + 72)) & 0x205) != 0)
  {
    v8 = [AXUIElement proxiedMLElementsForApp:self];
    if ([v8 count])
    {
      v9 = [v8 firstObject];
      v10 = [v9 nextElementsWithCount:1];
      v11 = [v10 firstObject];
      value = [v11 axElement];
    }
  }

  if (value)
  {
    v12 = CFGetTypeID(value);
    TypeID = CFNullGetTypeID();
    v14 = value;
    if (v12 == TypeID)
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v15;
}

- (id)objectWithAXAttribute:(int64_t)a3 parameter:(void *)a4
{
  if (self->_isValid)
  {
    axElement = self->_axElement;
    result = 0;
    if (axElement)
    {
      v8 = AXUIElementConvertOutgoingType(a4);
      if (AXUIElementCopyParameterizedAttributeValue(axElement, a3, v8, &result) == kAXErrorInvalidUIElement)
      {
        [(AXUIElement *)self _invalidate];
      }

      v9 = result;
      if (result)
      {
        v9 = CFAutorelease(result);
      }
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

- (id)valueArrayWithAXAttributes:(__CFArray *)a3
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!self->_isValid)
  {
    goto LABEL_22;
  }

  axElement = self->_axElement;
  if (!axElement)
  {
    goto LABEL_22;
  }

  values = 0;
  v7 = AXUIElementCopyMultipleAttributeValues(axElement, a3, 0, &values);
  v8 = values;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = values == 0;
  }

  if (v9)
  {
    if (v7 != kAXErrorInvalidUIElement)
    {
      goto LABEL_20;
    }

    [(AXUIElement *)self _invalidate];
  }

  else
  {
    Count = CFArrayGetCount(values);
    if (Count)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(values, i);
        if (ValueAtIndex)
        {
          v14 = ValueAtIndex;
          v15 = CFGetTypeID(ValueAtIndex);
          if (v15 == AXUIElementGetTypeID())
          {
            v16 = [AXUIElement uiElementWithAXElement:v14 cache:0];
            if (v16)
            {
              CFArrayAppendValue(Mutable, v16);
            }
          }

          else
          {
            CFArrayAppendValue(Mutable, v14);
          }
        }
      }
    }
  }

  v8 = values;
LABEL_20:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_22:
  v17 = CFAutorelease(Mutable);

  return v17;
}

- (BOOL)performAXAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5
{
  v6 = a4;
  v7 = v6;
  if (self->_isValid && self->_axElement)
  {
    v8 = AXUIElementConvertOutgoingType(v6);

    v9 = AXUIElementPerformFencedActionWithValue();
    if (v9)
    {
      if (v9 == -25202)
      {
        [(AXUIElement *)self _invalidate];
      }

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    v7 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)canPerformAXAction:(int)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];
  v5 = [(AXUIElement *)self objectWithAXAttribute:95221 parameter:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)performAXAction:(int)a3
{
  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v5 = AXUIElementPerformAction(axElement, *&a3);
      if (v5)
      {
        if (v5 == kAXErrorInvalidUIElement)
        {
          [(AXUIElement *)self _invalidate];
        }

        LOBYTE(axElement) = 0;
      }

      else
      {
        LOBYTE(axElement) = 1;
      }
    }
  }

  else
  {
    LOBYTE(axElement) = 0;
  }

  return axElement;
}

- (id)uiElementsWithAttribute:(int64_t)a3 parameter:(void *)a4 fetchAttributes:(BOOL)a5
{
  v5 = a5;
  v28[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  v11 = [(AXUIElement *)self _cachedValueForAttribute:a3];
  result = v11;
  if (v11)
  {
    v12 = v11;
    v13 = CFGetTypeID(v11);
    if (v13 == CFArrayGetTypeID())
    {
      goto LABEL_16;
    }

    goto LABEL_2;
  }

LABEL_3:
  if (!self->_isValid)
  {
    goto LABEL_26;
  }

  axElement = self->_axElement;
  if (!axElement)
  {
    goto LABEL_26;
  }

  if (a4)
  {
    v10 = AXUIElementCopyParameterizedAttributeValue(axElement, a3, a4, &result);
  }

  else
  {
    v10 = AXUIElementCopyAttributeValue(axElement, a3, &result);
  }

  v14 = v10;
  if (!result)
  {
    goto LABEL_24;
  }

  CFAutorelease(result);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = result;
  if ((isKindOfClass & 1) == 0)
  {
    v28[0] = result;
    v16 = MEMORY[0x1E695DEC8];
    v17 = result;
    v12 = [v16 arrayWithObjects:v28 count:1];

    result = v12;
  }

  if (v14 || !v12)
  {
LABEL_24:
    if (v14 == kAXErrorInvalidUIElement)
    {
      [(AXUIElement *)self _invalidate];
    }

    goto LABEL_26;
  }

LABEL_16:
  v18 = CFGetTypeID(v12);
  if (v18 != CFArrayGetTypeID())
  {
LABEL_26:
    v19 = 0;
    goto LABEL_27;
  }

  v19 = [MEMORY[0x1E695DF70] array];
  Count = CFArrayGetCount(result);
  if (Count >= 1)
  {
    v21 = Count;
    for (i = 0; i != v21; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(result, i);
      if (v5)
      {
        v24 = [AXUIElement uiElementWithAXElement:ValueAtIndex];
      }

      else
      {
        v25 = [MEMORY[0x1E695DF90] dictionary];
        v24 = [AXUIElement uiElementWithAXElement:ValueAtIndex cache:v25];
      }

      [v19 addObject:v24];
    }
  }

LABEL_27:

  return v19;
}

- (id)nextElementsWithCount:(unint64_t)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"elementCount";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [(AXUIElement *)self _elementsWithParameter:92501 parameters:v5 prefetchAttributes:0];

  return v6;
}

- (id)nextElementsIncludingPrefetchedAttributesWithCount:(unint64_t)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"elementCount";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [(AXUIElement *)self _elementsWithParameter:92501 parameters:v5 prefetchAttributes:1];

  return v6;
}

- (id)previousElementsWithCount:(unint64_t)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"elementCount";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [(AXUIElement *)self _elementsWithParameter:92502 parameters:v5 prefetchAttributes:0];

  return v6;
}

- (id)childrenIncludingPrefetchedAttributesWithCount:(unint64_t)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"elementCount";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [(AXUIElement *)self _elementsWithParameter:95252 parameters:v5 prefetchAttributes:1];

  return v6;
}

- (id)_elementsWithParameter:(int64_t)a3 parameters:(id)a4 prefetchAttributes:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  if (!self->_isValid)
  {
    result = 0;
    goto LABEL_16;
  }

  axElement = self->_axElement;
  result = 0;
  if (!axElement || ((v11 = AXUIElementCopyParameterizedAttributeValue(axElement, a3, v9, &result), v12 = result, v11 == kAXErrorSuccess) ? (v13 = result == 0) : (v13 = 1), v13 ? (v14 = v11 == kAXErrorNoValue) : (v14 = 1), v14))
  {
LABEL_16:
    v16 = [v9 objectForKey:@"elementCount"];
    v17 = [v16 unsignedIntegerValue];

    if (!v17)
    {
      [AXUIElement _elementsWithParameter:a2 parameters:self prefetchAttributes:?];
    }

    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:v17];
    if (result)
    {
      Count = CFArrayGetCount(result);
      if (Count >= 1)
      {
        v20 = Count;
        for (i = 0; i != v20; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(result, i);
          if (v5)
          {
            [AXUIElement uiElementWithAXElement:ValueAtIndex];
          }

          else
          {
            [AXUIElement uiElementWithAXElement:ValueAtIndex cache:0];
          }
          v23 = ;
          [v18 addObject:v23];
        }
      }

      CFRelease(result);
    }

    v24 = [(AXUIElement *)self stringWithAXAttribute:3003];
    if (AXProcessWantsMLElementsForBundle(v24))
    {
      v25 = [(AXUIElement *)self numberWithAXAttribute:2004];
      if (([v25 unsignedLongValue] & 0x400000) == 0)
      {
        v28 = [(AXUIElement *)self BOOLWithAXAttribute:2044];

        if (!v28)
        {
          v26 = [AXUIMLElement elementsInDirection:a3 withElement:self nextElements:v18];
          goto LABEL_31;
        }

LABEL_30:
        v26 = v18;
LABEL_31:
        v15 = v26;

        goto LABEL_32;
      }
    }

    goto LABEL_30;
  }

  if (v11 == kAXErrorInvalidUIElement)
  {
    [(AXUIElement *)self _invalidate];
    v12 = result;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v15 = 0;
LABEL_32:

  return v15;
}

- (void)setAXAttribute:(int64_t)a3 withBOOL:(BOOL)a4
{
  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v6 = MEMORY[0x1E695E4D0];
      if (!a4)
      {
        v6 = MEMORY[0x1E695E4C0];
      }

      if (AXUIElementSetAttributeValue(axElement, a3, *v6) == kAXErrorInvalidUIElement)
      {

        [(AXUIElement *)self _invalidate];
      }
    }
  }
}

- (void)setAXAttribute:(int64_t)a3 withString:(id)a4
{
  v6 = a4;
  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v8 = v6;
      if (AXUIElementSetAttributeValue(axElement, a3, v6) == kAXErrorInvalidUIElement)
      {
        [(AXUIElement *)self _invalidate];
      }
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)setAXAttribute:(int64_t)a3 withLong:(int64_t)a4
{
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLong:a4];
  [(AXUIElement *)self setAXAttribute:a3 withNumber:v6];
}

- (void)setAXAttribute:(int64_t)a3 withFloat:(float)a4
{
  v7 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v8 = a4;
  v9 = [v7 initWithFloat:v8];
  [(AXUIElement *)self setAXAttribute:a3 withNumber:v9];
}

- (void)setAXAttribute:(int64_t)a3 withNumber:(id)a4
{
  v6 = a4;
  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      AXUIElementSetAttributeValue(axElement, a3, v6);
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)setAXAttribute:(int64_t)a3 withPoint:(CGPoint)a4
{
  v8 = a4;
  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v7 = AXValueCreate(kAXValueTypeCGPoint, &v8);
      if (AXUIElementSetAttributeValue(axElement, a3, v7) == kAXErrorInvalidUIElement)
      {
        [(AXUIElement *)self _invalidate:*&v8.x];
      }

      CFRelease(v7);
    }
  }
}

- (void)setAXAttribute:(int64_t)a3 withSize:(CGSize)a4
{
  v8 = a4;
  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v7 = AXValueCreate(kAXValueTypeCGSize, &v8);
      if (AXUIElementSetAttributeValue(axElement, a3, v7) == kAXErrorInvalidUIElement)
      {
        [(AXUIElement *)self _invalidate:*&v8.width];
      }

      CFRelease(v7);
    }
  }
}

- (void)setAXAttribute:(int64_t)a3 withRange:(_NSRange)a4
{
  v8 = a4;
  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v7 = AXValueCreate(kAXValueTypeCFRange, &v8);
      if (AXUIElementSetAttributeValue(axElement, a3, v7) == kAXErrorInvalidUIElement)
      {
        [(AXUIElement *)self _invalidate:v8.location];
      }

      CFRelease(v7);
    }
  }
}

- (void)setAXAttribute:(int64_t)a3 withUIElement:(id)a4
{
  v6 = a4;
  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v10 = v6;
      v8 = objc_opt_class();
      if ([v8 isSubclassOfClass:objc_opt_class()])
      {
        v9 = AXUIElementSetAttributeValue(axElement, a3, [v10 axElement]) == kAXErrorInvalidUIElement;
        v6 = v10;
        if (!v9)
        {
          goto LABEL_9;
        }

        [(AXUIElement *)self _invalidate];
      }

      else
      {
        [MEMORY[0x1E695DF30] raise:@"SCRCUIElementException" format:@"Passed in SCRCUIElement must be a (subclass of) SCRCUIElement."];
      }

      v6 = v10;
    }
  }

LABEL_9:
}

- (void)setAXAttribute:(int64_t)a3 withUIElementArray:(id)a4
{
  v6 = a4;
  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v16 = v6;
      if ([v6 count] && (objc_msgSend(v16, "objectAtIndex:", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_class(), LODWORD(v9) = objc_msgSend(v9, "isSubclassOfClass:", objc_opt_class()), v8, !v9))
      {
        [MEMORY[0x1E695DF30] raise:@"SCRCUIElementException" format:@"Passed in SCRCUIElement must be a (subclass of) SCRCUIElement."];
      }

      else
      {
        v10 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
        v11 = [v16 objectEnumerator];
        v12 = [v11 nextObject];
        if (v12)
        {
          v13 = v12;
          do
          {
            v14 = [v13 axElement];
            if (v14)
            {
              [v10 addObject:v14];
            }

            v15 = [v11 nextObject];

            v13 = v15;
          }

          while (v15);
        }

        if (AXUIElementSetAttributeValue(axElement, a3, v10) == kAXErrorInvalidUIElement)
        {
          [(AXUIElement *)self _invalidate];
        }
      }

      v6 = v16;
    }
  }
}

- (void)setAXAttribute:(int64_t)a3 withArray:(id)a4
{
  v6 = a4;
  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      v8 = v6;
      if (AXUIElementSetAttributeValue(axElement, a3, v6) == kAXErrorInvalidUIElement)
      {
        [(AXUIElement *)self _invalidate];
      }
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)setAXAttribute:(int64_t)a3 withObject:(id)a4 synchronous:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  if (self->_isValid)
  {
    axElement = self->_axElement;
    if (axElement)
    {
      CFRetain(self->_axElement);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __53__AXUIElement_setAXAttribute_withObject_synchronous___block_invoke;
      v12[3] = &unk_1E80D4278;
      v15 = axElement;
      v16 = a3;
      v13 = v8;
      v14 = self;
      v10 = _Block_copy(v12);
      v11 = v10;
      if (v5)
      {
        v10[2](v10);
      }

      else
      {
        dispatch_async(_ElementChangedQueue, v10);
      }
    }
  }
}

void __53__AXUIElement_setAXAttribute_withObject_synchronous___block_invoke(uint64_t a1)
{
  if (AXUIElementSetAttributeValue(*(a1 + 48), *(a1 + 56), *(a1 + 32)) == kAXErrorInvalidUIElement)
  {
    [*(a1 + 40) _invalidate];
  }

  v2 = *(a1 + 48);

  CFRelease(v2);
}

- (_NSRange)_selectedTextRange
{
  [(AXUIElement *)self updateCache:2005];

  v3 = [(AXUIElement *)self rangeWithAXAttribute:2005];
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)_objectForRange:(_NSRange)a3 withParameterizedAttribute:(int64_t)a4
{
  v10 = a3;
  v6 = AXValueCreate(kAXValueTypeCFRange, &v10);
  if (v6)
  {
    v7 = v6;
    v8 = [(AXUIElement *)self objectWithAXAttribute:a4 parameter:v6];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_attributedValueForRange:(_NSRange)a3
{
  v3 = [(AXUIElement *)self _objectForRange:a3.location withParameterizedAttribute:a3.length, 92508];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_valueForRange:(_NSRange)a3
{
  v3 = [(AXUIElement *)self _objectForRange:a3.location withParameterizedAttribute:a3.length, 92505];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_lineStartPosition
{
  [(AXUIElement *)self updateCache:4001];
  v3 = [(AXUIElement *)self numberWithAXAttribute:4001];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)_lineEndPosition
{
  [(AXUIElement *)self updateCache:4002];
  v3 = [(AXUIElement *)self numberWithAXAttribute:4002];
  v4 = [v3 integerValue];

  return v4;
}

- (_NSRange)_lineRangeForPosition:(unint64_t)a3
{
  v8 = xmmword_1BF7DE640;
  v3 = -[AXUIElement objectWithAXAttribute:parameter:](self, "objectWithAXAttribute:parameter:", 94009, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3]);
  if (v3 && (v4 = v3, v5 = CFGetTypeID(v3), v5 == AXValueGetTypeID()) && AXValueGetType(v4) == kAXValueTypeCFRange)
  {
    AXValueGetValue(v4, kAXValueTypeCFRange, &v8);
    v7 = *(&v8 + 1);
    v6 = v8;
  }

  else
  {
    v7 = 0;
    v6 = 0x7FFFFFFFLL;
  }

  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)_lineRangeWithFaultTolerance:(int64_t)a3 forward:(BOOL)a4
{
  v4 = a4;
  v7 = 0;
  v8 = 0;
  do
  {
    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = [(AXUIElement *)self _lineRangeForPosition:v9 + a3];
    v12 = v10 != 0x7FFFFFFF || v8++ >= 2;
    --v7;
  }

  while (!v12);
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)nextCursorRangeInDirection:(unint64_t)a3 unit:(unint64_t)a4 outputRange:(_NSRange *)a5 currentCursorRange:(_NSRange)a6 outputStyleSpeakToRight:(BOOL)a7
{
  v90 = a7;
  v10 = 0;
  v11 = 0x7FFFFFFFLL;
  if (a6.location == 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFFLL;
  }

  else
  {
    v12 = a6.location + a6.length;
  }

  if (a6.location == 0x7FFFFFFF)
  {
    length = a6.length;
  }

  else
  {
    length = 0;
  }

  if (a4 <= 1)
  {
    if (a4)
    {
      v14 = 0x7FFFFFFFLL;
      if (a4 != 1)
      {
        goto LABEL_121;
      }

      if (v12 >= 0x64)
      {
        v20 = 100;
      }

      else
      {
        v20 = v12;
      }

      v21 = v12 - v20;
      v89 = self;
      v22 = [(AXUIElement *)self _valueForRange:v21, 200];
      v23 = v22;
      if (a3 || !v90)
      {
        v48 = [v22 ax_wordFromPosition:v20 inDirection:a3];
        v41 = v49;
        v50 = v48 + v21;
        if (v48 == 0x7FFFFFFF)
        {
          v40 = 0;
        }

        else
        {
          v40 = v49;
        }

        if (v48 == 0x7FFFFFFF)
        {
          v33 = -1;
        }

        else
        {
          v33 = v50;
        }

        if (v48 == 0x7FFFFFFF)
        {
          v39 = 0x7FFFFFFFLL;
        }

        else
        {
          v39 = v50;
        }

        goto LABEL_97;
      }

      v79 = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __102__AXUIElement_nextCursorRangeInDirection_unit_outputRange_currentCursorRange_outputStyleSpeakToRight___block_invoke;
      aBlock[3] = &unk_1E80D42A0;
      v80 = v22;
      v24 = v22;
      v92 = v24;
      v25 = _Block_copy(aBlock);
      v26 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v27 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v28 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
      v29 = [v24 length];
      v83 = v20;
      v88 = v27;
      v87 = v28;
      if (v20 >= v29)
      {
LABEL_94:
        v41 = 0;
        v33 = -1;
        v39 = 0x7FFFFFFFLL;
      }

      else
      {
        v30 = [v24 characterAtIndex:v20];
        v31 = [v27 characterIsMember:v30];
        v84 = [v28 characterIsMember:v30];
        if (v84)
        {
          LOBYTE(v81) = 0;
        }

        else
        {
          v81 = ([v26 characterIsMember:v30] | v31) ^ 1;
        }

        v39 = 0x7FFFFFFFLL;
        v59 = v83;
        while (1)
        {
          v60 = [v24 characterAtIndex:v59];
          if ([v88 characterIsMember:v60])
          {
            break;
          }

          if ([v26 characterIsMember:v60] & 1) != 0 || (v25[2](v25, v59, v29, v60) & 1) == 0 && (!v84 || (objc_msgSend(v87, "characterIsMember:", v60) & 1) == 0) && ((v81 & 1) == 0 || (objc_msgSend(v87, "characterIsMember:", v60)))
          {
            goto LABEL_89;
          }

          if (v29 == ++v59)
          {
LABEL_93:
            v41 = 0;
            v33 = -1;
            goto LABEL_95;
          }
        }

        ++v59;
LABEL_89:
        if (v59 >= v29)
        {
          goto LABEL_94;
        }

        v39 = 0x7FFFFFFFLL;
        while ([v26 characterIsMember:{objc_msgSend(v24, "characterAtIndex:", v59)}])
        {
          if (v29 == ++v59)
          {
            goto LABEL_93;
          }
        }

        v33 = v79 + v59;
        v75 = [v24 characterAtIndex:v59];
        v85 = [v88 characterIsMember:v75];
        v82 = [v87 characterIsMember:v75];
        if (v85)
        {
          v41 = 1;
        }

        else
        {
          v76 = v59;
          if (v59 < v29)
          {
            v77 = v59;
            while (1)
            {
              v86 = v77;
              v78 = [v24 characterAtIndex:?];
              if (([v88 characterIsMember:?] & 1) != 0 || (objc_msgSend(v26, "characterIsMember:", v78) & 1) != 0 || (v25[2](v25, v86, v29, v78) & 1) == 0 && v82 != objc_msgSend(v87, "characterIsMember:", v78))
              {
                break;
              }

              v77 = v86 + 1;
              if (v86 + 1 >= v29)
              {
                v76 = v29;
                goto LABEL_146;
              }
            }

            v76 = v86;
          }

LABEL_146:
          v41 = v76 - v59;
        }

        v39 = v33;
      }

LABEL_95:

      if (v83 < v29)
      {
        v40 = 0;
        v23 = v80;
LABEL_97:

        goto LABEL_107;
      }

LABEL_99:
      v14 = 0x7FFFFFFFLL;
      goto LABEL_123;
    }

    v43 = [(AXUIElement *)self stringWithAXAttribute:2006];
    v89 = self;
    v44 = -[AXUIElement _attributedValueForRange:](self, "_attributedValueForRange:", 0, [v43 length]);
    v45 = v44;
    if (a3)
    {
      if (!v12 || ![v44 length] || v12 - 1 >= objc_msgSend(v45, "length"))
      {
        v33 = v12 - 1;
        v40 = 1;
LABEL_63:

        v41 = 0;
        v39 = 0x7FFFFFFFLL;
        goto LABEL_107;
      }

      v46 = v45;
      v47 = v12 - 1;
    }

    else
    {
      if (v12 >= [v44 length])
      {

        goto LABEL_99;
      }

      v46 = v45;
      v47 = v12;
    }

    v33 = [v46 rangeOfComposedCharacterSequenceAtIndex:v47];
    v40 = v54;
    goto LABEL_63;
  }

  if (a4 == 2)
  {
    if (v12 == 0x7FFFFFFF)
    {
      v12 = 0;
    }

    v89 = self;
    if (a3)
    {
      v32 = [(AXUIElement *)self _lineRangeWithFaultTolerance:v12 forward:0];
      v11 = 0x7FFFFFFFLL;
      if (v32 != 0x7FFFFFFF)
      {
        v33 = v32;
        if (v32 != v12)
        {
          v57 = [(AXUIElement *)v89 _lineRangeWithFaultTolerance:v12 forward:0];
          v41 = 0;
          v39 = 0x7FFFFFFFLL;
          if (v57 + v58 == 0x7FFFFFFF)
          {
            v33 = -1;
            v40 = 0;
          }

          else
          {
            v40 = v57 + v58 - v33;
          }

          goto LABEL_107;
        }

        if (!v12)
        {
          v56 = 0;
          v55 = 0x7FFFFFFFLL;
          goto LABEL_101;
        }

        v34 = v12 - 1;
        v35 = v89;
        v36 = 0;
LABEL_66:
        v55 = [(AXUIElement *)v35 _lineRangeWithFaultTolerance:v34 forward:v36];
LABEL_101:
        v41 = 0;
        v39 = 0x7FFFFFFFLL;
        if (v55 == 0x7FFFFFFF)
        {
          v33 = -1;
        }

        else
        {
          v33 = v55;
        }

        if (v55 == 0x7FFFFFFF)
        {
          v40 = 0;
        }

        else
        {
          v40 = v56;
        }

        goto LABEL_107;
      }
    }

    else
    {
      v51 = [(AXUIElement *)self _lineRangeWithFaultTolerance:v12 forward:1];
      v53 = v51 + v52;
      v11 = 0x7FFFFFFFLL;
      if (v51 + v52 != 0x7FFFFFFF)
      {
        if (length + v12 != v53)
        {
          v61 = [(AXUIElement *)v89 _lineRangeWithFaultTolerance:v12 forward:1];
          v41 = 0;
          v62 = v53 - v61;
          v39 = 0x7FFFFFFFLL;
          if (v61 == 0x7FFFFFFF)
          {
            v33 = -1;
          }

          else
          {
            v33 = v61;
          }

          if (v61 == 0x7FFFFFFF)
          {
            v40 = 0;
          }

          else
          {
            v40 = v62;
          }

          goto LABEL_107;
        }

        v34 = v12 + 1;
        v35 = v89;
        v36 = 1;
        goto LABEL_66;
      }
    }

    v10 = 0;
LABEL_120:
    v14 = 0x7FFFFFFFLL;
LABEL_121:
    if (!a5)
    {
      goto LABEL_123;
    }

LABEL_122:
    a5->location = v11;
    a5->length = v10;
    goto LABEL_123;
  }

  if (a4 == 3)
  {
    if (v12 >= 0x12C)
    {
      v37 = 300;
    }

    else
    {
      v37 = v12;
    }

    v16 = v12 - v37;
    v89 = self;
    v17 = [(AXUIElement *)self _valueForRange:v16, 300];
    v18 = [v17 ax_sentenceFromPosition:v37 inDirection:a3];
  }

  else
  {
    v14 = 0x7FFFFFFFLL;
    if (a4 != 4)
    {
      goto LABEL_121;
    }

    if (v12 >= 0x7D0)
    {
      v15 = 2000;
    }

    else
    {
      v15 = v12;
    }

    v16 = v12 - v15;
    v89 = self;
    v17 = [(AXUIElement *)self _valueForRange:v16, 2000];
    v18 = [v17 ax_paragraphFromPosition:v15 inDirection:a3];
  }

  v38 = v18 + v16;
  v39 = 0x7FFFFFFFLL;
  if (v18 == 0x7FFFFFFF)
  {
    v40 = 0;
  }

  else
  {
    v40 = v19;
  }

  if (v18 == 0x7FFFFFFF)
  {
    v33 = -1;
  }

  else
  {
    v33 = v38;
  }

  v41 = 0;
LABEL_107:
  v10 = 0;
  v11 = 0x7FFFFFFFLL;
  if (v33 < 0)
  {
    goto LABEL_120;
  }

  v14 = 0x7FFFFFFFLL;
  if (v33 == 0x7FFFFFFF)
  {
    goto LABEL_121;
  }

  v63 = a3 == 0;
  v64 = v90;
  if (a4 != 1)
  {
    v64 = 0;
  }

  if (v63 && v64)
  {
    v10 = v41;
  }

  else
  {
    v10 = v40;
  }

  if (v63 && v64)
  {
    v11 = v39;
  }

  else
  {
    v11 = v33;
  }

  v65 = [(AXUIElement *)v89 _valueForRange:v11, v10];
  v66 = [v65 length];
  if (a4 == 2 || v66)
  {
    if (a3 || a4 != 2)
    {
      if (a3)
      {
        v74 = 0;
      }

      else
      {
        v74 = v40;
      }

      v14 = v33 + v74;
    }

    else
    {
      v69 = [v65 rangeOfString:@"\n"] == 0;
      v70 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v71 = [v65 stringByTrimmingCharactersInSet:v70];

      v72 = [v65 length];
      v73 = v72 - [v71 length] - v69;
      if (v73 == v40)
      {
        v73 = 0;
      }

      v14 = v33 + v40 - v73;
    }
  }

  else
  {
    v14 = 0x7FFFFFFFLL;
  }

  if (a5)
  {
    goto LABEL_122;
  }

LABEL_123:
  v67 = v14;
  v68 = 0;
  result.length = v68;
  result.location = v67;
  return result;
}

uint64_t __102__AXUIElement_nextCursorRangeInDirection_unit_outputRange_currentCursorRange_outputStyleSpeakToRight___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 != 8217 && a4 != 39)
  {
    return 0;
  }

  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v8 = [v7 characterIsMember:{objc_msgSend(*(a1 + 32), "characterAtIndex:", a2 - 1)}];
  }

  if (a3 - 1 <= a2)
  {
    v11 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v11 = [v10 characterIsMember:{objc_msgSend(*(a1 + 32), "characterAtIndex:", a2 + 1)}];
  }

  return v8 & v11;
}

- (void)_elementsWithParameter:(uint64_t)a1 parameters:(uint64_t)a2 prefetchAttributes:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AXUIElement.m" lineNumber:2160 description:@"A count parameter must be passed to this method"];
}

@end