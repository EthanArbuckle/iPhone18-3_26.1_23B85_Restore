@interface AXElement
+ (AXElement)elementWithData:(id)a3;
+ (AXElement)elementWithUIElement:(id)a3;
+ (AXElement)systemEventDispatchElement;
+ (id)applicationAtCoordinate:(CGPoint)a3;
+ (id)elementAtCoordinate:(CGPoint)a3 withVisualPadding:(BOOL)a4 displayID:(unsigned int)a5 allowSameProcess:(BOOL)a6;
+ (id)elementWithAXUIElement:(__AXUIElement *)a3;
+ (id)elementsWithUIElements:(id)a3;
+ (id)primaryApp;
+ (id)systemApplication;
+ (id)systemWideElement;
+ (int)systemAppPid;
+ (void)registerNotifications:(id)a3 withIdentifier:(id)a4 withHandler:(id)a5;
- (AXElement)accessibleAncestor;
- (AXElement)autoscrollTarget;
- (AXElement)currentApplication;
- (AXElement)elementForTextInsertionAndDeletion;
- (AXElement)initWithAXUIElement:(__AXUIElement *)a3;
- (AXElement)initWithUIElement:(id)a3;
- (AXElement)remoteParent;
- (AXElement)touchContainer;
- (BOOL)_performActivate;
- (BOOL)_showContextMenuWithTargetPointValue:(id)a3;
- (BOOL)_zoomInOrOut:(BOOL)a3;
- (BOOL)applicationIsModal;
- (BOOL)autoscrollInDirection:(unint64_t)a3;
- (BOOL)canPerformActivate;
- (BOOL)canPerformEscape;
- (BOOL)canPerformSecondaryActivate;
- (BOOL)canPerformZoom;
- (BOOL)canScrollInAtLeastOneDirection;
- (BOOL)eligibleForIconVision;
- (BOOL)hasVariantKeys;
- (BOOL)isAXUIServer;
- (BOOL)isAutoscrolling;
- (BOOL)isComboBox;
- (BOOL)isDictationListening;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMap;
- (BOOL)isPassivelyListeningForEvents;
- (BOOL)isScreenLocked;
- (BOOL)isSpringBoard;
- (BOOL)isSystemApplication;
- (BOOL)isSystemWideElement;
- (BOOL)longPress;
- (BOOL)performAction:(int)a3;
- (BOOL)performAction:(int)a3 withValue:(id)a4;
- (BOOL)press;
- (BOOL)required;
- (BOOL)respondsToUserInteraction;
- (BOOL)scrollToVisible;
- (BOOL)showContextMenu;
- (BOOL)simulateTapWithFingerIndex:(unint64_t)a3;
- (BOOL)simulateTapWithFingerIndex:(unint64_t)a3 withPoint:(CGPoint)a4;
- (BOOL)supportsAction:(int)a3;
- (CGPath)convertPath:(CGPath *)a3 fromContextId:(unsigned int)a4 displayId:(unsigned int)a5;
- (CGPath)path;
- (CGPoint)centerPoint;
- (CGPoint)convertPoint:(CGPoint)a3 fromContextId:(unsigned int)a4;
- (CGPoint)convertPoint:(CGPoint)a3 fromContextId:(unsigned int)a4 displayId:(unsigned int)a5;
- (CGPoint)convertPoint:(CGPoint)a3 toContextId:(unsigned int)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toContextId:(unsigned int)a4 displayId:(unsigned int)a5;
- (CGPoint)visiblePoint;
- (CGRect)boundsForTextRange:(_NSRange)a3;
- (CGRect)cachedFrame;
- (CGRect)cachedVisibleFrame;
- (CGRect)convertRect:(CGRect)a3 fromContextId:(unsigned int)a4;
- (CGRect)convertRect:(CGRect)a3 fromContextId:(unsigned int)a4 displayId:(unsigned int)a5;
- (CGRect)convertRect:(CGRect)a3 toContextId:(unsigned int)a4;
- (CGRect)convertRect:(CGRect)a3 toContextId:(unsigned int)a4 displayId:(unsigned int)a5;
- (CGRect)focusableFrameForZoom;
- (CGRect)frame;
- (CGRect)textCursorFrame;
- (CGRect)visibleFrame;
- (NSArray)accessibleDescendants;
- (NSArray)children;
- (NSArray)currentApplications;
- (NSArray)currentApplicationsIgnoringSiri;
- (NSArray)customActions;
- (NSArray)customContent;
- (NSArray)drags;
- (NSArray)drops;
- (NSArray)elementsWithSemanticContext;
- (NSArray)explorerElements;
- (NSArray)focusedOccludedAppSceneIdentifiers;
- (NSArray)nativeFocusableElements;
- (NSArray)ornamentWindows;
- (NSArray)siriContentElementsWithSemanticContext;
- (NSArray)siriContentNativeFocusableElements;
- (NSArray)textOperations;
- (NSArray)typingCandidates;
- (NSArray)variantKeys;
- (NSArray)visibleElements;
- (NSDictionary)semanticContext;
- (NSString)description;
- (NSString)fbSceneIdentifier;
- (NSString)roleDescription;
- (NSString)speechInputLabel;
- (NSString)textualContext;
- (NSString)windowSceneIdentifier;
- (NSURL)url;
- (_NSRange)rowRange;
- (_NSRange)selectedTextRange;
- (__AXUIElement)scrollAncestorForScrollAction:(int)a3;
- (double)distanceToElement:(id)a3;
- (double)distanceToPoint:(CGPoint)a3;
- (id)_axElementsForAXUIElements:(id)a3;
- (id)_elementForAttribute:(int64_t)a3 shouldUpdateCache:(BOOL)a4 shouldFetchAttributes:(BOOL)a5;
- (id)_makeTinkerKitRequest:(id)a3;
- (id)_objectForRange:(_NSRange)a3 withParameterizedAttribute:(int64_t)a4;
- (id)_remoteParentForContextID;
- (id)_textOperationsOperator;
- (id)_uiElementForTextInsertionAndDeletion;
- (id)alternativesForTextAtPosition:(unint64_t)a3;
- (id)auditIssuesForOptions:(id)a3;
- (id)elementForAttribute:(int64_t)a3 parameter:(id)a4;
- (id)elementsForAttribute:(int64_t)a3;
- (id)elementsForAttribute:(int64_t)a3 parameter:(id)a4;
- (id)elementsMatchingText:(id)a3;
- (id)focusContainersForCurrentSceneIdentifier:(id)a3;
- (id)highestAncestorGroup;
- (id)keyboardContainer;
- (id)makeLookingGlassRequest:(id)a3;
- (id)nextElementsWithCount:(unint64_t)a3;
- (id)previousElementsWithCount:(unint64_t)a3;
- (id)remoteApplication;
- (id)scrollViewsForAutoScroll;
- (id)serializeToData;
- (int)pid;
- (int64_t)applicationOrientation;
- (int64_t)scannerActivateBehavior;
- (unint64_t)containerType;
- (unint64_t)scanningBehaviorTraits;
- (unint64_t)traits;
- (unsigned)contextIdForPoint:(CGPoint)a3;
- (unsigned)displayIdForContextId:(unsigned int)a3;
- (unsigned)windowContextId;
- (unsigned)windowDisplayId;
- (void)_updateLabel;
- (void)clearCachedFrame:(BOOL)a3 cachedVisibleFrame:(BOOL)a4;
- (void)dealloc;
- (void)decreaseAutoscrollSpeed;
- (void)deleteText;
- (void)increaseAutoscrollSpeed;
- (void)insertText:(id)a3 asUndoableAction:(BOOL)a4;
- (void)insertTextWithAlternatives:(id)a3;
- (void)pauseAutoscrolling;
- (void)scrollToBottom;
- (void)scrollToTop;
- (void)setAssistiveTechFocused:(BOOL)a3;
- (void)setAutoscrollSpeed:(double)a3;
- (void)setAutoscrollTarget:(id)a3;
- (void)setPassivelyListeningForEvents:(BOOL)a3;
- (void)setSelectedTextRange:(_NSRange)a3;
@end

