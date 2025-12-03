@interface AXUIMLElement
+ ($70A309F2B59E63663966B62550FEA657)_windowContextInformation:(SEL)information;
+ (CGRect)_appRelativeRectForRect:(CGRect)rect contextId:(unsigned int)id;
+ (CGRect)_convertFrameToPortraitUp:(CGRect)up fromOrientation:(int64_t)orientation appFrame:(CGRect)frame;
+ (CGRect)_screenRelativeRectForRect:(CGRect)rect contextId:(unsigned int)id;
+ (id)_cachedMLElementsForID:(id)d;
+ (id)_textDetectionOptions:(id)options options:(id)a4;
+ (id)cachedElementForParent:(__AXUIElement *)parent;
+ (id)elementsInDirection:(int64_t)direction withElement:(id)element nextElements:(id)elements;
+ (id)sharedFingerController;
+ (int64_t)_interfaceOrientationForElement:(id)element;
+ (void)_applyAXTraitsForElement:(id)element uiClass:(int64_t)class;
+ (void)_fireRefreshTimer;
+ (void)_queue_createMLElements:(id)elements postDelegateCallback:(BOOL)callback;
+ (void)_setCachedMLElements:(id)elements forID:(id)d;
+ (void)clearCaches;
+ (void)clearCachesForAppsExcluding:(id)excluding;
+ (void)initialize;
+ (void)setAutoRefresh:(BOOL)refresh forApp:(id)app;
- (AXUIMLElement)initWithParentElement:(__AXUIElement *)element;
- (BOOL)BOOLWithAXAttribute:(int64_t)attribute;
- (BOOL)_handleScroll:(int)scroll;
- (BOOL)_handleScrollToVisible:(id)visible;
- (BOOL)_shouldDemoteElement:(id)element withMLElements:(id)elements;
- (BOOL)_simulateScrollAction:(int)action withScreenDistanceFactor:(double)factor forVisibleAction:(BOOL)visibleAction;
- (BOOL)canPerformAXAction:(int)action;
- (BOOL)isProbablyEqual:(id)equal;
- (BOOL)performAXAction:(int)action withValue:(id)value fencePort:(unsigned int)port;
- (CGPath)pathWithAXAttribute:(int64_t)attribute;
- (CGPoint)pointWithAXAttribute:(int64_t)attribute;
- (CGPoint)rotatedCenterPoint;
- (CGRect)portraitUpFrame;
- (CGRect)rectWithAXAttribute:(int64_t)attribute;
- (CGRect)rotatedFrame;
- (CGRect)screenFrame;
- (_NSRange)rangeWithAXAttribute:(int64_t)attribute;
- (__AXUIElement)copyElementAtPosition:(CGPoint)position;
- (id)_appElement;
- (id)_currentMLElements;
- (id)_findMatchingElementForMLElement:(id)element flattenedAppElements:(id)elements;
- (id)_flattenedAppElements;
- (id)_reconcileAppElementsWithMLElements:(id)elements flattenedElements:(id)flattenedElements;
- (id)_reconciledElements;
- (id)_topLevelAppElement;
- (id)_topLevelMLElement;
- (id)arrayWithAXAttribute:(int64_t)attribute;
- (id)nextElementsWithParameters:(id)parameters;
- (id)numberWithAXAttribute:(int64_t)attribute;
- (id)objectWithAXAttribute:(int64_t)attribute;
- (id)previousElementsWithParameters:(id)parameters;
- (id)stringWithAXAttribute:(int64_t)attribute;
- (id)uiElementsWithAttribute:(int64_t)attribute;
- (void)_applyCustomActionsForFeature:(id)feature screenScale:(double)scale screenRect:(CGRect)rect elements:(id)elements;
- (void)_forceMLElementRefresh:(id)refresh postDelegateCallback:(BOOL)callback completionBlock:(id)block;
- (void)copyAttributeValue:(int64_t)value parameter:(void *)parameter baseElement:(id)element;
- (void)setAXAttribute:(int64_t)attribute withArray:(id)array;
- (void)setAXAttribute:(int64_t)attribute withBOOL:(BOOL)l;
- (void)setAXAttribute:(int64_t)attribute withFloat:(float)float;
- (void)setAXAttribute:(int64_t)attribute withLong:(int64_t)long;
- (void)setAXAttribute:(int64_t)attribute withNumber:(id)number;
- (void)setAXAttribute:(int64_t)attribute withObject:(id)object;
- (void)setAXAttribute:(int64_t)attribute withObject:(id)object synchronous:(BOOL)synchronous;
- (void)setAXAttribute:(int64_t)attribute withPoint:(CGPoint)point;
- (void)setAXAttribute:(int64_t)attribute withRange:(_NSRange)range;
- (void)setAXAttribute:(int64_t)attribute withSize:(CGSize)size;
- (void)setAXAttribute:(int64_t)attribute withString:(id)string;
- (void)setAXAttribute:(int64_t)attribute withUIElement:(id)element;
- (void)setAXAttribute:(int64_t)attribute withUIElementArray:(id)array;
- (void)updateCacheWithAttributes:(id)attributes;
@end

@implementation AXUIMLElement

+ (id)cachedElementForParent:(__AXUIElement *)parent
{
  v3 = MLElementCache;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:_AXUIElementIDForElement(parent)];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

+ (id)sharedFingerController
{
  if (sharedFingerController_onceToken != -1)
  {
    +[AXUIMLElement sharedFingerController];
  }

  v3 = sharedFingerController___fingerController;

  return v3;
}

void __39__AXUIMLElement_sharedFingerController__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getAXPIFingerControllerClass_softClass;
  v8 = getAXPIFingerControllerClass_softClass;
  if (!getAXPIFingerControllerClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getAXPIFingerControllerClass_block_invoke;
    v4[3] = &unk_1E80D3D68;
    v4[4] = &v5;
    __getAXPIFingerControllerClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = objc_alloc_init(v0);
  v3 = sharedFingerController___fingerController;
  sharedFingerController___fingerController = v2;
}

- (AXUIMLElement)initWithParentElement:(__AXUIElement *)element
{
  v22 = *MEMORY[0x1E69E9840];
  if (initWithParentElement__onceToken == -1)
  {
    if (element)
    {
      goto LABEL_3;
    }

LABEL_17:
    [AXUIMLElement initWithParentElement:];
  }

  [AXUIMLElement initWithParentElement:];
  if (!element)
  {
    goto LABEL_17;
  }

LABEL_3:
  pid = 0;
  AXUIElementGetPid(element, &pid);
  v5 = pid;
  if (pid < 0)
  {
    if (_mlCacheIdx == 9998)
    {
      v6 = 10000;
    }

    else
    {
      v6 = _mlCacheIdx + 1;
    }

    _mlCacheIdx = v6;
    v8 = v6;
  }

  else
  {
    v6 = _AXUIElementIDForElement(element);
    v8 = v7;
    v5 = pid;
    if (pid >= 1)
    {
      v5 = -pid;
      pid = -pid;
    }
  }

  v9 = _AXUIElementCreateWithPIDAndID(v5, v6, v8);
  v18.receiver = self;
  v18.super_class = AXUIMLElement;
  v10 = [(AXUIElement *)&v18 initWithAXElement:v9];
  CFRelease(v9);
  v11 = MLElementCache;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
  [v11 setObject:v10 forKey:v12];

  if (v9 && !CFEqual(element, v9))
  {
    v13 = [AXUIElement uiElementWithAXElement:element];
    parent = v10->_parent;
    v10->_parent = v13;
  }

  v15 = AXMediaLogMLElement();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v10->_parent;
    *buf = 138412290;
    v21 = v16;
    _os_log_impl(&dword_1BF78E000, v15, OS_LOG_TYPE_INFO, "Initializing MLElement with parent: %@", buf, 0xCu);
  }

  return v10;
}

uint64_t __39__AXUIMLElement_initWithParentElement___block_invoke()
{
  MLElementCache = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_topLevelMLElement
{
  v3 = self->_parent;
  if (v3)
  {
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (([(AXUIElement *)self->_parent _isTopLevelMLElement]& 1) != 0)
      {
        break;
      }

      v4 = v3[1].super.isa;

      v3 = v4;
    }

    while (v4);
  }

  return v3;
}

- (id)_appElement
{
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  v3 = [_topLevelAppElement uiElementsWithAttribute:2017];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)_topLevelAppElement
{
  v18 = *MEMORY[0x1E69E9840];
  hostingParent = self->_hostingParent;
  if (!hostingParent)
  {
    v4 = self->_parent;
    if (v4)
    {
      do
      {
        if (([(AXUIElement *)v4 pid]& 0x80000000) == 0)
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v5 = v4[1].super.isa;

        v4 = v5;
      }

      while (v5);
    }

    v6 = [(AXUIElement *)v4 objectWithAXAttribute:5002];

    if (!v6)
    {
      [(AXUIElement *)self->_parent updateCache:5002];
      v6 = [(AXUIElement *)self->_parent objectWithAXAttribute:5002];
    }

    v7 = [AXUIElement uiElementWithAXElement:v6];
    v8 = self->_hostingParent;
    self->_hostingParent = v7;

    hostingParent = self->_hostingParent;
    if (!hostingParent)
    {
      hostingParent = self->_parent;
    }
  }

  v9 = hostingParent;
  v10 = AXMediaLogMLElement();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    parent = self->_parent;
    v12 = self->_hostingParent;
    v14 = 138412546;
    v15 = parent;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_1BF78E000, v10, OS_LOG_TYPE_INFO, "Top level app MLElement %@/%@", &v14, 0x16u);
  }

  return v9;
}

