@interface AXElement
+ (AXElement)elementWithData:(id)data;
+ (AXElement)elementWithUIElement:(id)element;
+ (AXElement)systemEventDispatchElement;
+ (id)applicationAtCoordinate:(CGPoint)coordinate;
+ (id)elementAtCoordinate:(CGPoint)coordinate withVisualPadding:(BOOL)padding displayID:(unsigned int)d allowSameProcess:(BOOL)process;
+ (id)elementWithAXUIElement:(__AXUIElement *)element;
+ (id)elementsWithUIElements:(id)elements;
+ (id)primaryApp;
+ (id)systemApplication;
+ (id)systemWideElement;
+ (int)systemAppPid;
+ (void)registerNotifications:(id)notifications withIdentifier:(id)identifier withHandler:(id)handler;
- (AXElement)accessibleAncestor;
- (AXElement)autoscrollTarget;
- (AXElement)currentApplication;
- (AXElement)elementForTextInsertionAndDeletion;
- (AXElement)initWithAXUIElement:(__AXUIElement *)element;
- (AXElement)initWithUIElement:(id)element;
- (AXElement)remoteParent;
- (AXElement)touchContainer;
- (BOOL)_performActivate;
- (BOOL)_showContextMenuWithTargetPointValue:(id)value;
- (BOOL)_zoomInOrOut:(BOOL)out;
- (BOOL)applicationIsModal;
- (BOOL)autoscrollInDirection:(unint64_t)direction;
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
- (BOOL)isEqual:(id)equal;
- (BOOL)isMap;
- (BOOL)isPassivelyListeningForEvents;
- (BOOL)isScreenLocked;
- (BOOL)isSpringBoard;
- (BOOL)isSystemApplication;
- (BOOL)isSystemWideElement;
- (BOOL)longPress;
- (BOOL)performAction:(int)action;
- (BOOL)performAction:(int)action withValue:(id)value;
- (BOOL)press;
- (BOOL)required;
- (BOOL)respondsToUserInteraction;
- (BOOL)scrollToVisible;
- (BOOL)showContextMenu;
- (BOOL)simulateTapWithFingerIndex:(unint64_t)index;
- (BOOL)simulateTapWithFingerIndex:(unint64_t)index withPoint:(CGPoint)point;
- (BOOL)supportsAction:(int)action;
- (CGPath)convertPath:(CGPath *)path fromContextId:(unsigned int)id displayId:(unsigned int)displayId;
- (CGPath)path;
- (CGPoint)centerPoint;
- (CGPoint)convertPoint:(CGPoint)point fromContextId:(unsigned int)id;
- (CGPoint)convertPoint:(CGPoint)point fromContextId:(unsigned int)id displayId:(unsigned int)displayId;
- (CGPoint)convertPoint:(CGPoint)point toContextId:(unsigned int)id;
- (CGPoint)convertPoint:(CGPoint)point toContextId:(unsigned int)id displayId:(unsigned int)displayId;
- (CGPoint)visiblePoint;
- (CGRect)boundsForTextRange:(_NSRange)range;
- (CGRect)cachedFrame;
- (CGRect)cachedVisibleFrame;
- (CGRect)convertRect:(CGRect)rect fromContextId:(unsigned int)id;
- (CGRect)convertRect:(CGRect)rect fromContextId:(unsigned int)id displayId:(unsigned int)displayId;
- (CGRect)convertRect:(CGRect)rect toContextId:(unsigned int)id;
- (CGRect)convertRect:(CGRect)rect toContextId:(unsigned int)id displayId:(unsigned int)displayId;
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
- (__AXUIElement)scrollAncestorForScrollAction:(int)action;
- (double)distanceToElement:(id)element;
- (double)distanceToPoint:(CGPoint)point;
- (id)_axElementsForAXUIElements:(id)elements;
- (id)_elementForAttribute:(int64_t)attribute shouldUpdateCache:(BOOL)cache shouldFetchAttributes:(BOOL)attributes;
- (id)_makeTinkerKitRequest:(id)request;
- (id)_objectForRange:(_NSRange)range withParameterizedAttribute:(int64_t)attribute;
- (id)_remoteParentForContextID;
- (id)_textOperationsOperator;
- (id)_uiElementForTextInsertionAndDeletion;
- (id)alternativesForTextAtPosition:(unint64_t)position;
- (id)auditIssuesForOptions:(id)options;
- (id)elementForAttribute:(int64_t)attribute parameter:(id)parameter;
- (id)elementsForAttribute:(int64_t)attribute;
- (id)elementsForAttribute:(int64_t)attribute parameter:(id)parameter;
- (id)elementsMatchingText:(id)text;
- (id)focusContainersForCurrentSceneIdentifier:(id)identifier;
- (id)highestAncestorGroup;
- (id)keyboardContainer;
- (id)makeLookingGlassRequest:(id)request;
- (id)nextElementsWithCount:(unint64_t)count;
- (id)previousElementsWithCount:(unint64_t)count;
- (id)remoteApplication;
- (id)scrollViewsForAutoScroll;
- (id)serializeToData;
- (int)pid;
- (int64_t)applicationOrientation;
- (int64_t)scannerActivateBehavior;
- (unint64_t)containerType;
- (unint64_t)scanningBehaviorTraits;
- (unint64_t)traits;
- (unsigned)contextIdForPoint:(CGPoint)point;
- (unsigned)displayIdForContextId:(unsigned int)id;
- (unsigned)windowContextId;
- (unsigned)windowDisplayId;
- (void)_updateLabel;
- (void)clearCachedFrame:(BOOL)frame cachedVisibleFrame:(BOOL)visibleFrame;
- (void)dealloc;
- (void)decreaseAutoscrollSpeed;
- (void)deleteText;
- (void)increaseAutoscrollSpeed;
- (void)insertText:(id)text asUndoableAction:(BOOL)action;
- (void)insertTextWithAlternatives:(id)alternatives;
- (void)pauseAutoscrolling;
- (void)scrollToBottom;
- (void)scrollToTop;
- (void)setAssistiveTechFocused:(BOOL)focused;
- (void)setAutoscrollSpeed:(double)speed;
- (void)setAutoscrollTarget:(id)target;
- (void)setPassivelyListeningForEvents:(BOOL)events;
- (void)setSelectedTextRange:(_NSRange)range;
@end

