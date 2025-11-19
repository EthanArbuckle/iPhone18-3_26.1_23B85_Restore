@interface XADInspectorManager
+ (id)sharedManager;
- (BOOL)_elementTokenIsSumulatorToken:(id)a3;
- (BOOL)allowDeveloperActionsOnElement:(id)a3;
- (CGPoint)_lastPoint;
- (XADInspectorManager)init;
- (XADInspectorManagerDelegate)delegate;
- (id)_AXAuditElementFromAXElement:(id)a3;
- (id)_actionSection;
- (id)_auditInspectorFocuseObject;
- (id)_basicSection;
- (id)_elementDataFromSimulatorToken:(id)a3;
- (id)_elementSection;
- (id)_generateSpokenDescriptionForElement:(id)a3;
- (id)_hierarchySection;
- (id)_humanReadableStringForAction:(int)a3;
- (id)_inspectorSections;
- (id)_internalAttributes;
- (id)_nextElementNavigationInDirection:(int64_t)a3 forElement:(id)a4;
- (id)fetchElementAtNormalizedDeviceCoordinate:(CGPoint)a3;
- (id)fetchSpecialElement:(int64_t)a3;
- (id)firstElementInHierarchy:(id)a3;
- (id)frontmostAppForTargetPid;
- (id)lastElementInHierarchy:(id)a3;
- (void)_addElementToHistory:(id)a3;
- (void)_informDelegateOfInspectorFocus;
- (void)_initializeElementVisualsCoalescer;
- (void)_setCurrentElement:(id)a3;
- (void)_updateElementHighlight;
- (void)connectionInterrupted;
- (void)deviceDidGetTargeted;
- (void)element:(id)a3 performAction:(id)a4 withValue:(id)a5 completion:(id)a6;
- (void)element:(id)a3 valueForAttribute:(id)a4 completion:(id)a5;
- (void)focusOnAXElement:(id)a3;
- (void)focusOnAXElement:(id)a3 scrollToVisible:(BOOL)a4;
- (void)focusOnElement:(id)a3;
- (void)focusOnElementAtPoint:(CGPoint)a3;
- (void)hideVisualsSynchronously;
- (void)previewOnElement:(id)a3;
- (void)setMonitoredEventType:(unint64_t)a3;
- (void)setShowVisuals:(BOOL)a3;
- (void)setTargetPid:(int)a3;
- (void)updateAttributesIfElementIsValid;
@end

@implementation XADInspectorManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B78;
  block[3] = &unk_100018878;
  block[4] = a1;
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

- (void)setMonitoredEventType:(unint64_t)a3
{
  v11 = +[XADDisplayManager sharedManager];
  self->_monitoredEventType = a3;
  v5 = +[XADEventManager sharedManager];
  v6 = v5;
  if (a3 == 2)
  {
    v7 = 1;
    [v5 setSnarfingEvents:1];

    v8 = +[XADEventManager sharedManager];
    v6 = v8;
    v9 = 1;
    goto LABEL_5;
  }

  if (a3 == 1)
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
  v10 = [(XADInspectorManager *)self delegate];
  [v10 inspectorManager:self inspectorMonitoredEventTypeChanged:a3];
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

- (void)setShowVisuals:(BOOL)a3
{
  self->_showVisuals = a3;
  v5 = [(XADInspectorManager *)self dispatchQueue];
  v6 = v5;
  if (a3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002F08;
    block[3] = &unk_1000188A0;
    block[4] = self;
    dispatch_async(v5, block);
  }

  else
  {
    dispatch_async(v5, &stru_100018980);
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
  v5 = [v3 title];
  v6 = [(XADInspectorManager *)self addAttribute:v4 toSection:v3 withPrefix:@"Attribute" performsAction:0 settable:0 humanReadable:v5 valueType:2 overrideIsInternalWithValue:0];

  [v6 setDisplayAsTree:1];

  return v3;
}

- (id)_humanReadableStringForAction:(int)a3
{
  if ((a3 - 2004) > 0x10)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_100018A10[a3 - 2004];
  }

  return _AXAuditAttributeWithPrefixLocString(v3, @"Action");
}

- (id)_actionSection
{
  v3 = [[AXAuditInspectorSection alloc] initWithType:0];
  v4 = [(XADInspectorManager *)self _currentElement];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100003924;
  v28[3] = &unk_1000189C8;
  v22 = self;
  v28[4] = self;
  v23 = v3;
  v29 = v23;
  v5 = objc_retainBlock(v28);
  v6 = v5;
  if (v4)
  {
    (v5[2])(v5, 2010);
  }

  if (([v4 supportsAction:2004] & 1) != 0 || (objc_msgSend(v4, "supportsAction:", 2005) & 1) != 0 || (v7 = objc_msgSend(v4, "traits"), (kAXAdjustableTrait & ~v7) == 0))
  {
    v6[2](v6, 2004);
    v6[2](v6, 2005);
  }

  if (([v4 supportsAction:2007] & 1) != 0 || objc_msgSend(v4, "supportsAction:", 2006))
  {
    v6[2](v6, 2007);
    v6[2](v6, 2006);
  }

  if (([v4 supportsAction:2009] & 1) != 0 || objc_msgSend(v4, "supportsAction:", 2008))
  {
    v6[2](v6, 2009);
    v6[2](v6, 2008);
  }

  if (([v4 supportsAction:2019] & 1) != 0 || objc_msgSend(v4, "supportsAction:", 2020))
  {
    v6[2](v6, 2019);
    v6[2](v6, 2020);
  }

  v20 = v6;
  v21 = v4;
  v8 = [v4 customActions];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
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
          objc_enumerationMutation(v8);
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
          v17 = [(XADInspectorManager *)v22 addAttribute:v16 toSection:v23 withPrefix:@"Action" performsAction:1 settable:0 humanReadable:v14 valueType:1 overrideIsInternalWithValue:&__kCFBooleanFalse];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v10);
  }

  v18 = v23;

  return v23;
}