- (id)arrayWithAXAttribute:(int64_t)attribute
{
  if (attribute == 2036)
  {
    v4 = self->_customActions;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stringWithAXAttribute:(int64_t)attribute
{
  v4 = 0;
  if (attribute > 2070)
  {
    if (attribute == 2071)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [(NSString *)self->_label hash];
      v10 = [(NSString *)self->_value hash];
      uiClass = self->_uiClass;
      _topLevelAppElement = NSStringFromSize(self->_rotatedFrame.size);
      v7 = [v8 stringWithFormat:@"%lu-%lu-%ld-%@", v9, v10, uiClass, _topLevelAppElement];
    }

    else
    {
      if (attribute != 3003)
      {
        goto LABEL_12;
      }

      _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
      v7 = [_topLevelAppElement stringWithAXAttribute:3003];
    }

    v4 = v7;
  }

  else
  {
    if (attribute == 2001)
    {
      v5 = 128;
    }

    else
    {
      if (attribute != 2006)
      {
        goto LABEL_12;
      }

      v5 = 96;
    }

    v4 = *(&self->super.super.isa + v5);
  }

LABEL_12:

  return v4;
}

- (BOOL)BOOLWithAXAttribute:(int64_t)attribute
{
  LOBYTE(v4) = 0;
  if (attribute <= 2064)
  {
    if (attribute == 2016)
    {
      return ![(AXUIMLElement *)self _isTopLevelMLElement];
    }

    else if (attribute == 2046)
    {
      goto LABEL_8;
    }

    return v4;
  }

  if (attribute != 2065)
  {
    if (attribute == 3026 || attribute == 3066)
    {
      _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
      v6 = [_topLevelAppElement BOOLWithAXAttribute:attribute];

      return v6;
    }

    return v4;
  }

LABEL_8:

  return [(AXUIMLElement *)self _isTopLevelMLElement];
}

- (id)numberWithAXAttribute:(int64_t)attribute
{
  if (attribute <= 2051)
  {
    if (attribute == 2004)
    {
      v5 = MEMORY[0x1E696AD98];
      traits = self->_traits;
      _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
      v7 = [_topLevelAppElement numberWithAXAttribute:2004];
      v4 = [v5 numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedIntegerValue") | traits}];

      goto LABEL_10;
    }

    if (attribute == 2021)
    {
      _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
      v4 = [_topLevelAppElement numberWithAXAttribute:2021];
LABEL_10:

      goto LABEL_12;
    }

LABEL_8:
    v4 = &unk_1F3E6BFD0;
    goto LABEL_12;
  }

  if (attribute != 2052)
  {
    if (attribute == 2701)
    {
      v4 = &unk_1F3E6BFB8;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v4 = &unk_1F3E6C3C0;
LABEL_12:

  return v4;
}

+ (CGRect)_appRelativeRectForRect:(CGRect)rect contextId:(unsigned int)id
{
  v4 = *&id;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  valuePtr = rect;
  if (_appRelativeRectForRect_contextId__onceToken != -1)
  {
    +[AXUIMLElement _appRelativeRectForRect:contextId:];
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v11 = [MEMORY[0x1E696B098] valueWithRect:{x, y, width, height}];
  v12 = [v9 stringWithFormat:@"%@_%@", v10, v11];

  v13 = [AppFrameCache objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [AppFrameCache objectForKeyedSubscript:v12];
    [v14 rectValue];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v23 = AXValueCreate(kAXValueTypeCGRect, &valuePtr);
    v24 = +[AXUIElement uiSystemWideApplication];
    v25 = MEMORY[0x1E695DEC8];
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
    v27 = [v24 objectWithAXAttribute:91505 parameter:{objc_msgSend(v25, "arrayWithObjects:", v23, v26, 0)}];

    if (v23)
    {
      CFRelease(v23);
    }

    if (v27)
    {
      AXValueGetValue(v27, kAXValueTypeCGRect, &valuePtr);
      v28 = [MEMORY[0x1E696B098] valueWithCGRect:{valuePtr.origin.x, valuePtr.origin.y, valuePtr.size.width, valuePtr.size.height}];
      [AppFrameCache setObject:v28 forKeyedSubscript:v12];
    }

    v20 = valuePtr.size.width;
    v22 = valuePtr.size.height;
    v16 = valuePtr.origin.x;
    v18 = valuePtr.origin.y;
  }

  v29 = v16;
  v30 = v18;
  v31 = v20;
  v32 = v22;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

uint64_t __51__AXUIMLElement__appRelativeRectForRect_contextId___block_invoke()
{
  AppFrameCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (CGRect)_screenRelativeRectForRect:(CGRect)rect contextId:(unsigned int)id
{
  v4 = *&id;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = AXConvertPointToHostedCoordinates(*&id, 0, rect.origin.x, rect.origin.y);
  v11 = v10;
  v12 = AXConvertPointToHostedCoordinates(v4, 0, x + width, y + height) - v9;
  v14 = v13 - v11;
  v15 = v9;
  v16 = v11;

  return CGRectStandardize(*&v15);
}

- (CGRect)rectWithAXAttribute:(int64_t)attribute
{
  if ((attribute == 2003 || attribute == 2709 || attribute == 2057) && ![(AXUIMLElement *)self _isTopLevelMLElement])
  {
    [(AXUIMLElement *)self rotatedFrame];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  else
  {
    _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
    [_topLevelAppElement rectWithAXAttribute:attribute];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGPath)pathWithAXAttribute:(int64_t)attribute
{
  if (attribute == 2042)
  {
    return 0;
  }

  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  v6 = [_topLevelAppElement pathWithAXAttribute:attribute];

  return v6;
}

- (CGPoint)pointWithAXAttribute:(int64_t)attribute
{
  if ((attribute == 2062 || attribute == 2007) && ![(AXUIMLElement *)self _isTopLevelMLElement])
  {
    [(AXUIMLElement *)self rotatedCenterPoint];
    if (*MEMORY[0x1E695EFF8] == v8 && *(MEMORY[0x1E695EFF8] + 8) == v7)
    {
      [(AXUIMLElement *)self rotatedFrame];
      x = v16.origin.x;
      y = v16.origin.y;
      width = v16.size.width;
      height = v16.size.height;
      MidX = CGRectGetMidX(v16);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      MidY = CGRectGetMidY(v17);
    }

    else
    {
      [(AXUIMLElement *)self rotatedCenterPoint];
      MidX = v10;
    }
  }

  else
  {
    MidX = *MEMORY[0x1E695EFF8];
    MidY = *(MEMORY[0x1E695EFF8] + 8);
  }

  v6 = MidX;
  result.y = MidY;
  result.x = v6;
  return result;
}

- (_NSRange)rangeWithAXAttribute:(int64_t)attribute
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = 0;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)objectWithAXAttribute:(int64_t)attribute
{
  v4 = 0;
  if (attribute > 2999)
  {
    if (attribute == 3000 || attribute == 3009)
    {
      _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
      v4 = [_topLevelAppElement objectWithAXAttribute:attribute];

      goto LABEL_15;
    }

    if (attribute != 5002)
    {
      goto LABEL_15;
    }

    v9.receiver = self;
    v9.super_class = AXUIMLElement;
    _topLevelAppElement2 = [(AXUIElement *)&v9 objectWithAXAttribute:5002];
    goto LABEL_14;
  }

  if (attribute == 2017)
  {
    goto LABEL_12;
  }

  if (attribute == 2092)
  {
    _topLevelAppElement2 = [(AXUIMLElement *)self _topLevelAppElement];
    goto LABEL_14;
  }

  if (attribute != 2142)
  {
    goto LABEL_15;
  }

  if (!self->_parent)
  {
LABEL_12:
    _topLevelAppElement3 = [(AXUIMLElement *)self _topLevelAppElement];
    v4 = [_topLevelAppElement3 objectWithAXAttribute:2017];

    goto LABEL_15;
  }

  _topLevelAppElement2 = [(AXUIElement *)self->_parent objectWithAXAttribute:2142];
LABEL_14:
  v4 = _topLevelAppElement2;
LABEL_15:

  return v4;
}

- (id)uiElementsWithAttribute:(int64_t)attribute
{
  if (attribute == 2017)
  {
    _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
    v4 = [_topLevelAppElement uiElementsWithAttribute:2017];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canPerformAXAction:(int)action
{
  if ((action - 2003) > 6)
  {
    return 0;
  }

  v3 = 1;
  if (((1 << (action + 45)) & 0x79) == 0)
  {
    return self->_uiClass == 6;
  }

  return v3;
}

- (BOOL)performAXAction:(int)action withValue:(id)value fencePort:(unsigned int)port
{
  v5 = *&port;
  v6 = *&action;
  valueCopy = value;
  if (v6 <= 2005)
  {
    switch(v6)
    {
      case 0x7D3:
        v9 = [(AXUIMLElement *)self _handleScrollToVisible:valueCopy];
        goto LABEL_4;
      case 0x7D4:
        if (self->_uiClass == 6)
        {
          selfCopy2 = self;
          v12 = 2009;
          goto LABEL_14;
        }

        break;
      case 0x7D5:
        if (self->_uiClass == 6)
        {
          selfCopy2 = self;
          v12 = 2008;
LABEL_14:
          v9 = [(AXUIMLElement *)selfCopy2 performAXAction:v12];
          goto LABEL_4;
        }

        break;
      default:
        goto LABEL_11;
    }

    _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
    v14 = [_topLevelAppElement performAXAction:v6 withValue:valueCopy fencePort:v5];
    goto LABEL_16;
  }

  if ((v6 - 2006) >= 4)
  {
LABEL_11:
    _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
    v14 = [_topLevelAppElement performAXAction:v6];
LABEL_16:
    v10 = v14;

    goto LABEL_17;
  }

  v9 = [(AXUIMLElement *)self _handleScroll:v6];
LABEL_4:
  v10 = v9;
LABEL_17:

  return v10;
}

- (BOOL)_handleScrollToVisible:(id)visible
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [visible objectForKeyedSubscript:@"direction"];
  intValue = [v4 intValue];

  [(AXUIMLElement *)self rotatedFrame];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (intValue == 2)
  {
    if (CGRectGetMinX(*&v6) <= 60.0 || (v40.origin.x = v10, v40.origin.y = v11, v40.size.width = v12, v40.size.height = v13, CGRectGetMinY(v40) <= 120.0))
    {
      v22 = MEMORY[0x1E695EFF8];
      v17 = *MEMORY[0x1E695EFF8];
      v41.origin.x = v10;
      v41.origin.y = v11;
      v41.size.width = v12;
      v41.size.height = v13;
      if (CGRectGetMinX(v41) < 60.0)
      {
        v23 = *&ScaledScreenSize_0 * 0.3;
        if (*&ScaledScreenSize_0 * 0.3 <= v12)
        {
          v23 = v12;
        }

        v17 = v17 - v23;
      }

      v19 = *(v22 + 8);
      v42.origin.x = v10;
      v42.origin.y = v11;
      v42.size.width = v12;
      v42.size.height = v13;
      if (CGRectGetMinY(v42) < 120.0)
      {
        v24 = *&ScaledScreenSize_1 * 0.3;
        if (*&ScaledScreenSize_1 * 0.3 <= v13)
        {
          v24 = v13;
        }

        v19 = v19 - v24;
      }

      goto LABEL_25;
    }

    goto LABEL_15;
  }

  if (intValue == 1)
  {
    v14 = *&ScaledScreenSize_1;
    v15 = *&ScaledScreenSize_0 + -60.0;
    if (CGRectGetMaxX(*&v6) >= v15 || (v37.origin.x = v10, v37.origin.y = v11, v37.size.width = v12, v37.size.height = v13, CGRectGetMaxY(v37) >= v14 + -120.0))
    {
      v16 = MEMORY[0x1E695EFF8];
      v17 = *MEMORY[0x1E695EFF8];
      v38.origin.x = v10;
      v38.origin.y = v11;
      v38.size.width = v12;
      v38.size.height = v13;
      if (CGRectGetMaxX(v38) > v15)
      {
        v18 = *&ScaledScreenSize_0 * 0.3;
        if (*&ScaledScreenSize_0 * 0.3 <= v12)
        {
          v18 = v12;
        }

        v17 = v17 + v18;
      }

      v19 = *(v16 + 8);
      v39.origin.x = v10;
      v39.origin.y = v11;
      v39.size.width = v12;
      v39.size.height = v13;
      if (CGRectGetMaxY(v39) > v14 + -120.0)
      {
        v20 = *&ScaledScreenSize_1 * 0.3;
        if (*&ScaledScreenSize_1 * 0.3 <= v13)
        {
          v20 = v13;
        }

        v19 = v19 + v20;
      }

      goto LABEL_25;
    }

LABEL_15:
    LOBYTE(v21) = 0;
    return v21;
  }

  v17 = *MEMORY[0x1E695EFF8];
  v19 = *(MEMORY[0x1E695EFF8] + 8);
LABEL_25:
  v43.origin.x = v10;
  v43.origin.y = v11;
  v43.size.width = v12;
  v43.size.height = v13;
  MidX = CGRectGetMidX(v43);
  v44.origin.x = v10;
  v44.origin.y = v11;
  v44.size.width = v12;
  v44.size.height = v13;
  v26 = [AXUIElement scrollAncestorAtCoordinate:MidX, CGRectGetMidY(v44)];
  v27 = v26;
  if (v26)
  {
    [v26 updateCache:5064];
    [v27 pointWithAXAttribute:5064];
    v28 = AXMediaLogMLElement();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v27;
      _os_log_impl(&dword_1BF78E000, v28, OS_LOG_TYPE_INFO, "Retrieving scroller to perform scrolling: %@", buf, 0xCu);
    }

    _appElement = [(AXUIMLElement *)self _appElement];
    v30 = [MEMORY[0x1E696B098] valueWithCGPoint:{v17, v19}];
    v21 = [v27 performAXAction:2064 withValue:v30];

    if (v21)
    {
      [MLElementTimer cancel];
      v32 = v27;
      v33 = _appElement;
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

uint64_t __40__AXUIMLElement__handleScrollToVisible___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateCache:5064];
  [*(a1 + 32) pointWithAXAttribute:5064];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AXUIMLElement__handleScrollToVisible___block_invoke_2;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v5.f64[1] = v4;
  v8 = vsubq_f64(v5, *(a1 + 56));
  return [v2 _forceMLElementRefresh:v3 postDelegateCallback:0 completionBlock:v7];
}

void __40__AXUIMLElement__handleScrollToVisible___block_invoke_2(NSPoint *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AXMediaLogMLElement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = NSStringFromPoint(a1[2]);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BF78E000, v2, OS_LOG_TYPE_INFO, "Handling scroll to visible with actualized offset: %@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&__frameDelegate);
  [WeakRetained mlElementDetectorScrollToVisibleOccurred:{a1[2].x, a1[2].y}];
}

- (BOOL)_handleScroll:(int)scroll
{
  v3 = *&scroll;
  _appElement = [(AXUIMLElement *)self _appElement];
  [(AXUIMLElement *)self rotatedFrame];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v11 = [AXUIElement scrollAncestorAtCoordinate:MidX, CGRectGetMidY(v17)];
  v12 = [v11 performAXAction:v3 withValue:MEMORY[0x1E695E110]];
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = [(AXUIMLElement *)self _simulateScrollAction:v3 withScreenDistanceFactor:0 forVisibleAction:0.75];
  }

  else
  {
    v14 = 1;
    [(AXUIMLElement *)self _forceMLElementRefresh:_appElement postDelegateCallback:1 completionBlock:0];
  }

  return v14;
}

- (void)updateCacheWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement updateCacheWithAttributes:attributesCopy];
}

- (id)nextElementsWithParameters:(id)parameters
{
  v4 = [parameters objectForKeyedSubscript:@"elementCount"];
  v5 = -[AXUIMLElement nextElementsWithCount:baseElement:](self, "nextElementsWithCount:baseElement:", [v4 integerValue], 0);

  return v5;
}

- (id)previousElementsWithParameters:(id)parameters
{
  v4 = [parameters objectForKeyedSubscript:@"elementCount"];
  v5 = -[AXUIMLElement previousElementsWithCount:baseElement:](self, "previousElementsWithCount:baseElement:", [v4 integerValue], 0);

  return v5;
}

- (void)setAXAttribute:(int64_t)attribute withBOOL:(BOOL)l
{
  lCopy = l;
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement setAXAttribute:attribute withBOOL:lCopy];
}

- (void)setAXAttribute:(int64_t)attribute withString:(id)string
{
  stringCopy = string;
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement setAXAttribute:attribute withString:stringCopy];
}

- (void)setAXAttribute:(int64_t)attribute withLong:(int64_t)long
{
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement setAXAttribute:attribute withLong:long];
}

- (void)setAXAttribute:(int64_t)attribute withFloat:(float)float
{
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  *&v6 = float;
  [_topLevelAppElement setAXAttribute:attribute withFloat:v6];
}

- (void)setAXAttribute:(int64_t)attribute withNumber:(id)number
{
  numberCopy = number;
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement setAXAttribute:attribute withNumber:numberCopy];
}

- (void)setAXAttribute:(int64_t)attribute withPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement setAXAttribute:attribute withPoint:{x, y}];
}