@implementation AXElement

+ (id)elementWithAXUIElement:(__AXUIElement *)element
{
  v3 = [[AXElement alloc] initWithAXUIElement:element];

  return v3;
}

+ (AXElement)elementWithUIElement:(id)element
{
  elementCopy = element;
  v4 = [[AXElement alloc] initWithUIElement:elementCopy];

  return v4;
}

+ (id)elementsWithUIElements:(id)elements
{
  v17 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  if (elementsCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = elementsCopy;
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
          [array addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

+ (id)primaryApp
{
  v2 = +[AXElement systemWideElement];
  systemApplication = [v2 systemApplication];
  currentApplications = [systemApplication currentApplications];
  firstObject = [currentApplications firstObject];

  return firstObject;
}

+ (void)registerNotifications:(id)notifications withIdentifier:(id)identifier withHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v10 = AXRuntimeLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [AXElement registerNotifications:v10 withIdentifier:? withHandler:?];
    }
  }

  v11 = +[AXElement systemWideElement];
  uiElement = [v11 uiElement];
  axElement = [uiElement axElement];

  v14 = &AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary;
  if (Observer)
  {
LABEL_6:
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = notificationsCopy;
    obj = v15;
    v45 = [v15 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v45)
    {
      v39 = notificationsCopy;
      element = axElement;
      v37 = handlerCopy;
      v38 = identifierCopy;
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
          allValues = [v14[11] allValues];
          v20 = [allValues countByEnumeratingWithState:&v46 objects:v57 count:16];
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
                  objc_enumerationMutation(allValues);
                }

                v24 = [*(*(&v46 + 1) + 8 * j) objectForKey:@"notifications"];
                v25 = [v24 containsObject:v17];

                if (v25)
                {

                  goto LABEL_21;
                }
              }

              v21 = [allValues countByEnumeratingWithState:&v46 objects:v57 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          v41 = AXObserverAddNotification(Observer, element, [v17 intValue], self);
LABEL_21:
          v14 = v18;
        }

        v45 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v45);

      identifierCopy = v38;
      notificationsCopy = v39;
      handlerCopy = v37;
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
    v27 = [handlerCopy copy];
    v56[1] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
    [v26 setObject:v28 forKey:identifierCopy];

LABEL_31:
    goto LABEL_32;
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = Handlers;
  Handlers = v29;

  pid = 0;
  AXUIElementGetPid(axElement, &pid);
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

- (unsigned)displayIdForContextId:(unsigned int)id
{
  v3 = *&id;
  valuePtr = 0;
  cf = 0;
  elementRef = [(AXElement *)self elementRef];
  AXUIElementCopyParameterizedAttributeValue(elementRef, 0x16575, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3], &cf);
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

- (unsigned)contextIdForPoint:(CGPoint)point
{
  valuePtr = point;
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

+ (id)elementAtCoordinate:(CGPoint)coordinate withVisualPadding:(BOOL)padding displayID:(unsigned int)d allowSameProcess:(BOOL)process
{
  paddingCopy = padding;
  y = coordinate.y;
  x = coordinate.x;
  v9 = [AXUIElement uiElementAtCoordinate:*&d displayId:process allowSameProcess:?];
  v10 = [AXElement elementWithUIElement:v9];
  v11 = v10;
  if (!v9)
  {
    goto LABEL_6;
  }

  [v10 frame];
  if (paddingCopy)
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

+ (id)applicationAtCoordinate:(CGPoint)coordinate
{
  y = coordinate.y;
  x = coordinate.x;
  v5 = +[AXElement systemWideElement];
  cf = 0;
  elementRef = [v5 elementRef];
  v7 = x;
  v8 = y;
  v9 = 0;
  if (!AXUIElementCopyApplicationAtPosition(elementRef, &cf, v7, v8))
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
    systemApplication = [v2 systemApplication];
  }

  else
  {
    systemApplication = v2;
  }

  v4 = systemApplication;

  return v4;
}

- (AXElement)initWithAXUIElement:(__AXUIElement *)element
{
  v4 = [AXUIElement uiElementWithAXElement:element];
  v5 = [(AXElement *)self initWithUIElement:v4];

  return v5;
}

- (AXElement)initWithUIElement:(id)element
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = AXElement;
  v6 = [(AXElement *)&v14 init];
  v7 = v6;
  v8 = 0;
  if (elementCopy && v6)
  {
    objc_storeStrong(&v6->_uiElement, element);
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

+ (AXElement)elementWithData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy && (v5 = _AXUIElementCreateWithData(dataCopy)) != 0)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uiElement = [(AXElement *)self uiElement];
    uiElement2 = [equalCopy uiElement];
    v7 = uiElement2;
    if (uiElement && uiElement2)
    {
      v8 = CFEqual(uiElement, uiElement2) != 0;
    }

    else
    {
      v8 = (uiElement | uiElement2) == 0;
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
  uiElement = [(AXElement *)self uiElement];
  v5 = [v3 stringWithFormat:@"AXElement<%p>. uiElement:%@", self, uiElement];

  return v5;
}

- (id)_elementForAttribute:(int64_t)attribute shouldUpdateCache:(BOOL)cache shouldFetchAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  if (cache)
  {
    [(AXUIElement *)self->_uiElement updateCache:attribute];
  }

  axElement = [(AXUIElement *)self->_uiElement objectWithAXAttribute:attribute];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    axElement = [axElement axElement];
  }

  if (axElement)
  {
    if (attributesCopy)
    {
      v9 = [AXElement elementWithAXUIElement:axElement];
    }

    else
    {
      v10 = [AXUIElement uiElementWithAXElement:axElement cache:0];
      v9 = [AXElement elementWithUIElement:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)elementForAttribute:(int64_t)attribute parameter:(id)parameter
{
  v4 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:attribute parameter:parameter];
  if (v4)
  {
    v4 = [AXElement elementWithAXUIElement:v4];
  }

  return v4;
}

- (id)elementsForAttribute:(int64_t)attribute parameter:(id)parameter
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:attribute parameter:parameter];
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

