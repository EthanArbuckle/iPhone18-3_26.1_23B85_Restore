@interface XADInspectorManager
+ (id)sharedManager;
- (BOOL)_elementTokenIsSumulatorToken:(id)token;
- (BOOL)allowDeveloperActionsOnElement:(id)element;
- (CGPoint)_lastPoint;
- (XADInspectorManager)init;
- (XADInspectorManagerDelegate)delegate;
- (id)_AXAuditElementFromAXElement:(id)element;
- (id)_actionSection;
- (id)_auditInspectorFocuseObject;
- (id)_basicSection;
- (id)_elementDataFromSimulatorToken:(id)token;
- (id)_elementSection;
- (id)_generateSpokenDescriptionForElement:(id)element;
- (id)_hierarchySection;
- (id)_humanReadableStringForAction:(int)action;
- (id)_inspectorSections;
- (id)_internalAttributes;
- (id)_nextElementNavigationInDirection:(int64_t)direction forElement:(id)element;
- (id)fetchElementAtNormalizedDeviceCoordinate:(CGPoint)coordinate;
- (id)fetchSpecialElement:(int64_t)element;
- (id)firstElementInHierarchy:(id)hierarchy;
- (id)frontmostAppForTargetPid;
- (id)lastElementInHierarchy:(id)hierarchy;
- (void)_addElementToHistory:(id)history;
- (void)_informDelegateOfInspectorFocus;
- (void)_initializeElementVisualsCoalescer;
- (void)_setCurrentElement:(id)element;
- (void)_updateElementHighlight;
- (void)connectionInterrupted;
- (void)deviceDidGetTargeted;
- (void)element:(id)element performAction:(id)action withValue:(id)value completion:(id)completion;
- (void)element:(id)element valueForAttribute:(id)attribute completion:(id)completion;
- (void)focusOnAXElement:(id)element;
- (void)focusOnAXElement:(id)element scrollToVisible:(BOOL)visible;
- (void)focusOnElement:(id)element;
- (void)focusOnElementAtPoint:(CGPoint)point;
- (void)hideVisualsSynchronously;
- (void)previewOnElement:(id)element;
- (void)setMonitoredEventType:(unint64_t)type;
- (void)setShowVisuals:(BOOL)visuals;
- (void)setTargetPid:(int)pid;
- (void)updateAttributesIfElementIsValid;
@end

@implementation XADInspectorManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B78;
  block[3] = &unk_100018878;
  block[4] = self;
  if (qword_10001DD58 != -1)
  {
    dispatch_once(&qword_10001DD58, block);
  }

  v2 = qword_10001DD50;

  return v2;
}