- (void)setAXAttribute:(int64_t)attribute withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement setAXAttribute:attribute withSize:{width, height}];
}

- (void)setAXAttribute:(int64_t)attribute withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement setAXAttribute:attribute withRange:{location, length}];
}

- (void)setAXAttribute:(int64_t)attribute withUIElement:(id)element
{
  elementCopy = element;
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement setAXAttribute:attribute withUIElement:elementCopy];
}

- (void)setAXAttribute:(int64_t)attribute withUIElementArray:(id)array
{
  arrayCopy = array;
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement setAXAttribute:attribute withUIElementArray:arrayCopy];
}

- (void)setAXAttribute:(int64_t)attribute withArray:(id)array
{
  arrayCopy = array;
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement setAXAttribute:attribute withArray:arrayCopy];
}

- (void)setAXAttribute:(int64_t)attribute withObject:(id)object
{
  objectCopy = object;
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement setAXAttribute:attribute withObject:objectCopy];
}

- (void)setAXAttribute:(int64_t)attribute withObject:(id)object synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  objectCopy = object;
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  [_topLevelAppElement setAXAttribute:attribute withObject:objectCopy synchronous:synchronousCopy];
}

+ (int64_t)_interfaceOrientationForElement:(id)element
{
  v3 = [element uiElementsWithAttribute:2017];
  lastObject = [v3 lastObject];

  v5 = [lastObject numberWithAXAttribute:3035];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if ((unsignedIntegerValue - 1) >= 4)
  {
    v7 = +[AXUIElement uiSystemWideApplication];
    v8 = [v7 uiElementsWithAttribute:1001];
    lastObject2 = [v8 lastObject];

    v10 = [lastObject2 numberWithAXAttribute:1503];
    intValue = [v10 intValue];

    if (intValue <= 6)
    {
      unsignedIntegerValue = dword_1BF7DE768[intValue];
    }
  }

  v12 = (unsignedIntegerValue - 1);
  if (v12 < 4)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)_applyAXTraitsForElement:(id)element uiClass:(int64_t)class
{
  elementCopy = element;
  elementCopy[13] = class;
  v19 = elementCopy;
  if ((class | 8) == 0xF)
  {
    label = [elementCopy label];
    v7 = [label length] == 0;
    elementCopy = v19;
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ((class | 8) == 0xF)
  {

    elementCopy = v19;
  }

  if (v8)
  {
    v9 = 4;
    elementCopy[11] = 4;
    if (class != 18)
    {
      if (class != 17)
      {
        if (class != 15)
        {
          goto LABEL_46;
        }

        v10 = 5;
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    goto LABEL_43;
  }

  if (class > 11)
  {
    if (class > 15)
    {
      if (class != 16)
      {
        if (class != 18)
        {
          if (class != 17)
          {
            goto LABEL_46;
          }

          v9 = elementCopy[11];
LABEL_33:
          v17 = &kAXButtonTrait;
LABEL_44:
          v10 = v9 | *v17;
LABEL_45:
          elementCopy[11] = v10;
          goto LABEL_46;
        }

        v9 = elementCopy[11];
LABEL_43:
        v17 = &kAXTabButtonTrait;
        goto LABEL_44;
      }

      v13 = elementCopy[11] | 1;
LABEL_40:
      elementCopy[11] = v13;
      goto LABEL_46;
    }

    if (class != 12)
    {
      if (class != 13)
      {
        if (class != 14)
        {
          goto LABEL_46;
        }

        goto LABEL_24;
      }

LABEL_34:
      elementCopy[11] = 0x20000000000001;
      v14 = elementCopy[12];
      v15 = @"0";
      goto LABEL_35;
    }

    v16 = &kAXTextEntryTrait;
    goto LABEL_39;
  }

  if (class > 5)
  {
    switch(class)
    {
      case 6:
        v18 = elementCopy[16];
        elementCopy[16] = @"Page Picker";

        elementCopy = v19;
        break;
      case 9:
        break;
      case 10:
        v16 = &kAXTabBarTrait;
        goto LABEL_39;
      default:
        goto LABEL_46;
    }

    v16 = &kAXAdjustableTrait;
LABEL_39:
    v13 = *v16;
    goto LABEL_40;
  }

  if (class == 1)
  {
    goto LABEL_34;
  }

  if (class == 2)
  {
LABEL_24:
    elementCopy[11] = 0x20000000000001;
    v14 = elementCopy[12];
    v15 = @"1";
LABEL_35:
    elementCopy[12] = v15;

    elementCopy = v19;
    goto LABEL_46;
  }

  if (class != 3)
  {
    goto LABEL_46;
  }

  label2 = [elementCopy label];
  v12 = [label2 length];

  if (v12)
  {
    v13 = 64;
    elementCopy = v19;
    goto LABEL_40;
  }

  elementCopy = v19;
  v19[11] = 0;
LABEL_46:
  elementCopy[11] |= 0x200000000uLL;
}

+ (CGRect)_convertFrameToPortraitUp:(CGRect)up fromOrientation:(int64_t)orientation appFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v7 = up.size.height;
  v8 = up.size.width;
  y = up.origin.y;
  x = up.origin.x;
  switch(orientation)
  {
    case 2:
      v17 = frame.origin.y;
      v18 = frame.origin.x;
      MaxX = CGRectGetMaxX(frame);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = v8;
      v32.size.height = v7;
      v25 = MaxX - CGRectGetMaxX(v32);
      v33.origin.x = v18;
      v33.origin.y = v17;
      v33.size.width = width;
      v33.size.height = height;
      MaxY = CGRectGetMaxY(v33);
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = v8;
      v34.size.height = v7;
      y = MaxY - CGRectGetMaxY(v34);
      x = v25;
      break;
    case 3:
      v14 = frame.size.width - CGRectGetMaxY(up);
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = v8;
      v29.size.height = v7;
      MinX = CGRectGetMinX(v29);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = v8;
      v30.size.height = v7;
      v16 = CGRectGetHeight(v30);
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = v8;
      v31.size.height = v7;
      v7 = CGRectGetWidth(v31);
      v8 = v16;
      y = MinX;
      x = v14;
      break;
    case 4:
      MinY = CGRectGetMinY(up);
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = v8;
      v26.size.height = v7;
      v12 = height - CGRectGetMaxX(v26);
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = v8;
      v27.size.height = v7;
      v13 = CGRectGetHeight(v27);
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = v8;
      v28.size.height = v7;
      v7 = CGRectGetWidth(v28);
      v8 = v13;
      y = v12;
      x = MinY;
      break;
  }

  v20 = x;
  v21 = y;
  v22 = v8;
  v23 = v7;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

+ (void)initialize
{
  if (initialize_onceToken_1 != -1)
  {
    +[AXUIMLElement initialize];
  }
}

uint64_t __27__AXUIMLElement_initialize__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);
  v2 = dispatch_queue_create("com.apple.Accessibility.AXUIMLElement", v1);
  v3 = __globalMediaQueue;
  __globalMediaQueue = v2;

  v4 = objc_opt_new();
  v5 = AppLevelTopElements;
  AppLevelTopElements = v4;

  v6 = objc_opt_new();
  v7 = DetectedMLElements;
  DetectedMLElements = v6;

  return MEMORY[0x1EEE60750](@"AXMVisionFeature_AXRuntime");
}

+ (void)clearCaches
{
  AX_PERFORM_WITH_LOCK();
  v2 = AXMediaLogElementVision();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BF78E000, v2, OS_LOG_TYPE_INFO, "Cleared all cached", v3, 2u);
  }
}