- (id)elementsForAttribute:(int64_t)attribute
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:attribute];
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
  isSystemWideElement = [(AXElement *)self isSystemWideElement];
  if (isSystemWideElement)
  {
    uiElement = [(AXElement *)self uiElement];
    v5 = [uiElement BOOLWithAXAttribute:1002];

    LOBYTE(isSystemWideElement) = v5;
  }

  return isSystemWideElement;
}

- (void)setPassivelyListeningForEvents:(BOOL)events
{
  eventsCopy = events;
  if ([(AXElement *)self isSystemWideElement])
  {
    uiElement = [(AXElement *)self uiElement];
    [uiElement setAXAttribute:1002 withBOOL:eventsCopy];
  }
}

- (AXElement)currentApplication
{
  currentApplications = [(AXElement *)self currentApplications];
  firstObject = [currentApplications firstObject];

  return firstObject;
}

- (NSArray)currentApplications
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement updateCache:1102];

  uiElement2 = [(AXElement *)self uiElement];
  v5 = [uiElement2 uiElementsWithAttribute:1102];
  v6 = [(AXElement *)self _axElementsForAXUIElements:v5];

  return v6;
}

- (NSArray)currentApplicationsIgnoringSiri
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement updateCache:1105];

  uiElement2 = [(AXElement *)self uiElement];
  v5 = [uiElement2 uiElementsWithAttribute:1105];
  v6 = [(AXElement *)self _axElementsForAXUIElements:v5];

  return v6;
}

- (BOOL)applicationIsModal
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement BOOLWithAXAttribute:1514];

  return v3;
}

- (NSArray)focusedOccludedAppSceneIdentifiers
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement arrayWithAXAttribute:1519];

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