- (id)_inspectorSections
{
  v3 = [(XADInspectorManager *)self _basicSection];
  v4 = [(XADInspectorManager *)self _actionSection];
  v5 = [(XADInspectorManager *)self _elementSection];
  v6 = [(XADInspectorManager *)self _hierarchySection];
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)_AXAuditElementFromAXElement:(id)a3
{
  v3 = a3;
  v4 = [v3 uiElement];
  v5 = [v4 objectWithAXAttribute:5019];

  v6 = [AXAuditElement auditElementWithElement:v3 identifier:v5];

  return v6;
}

- (id)_auditInspectorFocuseObject
{
  v3 = [(XADInspectorManager *)self _currentElement];
  v4 = objc_opt_new();
  pid = 0;
  v5 = @"NO";
  if (AXUIElementGetPid([v3 elementRef], &pid) == kAXErrorSuccess && pid >= 1 && AuditDoesAllowDeveloperAttributes())
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

  v6 = [(XADInspectorManager *)self _AXAuditElementFromAXElement:v3];
  [v4 setElement:v6];
  v7 = [(XADInspectorManager *)self _generateSpokenDescriptionForElement:v3];
  [v4 setCaptionText:v7];
  [v4 setSpokenDescription:v7];
  v8 = [(XADInspectorManager *)self _inspectorSections];
  [v4 setInspectorSections:v8];

  return v4;
}

- (id)_generateSpokenDescriptionForElement:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [v3 label];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v3 label];
    [v4 addObject:v7];
  }

  v8 = [v3 value];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [v3 value];
    [v4 addObject:v10];
  }

  v11 = sub_10000664C([v3 elementRef], 0x836);
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

  v17 = [v3 hint];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [v3 hint];
    [v4 addObject:v19];
  }

  v20 = [v4 componentsJoinedByString:{@", "}];

  return v20;
}

- (void)_informDelegateOfInspectorFocus
{
  v4 = [(XADInspectorManager *)self delegate];
  v3 = [(XADInspectorManager *)self _auditInspectorFocuseObject];
  [v4 inspectorManager:self inspectorFocusDidChange:v3];
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
  v3 = [(XADInspectorManager *)self _currentElement];
  [v4 setCursorFrameForElement:v3];
}

- (void)_addElementToHistory:(id)a3
{
  v6 = a3;
  v4 = [(XADInspectorManager *)self _focusedElementHistory];
  if (!v4)
  {
    v5 = objc_opt_new();
    [(XADInspectorManager *)self set_focusedElementHistory:v5];

    v4 = [(XADInspectorManager *)self _focusedElementHistory];
  }

  if ([v4 containsObject:v6])
  {
    [v4 removeObject:v6];
  }

  if (v6)
  {
    [v4 addObject:v6];
  }

  if ([v4 count] >= 0x15)
  {
    do
    {
      [v4 removeObjectAtIndex:0];
    }

    while ([v4 count] > 0x14);
  }
}