@implementation AXElement

+ (id)elementWithAXUIElement:(__AXUIElement *)a3
{
  v3 = [[AXElement alloc] initWithAXUIElement:a3];

  return v3;
}

+ (AXElement)elementWithUIElement:(id)a3
{
  v3 = a3;
  v4 = [[AXElement alloc] initWithUIElement:v3];

  return v4;
}

+ (id)elementsWithUIElements:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

          v10 = [AXElement elementWithUIElement:*(*(&v12 + 1) + 8 * i), v12];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)primaryApp
{
  v2 = +[AXElement systemWideElement];
  v3 = [v2 systemApplication];
  v4 = [v3 currentApplications];
  v5 = [v4 firstObject];

  return v5;
}

+ (void)registerNotifications:(id)a3 withIdentifier:(id)a4 withHandler:(id)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v10 = AXRuntimeLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [AXElement registerNotifications:v10 withIdentifier:? withHandler:?];
    }
  }

  v11 = +[AXElement systemWideElement];
  v12 = [v11 uiElement];
  v13 = [v12 axElement];

  v14 = &AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary;
  if (Observer)
  {
LABEL_6:
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = v7;
    obj = v15;
    v45 = [v15 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v45)
    {
      v39 = v7;
      element = v13;
      v37 = v9;
      v38 = v8;
      v41 = kAXErrorSuccess;
      v44 = *v51;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v51 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v50 + 1) + 8 * i);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v18 = v14;
          v19 = [v14[11] allValues];
          v20 = [v19 countByEnumeratingWithState:&v46 objects:v57 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v47;
            while (2)
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v47 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = [*(*(&v46 + 1) + 8 * j) objectForKey:@"notifications"];
                v25 = [v24 containsObject:v17];

                if (v25)
                {

                  goto LABEL_21;
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v46 objects:v57 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          v41 = AXObserverAddNotification(Observer, element, [v17 intValue], a1);
LABEL_21:
          v14 = v18;
        }

        v45 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v45);

      v8 = v38;
      v7 = v39;
      v9 = v37;
      if (v41 == kAXErrorSuccess)
      {
        goto LABEL_27;
      }

      v15 = AXRuntimeLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [AXElement registerNotifications:v41 withIdentifier:v15 withHandler:?];
      }
    }

LABEL_27:
    v26 = v14[11];
    v55[0] = @"notifications";
    v55[1] = @"handler";
    v56[0] = obj;
    v27 = [v9 copy];
    v56[1] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
    [v26 setObject:v28 forKey:v8];

LABEL_31:
    goto LABEL_32;
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = Handlers;
  Handlers = v29;

  pid = 0;
  AXUIElementGetPid(v13, &pid);
  v31 = AXObserverCreate(pid, _accessibilityEventsHandler, &Observer);
  if (v31)
  {
    v32 = v31;
    v27 = AXRuntimeLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [AXElement registerNotifications:v32 withIdentifier:v27 withHandler:?];
    }

    goto LABEL_31;
  }

  RunLoopSource = AXObserverGetRunLoopSource(Observer);
  if (RunLoopSource)
  {
    v34 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v34, *MEMORY[0x1E695E8E0]);
    goto LABEL_6;
  }

  v36 = AXRuntimeLogCommon();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    [AXElement registerNotifications:v36 withIdentifier:? withHandler:?];
  }

LABEL_32:
}

- (unsigned)displayIdForContextId:(unsigned int)a3
{
  v3 = *&a3;
  valuePtr = 0;
  cf = 0;
  v4 = [(AXElement *)self elementRef];
  AXUIElementCopyParameterizedAttributeValue(v4, 0x16575, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3], &cf);
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return valuePtr;
}

- (unsigned)contextIdForPoint:(CGPoint)a3
{
  valuePtr = a3;
  v8 = 0;
  cf = 0;
  v4 = AXValueCreate(kAXValueTypeCGPoint, &valuePtr);
  AXUIElementCopyParameterizedAttributeValue([(AXElement *)self elementRef], 0x16572, v4, &cf);
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(cf, kCFNumberIntType, &v8);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

+ (id)elementAtCoordinate:(CGPoint)a3 withVisualPadding:(BOOL)a4 displayID:(unsigned int)a5 allowSameProcess:(BOOL)a6
{
  v6 = a4;
  y = a3.y;
  x = a3.x;
  v9 = [AXUIElement uiElementAtCoordinate:*&a5 displayId:a6 allowSameProcess:?];
  v10 = [AXElement elementWithUIElement:v9];
  v11 = v10;
  if (!v9)
  {
    goto LABEL_6;
  }

  [v10 frame];
  if (v6)
  {
    *&v12 = CGRectInset(*&v12, -5.0, -5.0);
  }

  v19.x = x;
  v19.y = y;
  if (CGRectContainsPoint(*&v12, v19))
  {
    v16 = v11;
  }

  else
  {
LABEL_6:
    v16 = 0;
  }

  return v16;
}

+ (id)systemWideElement
{
  if (systemWideElement_onceToken != -1)
  {
    +[AXElement systemWideElement];
  }

  v3 = systemWideElement_System;

  return v3;
}

void __30__AXElement_systemWideElement__block_invoke()
{
  SystemWide = AXUIElementCreateSystemWide();
  v1 = [[AXElement alloc] initWithAXUIElement:SystemWide];
  v2 = systemWideElement_System;
  systemWideElement_System = v1;

  if (SystemWide)
  {

    CFRelease(SystemWide);
  }
}

+ (id)applicationAtCoordinate:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = +[AXElement systemWideElement];
  cf = 0;
  v6 = [v5 elementRef];
  v7 = x;
  v8 = y;
  v9 = 0;
  if (!AXUIElementCopyApplicationAtPosition(v6, &cf, v7, v8))
  {
    v9 = [AXElement elementWithAXUIElement:cf];
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  return v9;
}

+ (AXElement)systemEventDispatchElement
{
  v2 = +[AXElement systemWideElement];
  if (_AXSMossdeepEnabled())
  {
    v3 = [v2 systemApplication];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

- (AXElement)initWithAXUIElement:(__AXUIElement *)a3
{
  v4 = [AXUIElement uiElementWithAXElement:a3];
  v5 = [(AXElement *)self initWithUIElement:v4];

  return v5;
}

- (AXElement)initWithUIElement:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = AXElement;
  v6 = [(AXElement *)&v14 init];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    objc_storeStrong(&v6->_uiElement, a3);
    v9 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
    [(AXElement *)v7 setCachedVisibleFrame:*MEMORY[0x1E695F050], v10, v11, v12];
    [(AXElement *)v7 setCachedFrame:v9, v10, v11, v12];
    v8 = v7;
  }

  return v8;
}

+ (AXElement)elementWithData:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = _AXUIElementCreateWithData(v3)) != 0)
  {
    v6 = v5;
    v7 = [AXElement elementWithAXUIElement:v5];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serializeToData
{
  Data = [(AXElement *)self elementRef];
  if (Data)
  {
    Data = _AXUIElementCreateData(Data);
  }

  return Data;
}

- (void)dealloc
{
  CGPathRelease(self->_cachedPath);
  v3.receiver = self;
  v3.super_class = AXElement;
  [(AXElement *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AXElement *)self uiElement];
    v6 = [v4 uiElement];
    v7 = v6;
    if (v5 && v6)
    {
      v8 = CFEqual(v5, v6) != 0;
    }

    else
    {
      v8 = (v5 | v6) == 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXElement *)self uiElement];
  v5 = [v3 stringWithFormat:@"AXElement<%p>. uiElement:%@", self, v4];

  return v5;
}