- (CGRect)convertRect:(CGRect)rect toContextId:(unsigned int)id
{
  [(AXElement *)self convertRect:*&id toContextId:0 displayId:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toContextId:(unsigned int)id displayId:(unsigned int)displayId
{
  v5 = *&displayId;
  v6 = *&id;
  v18[3] = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  v8 = AXValueCreate(kAXValueTypeCGRect, &rectCopy);
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
    AXValueGetValue(v12, kAXValueTypeCGRect, &rectCopy);
  }

  width = rectCopy.size.width;
  height = rectCopy.size.height;
  x = rectCopy.origin.x;
  y = rectCopy.origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromContextId:(unsigned int)id
{
  [(AXElement *)self convertRect:*&id fromContextId:0 displayId:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromContextId:(unsigned int)id displayId:(unsigned int)displayId
{
  v5 = *&displayId;
  v6 = *&id;
  v18[3] = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  v8 = AXValueCreate(kAXValueTypeCGRect, &rectCopy);
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
    AXValueGetValue(v12, kAXValueTypeCGRect, &rectCopy);
  }

  width = rectCopy.size.width;
  height = rectCopy.size.height;
  x = rectCopy.origin.x;
  y = rectCopy.origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromContextId:(unsigned int)id
{
  [(AXElement *)self convertPoint:*&id fromContextId:0 displayId:point.x, point.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromContextId:(unsigned int)id displayId:(unsigned int)displayId
{
  v5 = AXConvertPointFromHostedCoordinates(*&id, *&displayId, point.x, point.y);
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toContextId:(unsigned int)id
{
  [(AXElement *)self convertPoint:*&id toContextId:0 displayId:point.x, point.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toContextId:(unsigned int)id displayId:(unsigned int)displayId
{
  v5 = AXConvertPointToHostedCoordinates(*&id, *&displayId, point.x, point.y);
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPath)convertPath:(CGPath *)path fromContextId:(unsigned int)id displayId:(unsigned int)displayId
{
  if (!path)
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AXElement_convertPath_fromContextId_displayId___block_invoke;
  v11[3] = &unk_1E80D44A8;
  idCopy = id;
  displayIdCopy = displayId;
  v11[4] = self;
  v11[5] = Mutable;
  AX_CGPathEnumerateElementsUsingBlock(path, v11);
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

- (void)clearCachedFrame:(BOOL)frame cachedVisibleFrame:(BOOL)visibleFrame
{
  visibleFrameCopy = visibleFrame;
  v6 = MEMORY[0x1E695F050];
  if (frame)
  {
    [(AXElement *)self setCachedFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  }

  if (visibleFrameCopy)
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
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement numberWithAXAttribute:1503];
  intValue = [v3 intValue];

  return intValue;
}

- (BOOL)isScreenLocked
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement BOOLWithAXAttribute:1500];

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
  bundleId = [(AXElement *)self bundleId];
  v3 = [bundleId isEqualToString:@"com.apple.springboard"];

  return v3;
}

- (BOOL)isSystemApplication
{
  bundleId = [(AXElement *)self bundleId];
  if ([bundleId isEqualToString:@"com.apple.springboard"] & 1) != 0 || (objc_msgSend(bundleId, "isEqualToString:", @"com.apple.PineBoard") & 1) != 0 || (objc_msgSend(bundleId, "isEqualToString:", @"com.apple.Carousel"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [bundleId isEqualToString:@"com.apple.ClarityBoard"];
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
  bundleId = [(AXElement *)self bundleId];
  v3 = [bundleId isEqualToString:@"com.apple.AccessibilityUIServer"];

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

- (id)focusContainersForCurrentSceneIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E695DF90];
  identifierCopy = identifier;
  v6 = objc_alloc_init(v4);
  if (identifierCopy)
  {
    v7 = identifierCopy;
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

- (id)elementsMatchingText:(id)text
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AB08];
  textCopy = text;
  whitespaceAndNewlineCharacterSet = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [textCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v7 forKey:@"searchText"];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:0];
  [dictionary setObject:v9 forKey:@"resultLimit"];

  v10 = [(AXUIElement *)self->_uiElement uiElementsWithAttribute:92516 parameter:dictionary];
  array = [MEMORY[0x1E695DF70] array];
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
          [array addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return array;
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
  userInputLabels = [(AXElement *)self userInputLabels];
  firstObject = [userInputLabels firstObject];

  return firstObject;
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
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (id)auditIssuesForOptions:(id)options
{
  v3 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:95005 parameter:options];
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
  integerValue = [v2 integerValue];

  return integerValue;
}

- (AXElement)touchContainer
{
  containerTypes = [(AXElement *)self containerTypes];
  v4 = &unk_1F3E6BFE8;
  if (([containerTypes containsObject:&unk_1F3E6BFE8] & 1) != 0 || (v4 = &unk_1F3E6C000, (objc_msgSend(containerTypes, "containsObject:", &unk_1F3E6C000)) || (v4 = &unk_1F3E6C018, (objc_msgSend(containerTypes, "containsObject:", &unk_1F3E6C018)) || (v4 = &unk_1F3E6C030, (objc_msgSend(containerTypes, "containsObject:", &unk_1F3E6C030)) || (v4 = &unk_1F3E6C048, (objc_msgSend(containerTypes, "containsObject:", &unk_1F3E6C048)) || (v4 = &unk_1F3E6C060, (objc_msgSend(containerTypes, "containsObject:", &unk_1F3E6C060)) || (v4 = &unk_1F3E6C078, (objc_msgSend(containerTypes, "containsObject:", &unk_1F3E6C078)) || (v4 = &unk_1F3E6C090, objc_msgSend(containerTypes, "containsObject:", &unk_1F3E6C090))) && (v5 = -[AXUIElement objectWithAXAttribute:parameter:](self->_uiElement, "objectWithAXAttribute:parameter:", 92515, v4)) != 0 && (v6 = v5, v7 = CFGetTypeID(v5), v7 == AXUIElementGetTypeID()) || (-[AXUIElement updateCache:](self->_uiElement, "updateCache:", 2012), (v8 = -[AXUIElement objectWithAXAttribute:](self->_uiElement, "objectWithAXAttribute:", 2012)) != 0) && (v6 = v8, v9 = CFGetTypeID(v8), v9 == AXUIElementGetTypeID()))
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
  uiElement = [(AXElement *)self uiElement];
  [uiElement updateCache:2095];

  uiElement2 = [(AXElement *)self uiElement];
  v5 = [uiElement2 uiElementsWithAttribute:2095];
  v6 = [(AXElement *)self _axElementsForAXUIElements:v5];

  return v6;
}

- (id)keyboardContainer
{
  parentGroup = [(AXElement *)self parentGroup];
  if (parentGroup)
  {
    while (![parentGroup isKeyboardContainer])
    {
      v2ParentGroup = [parentGroup parentGroup];

      parentGroup = v2ParentGroup;
      if (!v2ParentGroup)
      {
        goto LABEL_6;
      }
    }

    parentGroup = parentGroup;
  }

LABEL_6:

  return parentGroup;
}

- (BOOL)isMap
{
  if ([(AXElement *)self hasAnyTraits:0x1000000000])
  {
    return 1;
  }

  touchContainer = [(AXElement *)self touchContainer];
  v5 = [touchContainer hasAnyTraits:0x1000000000];

  return v5;
}

- (NSArray)variantKeys
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement updateCache:12002];

  uiElement2 = [(AXElement *)self uiElement];
  v5 = [uiElement2 uiElementsWithAttribute:12002];
  v6 = [(AXElement *)self _axElementsForAXUIElements:v5];

  return v6;
}

- (BOOL)hasVariantKeys
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement updateCache:12003];

  uiElement2 = [(AXElement *)self uiElement];
  LOBYTE(uiElement) = [uiElement2 BOOLWithAXAttribute:12003];

  return uiElement;
}

- (id)_textOperationsOperator
{
  selfCopy = self;
  if ([(AXElement *)selfCopy hasWebContent])
  {
    v3 = [(AXElement *)selfCopy elementForAttribute:2011];

    selfCopy = v3;
  }

  return selfCopy;
}

- (NSArray)textOperations
{
  _textOperationsOperator = [(AXElement *)self _textOperationsOperator];
  uiElement = [_textOperationsOperator uiElement];
  [uiElement updateCache:2010];

  uiElement2 = [_textOperationsOperator uiElement];
  v5 = [uiElement2 objectWithAXAttribute:2010];

  return v5;
}

- (NSArray)typingCandidates
{
  uiElement = [(AXElement *)self uiElement];
  v4 = [uiElement uiElementsWithAttribute:3004];
  v5 = [(AXElement *)self _axElementsForAXUIElements:v4];

  return v5;
}

- (void)setAssistiveTechFocused:(BOOL)focused
{
  focusedCopy = focused;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:focusedCopy];
  [dictionary setObject:v5 forKey:@"focused"];

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

  [dictionary setObject:v6 forKey:@"assistiveTech"];
LABEL_8:
  [(AXUIElement *)self->_uiElement setAXAttribute:2018 withObject:dictionary synchronous:0];
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
  array = [MEMORY[0x1E695DF70] array];
  remoteParent = [(AXElement *)self remoteParent];
  v5 = remoteParent;
  if (remoteParent)
  {
    customActions = [remoteParent customActions];
    if ([customActions count])
    {
      [array addObjectsFromArray:customActions];
    }
  }

  uiElement = [(AXElement *)self uiElement];
  v8 = [uiElement arrayWithAXAttribute:2036];

  if ([v8 count])
  {
    [array addObjectsFromArray:v8];
  }

  return array;
}

- (NSArray)drags
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  uiElement = [(AXElement *)self uiElement];
  v5 = [uiElement arrayWithAXAttribute:2175];

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
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (NSArray)drops
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  uiElement = [(AXElement *)self uiElement];
  v5 = [uiElement arrayWithAXAttribute:2176];

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
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (NSString)roleDescription
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement stringWithAXAttribute:2077];

  return v3;
}

- (_NSRange)rowRange
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement rangeWithAXAttribute:2027];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSString)textualContext
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement stringWithAXAttribute:2193];

  return v3;
}

- (BOOL)isComboBox
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement BOOLWithAXAttribute:2030];

  return v3;
}

- (BOOL)required
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement BOOLWithAXAttribute:2029];

  return v3;
}