- (XADInspectorManager)init
{
  v6.receiver = self;
  v6.super_class = XADInspectorManager;
  v2 = [(XADInspectorManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create(off_10001DB50, 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    [(XADInspectorManager *)v2 _initializeElementVisualsCoalescer];
  }

  return v2;
}

- (void)setMonitoredEventType:(unint64_t)type
{
  v11 = +[XADDisplayManager sharedManager];
  self->_monitoredEventType = type;
  v5 = +[XADEventManager sharedManager];
  v6 = v5;
  if (type == 2)
  {
    v7 = 1;
    [v5 setSnarfingEvents:1];

    v8 = +[XADEventManager sharedManager];
    v6 = v8;
    v9 = 1;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v7 = 1;
    [v5 setSnarfingEvents:1];

    v8 = +[XADEventManager sharedManager];
    v6 = v8;
    v9 = 0;
LABEL_5:
    [v8 setStopSnarfingOnTouchUp:v9];
    goto LABEL_7;
  }

  [v5 setSnarfingEvents:0];
  v7 = 3;
LABEL_7:

  [v11 setCursorStyle:v7];
  delegate = [(XADInspectorManager *)self delegate];
  [delegate inspectorManager:self inspectorMonitoredEventTypeChanged:type];
}

- (void)hideVisualsSynchronously
{
  v2 = +[XADDisplayManager sharedManager];
  [v2 hideVisualsSynchronously];
}

- (void)connectionInterrupted
{
  v3 = +[XADEventManager sharedManager];
  [v3 setDelegateForInspectorManager:0];

  _AXSAXInspectorSetEnabled();

  [(XADInspectorManager *)self hideVisualsSynchronously];
}

- (void)setShowVisuals:(BOOL)visuals
{
  self->_showVisuals = visuals;
  dispatchQueue = [(XADInspectorManager *)self dispatchQueue];
  v6 = dispatchQueue;
  if (visuals)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002F08;
    block[3] = &unk_1000188A0;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    dispatch_async(dispatchQueue, &stru_100018980);
  }
}

- (id)_internalAttributes
{
  if (qword_10001DD60 != -1)
  {
    sub_10000D560();
  }

  v3 = qword_10001DD68;

  return v3;
}

- (id)_elementSection
{
  v3 = [[AXAuditInspectorSection alloc] initWithType:4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [&off_100019AD8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(&off_100019AD8);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [NSString stringWithFormat:@"%@-%@", @"Attribute", v8];
        v10 = AXAuditLocString();
        v11 = [(XADInspectorManager *)self addAttribute:v8 toSection:v3 withPrefix:@"Attribute" performsAction:0 settable:0 humanReadable:v10 valueType:256 overrideIsInternalWithValue:0];
      }

      v5 = [&off_100019AD8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)_basicSection
{
  v3 = [[AXAuditInspectorSection alloc] initWithType:3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [&off_100019AF0 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(&off_100019AF0);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [NSString stringWithFormat:@"%@-%@", @"Attribute", v8];
        v10 = AXAuditLocString();
        v11 = [(XADInspectorManager *)self addAttribute:v8 toSection:v3 withPrefix:@"Attribute" performsAction:0 settable:0 humanReadable:v10 valueType:2 overrideIsInternalWithValue:0];
        if ([v8 isEqual:@"TraitsHumanReadable"])
        {
          [v11 setDisplayInline:1];
        }
      }

      v5 = [&off_100019AF0 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)_hierarchySection
{
  v3 = [[AXAuditInspectorSection alloc] initWithType:5];
  v4 = _AXHierarchyElementsAttribute;
  title = [v3 title];
  v6 = [(XADInspectorManager *)self addAttribute:v4 toSection:v3 withPrefix:@"Attribute" performsAction:0 settable:0 humanReadable:title valueType:2 overrideIsInternalWithValue:0];

  [v6 setDisplayAsTree:1];

  return v3;
}

- (id)_humanReadableStringForAction:(int)action
{
  if ((action - 2004) > 0x10)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_100018A10[action - 2004];
  }

  return _AXAuditAttributeWithPrefixLocString(v3, @"Action");
}

- (id)_actionSection
{
  v3 = [[AXAuditInspectorSection alloc] initWithType:0];
  _currentElement = [(XADInspectorManager *)self _currentElement];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100003924;
  v28[3] = &unk_1000189C8;
  selfCopy = self;
  v28[4] = self;
  v23 = v3;
  v29 = v23;
  v5 = objc_retainBlock(v28);
  v6 = v5;
  if (_currentElement)
  {
    (v5[2])(v5, 2010);
  }

  if (([_currentElement supportsAction:2004] & 1) != 0 || (objc_msgSend(_currentElement, "supportsAction:", 2005) & 1) != 0 || (v7 = objc_msgSend(_currentElement, "traits"), (kAXAdjustableTrait & ~v7) == 0))
  {
    v6[2](v6, 2004);
    v6[2](v6, 2005);
  }

  if (([_currentElement supportsAction:2007] & 1) != 0 || objc_msgSend(_currentElement, "supportsAction:", 2006))
  {
    v6[2](v6, 2007);
    v6[2](v6, 2006);
  }

  if (([_currentElement supportsAction:2009] & 1) != 0 || objc_msgSend(_currentElement, "supportsAction:", 2008))
  {
    v6[2](v6, 2009);
    v6[2](v6, 2008);
  }

  if (([_currentElement supportsAction:2019] & 1) != 0 || objc_msgSend(_currentElement, "supportsAction:", 2020))
  {
    v6[2](v6, 2019);
    v6[2](v6, 2020);
  }

  v20 = v6;
  v21 = _currentElement;
  customActions = [_currentElement customActions];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [customActions countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(customActions);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"CustomActionShortName"];
        if (!v14)
        {
          v14 = [v13 objectForKeyedSubscript:@"CustomActionName"];
        }

        v15 = [v13 objectForKeyedSubscript:@"CustomActionIdentifier"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [NSString stringWithFormat:@"%@%@", @"AXCustomAction-", v15];
          v17 = [(XADInspectorManager *)selfCopy addAttribute:v16 toSection:v23 withPrefix:@"Action" performsAction:1 settable:0 humanReadable:v14 valueType:1 overrideIsInternalWithValue:&__kCFBooleanFalse];
        }
      }

      v10 = [customActions countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v10);
  }

  v18 = v23;

  return v23;
}

- (id)_inspectorSections
{
  _basicSection = [(XADInspectorManager *)self _basicSection];
  _actionSection = [(XADInspectorManager *)self _actionSection];
  _elementSection = [(XADInspectorManager *)self _elementSection];
  _hierarchySection = [(XADInspectorManager *)self _hierarchySection];
  v9[0] = _basicSection;
  v9[1] = _actionSection;
  v9[2] = _elementSection;
  v9[3] = _hierarchySection;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)_AXAuditElementFromAXElement:(id)element
{
  elementCopy = element;
  uiElement = [elementCopy uiElement];
  v5 = [uiElement objectWithAXAttribute:5019];

  v6 = [AXAuditElement auditElementWithElement:elementCopy identifier:v5];

  return v6;
}

- (id)_auditInspectorFocuseObject
{
  _currentElement = [(XADInspectorManager *)self _currentElement];
  v4 = objc_opt_new();
  pid = 0;
  v5 = @"NO";
  if (AXUIElementGetPid([_currentElement elementRef], &pid) == kAXErrorSuccess && pid >= 1 && AuditDoesAllowDeveloperAttributes())
  {
    v5 = @"YES";
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[XADInspectorManager _auditInspectorFocuseObject]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: allowDeveloperAttributes: %@", buf, 0x16u);
  }

  v6 = [(XADInspectorManager *)self _AXAuditElementFromAXElement:_currentElement];
  [v4 setElement:v6];
  v7 = [(XADInspectorManager *)self _generateSpokenDescriptionForElement:_currentElement];
  [v4 setCaptionText:v7];
  [v4 setSpokenDescription:v7];
  _inspectorSections = [(XADInspectorManager *)self _inspectorSections];
  [v4 setInspectorSections:_inspectorSections];

  return v4;
}

- (id)_generateSpokenDescriptionForElement:(id)element
{
  elementCopy = element;
  v4 = +[NSMutableArray array];
  label = [elementCopy label];
  v6 = [label length];

  if (v6)
  {
    label2 = [elementCopy label];
    [v4 addObject:label2];
  }

  value = [elementCopy value];
  v9 = [value length];

  if (v9)
  {
    value2 = [elementCopy value];
    [v4 addObject:value2];
  }

  v11 = sub_10000664C([elementCopy elementRef], 0x836);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v16 isEqualToString:@"Static Text"] & 1) == 0)
        {
          [v4 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  hint = [elementCopy hint];
  v18 = [hint length];

  if (v18)
  {
    hint2 = [elementCopy hint];
    [v4 addObject:hint2];
  }

  v20 = [v4 componentsJoinedByString:{@", "}];

  return v20;
}

- (void)_informDelegateOfInspectorFocus
{
  delegate = [(XADInspectorManager *)self delegate];
  _auditInspectorFocuseObject = [(XADInspectorManager *)self _auditInspectorFocuseObject];
  [delegate inspectorManager:self inspectorFocusDidChange:_auditInspectorFocuseObject];
}

- (void)_initializeElementVisualsCoalescer
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(AXUpdateElementVisualsCoalescer);
  [(XADInspectorManager *)self set_elementVisualsCoalescer:v3];
  [v3 setThreshold:0.2];
  [v3 setProgressInterval:0.01];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004198;
  v8[3] = &unk_1000189F0;
  objc_copyWeak(&v9, &location);
  [v3 setUpdateVisualsSequenceDidBeginHandler:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000041D8;
  v6[3] = &unk_1000189F0;
  objc_copyWeak(&v7, &location);
  [v3 setUpdateVisualsSequenceInProgressHandler:v6];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004218;
  v4[3] = &unk_1000189F0;
  objc_copyWeak(&v5, &location);
  [v3 setUpdateVisualsSequenceDidFinishHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)_updateElementHighlight
{
  v4 = +[XADDisplayManager sharedManager];
  [v4 setCursorStyle:1];
  _currentElement = [(XADInspectorManager *)self _currentElement];
  [v4 setCursorFrameForElement:_currentElement];
}

- (void)_addElementToHistory:(id)history
{
  historyCopy = history;
  _focusedElementHistory = [(XADInspectorManager *)self _focusedElementHistory];
  if (!_focusedElementHistory)
  {
    v5 = objc_opt_new();
    [(XADInspectorManager *)self set_focusedElementHistory:v5];

    _focusedElementHistory = [(XADInspectorManager *)self _focusedElementHistory];
  }

  if ([_focusedElementHistory containsObject:historyCopy])
  {
    [_focusedElementHistory removeObject:historyCopy];
  }

  if (historyCopy)
  {
    [_focusedElementHistory addObject:historyCopy];
  }

  if ([_focusedElementHistory count] >= 0x15)
  {
    do
    {
      [_focusedElementHistory removeObjectAtIndex:0];
    }

    while ([_focusedElementHistory count] > 0x14);
  }
}

- (void)_setCurrentElement:(id)element
{
  elementCopy = element;
  sub_10000443C(self->__currentElement, 0);
  [(XADInspectorManager *)self _addElementToHistory:elementCopy];
  currentElement = self->__currentElement;
  self->__currentElement = elementCopy;
  v6 = elementCopy;

  sub_10000443C(self->__currentElement, 1);
}

- (BOOL)_elementTokenIsSumulatorToken:(id)token
{
  v3 = [token objectForKey:@"TokenType"];
  v4 = [v3 isEqualToString:@"AXElementTokenSimulator"];

  return v4;
}

- (id)_elementDataFromSimulatorToken:(id)token
{
  v3 = [token objectForKey:@"ElementData"];
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

- (void)focusOnAXElement:(id)element scrollToVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(XADInspectorManager *)self _setCurrentElement:element];
  if (visibleCopy)
  {
    _currentElement = [(XADInspectorManager *)self _currentElement];
    [_currentElement scrollToVisible];
  }

  [(XADInspectorManager *)self _updateElementHighlight];

  [(XADInspectorManager *)self _informDelegateOfInspectorFocus];
}

- (void)focusOnAXElement:(id)element
{
  elementCopy = element;
  if ([(XADInspectorManager *)self targetPid])
  {
    targetPid = [(XADInspectorManager *)self targetPid];
    v5 = targetPid != [elementCopy pid];
  }

  else
  {
    v5 = 0;
  }

  v6 = elementCopy;
  if (elementCopy && !v5)
  {
    _currentElement = [(XADInspectorManager *)self _currentElement];
    v8 = [elementCopy isEqual:_currentElement];

    v6 = elementCopy;
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!elementCopy)
  {
LABEL_7:
    [(XADInspectorManager *)self focusOnAXElement:elementCopy scrollToVisible:1];
    v6 = elementCopy;
  }

LABEL_8:
}

- (void)focusOnElementAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(XADInspectorManager *)self _lastPoint];
  if (x != v7 || y != v6)
  {
    v16 = [AXUIElement uiElementAtCoordinate:x, y];
    if (![(XADInspectorManager *)self targetPid])
    {
      goto LABEL_14;
    }

    v9 = [AXUIElement uiApplicationAtCoordinate:x, y];
    frontmostAppForTargetPid = [(XADInspectorManager *)self frontmostAppForTargetPid];
    uiElement = [frontmostAppForTargetPid uiElement];

    LODWORD(frontmostAppForTargetPid) = [v9 isEqual:uiElement];
    if (frontmostAppForTargetPid)
    {
LABEL_14:
      _currentElement = [(XADInspectorManager *)self _currentElement];
      uiElement2 = [_currentElement uiElement];
      v14 = [v16 isEqual:uiElement2];

      if ((v14 & 1) == 0)
      {
        v15 = [AXElement elementWithUIElement:v16];
        [(XADInspectorManager *)self focusOnAXElement:v15 scrollToVisible:0];
      }
    }
  }
}

