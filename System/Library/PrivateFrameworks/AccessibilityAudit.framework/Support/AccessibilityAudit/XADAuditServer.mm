@interface XADAuditServer
- (BOOL)updateRunningApplications;
- (XADAuditServer)initWithTransport:(id)transport;
- (id)_currentMedusaApplications;
- (id)_deviceCaptureScreenshot;
- (id)_runningAXAuditAppForPid:(int)pid;
- (id)deviceCaptureScreenshot;
- (id)deviceElement:(id)element performAction:(id)action withValue:(id)value;
- (id)deviceElement:(id)element valueForAttribute:(id)attribute;
- (id)deviceElement:(id)element valueForParameterizedAttribute:(id)attribute withObject:(id)object;
- (id)deviceFetchElementAtNormalizedDeviceCoordinate:(id)coordinate;
- (id)deviceFetchResolvesElementsOnSimulator;
- (id)deviceFetchSpecialElement:(id)element;
- (id)deviceRunningApplications;
- (void)_appStateChanged:(id)changed;
- (void)_checkFrontmostAppPidChanged;
- (void)_handleLayoutChangedNotification;
- (void)_handleScreenChangedNotification;
- (void)connectionInterrupted;
- (void)deviceDidGetTargeted;
- (void)deviceInspectorFocusOnElement:(id)element;
- (void)deviceInspectorLockOnCurrentElement;
- (void)deviceInspectorMoveWithOptions:(id)options;
- (void)deviceInspectorPreviewOnElement:(id)element;
- (void)deviceInspectorSetMonitoredEventType:(id)type;
- (void)deviceInspectorShowVisuals:(id)visuals;
- (void)deviceSetAuditTargetPid:(id)pid;
- (void)didReceiveAccessibilityNotification:(int)notification;
- (void)eventManager:(id)manager eventToHighlightElement:(id)element;
- (void)eventManager:(id)manager eventToHighlightPoint:(CGPoint)point;
- (void)eventManager:(id)manager systemFocusDidMoveToElement:(id)element;
- (void)frontmostApplicationsDidChange;
- (void)highlightElement:(id)element;
- (void)highlightElements:(id)elements;
- (void)inspectorManager:(id)manager inspectorElementPropertiesChanged:(id)changed;
- (void)inspectorManager:(id)manager inspectorFocusDidChange:(id)change;
- (void)inspectorManager:(id)manager inspectorMonitoredEventTypeChanged:(unint64_t)changed;
- (void)resume;
@end

@implementation XADAuditServer