void __28__AXUIMLElement_clearCaches__block_invoke()
{
  [DetectedMLElements removeAllObjects];
  [AppFrameCache removeAllObjects];
  v0 = EquivalenceToken;
  EquivalenceToken = 0;
}

+ (void)clearCachesForAppsExcluding:(id)excluding
{
  excludingCopy = excluding;
  v4 = AXMediaLogElementVision();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF78E000, v4, OS_LOG_TYPE_INFO, "Clearing ML element cache", buf, 2u);
  }

  v5 = [excludingCopy ax_flatMappedArrayUsingBlock:&__block_literal_global_343];

  v6 = v5;
  AX_PERFORM_WITH_LOCK();
}

void __45__AXUIMLElement_clearCachesForAppsExcluding___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [DetectedMLElements allKeys];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v12;
    *&v4 = 138412290;
    v10 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([*(a1 + 32) containsObject:{v8, v10}] & 1) == 0)
        {
          [DetectedMLElements setObject:0 forKeyedSubscript:v8];
          [AppFrameCache removeAllObjects];
          v9 = AXMediaLogElementVision();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = v10;
            v16 = v8;
            _os_log_impl(&dword_1BF78E000, v9, OS_LOG_TYPE_INFO, "Clear cached for: %@", buf, 0xCu);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }
}

+ (void)setAutoRefresh:(BOOL)refresh forApp:(id)app
{
  refreshCopy = refresh;
  appCopy = app;
  if (setAutoRefresh_forApp__onceToken != -1)
  {
    +[AXUIMLElement setAutoRefresh:forApp:];
  }

  v7 = [appCopy stringWithAXAttribute:3003];
  if (v7)
  {
    if (refreshCopy)
    {
      [AppLevelTopElements setObject:appCopy forKeyedSubscript:v7];
      [self _fireRefreshTimer];
    }

    else
    {
      [AppLevelTopElements setObject:0 forKeyedSubscript:v7];
      [RefreshTimer cancel];
    }
  }

  else
  {
    v8 = AXMediaLogMLElement();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[AXUIMLElement setAutoRefresh:forApp:];
    }
  }
}

uint64_t __39__AXUIMLElement_setAutoRefresh_forApp___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E6988780]);
  RefreshTimer = [v0 initWithTargetSerialQueue:__globalMediaQueue];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_fireRefreshTimer
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __34__AXUIMLElement__fireRefreshTimer__block_invoke;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = self;
  [RefreshTimer afterDelay:v2 processBlock:0.5];
}

uint64_t __34__AXUIMLElement__fireRefreshTimer__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [AppLevelTopElements allValues];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = AXMediaLogMLElement();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = CFAbsoluteTimeGetCurrent();
          *buf = 134218242;
          v17 = v10 - Current;
          v18 = 2112;
          v19 = v8;
          _os_log_impl(&dword_1BF78E000, v9, OS_LOG_TYPE_INFO, "Time to refresh elements: %f %@", buf, 0x16u);
        }

        [*(a1 + 32) _queue_createMLElements:v8 postDelegateCallback:1];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  return [*(a1 + 32) _fireRefreshTimer];
}

+ (void)_setCachedMLElements:(id)elements forID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  dCopy = d;
  v7 = AXMediaLogElementVision();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v13 = [elementsCopy count];
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&dword_1BF78E000, v7, OS_LOG_TYPE_INFO, "Setting cached elements: %d for %@", buf, 0x12u);
  }

  v10 = dCopy;
  v11 = elementsCopy;
  v8 = elementsCopy;
  v9 = dCopy;
  AX_PERFORM_WITH_LOCK();
}

void __44__AXUIMLElement__setCachedMLElements_forID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [DetectedMLElements setObject:v2 forKeyedSubscript:*(a1 + 32)];
}

+ (id)_cachedMLElementsForID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v9 = MEMORY[0x1E69E9820];
  v4 = dCopy;
  v10 = v4;
  AX_PERFORM_WITH_LOCK();
  v5 = AXMediaLogElementVision();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v12[5] count];
    *buf = 67109378;
    v18 = v6;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_1BF78E000, v5, OS_LOG_TYPE_INFO, "Retrieved ML element cache %d -> %@", buf, 0x12u);
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __40__AXUIMLElement__cachedMLElementsForID___block_invoke(uint64_t a1)
{
  v5 = [DetectedMLElements objectForKeyedSubscript:*(a1 + 32)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_reconciledElements
{
  _currentMLElements = [(AXUIMLElement *)self _currentMLElements];
  v4 = [(AXUIMLElement *)self _reconcileElements:_currentMLElements];

  return v4;
}

- (void)_forceMLElementRefresh:(id)refresh postDelegateCallback:(BOOL)callback completionBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  refreshCopy = refresh;
  blockCopy = block;
  v10 = AXMediaLogMLElement();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = refreshCopy;
    _os_log_impl(&dword_1BF78E000, v10, OS_LOG_TYPE_INFO, "Force ML Refresh: %@", buf, 0xCu);
  }

  if (refreshCopy)
  {
    v11 = EquivalenceToken;
    EquivalenceToken = 0;

    v12 = [refreshCopy stringWithAXAttribute:3003];
    [AXUIMLElement _setCachedMLElements:0 forID:v12];

    v13 = MLElementTimer;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__AXUIMLElement__forceMLElementRefresh_postDelegateCallback_completionBlock___block_invoke;
    v14[3] = &unk_1E80D4358;
    v14[4] = self;
    v15 = refreshCopy;
    callbackCopy = callback;
    v16 = blockCopy;
    [v13 afterDelay:v14 processBlock:0.0];
  }
}