- (_NSRange)selectedTextRange
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement updateCache:2005];

  uiElement2 = [(AXElement *)self uiElement];
  v5 = [uiElement2 rangeWithAXAttribute:2005];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (void)setSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  uiElement = [(AXElement *)self uiElement];
  [uiElement setAXAttribute:2005 withRange:{location, length}];
}

- (id)_objectForRange:(_NSRange)range withParameterizedAttribute:(int64_t)attribute
{
  rangeCopy = range;
  v6 = AXValueCreate(kAXValueTypeCFRange, &rangeCopy);
  if (v6)
  {
    v7 = v6;
    v8 = [(AXUIElement *)self->_uiElement objectWithAXAttribute:attribute parameter:v6];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)boundsForTextRange:(_NSRange)range
{
  v4 = MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 16);
  v20.origin = *MEMORY[0x1E695F058];
  v20.size = v5;
  92506 = [(AXElement *)self _objectForRange:range.location withParameterizedAttribute:range.length, 92506];
  if (92506)
  {
    v7 = 92506;
    v8 = CFGetTypeID(92506);
    if (v8 == AXValueGetTypeID() && AXValueGetType(v7) == kAXValueTypeCGRect)
    {
      AXValueGetValue(v7, kAXValueTypeCGRect, &v20);
    }
  }

  if (!CGRectEqualToRect(v20, *v4) && !CGRectEqualToRect(v20, *MEMORY[0x1E695F050]))
  {
    v9 = +[AXElement systemWideElement];
    windowContextId = [(AXElement *)self windowContextId];
    windowDisplayId = [(AXElement *)self windowDisplayId];
    [v9 convertRect:windowContextId fromContextId:windowDisplayId displayId:{*&v20.origin, *&v20.size}];
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

- (id)nextElementsWithCount:(unint64_t)count
{
  countCopy = count;
  uiElement = [(AXElement *)self uiElement];
  v6 = [uiElement nextElementsWithCount:countCopy];
  v7 = [(AXElement *)self _axElementsForAXUIElements:v6];

  return v7;
}

- (id)previousElementsWithCount:(unint64_t)count
{
  countCopy = count;
  uiElement = [(AXElement *)self uiElement];
  v6 = [uiElement previousElementsWithCount:countCopy];
  v7 = [(AXElement *)self _axElementsForAXUIElements:v6];

  return v7;
}

- (double)distanceToElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    v5 = 0.0;
    if (![(AXElement *)self isEqual:elementCopy])
    {
      [elementCopy visibleFrame];
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

- (double)distanceToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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
    unsignedIntegerValue = [v4 unsignedIntegerValue];

    return (unsignedIntegerValue >> 15) & 1;
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
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement pid];

  return v3;
}

- (AXElement)remoteParent
{
  cachedRemoteParent = [(AXElement *)self cachedRemoteParent];

  if (!cachedRemoteParent)
  {
    v4 = [(AXElement *)self _elementForAttribute:2092 shouldUpdateCache:0 shouldFetchAttributes:0];
    [(AXElement *)self setCachedRemoteParent:v4];
  }

  return [(AXElement *)self cachedRemoteParent];
}

- (unint64_t)scanningBehaviorTraits
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement numberWithAXAttribute:2147];
  intValue = [v3 intValue];

  return intValue;
}

- (id)_remoteParentForContextID
{
  cachedRemoteParentForContextID = [(AXElement *)self cachedRemoteParentForContextID];

  if (!cachedRemoteParentForContextID)
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
    LOBYTE(hasWebContent) = 1;
  }

  else
  {
    hasWebContent = [(AXElement *)self hasWebContent];
    if (hasWebContent)
    {
      if ([(AXElement *)self hasTextEntry]|| [(AXElement *)self isKeyboardKey])
      {
        LOBYTE(hasWebContent) = 0;
      }

      else
      {
        LOBYTE(hasWebContent) = ![(AXElement *)self isMathEquation];
      }
    }
  }

  return hasWebContent;
}