- (id)_elementForAttribute:(int64_t)a3 shouldUpdateCache:(BOOL)a4 shouldFetchAttributes:(BOOL)a5
{
  v5 = a5;
  if (a4)
  {
    [(AXUIElement *)self->_uiElement updateCache:a3];
  }

  v8 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v8 axElement];
  }

  if (v8)
  {
    if (v5)
    {
      v9 = [AXElement elementWithAXUIElement:v8];
    }

    else
    {
      v10 = [AXUIElement uiElementWithAXElement:v8 cache:0];
      v9 = [AXElement elementWithUIElement:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)elementForAttribute:(int64_t)a3 parameter:(id)a4
{
  v4 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:a3 parameter:a4];
  if (v4)
  {
    v4 = [AXElement elementWithAXUIElement:v4];
  }

  return v4;
}

- (id)elementsForAttribute:(int64_t)a3 parameter:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:a3 parameter:a4];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [AXElement elementWithUIElement:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)elementsForAttribute:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:a3];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v10 = [AXElement elementWithUIElement:*(*(&v12 + 1) + 8 * i), v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isSystemWideElement
{
  v3 = +[AXElement systemWideElement];
  LOBYTE(self) = v3 == self;

  return self;
}

- (BOOL)isPassivelyListeningForEvents
{
  v3 = [(AXElement *)self isSystemWideElement];
  if (v3)
  {
    v4 = [(AXElement *)self uiElement];
    v5 = [v4 BOOLWithAXAttribute:1002];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)setPassivelyListeningForEvents:(BOOL)a3
{
  v3 = a3;
  if ([(AXElement *)self isSystemWideElement])
  {
    v5 = [(AXElement *)self uiElement];
    [v5 setAXAttribute:1002 withBOOL:v3];
  }
}

- (AXElement)currentApplication
{
  v2 = [(AXElement *)self currentApplications];
  v3 = [v2 firstObject];

  return v3;
}

- (NSArray)currentApplications
{
  v3 = [(AXElement *)self uiElement];
  [v3 updateCache:1102];

  v4 = [(AXElement *)self uiElement];
  v5 = [v4 uiElementsWithAttribute:1102];
  v6 = [(AXElement *)self _axElementsForAXUIElements:v5];

  return v6;
}

- (NSArray)currentApplicationsIgnoringSiri
{
  v3 = [(AXElement *)self uiElement];
  [v3 updateCache:1105];

  v4 = [(AXElement *)self uiElement];
  v5 = [v4 uiElementsWithAttribute:1105];
  v6 = [(AXElement *)self _axElementsForAXUIElements:v5];

  return v6;
}

- (BOOL)applicationIsModal
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 BOOLWithAXAttribute:1514];

  return v3;
}

- (NSArray)focusedOccludedAppSceneIdentifiers
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 arrayWithAXAttribute:1519];

  return v3;
}

+ (id)systemApplication
{
  v2 = AXUIElementSharedSystemApp();

  return [AXElement elementWithAXUIElement:v2];
}

+ (int)systemAppPid
{
  pid = 0;
  v2 = AXUIElementSharedSystemApp();
  AXUIElementGetPid(v2, &pid);
  return pid;
}

- (CGRect)convertRect:(CGRect)a3 toContextId:(unsigned int)a4
{
  [(AXElement *)self convertRect:*&a4 toContextId:0 displayId:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toContextId:(unsigned int)a4 displayId:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v18[3] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v8 = AXValueCreate(kAXValueTypeCGRect, &v17);
  uiElement = self->_uiElement;
  v18[0] = v8;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v18[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v18[2] = v11;
  v12 = -[AXUIElement objectWithAXAttribute:parameter:](uiElement, "objectWithAXAttribute:parameter:", 91511, [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3]);

  if (v8)
  {
    CFRelease(v8);
  }

  if (v12)
  {
    AXValueGetValue(v12, kAXValueTypeCGRect, &v17);
  }

  width = v17.size.width;
  height = v17.size.height;
  x = v17.origin.x;
  y = v17.origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromContextId:(unsigned int)a4
{
  [(AXElement *)self convertRect:*&a4 fromContextId:0 displayId:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromContextId:(unsigned int)a4 displayId:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v18[3] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v8 = AXValueCreate(kAXValueTypeCGRect, &v17);
  uiElement = self->_uiElement;
  v18[0] = v8;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v18[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v18[2] = v11;
  v12 = -[AXUIElement objectWithAXAttribute:parameter:](uiElement, "objectWithAXAttribute:parameter:", 91505, [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3]);

  if (v8)
  {
    CFRelease(v8);
  }

  if (v12)
  {
    AXValueGetValue(v12, kAXValueTypeCGRect, &v17);
  }

  width = v17.size.width;
  height = v17.size.height;
  x = v17.origin.x;
  y = v17.origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromContextId:(unsigned int)a4
{
  [(AXElement *)self convertPoint:*&a4 fromContextId:0 displayId:a3.x, a3.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromContextId:(unsigned int)a4 displayId:(unsigned int)a5
{
  v5 = AXConvertPointFromHostedCoordinates(*&a4, *&a5, a3.x, a3.y);
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toContextId:(unsigned int)a4
{
  [(AXElement *)self convertPoint:*&a4 toContextId:0 displayId:a3.x, a3.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toContextId:(unsigned int)a4 displayId:(unsigned int)a5
{
  v5 = AXConvertPointToHostedCoordinates(*&a4, *&a5, a3.x, a3.y);
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPath)convertPath:(CGPath *)a3 fromContextId:(unsigned int)a4 displayId:(unsigned int)a5
{
  if (!a3)
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AXElement_convertPath_fromContextId_displayId___block_invoke;
  v11[3] = &unk_1E80D44A8;
  v12 = a4;
  v13 = a5;
  v11[4] = self;
  v11[5] = Mutable;
  AX_CGPathEnumerateElementsUsingBlock(a3, v11);
  return CFAutorelease(Mutable);
}

void __49__AXElement_convertPath_fromContextId_displayId___block_invoke(uint64_t a1, int a2, double *a3, uint64_t a4)
{
  if (a4)
  {
    v7 = a4;
    v8 = a3 + 1;
    do
    {
      [*(a1 + 32) convertPoint:*(a1 + 48) fromContextId:*(a1 + 52) displayId:{*(v8 - 1), *v8}];
      *(v8 - 1) = v9;
      *v8 = v10;
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = *(a1 + 40);
        v13 = *a3;
        v14 = a3[1];

        CGPathAddLineToPoint(v12, 0, v13, v14);
      }
    }

    else
    {
      v27 = *(a1 + 40);
      v28 = *a3;
      v29 = a3[1];

      CGPathMoveToPoint(v27, 0, v28, v29);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v15 = *(a1 + 40);
        v16 = *a3;
        v17 = a3[1];
        v18 = a3[2];
        v19 = a3[3];

        CGPathAddQuadCurveToPoint(v15, 0, v16, v17, v18, v19);
        break;
      case 3:
        v20 = *(a1 + 40);
        v21 = *a3;
        v22 = a3[1];
        v23 = a3[2];
        v24 = a3[3];
        v25 = a3[4];
        v26 = a3[5];

        CGPathAddCurveToPoint(v20, 0, v21, v22, v23, v24, v25, v26);
        break;
      case 4:
        v11 = *(a1 + 40);

        CGPathCloseSubpath(v11);
        break;
    }
  }
}

- (void)clearCachedFrame:(BOOL)a3 cachedVisibleFrame:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E695F050];
  if (a3)
  {
    [(AXElement *)self setCachedFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  }

  if (v4)
  {
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];

    [(AXElement *)self setCachedVisibleFrame:v7, v8, v9, v10];
  }
}

- (int64_t)applicationOrientation
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 numberWithAXAttribute:1503];
  v4 = [v3 intValue];

  return v4;
}

- (BOOL)isScreenLocked
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 BOOLWithAXAttribute:1500];

  return v3;
}

- (NSArray)visibleElements
{
  [(AXUIElement *)self->_uiElement updateCache:3015];
  v3 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:3015];
  v4 = [(AXElement *)self _axElementsForAXUIElements:v3];

  return v4;
}

- (BOOL)isSpringBoard
{
  v2 = [(AXElement *)self bundleId];
  v3 = [v2 isEqualToString:@"com.apple.springboard"];

  return v3;
}

- (BOOL)isSystemApplication
{
  v2 = [(AXElement *)self bundleId];
  if ([v2 isEqualToString:@"com.apple.springboard"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.PineBoard") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.Carousel"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"com.apple.ClarityBoard"];
  }

  return v3;
}

- (BOOL)isDictationListening
{
  [(AXUIElement *)self->_uiElement updateCache:3010];
  uiElement = self->_uiElement;

  return [(AXUIElement *)uiElement BOOLWithAXAttribute:3010];
}

- (BOOL)isAXUIServer
{
  v2 = [(AXElement *)self bundleId];
  v3 = [v2 isEqualToString:@"com.apple.AccessibilityUIServer"];

  return v3;
}

- (NSArray)explorerElements
{
  v3 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:3022];
  v4 = [(AXElement *)self _axElementsForAXUIElements:v3];

  return v4;
}

- (NSArray)nativeFocusableElements
{
  v3 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:3029];
  v4 = [(AXElement *)self _axElementsForAXUIElements:v3];

  return v4;
}

- (NSArray)elementsWithSemanticContext
{
  v3 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:3025];
  v4 = [(AXElement *)self _axElementsForAXUIElements:v3];

  return v4;
}