- (void)_setCurrentElement:(id)a3
{
  v4 = a3;
  sub_10000443C(self->__currentElement, 0);
  [(XADInspectorManager *)self _addElementToHistory:v4];
  currentElement = self->__currentElement;
  self->__currentElement = v4;
  v6 = v4;

  sub_10000443C(self->__currentElement, 1);
}

- (BOOL)_elementTokenIsSumulatorToken:(id)a3
{
  v3 = [a3 objectForKey:@"TokenType"];
  v4 = [v3 isEqualToString:@"AXElementTokenSimulator"];

  return v4;
}

- (id)_elementDataFromSimulatorToken:(id)a3
{
  v3 = [a3 objectForKey:@"ElementData"];
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

- (void)focusOnAXElement:(id)a3 scrollToVisible:(BOOL)a4
{
  v4 = a4;
  [(XADInspectorManager *)self _setCurrentElement:a3];
  if (v4)
  {
    v6 = [(XADInspectorManager *)self _currentElement];
    [v6 scrollToVisible];
  }

  [(XADInspectorManager *)self _updateElementHighlight];

  [(XADInspectorManager *)self _informDelegateOfInspectorFocus];
}

- (void)focusOnAXElement:(id)a3
{
  v9 = a3;
  if ([(XADInspectorManager *)self targetPid])
  {
    v4 = [(XADInspectorManager *)self targetPid];
    v5 = v4 != [v9 pid];
  }

  else
  {
    v5 = 0;
  }

  v6 = v9;
  if (v9 && !v5)
  {
    v7 = [(XADInspectorManager *)self _currentElement];
    v8 = [v9 isEqual:v7];

    v6 = v9;
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_7:
    [(XADInspectorManager *)self focusOnAXElement:v9 scrollToVisible:1];
    v6 = v9;
  }

LABEL_8:
}

- (void)focusOnElementAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(XADInspectorManager *)self _lastPoint];
  if (x != v7 || y != v6)
  {
    v16 = [AXUIElement uiElementAtCoordinate:x, y];
    if (![(XADInspectorManager *)self targetPid])
    {
      goto LABEL_14;
    }

    v9 = [AXUIElement uiApplicationAtCoordinate:x, y];
    v10 = [(XADInspectorManager *)self frontmostAppForTargetPid];
    v11 = [v10 uiElement];

    LODWORD(v10) = [v9 isEqual:v11];
    if (v10)
    {
LABEL_14:
      v12 = [(XADInspectorManager *)self _currentElement];
      v13 = [v12 uiElement];
      v14 = [v16 isEqual:v13];

      if ((v14 & 1) == 0)
      {
        v15 = [AXElement elementWithUIElement:v16];
        [(XADInspectorManager *)self focusOnAXElement:v15 scrollToVisible:0];
      }
    }
  }
}

- (void)focusOnElement:(id)a3
{
  v5 = [a3 axElement];
  [(XADInspectorManager *)self focusOnAXElement:v5];

  if (a3)
  {

    [(XADInspectorManager *)self _updateElementHighlight];
  }
}

- (void)previewOnElement:(id)a3
{
  v6 = a3;
  v4 = +[XADDisplayManager sharedManager];
  if (v6)
  {
    [v4 setCursorStyle:4];
    v5 = [v6 axElement];
    [v4 setCursorFrameForElement:v5];
  }

  else
  {
    [(XADInspectorManager *)self _updateElementHighlight];
  }
}

- (BOOL)allowDeveloperActionsOnElement:(id)a3
{
  pid = 0;
  v3 = AXUIElementGetPid([a3 elementRef], &pid);
  result = 0;
  if (v3 == kAXErrorSuccess)
  {
    return AuditDoesAllowDeveloperAttributes();
  }

  return result;
}

- (void)element:(id)a3 performAction:(id)a4 withValue:(id)a5 completion:(id)a6
{
  v15 = a6;
  v9 = a4;
  v10 = [a3 axElement];
  v11 = [v9 attributeName];

  if (v10 && [(XADInspectorManager *)self allowDeveloperActionsOnElement:v10])
  {
    if (![v11 rangeOfString:@"AXAction-"])
    {
      v12 = [v11 length];
      if (v12 == [@"AXAction-" length] + 4)
      {
        v13 = [v11 substringFromIndex:{objc_msgSend(@"AXAction-", "length")}];
        if ([v13 integerValue] - 2000 <= 0x1F40)
        {
          [v10 performAction:?];
        }

        goto LABEL_10;
      }
    }

    if (![v11 rangeOfString:@"AXCustomAction-"])
    {
      v14 = [v11 length];
      if (v14 > [@"AXCustomAction-" length])
      {
        v13 = [v11 substringFromIndex:{objc_msgSend(@"AXCustomAction-", "length")}];
        [v10 performAction:2021 withValue:v13];
LABEL_10:
      }
    }
  }

  v15[2]();
}