- (void)focusOnElement:(id)element
{
  axElement = [element axElement];
  [(XADInspectorManager *)self focusOnAXElement:axElement];

  if (element)
  {

    [(XADInspectorManager *)self _updateElementHighlight];
  }
}

- (void)previewOnElement:(id)element
{
  elementCopy = element;
  v4 = +[XADDisplayManager sharedManager];
  if (elementCopy)
  {
    [v4 setCursorStyle:4];
    axElement = [elementCopy axElement];
    [v4 setCursorFrameForElement:axElement];
  }

  else
  {
    [(XADInspectorManager *)self _updateElementHighlight];
  }
}

- (BOOL)allowDeveloperActionsOnElement:(id)element
{
  pid = 0;
  v3 = AXUIElementGetPid([element elementRef], &pid);
  result = 0;
  if (v3 == kAXErrorSuccess)
  {
    return AuditDoesAllowDeveloperAttributes();
  }

  return result;
}

- (void)element:(id)element performAction:(id)action withValue:(id)value completion:(id)completion
{
  completionCopy = completion;
  actionCopy = action;
  axElement = [element axElement];
  attributeName = [actionCopy attributeName];

  if (axElement && [(XADInspectorManager *)self allowDeveloperActionsOnElement:axElement])
  {
    if (![attributeName rangeOfString:@"AXAction-"])
    {
      v12 = [attributeName length];
      if (v12 == [@"AXAction-" length] + 4)
      {
        v13 = [attributeName substringFromIndex:{objc_msgSend(@"AXAction-", "length")}];
        if ([v13 integerValue] - 2000 <= 0x1F40)
        {
          [axElement performAction:?];
        }

        goto LABEL_10;
      }
    }

    if (![attributeName rangeOfString:@"AXCustomAction-"])
    {
      v14 = [attributeName length];
      if (v14 > [@"AXCustomAction-" length])
      {
        v13 = [attributeName substringFromIndex:{objc_msgSend(@"AXCustomAction-", "length")}];
        [axElement performAction:2021 withValue:v13];
LABEL_10:
      }
    }
  }

  completionCopy[2]();
}