uint64_t __77__AXUIMLElement__forceMLElementRefresh_postDelegateCallback_completionBlock___block_invoke(uint64_t a1)
{
  [objc_opt_class() _queue_createMLElements:*(a1 + 40) postDelegateCallback:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)_currentMLElements
{
  v21 = *MEMORY[0x1E69E9840];
  if (_currentMLElements_onceToken != -1)
  {
    [AXUIMLElement _currentMLElements];
  }

  _appElement = [(AXUIMLElement *)self _appElement];
  v4 = _appElement;
  if (_appElement)
  {
    v5 = [_appElement stringWithAXAttribute:3003];
    v6 = [AXUIMLElement _cachedMLElementsForID:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v10 = AXMediaLogMLElement();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF78E000, v10, OS_LOG_TYPE_INFO, "Requesting current ML elements", buf, 2u);
      }

      if (([MLElementTimer isPending] & 1) == 0 && (objc_msgSend(MLElementTimer, "isActive") & 1) == 0)
      {
        v11 = dispatch_semaphore_create(0);
        v12 = MLElementTimer;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __35__AXUIMLElement__currentMLElements__block_invoke_350;
        v16[3] = &unk_1E80D4380;
        v16[4] = self;
        v17 = v4;
        v18 = v11;
        v13 = v11;
        [v12 afterDelay:v16 processBlock:0.0];
        v14 = dispatch_time(0, 1000000000);
        dispatch_semaphore_wait(v13, v14);
      }

      v8 = [AXUIMLElement _cachedMLElementsForID:v5];
    }

    v9 = v8;
  }

  else
  {
    v5 = AXMediaLogMLElement();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = 0;
      _os_log_impl(&dword_1BF78E000, v5, OS_LOG_TYPE_INFO, "No app element available: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

uint64_t __35__AXUIMLElement__currentMLElements__block_invoke()
{
  DetectedElementsLock = 0;
  v0 = objc_alloc(MEMORY[0x1E6988780]);
  MLElementTimer = [v0 initWithTargetSerialQueue:__globalMediaQueue];

  return MEMORY[0x1EEE66BB8]();
}

intptr_t __35__AXUIMLElement__currentMLElements__block_invoke_350(uint64_t a1)
{
  [objc_opt_class() _queue_createMLElements:*(a1 + 40) postDelegateCallback:1];
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

- (BOOL)isProbablyEqual:(id)equal
{
  equalCopy = equal;
  label = [(AXUIMLElement *)self label];
  if (!label)
  {
    goto LABEL_15;
  }

  v6 = label;
  label2 = [equalCopy label];

  if (!label2)
  {
    goto LABEL_15;
  }

  label3 = [equalCopy label];
  label4 = [(AXUIMLElement *)self label];
  if ([label3 isEqualToString:label4])
  {
    goto LABEL_6;
  }

  label5 = [equalCopy label];
  label6 = [(AXUIMLElement *)self label];
  if ([label5 containsString:label6])
  {

LABEL_6:
    goto LABEL_7;
  }

  label7 = [(AXUIMLElement *)self label];
  label8 = [equalCopy label];
  v27 = [label7 containsString:label8];

  if ((v27 & 1) == 0)
  {
LABEL_15:
    v24 = 0;
    goto LABEL_16;
  }

LABEL_7:
  if (equalCopy[11] != self->_traits)
  {
    goto LABEL_15;
  }

  if (equalCopy[13] != self->_uiClass)
  {
    goto LABEL_15;
  }

  [equalCopy rotatedFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(AXUIMLElement *)self rotatedFrame];
  if (vabdd_f64(v13, v23) > 40.0 || vabdd_f64(v15, v20) > 40.0 || vabdd_f64(v17, v21) > 5.0 || vabdd_f64(v19, v22) > 5.0)
  {
    goto LABEL_15;
  }

  v24 = 1;
LABEL_16:

  return v24;
}

+ (id)_textDetectionOptions:(id)options options:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v7 = getAXMTextDetectionOptionsClass_softClass;
  v20 = getAXMTextDetectionOptionsClass_softClass;
  if (!getAXMTextDetectionOptionsClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v22 = __getAXMTextDetectionOptionsClass_block_invoke;
    v23 = &unk_1E80D3D68;
    v24 = &v17;
    __getAXMTextDetectionOptionsClass_block_invoke(&buf);
    v7 = v18[3];
  }

  v8 = v7;
  _Block_object_dispose(&v17, 8);
  defaultOptions = [v7 defaultOptions];
  if ([optionsCopy length])
  {
    v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:optionsCopy];
    if (v10)
    {
      textDetectionOptions = [v6 textDetectionOptions];
      textDetectionLocales = [textDetectionOptions textDetectionLocales];
      array = [textDetectionLocales mutableCopy];

      if (!array)
      {
        v14 = AXMediaLogMLElement();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [AXUIMLElement _textDetectionOptions:v6 options:v14];
        }

        array = [MEMORY[0x1E695DF70] array];
      }

      [array insertObject:v10 atIndex:0];
      v15 = AXMediaLogElementVision();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_log_impl(&dword_1BF78E000, v15, OS_LOG_TYPE_INFO, "Using app locale for text detection options: %@", &buf, 0xCu);
      }

      [defaultOptions setTextDetectionLocales:array];
    }
  }

  [defaultOptions setRecognitionLevel:1];
  [defaultOptions setUsesLanguageCorrection:1];

  return defaultOptions;
}

+ ($70A309F2B59E63663966B62550FEA657)_windowContextInformation:(SEL)information
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = [a4 arrayWithAXAttribute:3052];
  array = [MEMORY[0x1E695DF70] array];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = @"contextId";
    v12 = @"isKeyboardWindow";
    v13 = *v48;
    v14 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v47 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:v11];
        v18 = [v16 objectForKeyedSubscript:v12];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v16 objectForKeyedSubscript:v12];
          v44 = v16;
          v19 = v17;
          v20 = v10;
          v21 = v13;
          v22 = v12;
          v23 = v14;
          v25 = v24 = v11;
          bOOLValue = [v25 BOOLValue];

          v11 = v24;
          v14 = v23;
          v12 = v22;
          v13 = v21;
          v10 = v20;
          v17 = v19;
          v16 = v44;

          if (bOOLValue)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }

        v27 = [v16 objectForKeyedSubscript:@"frame"];

        valuePtr = 0u;
        v46 = 0u;
        AXValueGetValue(v27, kAXValueTypeCGRect, &valuePtr);
        [array axSafelyAddObject:v17];
        unsignedIntValue = [v17 unsignedIntValue];
        [a2 _appRelativeRectForRect:unsignedIntValue contextId:{valuePtr, v46}];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v53.origin.x = x;
        v53.origin.y = y;
        v53.size.width = width;
        v53.size.height = height;
        if (CGRectIsEmpty(v53))
        {
          height = v36;
          width = v34;
          y = v32;
          x = v30;
        }

        else
        {
          v54.origin.x = x;
          v54.origin.y = y;
          v54.size.width = width;
          v54.size.height = height;
          v56.origin.x = v30;
          v56.origin.y = v32;
          v56.size.width = v34;
          v56.size.height = v36;
          v55 = CGRectUnion(v54, v56);
          x = v55.origin.x;
          y = v55.origin.y;
          width = v55.size.width;
          height = v55.size.height;
        }

        v37 = [v16 objectForKeyedSubscript:@"isMainWindow"];
        bOOLValue2 = [v37 BOOLValue];

        if (bOOLValue2)
        {
          [v17 unsignedIntValue];
        }

LABEL_15:
      }

      v10 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v10);
  }

  retstr->var0 = array;
  retstr->var1.origin.x = x;
  retstr->var1.origin.y = y;
  retstr->var1.size.width = width;
  retstr->var1.size.height = height;

  return result;
}