- (NSArray)siriContentNativeFocusableElements
{
  v3 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:3031];
  v4 = [(AXElement *)self _axElementsForAXUIElements:v3];

  return v4;
}

- (NSArray)siriContentElementsWithSemanticContext
{
  v3 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:3032];
  v4 = [(AXElement *)self _axElementsForAXUIElements:v3];

  return v4;
}

- (id)focusContainersForCurrentSceneIdentifier:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F3E63FB0;
  }

  v8 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:95257 parameter:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__AXElement_focusContainersForCurrentSceneIdentifier___block_invoke;
  v11[3] = &unk_1E80D4518;
  v9 = v6;
  v12 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];

  return v9;
}

void __54__AXElement_focusContainersForCurrentSceneIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 ax_mappedArrayUsingBlock:&__block_literal_global_46];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)elementsMatchingText:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AB08];
  v5 = a3;
  v6 = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  v8 = [MEMORY[0x1E695DF90] dictionary];
  [v8 setObject:v7 forKey:@"searchText"];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:0];
  [v8 setObject:v9 forKey:@"resultLimit"];

  v10 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:92516 parameter:v8];
  v11 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [AXElement elementWithAXUIElement:*(*(&v19 + 1) + 8 * i), v19];
        if (v17)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v11;
}

- (id)remoteApplication
{
  v2 = [(AXElement *)self elementForAttribute:2142];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [AXElement elementWithUIElement:v2];

    v2 = v3;
  }

  return v2;
}

- (NSString)speechInputLabel
{
  v2 = [(AXElement *)self userInputLabels];
  v3 = [v2 firstObject];

  return v3;
}

- (NSURL)url
{
  v2 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:2020];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGPath)path
{
  if (![(AXElement *)self cachedPath])
  {
    v3 = [(AXUIElement *)self->_uiElement pathWithAXAttribute:2042];
    v4 = +[AXElement systemWideElement];
    -[AXElement setCachedPath:](self, "setCachedPath:", [v4 convertPath:v3 fromContextId:-[AXElement windowContextId](self displayId:{"windowContextId"), -[AXElement windowDisplayId](self, "windowDisplayId")}]);
  }

  return [(AXElement *)self cachedPath];
}