- (void)element:(id)element valueForAttribute:(id)attribute completion:(id)completion
{
  attributeCopy = attribute;
  completionCopy = completion;
  axElement = [element axElement];
  _currentElement = [(XADInspectorManager *)self _currentElement];
  v12 = [axElement isEqual:_currentElement];

  if ((v12 & 1) != 0 || (-[XADInspectorManager _focusedElementHistory](self, "_focusedElementHistory"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:axElement], v13, !v14))
  {
    elementRef = [axElement elementRef];
    attributeName = [attributeCopy attributeName];
    v17 = attributeName;
    if (!element || ![attributeName length])
    {
      goto LABEL_24;
    }

    pid = 0;
    DoesAllowDeveloperAttributes = 0;
    if (AXUIElementGetPid(elementRef, &pid) == kAXErrorSuccess && pid >= 1)
    {
      DoesAllowDeveloperAttributes = AuditDoesAllowDeveloperAttributes();
    }

    _developerOnlyAttributes = [(XADInspectorManager *)self _developerOnlyAttributes];
    v20 = [_developerOnlyAttributes containsObject:v17];

    if (v20 && !DoesAllowDeveloperAttributes)
    {
      goto LABEL_11;
    }

    if ([v17 isEqualToString:@"Label"])
    {
      label = [axElement label];
LABEL_14:
      v21 = label;
      goto LABEL_15;
    }

    if ([v17 isEqualToString:@"Header"])
    {
      uiElement = [axElement uiElement];
      v21 = [uiElement objectWithAXAttribute:2026];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 count] == 1)
      {
        goto LABEL_29;
      }

LABEL_15:
      if ((DoesAllowDeveloperAttributes & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 length] >= 0x41)
        {
          v23 = [v21 substringToIndex:64];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v21 length] < 0x41)
          {
            goto LABEL_23;
          }

          v23 = [v21 attributedSubstringFromRange:{0, 64}];
        }

        v24 = v23;

        v21 = v24;
      }