+ (void)_queue_createMLElements:(id)elements postDelegateCallback:(BOOL)callback
{
  callbackCopy = callback;
  v165 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  v4 = AXLogAppAccessibility();
  v5 = os_signpost_id_make_with_pointer(v4, self);

  v6 = AXLogAppAccessibility();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF78E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "AXUIMLElementDetection", &unk_1BF7E55B9, buf, 2u);
  }

  if (_queue_createMLElements_postDelegateCallback__onceToken != -1)
  {
    +[AXUIMLElement _queue_createMLElements:postDelegateCallback:];
  }

  v8 = [self proxiedMLElementsForApp:elementsCopy];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    coreAnimationMainDisplay = [__displayManager coreAnimationMainDisplay];
    [coreAnimationMainDisplay scale];
    v11 = v10;

    v129 = [elementsCopy stringWithAXAttribute:2008];
    *&v155[0] = 0;
    *(&v155[0] + 1) = v155;
    *&v155[1] = 0x2050000000;
    v12 = getAXMVisionScreenRecognitionOptionsClass_softClass;
    *(&v155[1] + 1) = getAXMVisionScreenRecognitionOptionsClass_softClass;
    if (!getAXMVisionScreenRecognitionOptionsClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v157 = 3221225472;
      v158 = __getAXMVisionScreenRecognitionOptionsClass_block_invoke;
      v159 = &unk_1E80D3D68;
      v160 = v155;
      __getAXMVisionScreenRecognitionOptionsClass_block_invoke(buf);
      v12 = *(*(&v155[0] + 1) + 24);
    }

    v13 = v12;
    _Block_object_dispose(v155, 8);
    defaultOptions = [v12 defaultOptions];
    [defaultOptions setDetectAXElements:1];
    v14 = [self _textDetectionOptions:v129 options:defaultOptions];
    [defaultOptions setTextDetectionOptions:v14];

    [defaultOptions setDetectText:0];
    v130 = [elementsCopy stringWithAXAttribute:3003];
    v15 = [self _cachedMLElementsForID:v130];
    v16 = [v15 count] == 0;

    if (v16)
    {
      v17 = EquivalenceToken;
      EquivalenceToken = 0;
    }

    [defaultOptions setEquivalenceToken:EquivalenceToken];
    [defaultOptions setIsRTL:{objc_msgSend(elementsCopy, "BOOLWithAXAttribute:", 3066)}];
    [defaultOptions setOrientation:{objc_msgSend(self, "_interfaceOrientationForElement:", elementsCopy)}];
    memset(v155, 0, 40);
    [self _windowContextInformation:elementsCopy];
    [defaultOptions setFullRect:{*(v155 + 1), v155[1], *&v155[2]}];
    [defaultOptions setIncludedLayerContextIDs:*&v155[0]];
    [defaultOptions setPreserveInputImageSize:1];
    [defaultOptions setEquivalenceToken:EquivalenceToken];
    v18 = AXMediaLogMLElement();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      +[AXUIMLElement _queue_createMLElements:postDelegateCallback:];
    }

    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    *v163 = 0;
    *&v163[8] = v163;
    *&v163[16] = 0x2050000000;
    v19 = getAXMScreenRecognitionCenterClass_softClass;
    v164 = getAXMScreenRecognitionCenterClass_softClass;
    if (!getAXMScreenRecognitionCenterClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v157 = 3221225472;
      v158 = __getAXMScreenRecognitionCenterClass_block_invoke;
      v159 = &unk_1E80D3D68;
      v160 = v163;
      __getAXMScreenRecognitionCenterClass_block_invoke(buf);
      v19 = *(*&v163[8] + 24);
    }

    v20 = v19;
    _Block_object_dispose(v163, 8);
    sharedInstance = [v19 sharedInstance];
    *buf = 0;
    v157 = 0;
    v158 = 0;
    v124 = sharedInstance;
    if (sharedInstance)
    {
      [sharedInstance processFeatures:defaultOptions];
      sharedInstance = *buf;
    }

    if ([sharedInstance isEqual:EquivalenceToken])
    {
      v22 = AXMediaLogMLElement();
      v123 = v22;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [AXUIMLElement _queue_createMLElements:v22 postDelegateCallback:?];
      }
    }

    else
    {
      objc_storeStrong(&EquivalenceToken, *buf);
      v25 = [v157 mutableCopy];
      if (!v25)
      {

LABEL_74:
        v24 = v129;
        goto LABEL_75;
      }

      v139[0] = MEMORY[0x1E69E9820];
      v139[1] = 3254779904;
      v139[2] = __62__AXUIMLElement__queue_createMLElements_postDelegateCallback___block_invoke_367;
      v139[3] = &unk_1F3E620B8;
      v147 = v11;
      v26 = *&v155[0];
      v149 = *(v155 + 8);
      v150 = *(&v155[1] + 8);
      v148 = v26;
      selfCopy = self;
      v140 = defaultOptions;
      v27 = array;
      v141 = v27;
      v28 = array2;
      v142 = v28;
      v29 = array3;
      v143 = v29;
      v144 = firstObject;
      v152 = *buf;
      v153 = v157;
      v154 = v158;
      v30 = array4;
      v145 = v30;
      v146 = v25;
      v123 = v146;
      [v146 enumerateObjectsUsingBlock:v139];
      WeakRetained = objc_loadWeakRetained(&__frameDelegate);
      [WeakRetained mlElementDetectorReceivedFrames:v27 labels:v28 uiClasses:v29];

      v32 = AXMediaLogMLElement();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *v163 = 67109120;
        *&v163[4] = v158;
        _os_log_impl(&dword_1BF78E000, v32, OS_LOG_TYPE_INFO, "Handling results for ML detection for gen: %d", v163, 8u);
      }

      v33 = AXLogAppAccessibility();
      v34 = v33;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *v163 = 0;
        _os_signpost_emit_with_name_impl(&dword_1BF78E000, v34, OS_SIGNPOST_INTERVAL_END, v5, "AXUIMLElementDetection", &unk_1BF7E55B9, v163, 2u);
      }

      v35 = [AXUIMLElement _cachedMLElementsForID:v130];
      array5 = [v35 mutableCopy];

      if (!array5)
      {
        array5 = [MEMORY[0x1E695DF70] array];
      }

      if (!_queue_createMLElements_postDelegateCallback___backupMLElements)
      {
        array6 = [MEMORY[0x1E695DF70] array];
        v38 = _queue_createMLElements_postDelegateCallback___backupMLElements;
        _queue_createMLElements_postDelegateCallback___backupMLElements = array6;
      }

      v121 = [array5 copy];
      v39 = 0;
      v40 = 1;
      *&v41 = 138412546;
      v120 = v41;
      while (v39 < [v30 count])
      {
        for (i = 0; i < [array5 count]; ++i)
        {
          v43 = [v30 objectAtIndexedSubscript:v39];
          v44 = [array5 objectAtIndexedSubscript:i];
          v45 = [v44 isProbablyEqual:v43];

          if (v45)
          {
            v46 = AXMediaLogMLElement();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v106 = [array5 objectAtIndexedSubscript:i];
              v107 = [v30 objectAtIndexedSubscript:v39];
              *v163 = v120;
              *&v163[4] = v106;
              *&v163[12] = 2112;
              *&v163[14] = v107;
              _os_log_debug_impl(&dword_1BF78E000, v46, OS_LOG_TYPE_DEBUG, "Keeping this element because we matched \nExisting: %@ New: %@", v163, 0x16u);
            }

            v47 = [array5 objectAtIndexedSubscript:i];
            [v30 setObject:v47 atIndexedSubscript:v39];

            v48 = [v30 objectAtIndexedSubscript:v39];
            [v48 rotatedFrame];
            v50 = v49;
            v52 = v51;
            v54 = v53;
            v56 = v55;
            [v43 rotatedFrame];
            v168.origin.x = v57;
            v168.origin.y = v58;
            v168.size.width = v59;
            v168.size.height = v60;
            v166.origin.x = v50;
            v166.origin.y = v52;
            v166.size.width = v54;
            v166.size.height = v56;
            v61 = CGRectEqualToRect(v166, v168);

            [v43 rotatedFrame];
            v63 = v62;
            v65 = v64;
            v67 = v66;
            v69 = v68;
            v70 = [v30 objectAtIndexedSubscript:v39];
            [v70 setRotatedFrame:{v63, v65, v67, v69}];

            v71 = v158;
            v72 = [v30 objectAtIndexedSubscript:v39];
            [v72 setMlGeneration:v71];

            [array5 removeObjectAtIndex:i];
            v40 &= v61;
            break;
          }
        }

        for (j = 0; j < [_queue_createMLElements_postDelegateCallback___backupMLElements count]; ++j)
        {
          v74 = [v30 objectAtIndexedSubscript:v39];
          v75 = [_queue_createMLElements_postDelegateCallback___backupMLElements objectAtIndexedSubscript:j];
          v76 = [v75 isProbablyEqual:v74];

          if (v76)
          {
            v77 = [_queue_createMLElements_postDelegateCallback___backupMLElements objectAtIndexedSubscript:j];
            [v30 setObject:v77 atIndexedSubscript:v39];

            [v74 rotatedFrame];
            v79 = v78;
            v81 = v80;
            v83 = v82;
            v85 = v84;
            v86 = [v30 objectAtIndexedSubscript:v39];
            [v86 setRotatedFrame:{v79, v81, v83, v85}];

            v87 = [v30 objectAtIndexedSubscript:v39];
            [v87 rotatedFrame];
            v89 = v88;
            v91 = v90;
            v93 = v92;
            v95 = v94;
            [v74 rotatedFrame];
            v169.origin.x = v96;
            v169.origin.y = v97;
            v169.size.width = v98;
            v169.size.height = v99;
            v167.origin.x = v89;
            v167.origin.y = v91;
            v167.size.width = v93;
            v167.size.height = v95;
            v100 = CGRectEqualToRect(v167, v169);

            v101 = v158;
            v102 = [v30 objectAtIndexedSubscript:v39];
            [v102 setMlGeneration:v101];

            [_queue_createMLElements_postDelegateCallback___backupMLElements removeObjectAtIndex:j];
            v40 &= v100;
          }

          else
          {
            v103 = [_queue_createMLElements_postDelegateCallback___backupMLElements objectAtIndexedSubscript:j];
            mlGeneration = [v103 mlGeneration];
            v105 = mlGeneration + 10 > v158;

            if (v105)
            {
              [_queue_createMLElements_postDelegateCallback___backupMLElements removeObjectAtIndex:j];
            }
          }
        }

        ++v39;
      }

      for (k = 0; k < [array5 count]; ++k)
      {
        for (m = 0; m < [v30 count]; ++m)
        {
          v110 = _queue_createMLElements_postDelegateCallback___backupMLElements;
          v111 = [array5 objectAtIndexedSubscript:k];
          [v110 addObject:v111];
        }
      }

      if (((v40 & 1) == 0 || ([v121 isEqualToArray:v30] & 1) == 0) && callbackCopy)
      {
        [self _setCachedMLElements:v30 forID:v130];
        v112 = objc_loadWeakRetained(&__frameDelegate);
        [v112 mlElementDetectorUpdatedElements];
      }

      v113 = AXMediaLogMLElement();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
      {
        +[AXUIMLElement _queue_createMLElements:postDelegateCallback:].cold.3([v30 count], v162, v113);
      }

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v114 = v30;
      v115 = [v114 countByEnumeratingWithState:&v135 objects:v161 count:16];
      if (v115)
      {
        v116 = *v136;
        do
        {
          for (n = 0; n != v115; ++n)
          {
            if (*v136 != v116)
            {
              objc_enumerationMutation(v114);
            }

            v118 = *(*(&v135 + 1) + 8 * n);
            v119 = AXMediaLogMLElement();
            if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
            {
              *v163 = 138412290;
              *&v163[4] = v118;
              _os_log_debug_impl(&dword_1BF78E000, v119, OS_LOG_TYPE_DEBUG, "\tAdded element: %@", v163, 0xCu);
            }
          }

          v115 = [v114 countByEnumeratingWithState:&v135 objects:v161 count:16];
        }

        while (v115);
      }
    }

    goto LABEL_74;
  }

  v23 = AXMediaLogMLElement();
  v24 = v23;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    +[AXUIMLElement _queue_createMLElements:postDelegateCallback:];
    v24 = v23;
  }

LABEL_75:
}

void __62__AXUIMLElement__queue_createMLElements_postDelegateCallback___block_invoke()
{
  v0 = dispatch_semaphore_create(0);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v1 = getAXMDisplayManagerClass_softClass;
  v24 = getAXMDisplayManagerClass_softClass;
  if (!getAXMDisplayManagerClass_softClass)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __getAXMDisplayManagerClass_block_invoke;
    v20[3] = &unk_1E80D3D68;
    v20[4] = &v21;
    __getAXMDisplayManagerClass_block_invoke(v20);
    v1 = v22[3];
  }

  v2 = v1;
  _Block_object_dispose(&v21, 8);
  v3 = [v1 alloc];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __62__AXUIMLElement__queue_createMLElements_postDelegateCallback___block_invoke_2;
  v18 = &unk_1E80D4250;
  v19 = v0;
  v4 = v0;
  v5 = [v3 initWithCompletion:&v15];
  v6 = __displayManager;
  __displayManager = v5;

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v4, v7);
  v8 = [__displayManager coreAnimationMainDisplay];
  [v8 size];
  ScaledScreenSize_0 = v9;
  ScaledScreenSize_1 = v10;

  v11 = [__displayManager coreAnimationMainDisplay];
  [v11 scale];
  *&ScaledScreenSize_0 = *&ScaledScreenSize_0 / v12;

  v13 = [__displayManager coreAnimationMainDisplay];
  [v13 scale];
  *&ScaledScreenSize_1 = *&ScaledScreenSize_1 / v14;
}