- (void)element:(id)a3 valueForAttribute:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 axElement];
  v11 = [(XADInspectorManager *)self _currentElement];
  v12 = [v10 isEqual:v11];

  if ((v12 & 1) != 0 || (-[XADInspectorManager _focusedElementHistory](self, "_focusedElementHistory"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:v10], v13, !v14))
  {
    v15 = [v10 elementRef];
    v16 = [v8 attributeName];
    v17 = v16;
    if (!a3 || ![v16 length])
    {
      goto LABEL_24;
    }

    pid = 0;
    DoesAllowDeveloperAttributes = 0;
    if (AXUIElementGetPid(v15, &pid) == kAXErrorSuccess && pid >= 1)
    {
      DoesAllowDeveloperAttributes = AuditDoesAllowDeveloperAttributes();
    }

    v19 = [(XADInspectorManager *)self _developerOnlyAttributes];
    v20 = [v19 containsObject:v17];

    if (v20 && !DoesAllowDeveloperAttributes)
    {
      goto LABEL_11;
    }

    if ([v17 isEqualToString:@"Label"])
    {
      v22 = [v10 label];
LABEL_14:
      v21 = v22;
      goto LABEL_15;
    }

    if ([v17 isEqualToString:@"Header"])
    {
      v25 = [v10 uiElement];
      v21 = [v25 objectWithAXAttribute:2026];

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
      v9[2](v9, v21);

LABEL_24:
      goto LABEL_25;
    }

    if ([v17 isEqualToString:@"Hint"])
    {
      v22 = [v10 hint];
      goto LABEL_14;
    }

    if ([v17 isEqualToString:@"UserInputLabels"])
    {
      v22 = [v10 userInputLabels];
      goto LABEL_14;
    }

    if ([v17 isEqualToString:@"Traits"])
    {
      v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 traits]);
      goto LABEL_14;
    }

    if ([v17 isEqualToString:@"ElementClassName"])
    {
      v27 = v15;
      v28 = 5045;
    }

    else if ([v17 isEqualToString:@"ElementMemoryAddress"])
    {
      v27 = v15;
      v28 = 5046;
    }

    else
    {
      if (![v17 isEqualToString:@"ElementViewControllerClassName"])
      {
        if ([v17 isEqualToString:@"Identifier"])
        {
          v29 = [v10 uiElement];
          v30 = [v29 objectWithAXAttribute:5019];
          goto LABEL_45;
        }

        if (![v17 isEqualToString:@"TraitsHumanReadable"])
        {
          if ([v17 isEqualToString:@"Value"])
          {
            v22 = [v10 value];
            goto LABEL_14;
          }

          if ([v17 isEqualToString:_AXHumanReadableClassNameAttribute])
          {
            v32 = 0;
            v31 = AXUIElementGetPid([v10 elementRef], &v32);
            v22 = 0;
            if (v31 == kAXErrorSuccess && v32 >= 1)
            {
              if (AuditDoesAllowDeveloperAttributes())
              {
                v22 = sub_10000664C(v15, 0x13B5);
              }

              else
              {
                v22 = 0;
              }
            }

            goto LABEL_14;
          }

          if ([v17 isEqualToString:_AXHumanReadableDescriptionAttribute])
          {
            v22 = sub_100004CAC(v10);
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

            v22 = sub_1000050B0(v10, 1, 1);
            goto LABEL_14;
          }

          v21 = sub_10000664C(v15, 0x836);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v26 = 0;
            goto LABEL_30;
          }

LABEL_29:
          v26 = [v21 firstObject];
LABEL_30:

          v21 = v26;
          goto LABEL_15;
        }

        v29 = sub_10000664C(v15, 0x836);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v29 count])
        {
          v30 = +[NSNull null];
          goto LABEL_45;
        }

LABEL_44:
        v30 = v29;
LABEL_45:
        v21 = v30;
LABEL_47:

        goto LABEL_15;
      }

      v27 = v15;
      v28 = 5042;
    }

    v29 = sub_10000664C(v27, v28);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = 0;
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v9[2](v9, 0);
LABEL_25:
}