- (BOOL)_showContextMenuWithTargetPointValue:(id)value
{
  valueCopy = value;
  if ([(AXUIElement *)self->_uiElement performAXAction:2051 withValue:valueCopy])
  {
    v5 = 1;
  }

  else
  {
    remoteParent = [(AXElement *)self remoteParent];
    v7 = remoteParent;
    if (remoteParent)
    {
      v5 = [remoteParent _showContextMenuWithTargetPointValue:valueCopy];
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
  uiElement = [(AXElement *)self uiElement];
  v4 = [uiElement performAXAction:2003];

  uiElement2 = [(AXElement *)self uiElement];
  v6 = [uiElement2 BOOLWithAXAttribute:2093];

  if (v6)
  {
    remoteParent = [(AXElement *)self remoteParent];
    if (remoteParent)
    {
      uiElement3 = [(AXElement *)self uiElement];
      [uiElement3 updateCache:2003];

      [(AXElement *)self frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      uiElement4 = [remoteParent uiElement];
      v18 = [MEMORY[0x1E696B098] valueWithRect:{v10, v12, v14, v16}];
      v4 = [uiElement4 performAXAction:2039 withValue:v18];
    }
  }

  uiElement5 = [(AXElement *)self uiElement];
  [uiElement5 updateCache:2057];

  return v4;
}

- (BOOL)canScrollInAtLeastOneDirection
{
  uiElement = [(AXElement *)self uiElement];
  v4 = [uiElement BOOLWithAXAttribute:2064];

  if (v4)
  {
    return 1;
  }

  uiElement2 = [(AXElement *)self uiElement];
  v7 = [uiElement2 BOOLWithAXAttribute:2093];

  if (!v7)
  {
    return 0;
  }

  remoteParent = [(AXElement *)self remoteParent];
  uiElement3 = [remoteParent uiElement];
  v10 = [uiElement3 BOOLWithAXAttribute:2064];

  return v10;
}

- (BOOL)supportsAction:(int)action
{
  v3 = *&action;
  result = 0;
  if (action > 2011)
  {
    if (action <= 2035)
    {
      switch(action)
      {
        case 2012:
          _textOperationsOperator = [(AXElement *)self _textOperationsOperator];
          v9 = [_textOperationsOperator hasAnyTraits:0x2000000000];
          break;
        case 2013:

          return [(AXElement *)self canPerformEscape];
        case 2030:
          _textOperationsOperator = [(AXElement *)self uiElement];
          v9 = [_textOperationsOperator canPerformAXAction:2030];
          break;
        default:
          return result;
      }

      v13 = v9;
LABEL_31:

      return v13;
    }

    if ((action - 2037) >= 2)
    {
      if (action == 2036)
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
    if ((action - 2006) < 4)
    {
      uiElement = [(AXElement *)self uiElement];
      v7 = [uiElement canPerformAXAction:v3];

      if (v7)
      {
        return 1;
      }

      uiElement2 = [(AXElement *)self uiElement];
      v11 = [uiElement2 BOOLWithAXAttribute:2093];

      if (!v11)
      {
        return 0;
      }

      _textOperationsOperator = [(AXElement *)self remoteParent];
      uiElement3 = [_textOperationsOperator uiElement];
      v13 = [uiElement3 canPerformAXAction:v3];

      goto LABEL_31;
    }

    if ((action - 2001) >= 2)
    {
      if (action == 2010)
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

- (BOOL)performAction:(int)action
{
  v3 = *&action;
  if ((action - 2006) > 0xE)
  {
    goto LABEL_20;
  }

  if (((1 << (action + 42)) & 0x600F) != 0)
  {
    uiElement = [(AXElement *)self uiElement];
    v6 = [uiElement performAXAction:v3];

    if (v6)
    {
      return 1;
    }

    uiElement2 = [(AXElement *)self uiElement];
    v9 = [uiElement2 BOOLWithAXAttribute:2093];

    if (v9)
    {
      remoteParent = [(AXElement *)self remoteParent];
      uiElement3 = [remoteParent uiElement];
      v12 = [uiElement3 performAXAction:v3];

LABEL_21:
      return v12;
    }

    return 0;
  }

  if (action != 2010)
  {
    if (action == 2013)
    {
      uiElement4 = [(AXElement *)self uiElement];
      v14 = [uiElement4 performAXAction:2013];

      if (v14)
      {
        return 1;
      }

      remoteParent2 = [(AXElement *)self remoteParent];
      if (remoteParent2)
      {
        v16 = remoteParent2;
        uiElement5 = [remoteParent2 uiElement];
        v18 = [uiElement5 performAXAction:2013];

        if (v18)
        {
          return 1;
        }
      }

      if (_AXSClarityBoardEnabled())
      {
        v19 = +[AXElement systemApplication];
        application = [(AXElement *)self application];
        v21 = [application isEqual:v19];

        if (v21)
        {
          v7 = 0;
        }

        else
        {
          firstElementInApplication = [v19 firstElementInApplication];
          v7 = [firstElementInApplication performAction:2013];
        }

        return v7;
      }

      return 0;
    }

LABEL_20:
    remoteParent = [(AXElement *)self uiElement];
    v12 = [remoteParent performAXAction:v3];
    goto LABEL_21;
  }

  return [(AXElement *)self press];
}

- (BOOL)performAction:(int)action withValue:(id)value
{
  v4 = *&action;
  valueCopy = value;
  if (v4 == 2012)
  {
    _textOperationsOperator = [(AXElement *)self _textOperationsOperator];
    uiElement = [_textOperationsOperator uiElement];
    v9 = uiElement;
    v10 = 2012;
    goto LABEL_7;
  }

  uiElement2 = [(AXElement *)self uiElement];
  v12 = [uiElement2 performAXAction:v4 withValue:valueCopy];

  if (v4 == 2021 && (v12 & 1) == 0)
  {
    remoteParent = [(AXElement *)self remoteParent];
    _textOperationsOperator = remoteParent;
    if (!remoteParent)
    {
      v12 = 0;
      goto LABEL_8;
    }

    uiElement = [remoteParent uiElement];
    v9 = uiElement;
    v10 = 2021;
LABEL_7:
    v12 = [uiElement performAXAction:v10 withValue:valueCopy];

LABEL_8:
  }

  return v12;
}

- (__AXUIElement)scrollAncestorForScrollAction:(int)action
{
  if ((action - 2006) > 2)
  {
    v4 = 2107;
  }

  else
  {
    v4 = qword_1BF7DE7A8[action - 2006];
  }

  uiElement = [(AXElement *)self uiElement];
  axElement = [uiElement objectWithAXAttribute:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    axElement = [axElement axElement];
  }

  if (axElement)
  {
    return axElement;
  }

  uiElement2 = [(AXElement *)self uiElement];
  v8 = [uiElement2 BOOLWithAXAttribute:2093];

  if (!v8)
  {
    return 0;
  }

  remoteParent = [(AXElement *)self remoteParent];
  uiElement3 = [remoteParent uiElement];
  axElement = [uiElement3 objectWithAXAttribute:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return axElement;
  }

  return [axElement axElement];
}

- (unsigned)windowDisplayId
{
  v3 = [(AXUIElement *)self->_uiElement numberWithAXAttribute:2123];
  unsignedIntValue = [v3 unsignedIntValue];

  if (!unsignedIntValue)
  {
    _remoteParentForContextID = [(AXElement *)self _remoteParentForContextID];
    v6 = _remoteParentForContextID;
    if (_remoteParentForContextID)
    {
      uiElement = [_remoteParentForContextID uiElement];
      v8 = [uiElement numberWithAXAttribute:2123];
      unsignedIntValue = [v8 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }
  }

  return unsignedIntValue;
}

- (unsigned)windowContextId
{
  v3 = [(AXUIElement *)self->_uiElement numberWithAXAttribute:2021];
  unsignedIntValue = [v3 unsignedIntValue];

  if (!unsignedIntValue)
  {
    _remoteParentForContextID = [(AXElement *)self _remoteParentForContextID];
    v6 = _remoteParentForContextID;
    if (_remoteParentForContextID)
    {
      uiElement = [_remoteParentForContextID uiElement];
      v8 = [uiElement numberWithAXAttribute:2021];
      unsignedIntValue = [v8 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }
  }

  return unsignedIntValue;
}

- (NSString)fbSceneIdentifier
{
  v3 = [(AXUIElement *)self->_uiElement stringWithAXAttribute:2721];
  if (!v3)
  {
    _remoteParentForContextID = [(AXElement *)self _remoteParentForContextID];
    v5 = _remoteParentForContextID;
    if (_remoteParentForContextID)
    {
      uiElement = [_remoteParentForContextID uiElement];
      v3 = [uiElement stringWithAXAttribute:2721];
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
  windowSceneIdentifier = [(AXUIElement *)self->_uiElement stringWithAXAttribute:3056];
  if (!windowSceneIdentifier)
  {
    _remoteParentForContextID = [(AXElement *)self _remoteParentForContextID];
    windowSceneIdentifier = [_remoteParentForContextID windowSceneIdentifier];
  }

  return windowSceneIdentifier;
}

- (BOOL)canPerformActivate
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement updateCache:2019];

  uiElement2 = [(AXElement *)self uiElement];
  v5 = [uiElement2 BOOLWithAXAttribute:2019];

  if (v5)
  {
    return 1;
  }

  uiElement3 = [(AXElement *)self uiElement];
  v8 = [uiElement3 BOOLWithAXAttribute:2101];

  if (!v8)
  {
    return 0;
  }

  remoteParent = [(AXElement *)self remoteParent];
  v10 = remoteParent;
  if (remoteParent)
  {
    uiElement4 = [remoteParent uiElement];
    [uiElement4 updateCache:2019];

    uiElement5 = [v10 uiElement];
    v6 = [uiElement5 BOOLWithAXAttribute:2019];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_performActivate
{
  uiElement = [(AXElement *)self uiElement];
  v4 = [uiElement performAXAction:2010];

  if (v4)
  {
    return 1;
  }

  uiElement2 = [(AXElement *)self uiElement];
  v7 = [uiElement2 BOOLWithAXAttribute:2101];

  if (!v7)
  {
    return 0;
  }

  remoteParent = [(AXElement *)self remoteParent];
  v9 = remoteParent;
  if (remoteParent)
  {
    uiElement3 = [remoteParent uiElement];
    v5 = [uiElement3 performAXAction:2010];
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
  bundleId = [v7 bundleId];

  if (([bundleId hasPrefix:@"com.apple."] & 1) == 0)
  {
    v9 = dispatch_time(0, 500000000);
    dispatch_after(v9, MEMORY[0x1E69E96A0], &__block_literal_global_97);
  }

  uiElement = [(AXElement *)self uiElement];
  v11 = [uiElement numberWithAXAttribute:2068];
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

- (BOOL)simulateTapWithFingerIndex:(unint64_t)index
{
  [(AXElement *)self visiblePoint];

  return [(AXElement *)self simulateTapWithFingerIndex:index withPoint:?];
}

- (BOOL)simulateTapWithFingerIndex:(unint64_t)index withPoint:(CGPoint)point
{
  v19[4] = *MEMORY[0x1E69E9840];
  valuePtr = point;
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
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
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
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
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

- (BOOL)_zoomInOrOut:(BOOL)out
{
  if (out)
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
  remoteParent = [(AXElement *)self remoteParent];
  v7 = remoteParent;
  if (remoteParent)
  {
    [remoteParent performAction:v4 withValue:v5];
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

- (void)insertText:(id)text asUndoableAction:(BOOL)action
{
  actionCopy = action;
  v14[2] = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (textCopy)
  {
    if (actionCopy)
    {
      _textOperationsOperator = [(AXElement *)self _textOperationsOperator];
      _uiElementForTextInsertionAndDeletion3 = _textOperationsOperator;
      if (_textOperationsOperator == self)
      {
        _uiElementForTextInsertionAndDeletion = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
        v13[0] = @"text";
        v13[1] = @"createsUndoableAction";
        v14[0] = textCopy;
        v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
        v14[1] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
        [_uiElementForTextInsertionAndDeletion performAXAction:2056 withValue:v12];
      }

      else
      {
        [(AXElement *)_textOperationsOperator performAction:2060];
        _uiElementForTextInsertionAndDeletion2 = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
        [_uiElementForTextInsertionAndDeletion2 performAXAction:2056 withValue:textCopy];

        [_uiElementForTextInsertionAndDeletion3 performAction:2061];
      }
    }

    else
    {
      _uiElementForTextInsertionAndDeletion3 = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
      [_uiElementForTextInsertionAndDeletion3 performAXAction:2056 withValue:textCopy];
    }
  }
}

- (void)insertTextWithAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  _uiElementForTextInsertionAndDeletion = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
  [_uiElementForTextInsertionAndDeletion performAXAction:2055 withValue:alternativesCopy];
}

- (void)deleteText
{
  _uiElementForTextInsertionAndDeletion = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
  [_uiElementForTextInsertionAndDeletion performAXAction:2052];
}

- (id)alternativesForTextAtPosition:(unint64_t)position
{
  _uiElementForTextInsertionAndDeletion = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
  v5 = [_uiElementForTextInsertionAndDeletion objectWithAXAttribute:95237 parameter:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", position)}];

  return v5;
}

- (AXElement)elementForTextInsertionAndDeletion
{
  _uiElementForTextInsertionAndDeletion = [(AXElement *)self _uiElementForTextInsertionAndDeletion];
  v3 = [AXElement elementWithUIElement:_uiElementForTextInsertionAndDeletion];

  return v3;
}

- (BOOL)respondsToUserInteraction
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement BOOLWithAXAttribute:12000];

  return v3;
}

- (int64_t)scannerActivateBehavior
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement numberWithAXAttribute:12004];
  intValue = [v3 intValue];

  return intValue;
}

- (BOOL)canPerformEscape
{
  uiElement = [(AXElement *)self uiElement];
  v4 = [uiElement BOOLWithAXAttribute:2061];

  if (v4)
  {
    return 1;
  }

  remoteParent = [(AXElement *)self remoteParent];
  v7 = remoteParent;
  if (remoteParent)
  {
    uiElement2 = [remoteParent uiElement];
    v5 = [uiElement2 BOOLWithAXAttribute:2061];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (AXElement)autoscrollTarget
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement objectWithAXAttribute:2054];

  return v3;
}

- (void)setAutoscrollTarget:(id)target
{
  targetCopy = target;
  uiElement = [(AXElement *)self uiElement];
  v5 = targetCopy[2];

  [uiElement setAXAttribute:2054 withUIElement:v5];
}

- (BOOL)autoscrollInDirection:(unint64_t)direction
{
  uiElement = [(AXElement *)self uiElement];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:direction];
  v6 = [uiElement performAXAction:2026 withValue:v5];

  return v6;
}

- (void)pauseAutoscrolling
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement performAXAction:2027];
}

- (BOOL)isAutoscrolling
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement updateCache:2055];

  uiElement2 = [(AXElement *)self uiElement];
  LOBYTE(uiElement) = [uiElement2 BOOLWithAXAttribute:2055];

  return uiElement;
}

- (void)increaseAutoscrollSpeed
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement performAXAction:2028];
}

- (void)decreaseAutoscrollSpeed
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement performAXAction:2029];
}

- (void)setAutoscrollSpeed:(double)speed
{
  uiElement = [(AXElement *)self uiElement];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:speed];
  [uiElement performAXAction:2032 withValue:v4];
}

- (id)scrollViewsForAutoScroll
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement updateCache:3070];

  uiElement2 = [(AXElement *)self uiElement];
  v5 = [uiElement2 uiElementsWithAttribute:3070];

  v6 = [(AXElement *)self _axElementsForAXUIElements:v5];

  return v6;
}