void __62__AXUIMLElement__queue_createMLElements_postDelegateCallback___block_invoke_367(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 activationPoint];
  v43 = v13;
  v44 = v12;
  v14 = *(MEMORY[0x1E695EFF8] + 8) == v13 && *MEMORY[0x1E695EFF8] == v12;
  v15 = 1.0 / *(a1 + 88);
  v16 = v5 * v15;
  v17 = v9 * v15;
  v18 = v11 * v15;
  v39 = *(a1 + 112);
  v41 = *(a1 + 104);
  v19 = v41 + v16;
  v20 = v7 * v15 + v39;
  v45 = v17;
  [*(a1 + 136) _convertFrameToPortraitUp:objc_msgSend(*(a1 + 32) fromOrientation:"orientation" appFrame:{*&v39, *&v41), v41 + v16, v20, v17, v18, v41, v39, *(a1 + 120), *(a1 + 128)}];
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  v25 = *(a1 + 40);
  v26 = NSStringFromRect(v51);
  [v25 addObject:v26];

  v27 = [v3 overrideLabel];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = [v3 value];
  }

  v30 = v29;

  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = &stru_1F3E63FB0;
  }

  [*(a1 + 48) addObject:v31];
  v32 = *(a1 + 56);
  v47 = 0;
  v48 = &v47;
  v49 = 0x2050000000;
  v33 = getAXMVisionFeatureClass_softClass;
  v50 = getAXMVisionFeatureClass_softClass;
  if (!getAXMVisionFeatureClass_softClass)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __getAXMVisionFeatureClass_block_invoke;
    v46[3] = &unk_1E80D3D68;
    v46[4] = &v47;
    __getAXMVisionFeatureClass_block_invoke(v46);
    v33 = v48[3];
  }

  v34 = v33;
  _Block_object_dispose(&v47, 8);
  v35 = [v33 nameForUIClass:{objc_msgSend(v3, "uiClass")}];
  [v32 addObject:v35];

  v36 = -[AXUIMLElement initWithParentElement:]([AXUIMLElement alloc], "initWithParentElement:", [*(a1 + 64) axElement]);
  v37 = [v3 overrideLabel];
  if (v37)
  {
    [(AXUIMLElement *)v36 setLabel:v37];
  }

  else
  {
    v38 = [v3 value];
    [(AXUIMLElement *)v36 setLabel:v38];
  }

  [(AXUIMLElement *)v36 setPortraitUpFrame:x, y, width, height];
  [(AXUIMLElement *)v36 setRotatedFrame:v19, v20, v45, v18];
  if (!v14)
  {
    [(AXUIMLElement *)v36 setRotatedCenterPoint:v42 + v44 * v15, v43 * v15 + v40];
  }

  [(AXUIMLElement *)v36 setMlGeneration:*(a1 + 160)];
  [*(a1 + 136) _applyAXTraitsForElement:v36 uiClass:{objc_msgSend(v3, "uiClass")}];
  if (v36)
  {
    [*(a1 + 72) addObject:v36];
  }

  [(AXUIMLElement *)v36 _applyCustomActionsForFeature:v3 screenScale:*(a1 + 80) screenRect:*(a1 + 88) elements:*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)];
}

- (void)_applyCustomActionsForFeature:(id)feature screenScale:(double)scale screenRect:(CGRect)rect elements:(id)elements
{
  v23 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  elementsCopy = elements;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  subfeatures = [featureCopy subfeatures];
  v10 = [subfeatures countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(subfeatures);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        uiClass = [featureCopy uiClass];
        if (([v14 uiClass] - 15) <= 2)
        {
          if ((uiClass - 15) > 2)
          {
            if ([featureCopy uiClass] == 18)
            {
              continue;
            }

LABEL_12:
            [elementsCopy addObject:v14];
            continue;
          }

          subfeatures2 = [featureCopy subfeatures];
          if ([subfeatures2 count] <= 1)
          {
          }

          else
          {
            uiClass2 = [featureCopy uiClass];

            if (uiClass2 != 18)
            {
              goto LABEL_12;
            }
          }
        }
      }

      v11 = [subfeatures countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)copyAttributeValue:(int64_t)value parameter:(void *)parameter baseElement:(id)element
{
  v25 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  if (value == 94500)
  {
    _currentMLElements = [(AXUIMLElement *)self _currentMLElements];
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = _currentMLElements;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [array addObject:{objc_msgSend(*(*(&v20 + 1) + 8 * v15++), "axElement", v20)}];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else if ((value - 92501) > 1 || [(AXUIMLElement *)self _isTopLevelMLElement])
  {
    array = 0;
  }

  else
  {
    _topLevelMLElement = [(AXUIMLElement *)self _topLevelMLElement];
    v17 = _topLevelMLElement;
    if (elementCopy)
    {
      selfCopy = elementCopy;
    }

    else
    {
      selfCopy = self;
    }

    array = [_topLevelMLElement copyAttributeValue:value parameter:parameter baseElement:selfCopy];
  }

  return array;
}

- (id)_reconcileAppElementsWithMLElements:(id)elements flattenedElements:(id)flattenedElements
{
  v39 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  flattenedElementsCopy = flattenedElements;
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = elementsCopy;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [(AXUIMLElement *)self _findMatchingElementForMLElement:v13 flattenedAppElements:flattenedElementsCopy];
        if (v14)
        {
          v15 = [dictionary objectForKey:v14];
          v16 = v15;
          if (v15)
          {
            array2 = v15;
          }

          else
          {
            array2 = [MEMORY[0x1E695DF70] array];
          }

          v18 = array2;

          [v18 addObject:v13];
          [dictionary setObject:v18 forKey:v14];
        }

        else if ([(AXUIMLElement *)self _shouldPromoteElement:v13])
        {
          [array addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v10);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  allKeys = [dictionary allKeys];
  v20 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(allKeys);
        }

        v24 = *(*(&v29 + 1) + 8 * j);
        v25 = [dictionary objectForKey:v24];
        if ([(AXUIMLElement *)self _shouldDemoteElement:v24 withMLElements:v25])
        {
          [array addObjectsFromArray:v25];
        }
      }

      v21 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }

  return array;
}