- (unint64_t)traits
{
  v2 = [(AXUIElement *)self->_uiElement numberWithAXAttribute:2004];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (id)auditIssuesForOptions:(id)a3
{
  v3 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:95005 parameter:a3];
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

- (CGPoint)centerPoint
{
  [(AXUIElement *)self->_uiElement pointWithAXAttribute:2007];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)visiblePoint
{
  [(AXUIElement *)self->_uiElement pointWithAXAttribute:2070];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)frame
{
  [(AXElement *)self cachedFrame];
  if (CGRectIsNull(v17))
  {
    [(AXUIElement *)self->_uiElement rectWithAXAttribute:2003];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = +[AXElement systemWideElement];
    [v11 convertRect:-[AXElement windowContextId](self fromContextId:"windowContextId") displayId:{-[AXElement windowDisplayId](self, "windowDisplayId"), v4, v6, v8, v10}];
    [(AXElement *)self setCachedFrame:?];
  }

  [(AXElement *)self cachedFrame];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)textCursorFrame
{
  [(AXUIElement *)self->_uiElement updateCache:2050];
  [(AXUIElement *)self->_uiElement rectWithAXAttribute:2050];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[AXElement systemWideElement];
  [v11 convertRect:-[AXElement windowContextId](self fromContextId:"windowContextId") displayId:{-[AXElement windowDisplayId](self, "windowDisplayId"), v4, v6, v8, v10}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)visibleFrame
{
  [(AXElement *)self cachedVisibleFrame];
  if (CGRectIsNull(v17))
  {
    [(AXUIElement *)self->_uiElement rectWithAXAttribute:2057];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = +[AXElement systemWideElement];
    [v11 convertRect:-[AXElement windowContextId](self fromContextId:"windowContextId") displayId:{-[AXElement windowDisplayId](self, "windowDisplayId"), v4, v6, v8, v10}];
    [(AXElement *)self setCachedVisibleFrame:?];
  }

  [(AXElement *)self cachedVisibleFrame];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)focusableFrameForZoom
{
  [(AXUIElement *)self->_uiElement updateCache:2149];
  [(AXUIElement *)self->_uiElement rectWithAXAttribute:2149];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[AXElement systemWideElement];
  [v11 convertRect:-[AXElement windowContextId](self fromContextId:"windowContextId") displayId:{-[AXElement windowDisplayId](self, "windowDisplayId"), v4, v6, v8, v10}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (unint64_t)containerType
{
  v2 = [(AXUIElement *)self->_uiElement numberWithAXAttribute:2187];
  v3 = [v2 integerValue];

  return v3;
}

- (AXElement)touchContainer
{
  v3 = [(AXElement *)self containerTypes];
  v4 = &unk_1F3E6BFE8;
  if (([v3 containsObject:&unk_1F3E6BFE8] & 1) != 0 || (v4 = &unk_1F3E6C000, (objc_msgSend(v3, "containsObject:", &unk_1F3E6C000)) || (v4 = &unk_1F3E6C018, (objc_msgSend(v3, "containsObject:", &unk_1F3E6C018)) || (v4 = &unk_1F3E6C030, (objc_msgSend(v3, "containsObject:", &unk_1F3E6C030)) || (v4 = &unk_1F3E6C048, (objc_msgSend(v3, "containsObject:", &unk_1F3E6C048)) || (v4 = &unk_1F3E6C060, (objc_msgSend(v3, "containsObject:", &unk_1F3E6C060)) || (v4 = &unk_1F3E6C078, (objc_msgSend(v3, "containsObject:", &unk_1F3E6C078)) || (v4 = &unk_1F3E6C090, objc_msgSend(v3, "containsObject:", &unk_1F3E6C090))) && (v5 = -[AXUIElement objectWithAXAttribute:parameter:](self->_uiElement, "objectWithAXAttribute:parameter:", 92515, v4)) != 0 && (v6 = v5, v7 = CFGetTypeID(v5), v7 == AXUIElementGetTypeID()) || (-[AXUIElement updateCache:](self->_uiElement, "updateCache:", 2012), (v8 = -[AXUIElement objectWithAXAttribute:](self->_uiElement, "objectWithAXAttribute:", 2012)) != 0) && (v6 = v8, v9 = CFGetTypeID(v8), v9 == AXUIElementGetTypeID()))
  {
    v10 = [AXElement elementWithAXUIElement:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (AXElement)accessibleAncestor
{
  v2 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:2096];
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == AXUIElementGetTypeID())
    {
      v2 = [AXElement elementWithAXUIElement:v3];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (NSArray)accessibleDescendants
{
  v3 = [(AXElement *)self uiElement];
  [v3 updateCache:2095];

  v4 = [(AXElement *)self uiElement];
  v5 = [v4 uiElementsWithAttribute:2095];
  v6 = [(AXElement *)self _axElementsForAXUIElements:v5];

  return v6;
}

- (id)keyboardContainer
{
  v2 = [(AXElement *)self parentGroup];
  if (v2)
  {
    while (![v2 isKeyboardContainer])
    {
      v3 = [v2 parentGroup];

      v2 = v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v2 = v2;
  }

LABEL_6:

  return v2;
}

- (BOOL)isMap
{
  if ([(AXElement *)self hasAnyTraits:0x1000000000])
  {
    return 1;
  }

  v4 = [(AXElement *)self touchContainer];
  v5 = [v4 hasAnyTraits:0x1000000000];

  return v5;
}

- (NSArray)variantKeys
{
  v3 = [(AXElement *)self uiElement];
  [v3 updateCache:12002];

  v4 = [(AXElement *)self uiElement];
  v5 = [v4 uiElementsWithAttribute:12002];
  v6 = [(AXElement *)self _axElementsForAXUIElements:v5];

  return v6;
}

- (BOOL)hasVariantKeys
{
  v3 = [(AXElement *)self uiElement];
  [v3 updateCache:12003];

  v4 = [(AXElement *)self uiElement];
  LOBYTE(v3) = [v4 BOOLWithAXAttribute:12003];

  return v3;
}

- (id)_textOperationsOperator
{
  v2 = self;
  if ([(AXElement *)v2 hasWebContent])
  {
    v3 = [(AXElement *)v2 elementForAttribute:2011];

    v2 = v3;
  }

  return v2;
}

- (NSArray)textOperations
{
  v2 = [(AXElement *)self _textOperationsOperator];
  v3 = [v2 uiElement];
  [v3 updateCache:2010];

  v4 = [v2 uiElement];
  v5 = [v4 objectWithAXAttribute:2010];

  return v5;
}

- (NSArray)typingCandidates
{
  v3 = [(AXElement *)self uiElement];
  v4 = [v3 uiElementsWithAttribute:3004];
  v5 = [(AXElement *)self _axElementsForAXUIElements:v4];

  return v5;
}

- (void)setAssistiveTechFocused:(BOOL)a3
{
  v3 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v7 setObject:v5 forKey:@"focused"];

  if (setAssistiveTechFocused__onceToken != -1)
  {
    [AXElement setAssistiveTechFocused:];
  }

  if (setAssistiveTechFocused__isSwitchControl)
  {
    v6 = @"UIAccessibilityNotificationSwitchControlIdentifier";
  }

  else
  {
    if (setAssistiveTechFocused__isVoiceOver != 1)
    {
      goto LABEL_8;
    }

    v6 = @"UIAccessibilityNotificationVoiceOverIdentifier";
  }

  [v7 setObject:v6 forKey:@"assistiveTech"];
LABEL_8:
  [(AXUIElement *)self->_uiElement setAXAttribute:2018 withObject:v7 synchronous:0];
}

void __37__AXElement_setAssistiveTechFocused___block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 bundleIdentifier];

  if ([v2 isEqualToString:@"com.apple.assistivetouchd"])
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 isEqualToString:@"com.apple.accessibility.ASTTestApp"];
  }

  setAssistiveTechFocused__isSwitchControl = v1;
  setAssistiveTechFocused__isVoiceOver = [v2 isEqualToString:@"com.apple.VoiceOverTouch"];
}

- (NSArray)customActions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AXElement *)self remoteParent];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 customActions];
    if ([v6 count])
    {
      [v3 addObjectsFromArray:v6];
    }
  }

  v7 = [(AXElement *)self uiElement];
  v8 = [v7 arrayWithAXAttribute:2036];

  if ([v8 count])
  {
    [v3 addObjectsFromArray:v8];
  }

  return v3;
}

- (NSArray)drags
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(AXElement *)self uiElement];
  v5 = [v4 arrayWithAXAttribute:2175];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v10 = *(*(&v12 + 1) + 8 * i);
        if (AXValidateDictionaryAsDragWireFormat(v10))
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (NSArray)drops
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(AXElement *)self uiElement];
  v5 = [v4 arrayWithAXAttribute:2176];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v10 = *(*(&v12 + 1) + 8 * i);
        if (AXValidateDictionaryAsDropWireFormat(v10))
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (NSString)roleDescription
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 stringWithAXAttribute:2077];

  return v3;
}

- (_NSRange)rowRange
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 rangeWithAXAttribute:2027];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSString)textualContext
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 stringWithAXAttribute:2193];

  return v3;
}

- (BOOL)isComboBox
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 BOOLWithAXAttribute:2030];

  return v3;
}

- (BOOL)required
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 BOOLWithAXAttribute:2029];

  return v3;
}

- (_NSRange)selectedTextRange
{
  v3 = [(AXElement *)self uiElement];
  [v3 updateCache:2005];

  v4 = [(AXElement *)self uiElement];
  v5 = [v4 rangeWithAXAttribute:2005];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (void)setSelectedTextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(AXElement *)self uiElement];
  [v5 setAXAttribute:2005 withRange:{location, length}];
}

- (id)_objectForRange:(_NSRange)a3 withParameterizedAttribute:(int64_t)a4
{
  v10 = a3;
  v6 = AXValueCreate(kAXValueTypeCFRange, &v10);
  if (v6)
  {
    v7 = v6;
    v8 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:a4 parameter:v6];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)boundsForTextRange:(_NSRange)a3
{
  v4 = MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 16);
  v20.origin = *MEMORY[0x1E695F058];
  v20.size = v5;
  v6 = [(AXElement *)self _objectForRange:a3.location withParameterizedAttribute:a3.length, 92506];
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == AXValueGetTypeID() && AXValueGetType(v7) == kAXValueTypeCGRect)
    {
      AXValueGetValue(v7, kAXValueTypeCGRect, &v20);
    }
  }

  if (!CGRectEqualToRect(v20, *v4) && !CGRectEqualToRect(v20, *MEMORY[0x1E695F050]))
  {
    v9 = +[AXElement systemWideElement];
    v10 = [(AXElement *)self windowContextId];
    v11 = [(AXElement *)self windowDisplayId];
    [v9 convertRect:v10 fromContextId:v11 displayId:{*&v20.origin, *&v20.size}];
    v20.origin.x = v12;
    v20.origin.y = v13;
    v20.size.width = v14;
    v20.size.height = v15;
  }

  y = v20.origin.y;
  x = v20.origin.x;
  height = v20.size.height;
  width = v20.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)nextElementsWithCount:(unint64_t)a3
{
  v3 = a3;
  v5 = [(AXElement *)self uiElement];
  v6 = [v5 nextElementsWithCount:v3];
  v7 = [(AXElement *)self _axElementsForAXUIElements:v6];

  return v7;
}

- (id)previousElementsWithCount:(unint64_t)a3
{
  v3 = a3;
  v5 = [(AXElement *)self uiElement];
  v6 = [v5 previousElementsWithCount:v3];
  v7 = [(AXElement *)self _axElementsForAXUIElements:v6];

  return v7;
}