- (XADAuditServer)initWithTransport:(id)transport
{
  transportCopy = transport;
  v16.receiver = self;
  v16.super_class = XADAuditServer;
  v5 = [(XADAuditServer *)&v16 initWithTransport:transportCopy];
  if (v5)
  {
    v6 = +[XADEventManager sharedManager];
    [v6 setDelegate:v5];

    v7 = +[NSMutableDictionary dictionary];
    runningApplications = v5->_runningApplications;
    v5->_runningApplications = v7;

    v9 = objc_alloc_init(AXUpdateElementVisualsCoalescer);
    frontmostAppUpdateCoalescer = v5->__frontmostAppUpdateCoalescer;
    v5->__frontmostAppUpdateCoalescer = v9;

    [(AXUpdateElementVisualsCoalescer *)v5->__frontmostAppUpdateCoalescer setThreshold:1.0];
    objc_initWeak(&location, v5);
    v11 = v5->__frontmostAppUpdateCoalescer;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100008B68;
    v13[3] = &unk_1000189F0;
    objc_copyWeak(&v14, &location);
    [(AXUpdateElementVisualsCoalescer *)v11 setUpdateVisualsSequenceDidFinishHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)_appStateChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:SBApplicationStateDisplayIDKey];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"Unknown";
  }

  v8 = v7;

  v9 = v8;
  v43 = v8;
  v10 = SBSCopyLocalizedApplicationNameForDisplayIdentifier();
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"Unknown";
  }

  v13 = v12;

  v14 = SBApplicationStateProcessIDKey;
  v15 = [userInfo objectForKeyedSubscript:SBApplicationStateProcessIDKey];
  [v15 intValue];
  v16 = SBSCopyBundleInfoValueForKeyAndProcessID();
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"Unknown";
  }

  v44 = v18;

  v47[0] = @"name";
  name = [changedCopy name];

  v45 = name;
  if (name)
  {
    v20 = name;
  }

  else
  {
    v20 = @"Unknown";
  }

  v48[0] = v20;
  v47[1] = @"pid";
  v21 = [userInfo objectForKeyedSubscript:v14];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = @"Unknown";
  }

  v48[1] = v23;
  v47[2] = @"state";
  v24 = SBApplicationStateKey;
  v25 = [userInfo objectForKeyedSubscript:SBApplicationStateKey];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = @"Unknown";
  }

  v48[2] = v27;
  v47[3] = @"state_description";
  v42 = [userInfo objectForKeyedSubscript:v24];
  [v42 intValue];
  Description = SBApplicationStateGetDescription();
  if (Description)
  {
    v29 = Description;
  }

  else
  {
    v29 = @"Unknown";
  }

  v48[3] = v29;
  v47[4] = @"elevated_state";
  v30 = SBApplicationMostElevatedStateForProcessIDKey;
  v31 = [userInfo objectForKeyedSubscript:SBApplicationMostElevatedStateForProcessIDKey];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = @"Unknown";
  }

  v48[4] = v33;
  v47[5] = @"elevated_state_description";
  v34 = [userInfo objectForKeyedSubscript:v30];
  [v34 intValue];
  v35 = SBApplicationStateGetDescription();
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = @"Unknown";
  }

  v48[5] = v36;
  v48[6] = v9;
  v47[6] = @"displayID";
  v47[7] = @"mach_absolute_time";
  v37 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v48[7] = v37;
  v47[8] = @"timestamp";
  v38 = +[NSDate date];
  v48[8] = v38;
  v48[9] = v13;
  v47[9] = @"appName";
  v47[10] = @"execName";
  v48[10] = v44;
  v39 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:11];

  v40 = [DTXMessage messageWithSelector:"hostAppStateChanged:" objectArguments:v39, 0];

  connection = [(XADAuditServer *)self connection];
  [connection sendControlAsync:v40 replyHandler:0];
}

- (id)deviceCaptureScreenshot
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009184;
  v6[3] = &unk_100018B30;
  v3 = objc_opt_new();
  v7 = v3;
  selfCopy = self;
  dispatch_async(&_dispatch_main_q, v6);
  v4 = v3;

  return v3;
}

- (void)connectionInterrupted
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[XADAuditServer connectionInterrupted]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v3 = +[XADEventManager sharedManager];
  [v3 connectionInterrupted];

  v4 = +[XADInspectorManager sharedManager];
  [v4 connectionInterrupted];

  [(XADAuditServer *)self set_deviceActivelyTargeted:0];
  v5.receiver = self;
  v5.super_class = XADAuditServer;
  [(XADAuditServer *)&v5 connectionInterrupted];
}