- (BOOL)_shouldDemoteElement:(id)element withMLElements:(id)elements
{
  elementCopy = element;
  if ([elements count])
  {
    _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
    [_topLevelAppElement rectWithAXAttribute:2003];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = objc_opt_class();
    v17 = [_topLevelAppElement numberWithAXAttribute:2021];
    [v16 _appRelativeRectForRect:objc_msgSend(v17 contextId:{"unsignedIntValue"), v9, v11, v13, v15}];
    v19 = v18;
    v21 = v20;

    [elementCopy rectWithAXAttribute:2003];
    v24 = v19 < 10.0 || v21 < 10.0;
    v27 = !v24 && (v25 = v22, v26 = v23, ([elementCopy BOOLWithAXAttribute:2065] & 1) == 0) && v25 * v26 / v19 / v21 > 0.9;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)_flattenedAppElements
{
  v21[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getAXSettingsClass_softClass;
  v20 = getAXSettingsClass_softClass;
  if (!getAXSettingsClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getAXSettingsClass_block_invoke;
    v16[3] = &unk_1E80D3D68;
    v16[4] = &v17;
    __getAXSettingsClass_block_invoke(v16);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  sharedInstance = [v3 sharedInstance];
  automaticAccessibilityIgnoreAppAccessibilityPreferred = [sharedInstance automaticAccessibilityIgnoreAppAccessibilityPreferred];

  if (automaticAccessibilityIgnoreAppAccessibilityPreferred)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v8 = [(AXUIMLElement *)self uiElementsWithAttribute:2017];
    lastObject = [v8 lastObject];

    v10 = [lastObject uiElementsWithAttribute:3000];
    lastObject2 = [v10 lastObject];

    if (lastObject2)
    {
      self->_isReconciling = 1;
      v21[0] = lastObject2;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      v13 = [lastObject2 nextElementsWithCount:9999];
      v14 = [v12 arrayByAddingObjectsFromArray:v13];

      v7 = [v14 ax_filteredArrayUsingBlock:&__block_literal_global_375];

      self->_isReconciling = 0;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }
  }

  return v7;
}

BOOL __38__AXUIMLElement__flattenedAppElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)_findMatchingElementForMLElement:(id)element flattenedAppElements:(id)elements
{
  v32 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  memset(&rect[1], 0, 32);
  v29 = 0u;
  v30 = 0u;
  elementsCopy = elements;
  v7 = [elementsCopy countByEnumeratingWithState:&rect[1] objects:v31 count:16];
  if (v7)
  {
    v8 = *rect[3];
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*rect[3] != v8)
        {
          objc_enumerationMutation(elementsCopy);
        }

        v10 = *(rect[2] + 8 * i);
        [elementCopy rotatedFrame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [v10 rectWithAXAttribute:2003];
        rect[0] = v19;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v35.origin.x = v12;
        v35.origin.y = v14;
        v35.size.width = v16;
        v35.size.height = v18;
        MidX = CGRectGetMidX(v35);
        v36.origin.x = v12;
        v36.origin.y = v14;
        v36.size.width = v16;
        v36.size.height = v18;
        v34.y = CGRectGetMidY(v36);
        *&v37.origin.x = rect[0];
        v37.origin.y = v21;
        v37.size.width = v23;
        v37.size.height = v25;
        v34.x = MidX;
        if (CGRectContainsPoint(v37, v34))
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [elementsCopy countByEnumeratingWithState:&rect[1] objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (__AXUIElement)copyElementAtPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v34 = *MEMORY[0x1E69E9840];
  _currentMLElements = [(AXUIMLElement *)self _currentMLElements];
  array = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = _currentMLElements;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v26;
    v12 = 1.79769313e308;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        [v14 portraitUpFrame];
        v35.x = x;
        v35.y = y;
        if (CGRectContainsPoint(v36, v35))
        {
          [array addObject:v14];
        }

        else
        {
          [v14 portraitUpFrame];
          MidX = CGRectGetMidX(v37);
          [v14 portraitUpFrame];
          MidY = CGRectGetMidY(v38);
          v17 = sqrt((MidX - x) * (MidX - x) + (MidY - y) * (MidY - y));
          if (v17 < v12)
          {
            v18 = v14;

            v10 = v18;
            v12 = v17;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v12 = 1.79769313e308;
  }

  if ([objc_opt_class() performFuzzyHitTestNextTime] && !objc_msgSend(array, "count") && v10)
  {
    v19 = AXMediaLogElementVision();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v30 = v12;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_1BF78E000, v19, OS_LOG_TYPE_DEFAULT, "Logging fuzzy match: %f, %@", buf, 0x16u);
    }

    [objc_opt_class() setPerformFuzzyHitTestNextTime:0];
    v20 = CFRetain([v10 axElement]);
  }

  else
  {
    v21 = [array sortedArrayUsingComparator:{&__block_literal_global_378, v25}];
    firstObject = [v21 firstObject];
    v23 = firstObject;
    if (firstObject)
    {
      v20 = CFRetain([firstObject axElement]);
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

uint64_t __39__AXUIMLElement_copyElementAtPosition___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 frame];
  v49 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v5 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v21 = getAXMIntersectionOverUnionSymbolLoc_ptr;
  v54 = getAXMIntersectionOverUnionSymbolLoc_ptr;
  if (!getAXMIntersectionOverUnionSymbolLoc_ptr)
  {
    v22 = AXMediaUtilitiesLibrary();
    v52[3] = dlsym(v22, "AXMIntersectionOverUnion");
    getAXMIntersectionOverUnionSymbolLoc_ptr = v52[3];
    v21 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v21)
  {
    __39__AXUIMLElement_copyElementAtPosition___block_invoke_cold_2();
  }

  if (v21(v49, v8, v10, v12, v14, v16, v18, v20) <= 0.5)
  {
    [v4 frame];
    v50 = v23;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [v5 frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v38 = getAXMRatioOfIntersectedAreaToSmallerRectAreaSymbolLoc_ptr;
    v54 = getAXMRatioOfIntersectedAreaToSmallerRectAreaSymbolLoc_ptr;
    if (!getAXMRatioOfIntersectedAreaToSmallerRectAreaSymbolLoc_ptr)
    {
      v39 = AXMediaUtilitiesLibrary();
      v52[3] = dlsym(v39, "AXMRatioOfIntersectedAreaToSmallerRectArea");
      getAXMRatioOfIntersectedAreaToSmallerRectAreaSymbolLoc_ptr = v52[3];
      v38 = v52[3];
    }

    _Block_object_dispose(&v51, 8);
    if (!v38)
    {
      __39__AXUIMLElement_copyElementAtPosition___block_invoke_cold_1();
    }

    if (v38(v50, v25, v27, v29, v31, v33, v35, v37) <= 0.5)
    {
      goto LABEL_14;
    }
  }

  [v4 frame];
  v41 = v40;
  [v4 frame];
  v43 = v41 * v42;
  [v5 frame];
  v45 = v44;
  [v5 frame];
  v47 = v43 >= v45 * v46 ? 1 : -1;
  if (v43 >= v45 * v46 && v43 <= v45 * v46)
  {
LABEL_14:
    v47 = 0;
  }

  return v47;
}

+ (id)elementsInDirection:(int64_t)direction withElement:(id)element nextElements:(id)elements
{
  elementCopy = element;
  elementsCopy = elements;
  if (!elementsCopy)
  {
    elementsCopy = [MEMORY[0x1E695DEC8] array];
  }

  if (![elementCopy isMLElement])
  {
    v10 = [elementCopy uiElementsWithAttribute:2017];
    lastObject = [v10 lastObject];

    v12 = [lastObject uiElementsWithAttribute:3051];
    firstObject = [v12 firstObject];

    if (firstObject)
    {
      goto LABEL_10;
    }

LABEL_7:
    allObjects = elementsCopy;
    goto LABEL_22;
  }

  if ([elementCopy _isTopLevelMLElement])
  {
    topLevelMLElement = elementCopy;
  }

  else
  {
    topLevelMLElement = [elementCopy topLevelMLElement];
  }

  firstObject = topLevelMLElement;
  if (!topLevelMLElement)
  {
    goto LABEL_7;
  }

LABEL_10:
  _reconciledElements = [firstObject _reconciledElements];
  v16 = [_reconciledElements indexOfObject:elementCopy];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = v16;
    if (direction == 92501)
    {
      if (v16 + 1 < [_reconciledElements count])
      {
        _currentMLElements = [_reconciledElements subarrayWithRange:{v18 + 1, objc_msgSend(_reconciledElements, "count") + ~v18}];
        goto LABEL_16;
      }
    }

    else if (v16)
    {
      v19 = [_reconciledElements subarrayWithRange:{0, v16}];
      reverseObjectEnumerator = [v19 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];

      goto LABEL_19;
    }

LABEL_20:
    allObjects = elementsCopy;
    goto LABEL_21;
  }

  if (direction != 92501)
  {
    goto LABEL_20;
  }

  _currentMLElements = [firstObject _currentMLElements];
LABEL_16:
  v19 = _currentMLElements;
  allObjects = [elementsCopy arrayByAddingObjectsFromArray:_currentMLElements];
LABEL_19:

LABEL_21:
LABEL_22:

  return allObjects;
}

- (BOOL)_simulateScrollAction:(int)action withScreenDistanceFactor:(double)factor forVisibleAction:(BOOL)visibleAction
{
  v8 = action & 0xFFFFFFFE;
  v10 = action == 2006 || action == 2009;
  [(AXUIMLElement *)self rotatedFrame];
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  MidX = CGRectGetMidX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MidY = CGRectGetMidY(v44);
  v17 = ScaledScreenSize_1;
  if (v8 != 2006)
  {
    v17 = ScaledScreenSize_0;
  }

  v18 = *&v17 * factor;
  v19 = -(*&v17 * factor);
  if (v10)
  {
    v20 = *&ScaledScreenSize_0;
  }

  else
  {
    v19 = v18;
    v20 = 0.0;
  }

  if (v8 == 2006)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  if (v8 == 2006)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = objc_opt_class();
  _topLevelAppElement = [(AXUIMLElement *)self _topLevelAppElement];
  v25 = [v23 _interfaceOrientationForElement:_topLevelAppElement];

  v26 = (v25 - 1) >= 2 || v8 == 2006;
  v27 = MidX + v21;
  v28 = MidY + v22;
  if (v26)
  {
    v29 = v27;
  }

  else
  {
    v29 = v20;
  }

  v30 = EquivalenceToken;
  v31 = fabs(sqrt((v28 - MidY) * (v28 - MidY) + (v29 - MidX) * (v29 - MidX)));
  if (v31 >= 40.0)
  {
    _appElement = [(AXUIMLElement *)self _appElement];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __81__AXUIMLElement__simulateScrollAction_withScreenDistanceFactor_forVisibleAction___block_invoke;
    v35[3] = &unk_1E80D4438;
    v38 = MidX;
    v39 = MidY;
    v40 = v29;
    v41 = v28;
    v35[4] = self;
    v36 = _appElement;
    visibleActionCopy = visibleAction;
    v37 = v30;
    v33 = _appElement;
    dispatch_async(MEMORY[0x1E69E96A0], v35);
  }

  return v31 >= 40.0;
}

void __81__AXUIMLElement__simulateScrollAction_withScreenDistanceFactor_forVisibleAction___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v2 = getAXNamedReplayableGestureClass_softClass;
  v16 = getAXNamedReplayableGestureClass_softClass;
  if (!getAXNamedReplayableGestureClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getAXNamedReplayableGestureClass_block_invoke;
    v12[3] = &unk_1E80D3D68;
    v12[4] = &v13;
    __getAXNamedReplayableGestureClass_block_invoke(v12);
    v2 = v14[3];
  }

  v3 = v2;
  _Block_object_dispose(&v13, 8);
  v4 = [v2 scrollGestureFromPoint:*(a1 + 56) toPoint:*(a1 + 64) duration:{*(a1 + 72), *(a1 + 80), 0.2}];
  v5 = +[AXUIMLElement sharedFingerController];
  [v5 setSenderID:0x8000000817319375];

  v6 = +[AXUIMLElement sharedFingerController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__AXUIMLElement__simulateScrollAction_withScreenDistanceFactor_forVisibleAction___block_invoke_2;
  v8[3] = &unk_1E80D4410;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  v11 = *(a1 + 88);
  v10 = *(a1 + 48);
  [v6 performGesture:v4 completion:v8];
}

void __81__AXUIMLElement__simulateScrollAction_withScreenDistanceFactor_forVisibleAction___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__AXUIMLElement__simulateScrollAction_withScreenDistanceFactor_forVisibleAction___block_invoke_3;
  v3[3] = &unk_1E80D43E8;
  v5 = *(a1 + 56);
  v4 = *(a1 + 48);
  [v1 _forceMLElementRefresh:v2 postDelegateCallback:1 completionBlock:v3];
}

void __81__AXUIMLElement__simulateScrollAction_withScreenDistanceFactor_forVisibleAction___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    if ([EquivalenceToken isEqualToData:*(a1 + 32)])
    {

      AXPushNotificationToSystemForBroadcast();
    }

    else
    {
      v1 = [AXAttributedString axAttributedStringWithString:@" "];
      [v1 setAttribute:*MEMORY[0x1E695E4D0] forKey:kAXPageScrollShouldSpeakElement[0]];
      AXPushNotificationToSystemForBroadcast();
    }
  }
}

- (CGRect)portraitUpFrame
{
  x = self->_portraitUpFrame.origin.x;
  y = self->_portraitUpFrame.origin.y;
  width = self->_portraitUpFrame.size.width;
  height = self->_portraitUpFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)rotatedFrame
{
  x = self->_rotatedFrame.origin.x;
  y = self->_rotatedFrame.origin.y;
  width = self->_rotatedFrame.size.width;
  height = self->_rotatedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)rotatedCenterPoint
{
  x = self->_rotatedCenterPoint.x;
  y = self->_rotatedCenterPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)screenFrame
{
  x = self->_screenFrame.origin.x;
  y = self->_screenFrame.origin.y;
  width = self->_screenFrame.size.width;
  height = self->_screenFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (void)setAutoRefresh:forApp:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_1BF78E000, v0, OS_LOG_TYPE_ERROR, "No bundle id for %@", v1, 0xCu);
}

+ (void)_textDetectionOptions:(void *)a1 options:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 textDetectionOptions];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_1BF78E000, a2, OS_LOG_TYPE_ERROR, "would expect textDetectionOptions to return locale list: %@", v4, 0xCu);
}

+ (void)_queue_createMLElements:postDelegateCallback:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_1BF78E000, v0, OS_LOG_TYPE_DEBUG, "CurrentMLElements for element: %@", v1, 0xCu);
}

+ (void)_queue_createMLElements:(os_log_t)log postDelegateCallback:.cold.3(int a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_debug_impl(&dword_1BF78E000, log, OS_LOG_TYPE_DEBUG, "Finished ML elements creation: %d", buf, 8u);
}

+ (void)_queue_createMLElements:postDelegateCallback:.cold.5()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_1BF78E000, v0, OS_LOG_TYPE_ERROR, "Couldn't find toplevel ml element for %@", v1, 0xCu);
}

void __39__AXUIMLElement_copyElementAtPosition___block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat soft_AXMRatioOfIntersectedAreaToSmallerRectArea(CGRect, CGRect)"}];
  [v0 handleFailureInFunction:v1 file:@"AXUIMLElement.m" lineNumber:32 description:{@"%s", dlerror()}];

  __break(1u);
}

void __39__AXUIMLElement_copyElementAtPosition___block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat soft_AXMIntersectionOverUnion(CGRect, CGRect)"}];
  [v0 handleFailureInFunction:v1 file:@"AXUIMLElement.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

@end