- (double)distanceToElement:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = 0.0;
    if (![(AXElement *)self isEqual:v4])
    {
      [v4 visibleFrame];
      x = v13.origin.x;
      y = v13.origin.y;
      width = v13.size.width;
      height = v13.size.height;
      MidX = CGRectGetMidX(v13);
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      [(AXElement *)self distanceToPoint:MidX, CGRectGetMidY(v14)];
      v5 = v11;
    }
  }

  else
  {
    v5 = 1.79769313e308;
  }

  return v5;
}

- (double)distanceToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(AXElement *)self visibleFrame];
  v5 = v12.origin.x;
  v6 = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = v5;
  v13.origin.y = v6;
  v13.size.width = width;
  v13.size.height = height;
  MidY = CGRectGetMidY(v13);
  return sqrt((x - MidX) * (x - MidX) + (y - MidY) * (y - MidY));
}

- (BOOL)eligibleForIconVision
{
  if (([(AXElement *)self traits]& 0x8000020) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(AXUIElement *)self->_uiElement numberWithAXAttribute:2701];
    v5 = [v4 unsignedIntegerValue];

    return (v5 >> 15) & 1;
  }

  return v3;
}

- (NSDictionary)semanticContext
{
  v2 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:13001];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int)pid
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 pid];

  return v3;
}

- (AXElement)remoteParent
{
  v3 = [(AXElement *)self cachedRemoteParent];

  if (!v3)
  {
    v4 = [(AXElement *)self _elementForAttribute:2092 shouldUpdateCache:0 shouldFetchAttributes:0];
    [(AXElement *)self setCachedRemoteParent:v4];
  }

  return [(AXElement *)self cachedRemoteParent];
}

- (unint64_t)scanningBehaviorTraits
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 numberWithAXAttribute:2147];
  v4 = [v3 intValue];

  return v4;
}

- (id)_remoteParentForContextID
{
  v3 = [(AXElement *)self cachedRemoteParentForContextID];

  if (!v3)
  {
    v4 = [(AXElement *)self _elementForAttribute:2310 shouldUpdateCache:0 shouldFetchAttributes:0];
    [(AXElement *)self setCachedRemoteParentForContextID:v4];
  }

  return [(AXElement *)self cachedRemoteParentForContextID];
}

- (BOOL)canPerformZoom
{
  if ([(AXElement *)self hasAnyTraits:0x400000000000]|| [(AXElement *)self isMap])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(AXElement *)self hasWebContent];
    if (v3)
    {
      if ([(AXElement *)self hasTextEntry]|| [(AXElement *)self isKeyboardKey])
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        LOBYTE(v3) = ![(AXElement *)self isMathEquation];
      }
    }
  }

  return v3;
}