- (id)_deviceCaptureScreenshot
{
  v2 = +[XADInspectorManager sharedManager];
  [v2 hideVisualsSynchronously];

  v3 = +[AXAuditPluginManager sharedManager];
  platformPlugin = [v3 platformPlugin];
  v5 = [platformPlugin screenshotInfoForTransportWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  return v5;
}

- (void)highlightElement:(id)element
{
  axElement = [element axElement];
  if (!axElement || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = +[XADDisplayManager sharedManager];
    [v3 setCursorStyle:4];
    [v3 setCursorFrameForElement:axElement];
  }
}

- (void)highlightElements:(id)elements
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  elementsCopy = elements;
  v4 = [elementsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(elementsCopy);
        }

        axElement = [*(*(&v10 + 1) + 8 * i) axElement];
        if (axElement)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_12;
          }
        }

        v9 = +[XADDisplayManager sharedManager];
        [v9 setCursorStyle:4];
        [v9 setCursorFrameForElement:axElement];
      }

      v5 = [elementsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)deviceInspectorFocusOnElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = XADAuditServer;
  [(XADAuditServer *)&v9 deviceInspectorFocusOnElement:elementCopy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009630;
  v6[3] = &unk_100018B30;
  v7 = elementCopy;
  selfCopy = self;
  v5 = elementCopy;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)deviceInspectorMoveWithOptions:(id)options
{
  optionsCopy = options;
  v4 = +[AXAuditObjectTransportManager sharedManager];
  v5 = [v4 objectForTransportDictionary:optionsCopy expectedClass:objc_opt_class()];

  v6 = [v5 objectForKey:kAXAuditInspectorMoveDirectionKey];
  integerValue = [v6 integerValue];

  v8 = [v5 objectForKey:kAXAuditInspectorMoveIncludeContainersKey];
  bOOLValue = [v8 BOOLValue];

  v10 = [v5 objectForKey:kAXAuditInspectorMoveAllowNonAXKey];
  bOOLValue2 = [v10 BOOLValue];

  v12 = +[XADInspectorManager sharedManager];
  dispatchQueue = [v12 dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009878;
  block[3] = &unk_100018B58;
  v16 = v12;
  v17 = integerValue;
  v18 = bOOLValue;
  v19 = bOOLValue2;
  v14 = v12;
  dispatch_async(dispatchQueue, block);
}

- (void)deviceInspectorPreviewOnElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = XADAuditServer;
  [(XADAuditServer *)&v9 deviceInspectorPreviewOnElement:elementCopy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009948;
  v6[3] = &unk_100018B30;
  v7 = elementCopy;
  selfCopy = self;
  v5 = elementCopy;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)deviceInspectorSetMonitoredEventType:(id)type
{
  if (type)
  {
    v5.receiver = self;
    v5.super_class = XADAuditServer;
    [(XADAuditServer *)&v5 deviceInspectorSetMonitoredEventType:?];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100009AA4;
    v4[3] = &unk_100018B80;
    v4[4] = self;
    v4[5] = [(XADAuditServer *)self monitoredEventType];
    dispatch_async(&_dispatch_main_q, v4);
  }
}

- (void)deviceInspectorShowVisuals:(id)visuals
{
  visualsCopy = visuals;
  v13.receiver = self;
  v13.super_class = XADAuditServer;
  [(XADAuditServer *)&v13 deviceInspectorShowVisuals:visualsCopy];
  v5 = +[XADInspectorManager sharedManager];
  dispatchQueue = [v5 dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009C04;
  block[3] = &unk_100018BA8;
  v10 = v5;
  selfCopy = self;
  v12 = visualsCopy;
  v7 = visualsCopy;
  v8 = v5;
  dispatch_async(dispatchQueue, block);
}

- (void)deviceInspectorLockOnCurrentElement
{
  v4.receiver = self;
  v4.super_class = XADAuditServer;
  [(XADAuditServer *)&v4 deviceInspectorLockOnCurrentElement];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009CE8;
  block[3] = &unk_1000188A0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)inspectorManager:(id)manager inspectorMonitoredEventTypeChanged:(unint64_t)changed
{
  v5 = [NSNumber numberWithUnsignedLongLong:changed];
  v7 = [DTXMessage messageWithSelector:"hostInspectorMonitoredEventTypeChanged:" objectArguments:v5, 0];

  connection = [(XADAuditServer *)self connection];
  [connection sendControlAsync:v7 replyHandler:0];
}

- (void)inspectorManager:(id)manager inspectorElementPropertiesChanged:(id)changed
{
  changedCopy = changed;
  v10 = +[AXAuditObjectTransportManager sharedManager];
  v6 = [v10 transportDictionaryForObject:changedCopy];

  if (v6)
  {
    v7 = [DTXMessage messageWithSelector:"hostInspectorCurrentElementPropertiesChanged:" objectArguments:v6, 0];
  }

  else
  {
    v8 = +[NSNull null];
    v7 = [DTXMessage messageWithSelector:"hostInspectorCurrentElementPropertiesChanged:" objectArguments:v8, 0];
  }

  connection = [(XADAuditServer *)self connection];
  [connection sendControlAsync:v7 replyHandler:0];
}

- (void)inspectorManager:(id)manager inspectorFocusDidChange:(id)change
{
  changeCopy = change;
  v10 = +[AXAuditObjectTransportManager sharedManager];
  v6 = [v10 transportDictionaryForObject:changeCopy];

  if (v6)
  {
    v7 = [DTXMessage messageWithSelector:"hostInspectorCurrentElementChanged:" objectArguments:v6, 0];
  }

  else
  {
    v8 = +[NSNull null];
    v7 = [DTXMessage messageWithSelector:"hostInspectorCurrentElementChanged:" objectArguments:v8, 0];
  }

  connection = [(XADAuditServer *)self connection];
  [connection sendControlAsync:v7 replyHandler:0];
}

- (id)deviceElement:(id)element performAction:(id)action withValue:(id)value
{
  elementCopy = element;
  actionCopy = action;
  if (actionCopy)
  {
    v9 = objc_opt_new();
    v10 = +[XADInspectorManager sharedManager];
    [v10 setDelegate:self];
    dispatchQueue = [v10 dispatchQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000A184;
    v17[3] = &unk_100018BD0;
    v18 = elementCopy;
    v19 = actionCopy;
    v20 = v10;
    v12 = v9;
    v21 = v12;
    v13 = v10;
    dispatch_async(dispatchQueue, v17);

    v14 = v21;
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)deviceElement:(id)element valueForAttribute:(id)attribute
{
  elementCopy = element;
  attributeCopy = attribute;
  if (attributeCopy)
  {
    v8 = objc_opt_new();
    v9 = +[XADInspectorManager sharedManager];
    [v9 setDelegate:self];
    dispatchQueue = [v9 dispatchQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000A404;
    v16[3] = &unk_100018BD0;
    v17 = elementCopy;
    v18 = attributeCopy;
    v19 = v9;
    v11 = v8;
    v20 = v11;
    v12 = v9;
    dispatch_async(dispatchQueue, v16);

    v13 = v20;
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)deviceElement:(id)element valueForParameterizedAttribute:(id)attribute withObject:(id)object
{
  elementCopy = element;
  attributeCopy = attribute;
  objectCopy = object;
  if (attributeCopy)
  {
    v11 = objc_opt_new();
    v12 = +[XADInspectorManager sharedManager];
    [v12 setDelegate:self];
    dispatchQueue = [v12 dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A71C;
    block[3] = &unk_100018C20;
    v20 = elementCopy;
    v21 = attributeCopy;
    v22 = v12;
    v23 = objectCopy;
    v14 = v11;
    v24 = v14;
    v15 = v12;
    dispatch_async(dispatchQueue, block);

    v16 = v24;
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)eventManager:(id)manager systemFocusDidMoveToElement:(id)element
{
  elementCopy = element;
  v6 = +[XADInspectorManager sharedManager];
  dispatchQueue = [v6 dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A9A4;
  block[3] = &unk_100018BA8;
  v11 = v6;
  selfCopy = self;
  v13 = elementCopy;
  v8 = elementCopy;
  v9 = v6;
  dispatch_async(dispatchQueue, block);
}

- (id)deviceFetchSpecialElement:(id)element
{
  elementCopy = element;
  v5 = objc_opt_new();
  v6 = +[XADInspectorManager sharedManager];
  integerValue = [elementCopy integerValue];

  [v6 setDelegate:self];
  dispatchQueue = [v6 dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AB10;
  block[3] = &unk_100018C48;
  v15 = v6;
  v17 = integerValue;
  v9 = v5;
  v16 = v9;
  v10 = v6;
  dispatch_async(dispatchQueue, block);

  v11 = v16;
  v12 = v9;

  return v9;
}

- (id)deviceFetchResolvesElementsOnSimulator
{
  v3 = +[XADInspectorManager sharedManager];
  [v3 setDelegate:self];
  v4 = objc_opt_new();
  dispatchQueue = [v3 dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AC90;
  block[3] = &unk_1000188A0;
  v6 = v4;
  v9 = v6;
  dispatch_async(dispatchQueue, block);

  return v6;
}

- (id)deviceFetchElementAtNormalizedDeviceCoordinate:(id)coordinate
{
  coordinateCopy = coordinate;
  v5 = +[XADInspectorManager sharedManager];
  [v5 setDelegate:self];
  v6 = objc_opt_new();
  [coordinateCopy CGPointValue];
  v8 = v7;
  v10 = v9;

  dispatchQueue = [v5 dispatchQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000AE24;
  v17[3] = &unk_100018C70;
  v18 = v5;
  v20 = v8;
  v21 = v10;
  v12 = v6;
  v19 = v12;
  v13 = v5;
  dispatch_async(dispatchQueue, v17);

  v14 = v19;
  v15 = v12;

  return v12;
}

- (void)resume
{
  v4.receiver = self;
  v4.super_class = XADAuditServer;
  [(XADAuditServer *)&v4 resume];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "[XADAuditServer resume]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  _frontmostAppUpdateCoalescer = [(XADAuditServer *)self _frontmostAppUpdateCoalescer];
  [_frontmostAppUpdateCoalescer notifyUpdateElementVisualsEventDidOccur];
}

- (void)deviceDidGetTargeted
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[XADAuditServer deviceDidGetTargeted]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v13.receiver = self;
  v13.super_class = XADAuditServer;
  [(XADAuditServer *)&v13 deviceDidGetTargeted];
  [(XADAuditServer *)self _checkFrontmostAppPidChanged];
  if (![(XADAuditServer *)self _deviceActivelyTargeted])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[XADAuditServer deviceDidGetTargeted]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: Device was not actively targeted, forcing update of frontmost apps", buf, 0xCu);
    }

    [(XADAuditServer *)self frontmostApplicationsDidChange];
  }

  v3 = +[XADInspectorManager sharedManager];
  dispatchQueue = [v3 dispatchQueue];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10000B184;
  v10 = &unk_100018B30;
  v11 = v3;
  selfCopy = self;
  v5 = v3;
  dispatch_async(dispatchQueue, &v7);

  v6 = [XADEventManager sharedManager:v7];
  [v6 deviceDidGetTargeted];

  [(XADAuditServer *)self set_deviceActivelyTargeted:1];
}

- (void)eventManager:(id)manager eventToHighlightElement:(id)element
{
  elementCopy = element;
  v6 = +[XADInspectorManager sharedManager];
  dispatchQueue = [v6 dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B39C;
  block[3] = &unk_100018BA8;
  v11 = v6;
  selfCopy = self;
  v13 = elementCopy;
  v8 = elementCopy;
  v9 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)eventManager:(id)manager eventToHighlightPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = +[XADInspectorManager sharedManager];
  dispatchQueue = [v7 dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B4DC;
  v10[3] = &unk_100018C70;
  v11 = v7;
  selfCopy = self;
  v13 = x;
  v14 = y;
  v9 = v7;
  dispatch_async(dispatchQueue, v10);
}

- (void)frontmostApplicationsDidChange
{
  v4 = [DTXMessage messageWithSelector:"hostDeviceRunningApplicationsDidChange" objectArguments:0];
  connection = [(XADAuditServer *)self connection];
  [connection sendControlAsync:v4 replyHandler:0];
}

- (BOOL)updateRunningApplications
{
  v3 = AXAuditCurrentApplications();
  v4 = +[NSMutableDictionary dictionary];
  runningApplications = [(XADAuditServer *)self runningApplications];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v11 = [NSNumber numberWithInt:AXAuditPidForElement()];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v7);
  }

  v12 = [v4 count];
  if (v12 == [runningApplications count])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v4;
    v32 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (!v32)
    {
      v29 = 0;
      goto LABEL_37;
    }

    v31 = *v48;
    v35 = v4;
    v37 = v5;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v48 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v47 + 1) + 8 * v13);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v42 = runningApplications;
        v40 = [v42 countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (!v40)
        {

LABEL_36:
          v29 = 1;
          goto LABEL_37;
        }

        v34 = v13;
        v36 = 0;
        v39 = *v44;
        do
        {
          for (j = 0; j != v40; j = j + 1)
          {
            if (*v44 != v39)
            {
              objc_enumerationMutation(v42);
            }

            v15 = *(*(&v43 + 1) + 8 * j);
            v16 = [obj objectForKeyedSubscript:{v41, v31}];
            [v16 updateCache:2001];
            intValue = [v41 intValue];
            intValue2 = [v15 intValue];
            v19 = [obj objectForKeyedSubscript:v41];
            label = [v19 label];

            v21 = [v42 objectForKeyedSubscript:v15];
            label2 = [v21 label];

            v23 = [label isEqualToString:label2];
            v24 = [(XADAuditServer *)self _runningAXAuditAppForPid:intValue];
            v25 = v24;
            if (v24)
            {
              if (!v23)
              {
                goto LABEL_25;
              }

              [v24 displayName];
              v27 = v26 = self;
              LOBYTE(v23) = [v27 isEqualToString:label];

              self = v26;
              v4 = v35;
            }

            if (intValue == intValue2 && (v23 & 1) != 0)
            {
              v28 = 0;
              v36 = 1;
              goto LABEL_26;
            }

LABEL_25:
            v28 = 1;
LABEL_26:

            v5 = v37;
            if (!v28)
            {
              goto LABEL_29;
            }
          }

          v40 = [v42 countByEnumeratingWithState:&v43 objects:v55 count:16];
        }

        while (v40);
LABEL_29:

        if ((v36 & 1) == 0)
        {
          goto LABEL_36;
        }

        v13 = v34 + 1;
      }

      while ((v34 + 1) != v32);
      v29 = 0;
      v32 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (!v32)
      {
LABEL_37:

        goto LABEL_38;
      }
    }
  }

  v29 = 1;
LABEL_38:
  [(XADAuditServer *)self setRunningApplications:v4, v31];

  return v29;
}

- (id)_runningAXAuditAppForPid:(int)pid
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10000BAD8;
  v13 = sub_10000BAE8;
  v14 = 0;
  runningAXAuditApplications = [(XADAuditServer *)self runningAXAuditApplications];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BAF0;
  v7[3] = &unk_100018C98;
  pidCopy = pid;
  v7[4] = &v9;
  [runningAXAuditApplications enumerateObjectsUsingBlock:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (id)deviceRunningApplications
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[XADAuditServer deviceRunningApplications]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = sub_10000BAD8;
  v31 = sub_10000BAE8;
  v32 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  _currentMedusaApplications = [(XADAuditServer *)self _currentMedusaApplications];
  v3 = [_currentMedusaApplications countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = *v24;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(_currentMedusaApplications);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        bundleId = [v6 bundleId];
        v8 = [bundleId isEqualToString:@"com.apple.springboard"];

        if ((v8 & 1) == 0)
        {
          v9 = AXAuditPidForElement();
          v10 = objc_opt_new();
          [v10 setPid:v9];
          [v10 setPsnObj:0];
          bundleId2 = [v6 bundleId];
          [v10 setBundleIdentifier:bundleId2];

          label = [v6 label];
          [v10 setDisplayName:label];

          bundleIdentifier = [v10 bundleIdentifier];
          LOBYTE(bundleId2) = [bundleIdentifier length] == 0;

          if ((bundleId2 & 1) == 0)
          {
            bundleIdentifier2 = [v10 bundleIdentifier];
            v15 = [UIImage _applicationIconImageForBundleIdentifier:bundleIdentifier2 format:0];

            if (v15)
            {
              v34.width = 14.0;
              v34.height = 14.0;
              UIGraphicsBeginImageContextWithOptions(v34, 0, 0.0);
              [v15 drawInRect:{0.0, 0.0, 14.0, 14.0}];
              v16 = UIGraphicsGetImageFromCurrentImageContext();
              UIGraphicsEndImageContext();
              [v10 setIcon:v16];
            }
          }

          [*(*(&buf + 1) + 40) addObject:v10];
        }
      }

      v3 = [_currentMedusaApplications countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v3);
  }

  [(XADAuditServer *)self setRunningAXAuditApplications:*(*(&buf + 1) + 40)];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BF68;
  block[3] = &unk_100018CC0;
  p_buf = &buf;
  v17 = objc_opt_new();
  v21 = v17;
  dispatch_async(&_dispatch_main_q, block);

  _Block_object_dispose(&buf, 8);

  return v17;
}

- (id)_currentMedusaApplications
{
  runningApplications = [(XADAuditServer *)self runningApplications];
  allValues = [runningApplications allValues];
  v4 = [allValues ax_filteredArrayUsingBlock:&stru_100018D00];

  return v4;
}

- (void)deviceSetAuditTargetPid:(id)pid
{
  v10.receiver = self;
  v10.super_class = XADAuditServer;
  pidCopy = pid;
  [(XADAuditServer *)&v10 deviceSetAuditTargetPid:pidCopy];
  v4 = [XADInspectorManager sharedManager:v10.receiver];
  integerValue = [pidCopy integerValue];

  [v4 setTargetPid:integerValue];
  frontmostAppForTargetPid = [v4 frontmostAppForTargetPid];
  v7 = sub_10000C240(frontmostAppForTargetPid);
  if (v7)
  {
    v8 = +[XADEventManager sharedManager];
    snarfingEvents = [v8 snarfingEvents];

    if ((snarfingEvents & 1) == 0)
    {
      if ([v4 showVisuals])
      {
        [v4 focusOnAXElement:v7];
      }
    }
  }
}

- (void)_checkFrontmostAppPidChanged
{
  connection = [(XADAuditServer *)self connection];
  if (connection && (v4 = connection, v5 = [(XADAuditServer *)self hostAPIVersion], v4, v5))
  {
    if ([(XADAuditServer *)self updateRunningApplications]&& [(XADAuditServer *)self hostAPIVersion]>= 4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v14 = "[XADAuditServer _checkFrontmostAppPidChanged]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: running app change detected", buf, 0xCu);
      }

      [(XADAuditServer *)self frontmostApplicationsDidChange];
    }

    _currentMedusaApplications = [(XADAuditServer *)self _currentMedusaApplications];
    v7 = [_currentMedusaApplications count];

    if (v7 == 1)
    {
      _currentMedusaApplications2 = [(XADAuditServer *)self _currentMedusaApplications];
      firstObject = [_currentMedusaApplications2 firstObject];

      v10 = [NSNumber numberWithInt:AXAuditPidForElement()];
    }

    else
    {
      v10 = &off_1000199C0;
    }

    v11 = [DTXMessage messageWithSelector:"hostDeviceFrontmostAppPidDidChange:" objectArguments:v10, 0];
    connection2 = [(XADAuditServer *)self connection];
    [connection2 sendControlAsync:v11 replyHandler:0];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000D574(self);
  }
}

- (void)_handleLayoutChangedNotification
{
  _frontmostAppUpdateCoalescer = [(XADAuditServer *)self _frontmostAppUpdateCoalescer];
  [_frontmostAppUpdateCoalescer notifyUpdateElementVisualsEventDidOccur];

  v3 = +[XADInspectorManager sharedManager];
  dispatchQueue = [v3 dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C54C;
  block[3] = &unk_1000188A0;
  v7 = v3;
  v5 = v3;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleScreenChangedNotification
{
  _frontmostAppUpdateCoalescer = [(XADAuditServer *)self _frontmostAppUpdateCoalescer];
  [_frontmostAppUpdateCoalescer notifyUpdateElementVisualsEventDidOccur];

  if ([(XADAuditServer *)self _screenChangeHandleAttempts]<= 9)
  {
    v4 = +[XADInspectorManager sharedManager];
    frontmostAppForTargetPid = [v4 frontmostAppForTargetPid];
    v6 = sub_10000C240(frontmostAppForTargetPid);
    if (v6)
    {
      v7 = +[XADEventManager sharedManager];
      snarfingEvents = [v7 snarfingEvents];

      if ((snarfingEvents & 1) == 0)
      {
        if ([v4 showVisuals])
        {
          [v4 focusOnAXElement:v6];
        }
      }

      [(XADAuditServer *)self set_handlingScreenChanged:0];
    }

    else
    {
      v9 = dispatch_time(0, 100000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000C69C;
      block[3] = &unk_1000188A0;
      block[4] = self;
      dispatch_after(v9, &_dispatch_main_q, block);
    }
  }
}

- (void)didReceiveAccessibilityNotification:(int)notification
{
  if (notification == 3031)
  {
    _frontmostAppUpdateCoalescer = [(XADAuditServer *)self _frontmostAppUpdateCoalescer];
    [_frontmostAppUpdateCoalescer notifyUpdateElementVisualsEventDidOccur];
  }

  else if (notification == 1001)
  {

    [(XADAuditServer *)self _handleLayoutChangedNotification];
  }

  else if (notification == 1000 && ![(XADAuditServer *)self _handlingScreenChanged])
  {
    v4 = +[XADEventManager sharedManager];
    snarfingEvents = [v4 snarfingEvents];

    if ((snarfingEvents & 1) == 0)
    {
      [(XADAuditServer *)self set_handlingScreenChanged:1];
      [(XADAuditServer *)self set_screenChangeHandleAttempts:0];
      v6 = dispatch_time(0, 100000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000C844;
      block[3] = &unk_1000188A0;
      block[4] = self;
      dispatch_after(v6, &_dispatch_main_q, block);
    }
  }
}

@end