LABEL_23:
      completionCopy[2](completionCopy, v21);

LABEL_24:
      goto LABEL_25;
    }

    if ([v17 isEqualToString:@"Hint"])
    {
      label = [axElement hint];
      goto LABEL_14;
    }

    if ([v17 isEqualToString:@"UserInputLabels"])
    {
      label = [axElement userInputLabels];
      goto LABEL_14;
    }

    if ([v17 isEqualToString:@"Traits"])
    {
      label = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [axElement traits]);
      goto LABEL_14;
    }

    if ([v17 isEqualToString:@"ElementClassName"])
    {
      v27 = elementRef;
      v28 = 5045;
    }

    else if ([v17 isEqualToString:@"ElementMemoryAddress"])
    {
      v27 = elementRef;
      v28 = 5046;
    }

    else
    {
      if (![v17 isEqualToString:@"ElementViewControllerClassName"])
      {
        if ([v17 isEqualToString:@"Identifier"])
        {
          uiElement2 = [axElement uiElement];
          v30 = [uiElement2 objectWithAXAttribute:5019];
          goto LABEL_45;
        }

        if (![v17 isEqualToString:@"TraitsHumanReadable"])
        {
          if ([v17 isEqualToString:@"Value"])
          {
            label = [axElement value];
            goto LABEL_14;
          }

          if ([v17 isEqualToString:_AXHumanReadableClassNameAttribute])
          {
            v32 = 0;
            v31 = AXUIElementGetPid([axElement elementRef], &v32);
            label = 0;
            if (v31 == kAXErrorSuccess && v32 >= 1)
            {
              if (AuditDoesAllowDeveloperAttributes())
              {
                label = sub_10000664C(elementRef, 0x13B5);
              }

              else
              {
                label = 0;
              }
            }

            goto LABEL_14;
          }

          if ([v17 isEqualToString:_AXHumanReadableDescriptionAttribute])
          {
            label = sub_100004CAC(axElement);
            goto LABEL_14;
          }

          if (![v17 isEqualToString:_AXHumanReadableRoleDescriptionAttribute])
          {
            if (![v17 isEqualToString:_AXHierarchyElementsAttribute])
            {
LABEL_11:
              v21 = 0;
              goto LABEL_15;
            }

            label = sub_1000050B0(axElement, 1, 1);
            goto LABEL_14;
          }

          v21 = sub_10000664C(elementRef, 0x836);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            firstObject = 0;
            goto LABEL_30;
          }

LABEL_29:
          firstObject = [v21 firstObject];
LABEL_30:

          v21 = firstObject;
          goto LABEL_15;
        }

        uiElement2 = sub_10000664C(elementRef, 0x836);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![uiElement2 count])
        {
          v30 = +[NSNull null];
          goto LABEL_45;
        }