- (BOOL)_showContextMenuWithTargetPointValue:(id)a3
{
  v4 = a3;
  if ([(AXUIElement *)self->_uiElement performAXAction:2051 withValue:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(AXElement *)self remoteParent];
    v7 = v6;
    if (v6)
    {
      v5 = [v6 _showContextMenuWithTargetPointValue:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)showContextMenu
{
  if ([(AXElement *)self hasAllTraits:0x20000])
  {
    v3 = MEMORY[0x1E696B098];
    [(AXElement *)self centerPoint];
    v4 = [v3 valueWithPoint:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(AXElement *)self _showContextMenuWithTargetPointValue:v4];

  return v5;
}

- (BOOL)scrollToVisible
{
  v3 = [(AXElement *)self uiElement];
  v4 = [v3 performAXAction:2003];

  v5 = [(AXElement *)self uiElement];
  v6 = [v5 BOOLWithAXAttribute:2093];

  if (v6)
  {
    v7 = [(AXElement *)self remoteParent];
    if (v7)
    {
      v8 = [(AXElement *)self uiElement];
      [v8 updateCache:2003];

      [(AXElement *)self frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [v7 uiElement];
      v18 = [MEMORY[0x1E696B098] valueWithRect:{v10, v12, v14, v16}];
      v4 = [v17 performAXAction:2039 withValue:v18];
    }
  }

  v19 = [(AXElement *)self uiElement];
  [v19 updateCache:2057];

  return v4;
}

- (BOOL)canScrollInAtLeastOneDirection
{
  v3 = [(AXElement *)self uiElement];
  v4 = [v3 BOOLWithAXAttribute:2064];

  if (v4)
  {
    return 1;
  }

  v6 = [(AXElement *)self uiElement];
  v7 = [v6 BOOLWithAXAttribute:2093];

  if (!v7)
  {
    return 0;
  }

  v8 = [(AXElement *)self remoteParent];
  v9 = [v8 uiElement];
  v10 = [v9 BOOLWithAXAttribute:2064];

  return v10;
}

- (BOOL)supportsAction:(int)a3
{
  v3 = *&a3;
  result = 0;
  if (a3 > 2011)
  {
    if (a3 <= 2035)
    {
      switch(a3)
      {
        case 2012:
          v8 = [(AXElement *)self _textOperationsOperator];
          v9 = [v8 hasAnyTraits:0x2000000000];
          break;
        case 2013:

          return [(AXElement *)self canPerformEscape];
        case 2030:
          v8 = [(AXElement *)self uiElement];
          v9 = [v8 canPerformAXAction:2030];
          break;
        default:
          return result;
      }

      v13 = v9;
LABEL_31:

      return v13;
    }

    if ((a3 - 2037) >= 2)
    {
      if (a3 == 2036)
      {

        return [(AXElement *)self canPerformSecondaryActivate];
      }
    }

    else
    {

      return [(AXElement *)self canPerformTrackingDetail];
    }
  }

  else
  {
    if ((a3 - 2006) < 4)
    {
      v6 = [(AXElement *)self uiElement];
      v7 = [v6 canPerformAXAction:v3];

      if (v7)
      {
        return 1;
      }

      v10 = [(AXElement *)self uiElement];
      v11 = [v10 BOOLWithAXAttribute:2093];

      if (!v11)
      {
        return 0;
      }

      v8 = [(AXElement *)self remoteParent];
      v12 = [v8 uiElement];
      v13 = [v12 canPerformAXAction:v3];

      goto LABEL_31;
    }

    if ((a3 - 2001) >= 2)
    {
      if (a3 == 2010)
      {

        return [(AXElement *)self canPerformActivate];
      }
    }

    else
    {

      return [(AXElement *)self canPerformZoom];
    }
  }

  return result;
}

- (BOOL)performAction:(int)a3
{
  v3 = *&a3;
  if ((a3 - 2006) > 0xE)
  {
    goto LABEL_20;
  }

  if (((1 << (a3 + 42)) & 0x600F) != 0)
  {
    v5 = [(AXElement *)self uiElement];
    v6 = [v5 performAXAction:v3];

    if (v6)
    {
      return 1;
    }

    v8 = [(AXElement *)self uiElement];
    v9 = [v8 BOOLWithAXAttribute:2093];

    if (v9)
    {
      v10 = [(AXElement *)self remoteParent];
      v11 = [v10 uiElement];
      v12 = [v11 performAXAction:v3];

LABEL_21:
      return v12;
    }

    return 0;
  }

  if (a3 != 2010)
  {
    if (a3 == 2013)
    {
      v13 = [(AXElement *)self uiElement];
      v14 = [v13 performAXAction:2013];

      if (v14)
      {
        return 1;
      }

      v15 = [(AXElement *)self remoteParent];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 uiElement];
        v18 = [v17 performAXAction:2013];

        if (v18)
        {
          return 1;
        }
      }

      if (_AXSClarityBoardEnabled())
      {
        v19 = +[AXElement systemApplication];
        v20 = [(AXElement *)self application];
        v21 = [v20 isEqual:v19];

        if (v21)
        {
          v7 = 0;
        }

        else
        {
          v23 = [v19 firstElementInApplication];
          v7 = [v23 performAction:2013];
        }

        return v7;
      }

      return 0;
    }

LABEL_20:
    v10 = [(AXElement *)self uiElement];
    v12 = [v10 performAXAction:v3];
    goto LABEL_21;
  }

  return [(AXElement *)self press];
}

- (BOOL)performAction:(int)a3 withValue:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (v4 == 2012)
  {
    v7 = [(AXElement *)self _textOperationsOperator];
    v8 = [v7 uiElement];
    v9 = v8;
    v10 = 2012;
    goto LABEL_7;
  }

  v11 = [(AXElement *)self uiElement];
  v12 = [v11 performAXAction:v4 withValue:v6];

  if (v4 == 2021 && (v12 & 1) == 0)
  {
    v13 = [(AXElement *)self remoteParent];
    v7 = v13;
    if (!v13)
    {
      v12 = 0;
      goto LABEL_8;
    }

    v8 = [v13 uiElement];
    v9 = v8;
    v10 = 2021;
LABEL_7:
    v12 = [v8 performAXAction:v10 withValue:v6];

LABEL_8:
  }

  return v12;
}

- (__AXUIElement)scrollAncestorForScrollAction:(int)a3
{
  if ((a3 - 2006) > 2)
  {
    v4 = 2107;
  }

  else
  {
    v4 = qword_1BF7DE7A8[a3 - 2006];
  }

  v5 = [(AXElement *)self uiElement];
  v6 = [v5 objectWithAXAttribute:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v6 axElement];
  }

  if (v6)
  {
    return v6;
  }

  v7 = [(AXElement *)self uiElement];
  v8 = [v7 BOOLWithAXAttribute:2093];

  if (!v8)
  {
    return 0;
  }

  v9 = [(AXElement *)self remoteParent];
  v10 = [v9 uiElement];
  v6 = [v10 objectWithAXAttribute:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return v6;
  }

  return [v6 axElement];
}

- (unsigned)windowDisplayId
{
  v3 = [(AXUIElement *)self->_uiElement numberWithAXAttribute:2123];
  v4 = [v3 unsignedIntValue];

  if (!v4)
  {
    v5 = [(AXElement *)self _remoteParentForContextID];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 uiElement];
      v8 = [v7 numberWithAXAttribute:2123];
      v4 = [v8 unsignedIntValue];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (unsigned)windowContextId
{
  v3 = [(AXUIElement *)self->_uiElement numberWithAXAttribute:2021];
  v4 = [v3 unsignedIntValue];

  if (!v4)
  {
    v5 = [(AXElement *)self _remoteParentForContextID];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 uiElement];
      v8 = [v7 numberWithAXAttribute:2021];
      v4 = [v8 unsignedIntValue];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSString)fbSceneIdentifier
{
  v3 = [(AXUIElement *)self->_uiElement stringWithAXAttribute:2721];
  if (!v3)
  {
    v4 = [(AXElement *)self _remoteParentForContextID];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 uiElement];
      v3 = [v6 stringWithAXAttribute:2721];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSString)windowSceneIdentifier
{
  v3 = [(AXUIElement *)self->_uiElement stringWithAXAttribute:3056];
  if (!v3)
  {
    v4 = [(AXElement *)self _remoteParentForContextID];
    v3 = [v4 windowSceneIdentifier];
  }

  return v3;
}

- (BOOL)canPerformActivate
{
  v3 = [(AXElement *)self uiElement];
  [v3 updateCache:2019];

  v4 = [(AXElement *)self uiElement];
  v5 = [v4 BOOLWithAXAttribute:2019];

  if (v5)
  {
    return 1;
  }

  v7 = [(AXElement *)self uiElement];
  v8 = [v7 BOOLWithAXAttribute:2101];

  if (!v8)
  {
    return 0;
  }

  v9 = [(AXElement *)self remoteParent];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 uiElement];
    [v11 updateCache:2019];

    v12 = [v10 uiElement];
    v6 = [v12 BOOLWithAXAttribute:2019];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_performActivate
{
  v3 = [(AXElement *)self uiElement];
  v4 = [v3 performAXAction:2010];

  if (v4)
  {
    return 1;
  }

  v6 = [(AXElement *)self uiElement];
  v7 = [v6 BOOLWithAXAttribute:2101];

  if (!v7)
  {
    return 0;
  }

  v8 = [(AXElement *)self remoteParent];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 uiElement];
    v5 = [v10 performAXAction:2010];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canPerformSecondaryActivate
{
  [(AXUIElement *)self->_uiElement updateCache:2079];
  uiElement = self->_uiElement;

  return [(AXUIElement *)uiElement BOOLWithAXAttribute:2079];
}

- (BOOL)press
{
  if ([(AXElement *)self canPerformActivate]&& [(AXElement *)self _performActivate])
  {
    goto LABEL_9;
  }

  [(AXElement *)self visiblePoint];
  if (v4 != -1.0 || v3 != -1.0)
  {
    goto LABEL_11;
  }

  if ([(AXUIElement *)self->_uiElement performAXAction:2010])
  {
LABEL_9:
    v6 = 1;
    goto LABEL_12;
  }

  [(AXElement *)self centerPoint];
LABEL_11:
  v6 = [(AXElement *)self simulateTapWithFingerIndex:1 withPoint:?];
LABEL_12:
  v7 = [(AXElement *)self elementForAttribute:2017];
  v8 = [v7 bundleId];

  if (([v8 hasPrefix:@"com.apple."] & 1) == 0)
  {
    v9 = dispatch_time(0, 500000000);
    dispatch_after(v9, MEMORY[0x1E69E96A0], &__block_literal_global_97);
  }

  v10 = [(AXElement *)self uiElement];
  v11 = [v10 numberWithAXAttribute:2068];
  [v11 doubleValue];
  v13 = v12;

  if (v13 <= 0.0)
  {
    [(AXElement *)self _updateLabel];
  }

  else
  {
    [(AXElement *)self performSelector:sel__updateLabel withObject:0 afterDelay:v13];
  }

  return v6;
}

- (BOOL)simulateTapWithFingerIndex:(unint64_t)a3
{
  [(AXElement *)self visiblePoint];

  return [(AXElement *)self simulateTapWithFingerIndex:a3 withPoint:?];
}

- (BOOL)simulateTapWithFingerIndex:(unint64_t)a3 withPoint:(CGPoint)a4
{
  v19[4] = *MEMORY[0x1E69E9840];
  valuePtr = a4;
  if (_AXSMossdeepEnabled())
  {
    v6 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:5063];
    if (v6)
    {
      v16[0] = @"additionalInfo";
      v7 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:5063];
      v17[0] = v7;
      v17[1] = &unk_1F3E6C3D0;
      v16[1] = @"delay";
      v16[2] = @"fingerIndex";
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v17[2] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AXElement windowContextId](self, "windowContextId")}];
    v10 = AXValueCreate(kAXValueTypeCGPoint, &valuePtr);
    v18[0] = @"point";
    v18[1] = @"windowContextID";
    v19[0] = v10;
    v19[1] = v6;
    v19[2] = &unk_1F3E6C3D0;
    v18[2] = @"delay";
    v18[3] = @"fingerIndex";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v19[3] = v11;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];

    if (v10)
    {
      CFRelease(v10);
    }
  }

  v12 = +[AXElement systemEventDispatchElement];
  v13 = [v12 performAction:5008 withValue:v9];

  return v13;
}

- (BOOL)longPress
{
  v13[3] = *MEMORY[0x1E69E9840];
  [(AXElement *)self visiblePoint];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AXElement windowContextId](self, "windowContextId", v3, v4)}];
  v6 = AXValueCreate(kAXValueTypeCGPoint, &v12);
  v13[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  v13[1] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];

  if (v6)
  {
    CFRelease(v6);
  }

  v9 = +[AXElement systemWideElement];
  v10 = [v9 performAction:5004 withValue:v8];

  return v10;
}