- (NSArray)ornamentWindows
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement updateCache:3074];

  uiElement2 = [(AXElement *)self uiElement];
  v5 = [uiElement2 uiElementsWithAttribute:3074];

  v6 = [(AXElement *)self _axElementsForAXUIElements:v5];

  return v6;
}

- (void)scrollToTop
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement performAXAction:2030];
}

- (void)scrollToBottom
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement performAXAction:2031];
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
  parentGroup = [(AXElement *)self parentGroup];
  if (parentGroup)
  {
    parentGroup2 = parentGroup;
    v4 = parentGroup;
    do
    {
      v5 = parentGroup2;

      parentGroup2 = [v5 parentGroup];

      v4 = v5;
    }

    while (parentGroup2);
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

- (id)_axElementsForAXUIElements:(id)elements
{
  elementsCopy = elements;
  v4 = [objc_opt_class() elementsWithUIElements:elementsCopy];

  return v4;
}

- (void)_updateLabel
{
  uiElement = [(AXElement *)self uiElement];
  [uiElement updateCache:2001];
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

- (id)makeLookingGlassRequest:(id)request
{
  requestCopy = request;
  AXUIElementSetMessagingTimeout([(AXElement *)self elementRef], 20.0);
  uiElement = [(AXElement *)self uiElement];
  v6 = [uiElement objectWithAXAttribute:96001 parameter:requestCopy];

  AXUIElementSetMessagingTimeout([(AXElement *)self elementRef], 0.0);

  return v6;
}

- (id)_makeTinkerKitRequest:(id)request
{
  requestCopy = request;
  AXUIElementSetMessagingTimeout([(AXElement *)self elementRef], 20.0);
  uiElement = [(AXElement *)self uiElement];
  v6 = [uiElement objectWithAXAttribute:96002 parameter:requestCopy];

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