- (void)setTargetPid:(int)a3
{
  self->_targetPid = a3;
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
  v3 = [(XADInspectorManager *)self appMatchingTargetPid];

  if (v3)
  {
    v4 = [(XADInspectorManager *)self appMatchingTargetPid];
  }

  else
  {
    v5 = AXAuditCurrentApplications();
    v4 = [v5 firstObject];
  }

  return v4;
}

- (id)fetchSpecialElement:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(XADInspectorManager *)self frontmostAppForTargetPid];
    v5 = [(XADInspectorManager *)self lastElementInHierarchy:v4];
    goto LABEL_5;
  }

  if (!a3)
  {
    v4 = [(XADInspectorManager *)self frontmostAppForTargetPid];
    v5 = [(XADInspectorManager *)self firstElementInHierarchy:v4];
LABEL_5:
    v6 = v5;

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = [(XADInspectorManager *)self _AXAuditElementFromAXElement:v6];

  return v7;
}

- (id)fetchElementAtNormalizedDeviceCoordinate:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[NSDate date];
  v7 = [(XADInspectorManager *)self lastFetchDateForDeviceCoodinate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = [(XADInspectorManager *)self lastFetchDateForDeviceCoodinate];

  if (v10 && v9 < 0.1)
  {
    v11 = [(XADInspectorManager *)self _mostRecentElementFetchedVisionOS];
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

    v11 = [(XADInspectorManager *)self _mostRecentElementFetchedVisionOS];
  }

  return v11;
}

- (id)firstElementInHierarchy:(id)a3
{
  v3 = [a3 elementForAttribute:3000];
  v4 = [v3 uiElement];
  v5 = [v4 BOOLWithAXAttribute:2046];

  if (v5)
  {
    v6 = [v3 elementForAttribute:3000];

    v3 = v6;
  }

  return v3;
}

- (id)lastElementInHierarchy:(id)a3
{
  v3 = [a3 elementForAttribute:3016];
  v4 = [v3 uiElement];
  v5 = [v4 BOOLWithAXAttribute:2046];

  if (v5)
  {
    v6 = [v3 elementForAttribute:3016];

    v3 = v6;
  }

  return v3;
}

- (id)_nextElementNavigationInDirection:(int64_t)a3 forElement:(id)a4
{
  v6 = a4;
  if (([v6 isAccessibilityOpaqueElementProvider] & 1) == 0)
  {
    v7 = sub_100005D8C(v6, a3);
    if (v7)
    {
      v8 = v7;
      goto LABEL_25;
    }
  }

  if (a3 == 1)
  {
    [v6 nextElementsWithCount:1];
  }

  else
  {
    [v6 previousElementsWithCount:1];
  }
  v9 = ;
  if ([v9 count])
  {
    v8 = [v9 firstObject];
    if ([v8 isAccessibilityOpaqueElementProvider])
    {
      v10 = [v8 elementForAttribute:95226 parameter:@"AXAudit"];
      sub_10000443C(v10, 0);

      sub_10000443C(v8, 0);
      v11 = sub_100005D8C(v8, a3);

      v8 = v11;
    }

    if (v8 && ![v8 isAccessibilityOpaqueElementProvider])
    {
      goto LABEL_24;
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = v8;
  v8 = sub_100005D8C(v6, a3);

  if (!v8)
  {
    if (([v6 isAccessibilityOpaqueElementProvider] & 1) != 0 || (sub_100005F18(v6), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
    {
    }

    else
    {
      v14 = v13;
      v8 = [(XADInspectorManager *)self _nextElementNavigationInDirection:a3 forElement:v13];

      if (v8)
      {
        goto LABEL_25;
      }
    }

    v9 = [(XADInspectorManager *)self frontmostAppForTargetPid];
    if (a3 == 1)
    {
      [(XADInspectorManager *)self firstElementInHierarchy:v9];
    }

    else
    {
      [(XADInspectorManager *)self lastElementInHierarchy:v9];
    }
    v8 = ;
  }

LABEL_24:

LABEL_25:

  return v8;
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
  v3 = [(XADInspectorManager *)self _currentElement];
  v4 = [v3 isValid];

  if (v4)
  {
    v6 = [(XADInspectorManager *)self delegate];
    v5 = [(XADInspectorManager *)self _auditInspectorFocuseObject];
    [v6 inspectorManager:self inspectorElementPropertiesChanged:v5];
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