- (BOOL)_zoomInOrOut:(BOOL)a3
{
  if (a3)
  {
    v4 = 2001;
  }

  else
  {
    v4 = 2002;
  }

  [(AXElement *)self centerPoint];
  v5 = [MEMORY[0x1E696B098] valueWithPoint:?];
  [(AXElement *)self performAction:v4 withValue:v5];
  v6 = [(AXElement *)self remoteParent];
  v7 = v6;
  if (v6)
  {
    [v6 performAction:v4 withValue:v5];
  }

  return 1;
}

- (id)_uiElementForTextInsertionAndDeletion
{
  [(AXUIElement *)self->_uiElement updateCache:2183];
  v3 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:2183];
  v4 = [AXUIElement uiElementWithAXElement:v3 cache:0];

  return v4;
}

- (void)insertText:(id)a3 asUndoableAction:(BOOL)a4
{
  v4 = a4;
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    if (v4)
    {
      v7 = [(AXElement *)self _textOperationsOperator];
      v8 = v7;
      if (v7 == self)
      {
        v10 = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
        v13[0] = @"text";
        v13[1] = @"createsUndoableAction";
        v14[0] = v6;
        v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
        v14[1] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
        [v10 performAXAction:2056 withValue:v12];
      }

      else
      {
        [(AXElement *)v7 performAction:2060];
        v9 = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
        [v9 performAXAction:2056 withValue:v6];

        [v8 performAction:2061];
      }
    }

    else
    {
      v8 = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
      [v8 performAXAction:2056 withValue:v6];
    }
  }
}

- (void)insertTextWithAlternatives:(id)a3
{
  v4 = a3;
  v5 = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
  [v5 performAXAction:2055 withValue:v4];
}

- (void)deleteText
{
  v2 = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
  [v2 performAXAction:2052];
}

- (id)alternativesForTextAtPosition:(unint64_t)a3
{
  v4 = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
  v5 = [v4 objectWithAXAttribute:95237 parameter:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", a3)}];

  return v5;
}

- (AXElement)elementForTextInsertionAndDeletion
{
  v2 = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
  v3 = [AXElement elementWithUIElement:v2];

  return v3;
}

- (BOOL)respondsToUserInteraction
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 BOOLWithAXAttribute:12000];

  return v3;
}

- (int64_t)scannerActivateBehavior
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 numberWithAXAttribute:12004];
  v4 = [v3 intValue];

  return v4;
}

- (BOOL)canPerformEscape
{
  v3 = [(AXElement *)self uiElement];
  v4 = [v3 BOOLWithAXAttribute:2061];

  if (v4)
  {
    return 1;
  }

  v6 = [(AXElement *)self remoteParent];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 uiElement];
    v5 = [v8 BOOLWithAXAttribute:2061];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (AXElement)autoscrollTarget
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 objectWithAXAttribute:2054];

  return v3;
}

- (void)setAutoscrollTarget:(id)a3
{
  v4 = a3;
  v6 = [(AXElement *)self uiElement];
  v5 = v4[2];

  [v6 setAXAttribute:2054 withUIElement:v5];
}

- (BOOL)autoscrollInDirection:(unint64_t)a3
{
  v4 = [(AXElement *)self uiElement];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
  v6 = [v4 performAXAction:2026 withValue:v5];

  return v6;
}

- (void)pauseAutoscrolling
{
  v2 = [(AXElement *)self uiElement];
  [v2 performAXAction:2027];
}

- (BOOL)isAutoscrolling
{
  v3 = [(AXElement *)self uiElement];
  [v3 updateCache:2055];

  v4 = [(AXElement *)self uiElement];
  LOBYTE(v3) = [v4 BOOLWithAXAttribute:2055];

  return v3;
}

- (void)increaseAutoscrollSpeed
{
  v2 = [(AXElement *)self uiElement];
  [v2 performAXAction:2028];
}

- (void)decreaseAutoscrollSpeed
{
  v2 = [(AXElement *)self uiElement];
  [v2 performAXAction:2029];
}

- (void)setAutoscrollSpeed:(double)a3
{
  v5 = [(AXElement *)self uiElement];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 performAXAction:2032 withValue:v4];
}

- (id)scrollViewsForAutoScroll
{
  v3 = [(AXElement *)self uiElement];
  [v3 updateCache:3070];

  v4 = [(AXElement *)self uiElement];
  v5 = [v4 uiElementsWithAttribute:3070];

  v6 = [(AXElement *)self _axElementsForAXUIElements:v5];

  return v6;
}

- (NSArray)ornamentWindows
{
  v3 = [(AXElement *)self uiElement];
  [v3 updateCache:3074];

  v4 = [(AXElement *)self uiElement];
  v5 = [v4 uiElementsWithAttribute:3074];

  v6 = [(AXElement *)self _axElementsForAXUIElements:v5];

  return v6;
}

- (void)scrollToTop
{
  v2 = [(AXElement *)self uiElement];
  [v2 performAXAction:2030];
}

- (void)scrollToBottom
{
  v2 = [(AXElement *)self uiElement];
  [v2 performAXAction:2031];
}

- (NSArray)customContent
{
  v2 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:2210];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v2 error:&v12];
    v4 = v12;
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = getAXCustomContentClass_softClass;
    v17 = getAXCustomContentClass_softClass;
    if (!getAXCustomContentClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getAXCustomContentClass_block_invoke;
      v13[3] = &unk_1E80D3D68;
      v13[4] = &v14;
      __getAXCustomContentClass_block_invoke(v13);
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    v9 = [v5 setWithObjects:{v6, v7, 0}];
    v10 = [v3 decodeObjectOfClasses:v9 forKey:*MEMORY[0x1E696A508]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)highestAncestorGroup
{
  v2 = [(AXElement *)self parentGroup];
  if (v2)
  {
    v3 = v2;
    v4 = v2;
    do
    {
      v5 = v3;

      v3 = [v5 parentGroup];

      v4 = v5;
    }

    while (v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)children
{
  v3 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:5001];
  v4 = [(AXElement *)self _axElementsForAXUIElements:v3];

  return v4;
}

- (id)_axElementsForAXUIElements:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() elementsWithUIElements:v3];

  return v4;
}

- (void)_updateLabel
{
  v2 = [(AXElement *)self uiElement];
  [v2 updateCache:2001];
}

- (CGRect)cachedFrame
{
  x = self->_cachedFrame.origin.x;
  y = self->_cachedFrame.origin.y;
  width = self->_cachedFrame.size.width;
  height = self->_cachedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cachedVisibleFrame
{
  x = self->_cachedVisibleFrame.origin.x;
  y = self->_cachedVisibleFrame.origin.y;
  width = self->_cachedVisibleFrame.size.width;
  height = self->_cachedVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)makeLookingGlassRequest:(id)a3
{
  v4 = a3;
  AXUIElementSetMessagingTimeout([(AXElement *)self elementRef], 20.0);
  v5 = [(AXElement *)self uiElement];
  v6 = [v5 objectWithAXAttribute:96001 parameter:v4];

  AXUIElementSetMessagingTimeout([(AXElement *)self elementRef], 0.0);

  return v6;
}

- (id)_makeTinkerKitRequest:(id)a3
{
  v4 = a3;
  AXUIElementSetMessagingTimeout([(AXElement *)self elementRef], 20.0);
  v5 = [(AXElement *)self uiElement];
  v6 = [v5 objectWithAXAttribute:96002 parameter:v4];

  AXUIElementSetMessagingTimeout([(AXElement *)self elementRef], 0.0);

  return v6;
}

+ (void)registerNotifications:(int)a1 withIdentifier:(NSObject *)a2 withHandler:.cold.2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1BF78E000, a2, OS_LOG_TYPE_ERROR, "Failed to create an accessibility event observer: %ld", &v2, 0xCu);
}

+ (void)registerNotifications:(int)a1 withIdentifier:(NSObject *)a2 withHandler:.cold.3(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BF78E000, a2, OS_LOG_TYPE_ERROR, "Error adding notification: %d", v2, 8u);
}

@end