LABEL_44:
        v30 = uiElement2;
LABEL_45:
        v21 = v30;
LABEL_47:

        goto LABEL_15;
      }

      v27 = elementRef;
      v28 = 5042;
    }

    uiElement2 = sub_10000664C(v27, v28);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = 0;
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  completionCopy[2](completionCopy, 0);
LABEL_25:
}

- (void)setTargetPid:(int)pid
{
  self->_targetPid = pid;
  [(XADInspectorManager *)self setAppMatchingTargetPid:0];
  if ([(XADInspectorManager *)self targetPid])
  {
    AXAuditCurrentApplications();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = AXAuditPidForElement();
          if ([(XADInspectorManager *)self targetPid]== v10)
          {
            [(XADInspectorManager *)self setAppMatchingTargetPid:v9];
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (id)frontmostAppForTargetPid
{
  appMatchingTargetPid = [(XADInspectorManager *)self appMatchingTargetPid];

  if (appMatchingTargetPid)
  {
    appMatchingTargetPid2 = [(XADInspectorManager *)self appMatchingTargetPid];
  }

  else
  {
    v5 = AXAuditCurrentApplications();
    appMatchingTargetPid2 = [v5 firstObject];
  }

  return appMatchingTargetPid2;
}

- (id)fetchSpecialElement:(int64_t)element
{
  if (element == 1)
  {
    frontmostAppForTargetPid = [(XADInspectorManager *)self frontmostAppForTargetPid];
    v5 = [(XADInspectorManager *)self lastElementInHierarchy:frontmostAppForTargetPid];
    goto LABEL_5;
  }

  if (!element)
  {
    frontmostAppForTargetPid = [(XADInspectorManager *)self frontmostAppForTargetPid];
    v5 = [(XADInspectorManager *)self firstElementInHierarchy:frontmostAppForTargetPid];
LABEL_5:
    v6 = v5;

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = [(XADInspectorManager *)self _AXAuditElementFromAXElement:v6];

  return v7;
}

- (id)fetchElementAtNormalizedDeviceCoordinate:(CGPoint)coordinate
{
  y = coordinate.y;
  x = coordinate.x;
  v6 = +[NSDate date];
  lastFetchDateForDeviceCoodinate = [(XADInspectorManager *)self lastFetchDateForDeviceCoodinate];
  [v6 timeIntervalSinceDate:lastFetchDateForDeviceCoodinate];
  v9 = v8;

  lastFetchDateForDeviceCoodinate2 = [(XADInspectorManager *)self lastFetchDateForDeviceCoodinate];

  if (lastFetchDateForDeviceCoodinate2 && v9 < 0.1)
  {
    _mostRecentElementFetchedVisionOS = [(XADInspectorManager *)self _mostRecentElementFetchedVisionOS];
  }

  else
  {
    [(XADInspectorManager *)self setLastFetchDateForDeviceCoodinate:v6];
    v12 = +[AXElement systemWideElement];
    *v17 = x;
    *&v17[1] = y;
    v13 = [NSValue valueWithBytes:v17 objCType:"{CGPoint=dd}"];
    v14 = [v12 elementForAttribute:91701 parameter:v13];

    v15 = [(XADInspectorManager *)self _AXAuditElementFromAXElement:v14];
    [(XADInspectorManager *)self set_mostRecentElementFetchedVisionOS:v15];

    _mostRecentElementFetchedVisionOS = [(XADInspectorManager *)self _mostRecentElementFetchedVisionOS];
  }

  return _mostRecentElementFetchedVisionOS;
}

- (id)firstElementInHierarchy:(id)hierarchy
{
  v3 = [hierarchy elementForAttribute:3000];
  uiElement = [v3 uiElement];
  v5 = [uiElement BOOLWithAXAttribute:2046];

  if (v5)
  {
    v6 = [v3 elementForAttribute:3000];

    v3 = v6;
  }

  return v3;
}

- (id)lastElementInHierarchy:(id)hierarchy
{
  v3 = [hierarchy elementForAttribute:3016];
  uiElement = [v3 uiElement];
  v5 = [uiElement BOOLWithAXAttribute:2046];

  if (v5)
  {
    v6 = [v3 elementForAttribute:3016];

    v3 = v6;
  }

  return v3;
}

- (id)_nextElementNavigationInDirection:(int64_t)direction forElement:(id)element
{
  elementCopy = element;
  if (([elementCopy isAccessibilityOpaqueElementProvider] & 1) == 0)
  {
    v7 = sub_100005D8C(elementCopy, direction);
    if (v7)
    {
      firstObject = v7;
      goto LABEL_25;
    }
  }

  if (direction == 1)
  {
    [elementCopy nextElementsWithCount:1];
  }

  else
  {
    [elementCopy previousElementsWithCount:1];
  }
  frontmostAppForTargetPid = ;
  if ([frontmostAppForTargetPid count])
  {
    firstObject = [frontmostAppForTargetPid firstObject];
    if ([firstObject isAccessibilityOpaqueElementProvider])
    {
      v10 = [firstObject elementForAttribute:95226 parameter:@"AXAudit"];
      sub_10000443C(v10, 0);

      sub_10000443C(firstObject, 0);
      v11 = sub_100005D8C(firstObject, direction);

      firstObject = v11;
    }

    if (firstObject && ![firstObject isAccessibilityOpaqueElementProvider])
    {
      goto LABEL_24;
    }
  }

  else
  {
    firstObject = 0;
  }

  v12 = firstObject;
  firstObject = sub_100005D8C(elementCopy, direction);

  if (!firstObject)
  {
    if (([elementCopy isAccessibilityOpaqueElementProvider] & 1) != 0 || (sub_100005F18(elementCopy), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
    {
    }

    else
    {
      v14 = v13;
      firstObject = [(XADInspectorManager *)self _nextElementNavigationInDirection:direction forElement:v13];

      if (firstObject)
      {
        goto LABEL_25;
      }
    }

    frontmostAppForTargetPid = [(XADInspectorManager *)self frontmostAppForTargetPid];
    if (direction == 1)
    {
      [(XADInspectorManager *)self firstElementInHierarchy:frontmostAppForTargetPid];
    }

    else
    {
      [(XADInspectorManager *)self lastElementInHierarchy:frontmostAppForTargetPid];
    }
    firstObject = ;
  }

LABEL_24:

LABEL_25:

  return firstObject;
}

- (void)deviceDidGetTargeted
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[XADInspectorManager deviceDidGetTargeted]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
  }

  v3 = +[XADEventManager sharedManager];
  [v3 setDelegateForInspectorManager:self];

  v4 = +[AXAuditAssetManager shared];
  [v4 downloadAssetsIfNecessary];
}

- (void)updateAttributesIfElementIsValid
{
  _currentElement = [(XADInspectorManager *)self _currentElement];
  isValid = [_currentElement isValid];

  if (isValid)
  {
    delegate = [(XADInspectorManager *)self delegate];
    _auditInspectorFocuseObject = [(XADInspectorManager *)self _auditInspectorFocuseObject];
    [delegate inspectorManager:self inspectorElementPropertiesChanged:_auditInspectorFocuseObject];
  }
}

- (XADInspectorManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)_lastPoint
{
  x = self->__lastPoint.x;
  y = self->__lastPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end