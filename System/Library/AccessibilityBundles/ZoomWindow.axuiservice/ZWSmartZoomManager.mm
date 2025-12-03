@interface ZWSmartZoomManager
- (BOOL)setNativeFocusOnBestElementNearRect:(CGRect)rect;
- (CGRect)focusRect;
- (ZWSmartZoomDelegate)delegate;
- (id)_elementForFocus;
- (void)_accessibilitySystemServerDied;
- (void)_handleFirstResponderChangedNotification;
- (void)_handleNativeFocusItemChangedNotification:(void *)notification;
- (void)_handleUpdateElementVisualsNotification;
- (void)_initializeAccessibility;
- (void)_registerForAccessibilityRuntimeNotifications;
- (void)_speakFocusedElement;
- (void)_unregisterForAccessibilityRuntimeNotifications;
- (void)_updateApplicationAccessibility:(BOOL)accessibility;
- (void)dealloc;
- (void)disableSmartZoom;
- (void)enableSmartZoom;
- (void)speakContent;
@end

@implementation ZWSmartZoomManager

- (void)dealloc
{
  [(ZWSmartZoomManager *)self disableSmartZoom];
  if ([(ZWSmartZoomManager *)self accessibilityRuntimeObserver])
  {
    CFRelease([(ZWSmartZoomManager *)self accessibilityRuntimeObserver]);
    [(ZWSmartZoomManager *)self setAccessibilityRuntimeObserver:0];
  }

  v3.receiver = self;
  v3.super_class = ZWSmartZoomManager;
  [(ZWSmartZoomManager *)&v3 dealloc];
}

- (void)enableSmartZoom
{
  if (![(ZWSmartZoomManager *)self isEnabled])
  {
    [(ZWSmartZoomManager *)self _initializeAccessibility];
    [(ZWSmartZoomManager *)self _registerForAccessibilityRuntimeNotifications];

    [(ZWSmartZoomManager *)self setEnabled:1];
  }
}

- (void)disableSmartZoom
{
  if ([(ZWSmartZoomManager *)self isEnabled])
  {
    [(ZWSmartZoomManager *)self _unregisterForAccessibilityRuntimeNotifications];
    [(ZWSmartZoomManager *)self _updateApplicationAccessibility:0];

    [(ZWSmartZoomManager *)self setEnabled:0];
  }
}

- (void)_speakFocusedElement
{
  AXOverrideRequestingClientType();
  synthesizer = [(ZWSmartZoomManager *)self synthesizer];
  isSpeaking = [synthesizer isSpeaking];

  if (isSpeaking)
  {
    synthesizer2 = [(ZWSmartZoomManager *)self synthesizer];
    [synthesizer2 stopSpeakingAtBoundary:1];
  }

  else
  {
    focusElement = [(ZWSmartZoomManager *)self focusElement];
    application = [focusElement application];

    v28 = application;
    explorerElements = [application explorerElements];
    v9 = +[NSMutableOrderedSet orderedSet];
    focusElement2 = [(ZWSmartZoomManager *)self focusElement];
    label = [focusElement2 label];

    focusElement3 = [(ZWSmartZoomManager *)self focusElement];
    value = [focusElement3 value];

    if (label)
    {
      [v9 addObject:label];
    }

    if (value)
    {
      [v9 addObject:value];
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = explorerElements;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        v18 = 0;
        v19 = value;
        v20 = label;
        do
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v29 + 1) + 8 * v18);
          label = [v21 label];

          value = [v21 value];

          if (label)
          {
            [v9 addObject:label];
          }

          if (value)
          {
            [v9 addObject:value];
          }

          v18 = v18 + 1;
          v19 = value;
          v20 = label;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    array = [v9 array];
    v23 = [array componentsJoinedByString:@"\n\n"];

    if ([v23 length])
    {
      v24 = [AVSpeechUtterance speechUtteranceWithString:v23];
      v25 = AVSpeechUtteranceDefaultSpeechRate + 0.08;
      *&v25 = v25;
      [v24 setRate:v25];
      LODWORD(v26) = 1061997773;
      [v24 setVolume:v26];
      synthesizer3 = [(ZWSmartZoomManager *)self synthesizer];
      [synthesizer3 speakUtterance:v24];
    }
  }

  AXOverrideRequestingClientType();
}

- (void)speakContent
{
  synthesizer = [(ZWSmartZoomManager *)self synthesizer];

  if (!synthesizer)
  {
    v4 = objc_alloc_init(AVSpeechSynthesizer);
    [(ZWSmartZoomManager *)self setSynthesizer:v4];

    synthesizer2 = [(ZWSmartZoomManager *)self synthesizer];
    [synthesizer2 setDelegate:self];
  }

  [(ZWSmartZoomManager *)self _speakFocusedElement];
}

- (CGRect)focusRect
{
  AXOverrideRequestingClientType();
  focusElement = [(ZWSmartZoomManager *)self focusElement];

  if (!focusElement)
  {
    _elementForFocus = [(ZWSmartZoomManager *)self _elementForFocus];
    [(ZWSmartZoomManager *)self setFocusElement:_elementForFocus];
  }

  focusElement2 = [(ZWSmartZoomManager *)self focusElement];
  uiElement = [focusElement2 uiElement];
  [uiElement rectWithAXAttribute:2149];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  AXOverrideRequestingClientType();
  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)_elementForFocus
{
  v2 = +[AXElement systemWideElement];
  systemApplication = [v2 systemApplication];
  currentApplications = [systemApplication currentApplications];
  firstObject = [currentApplications firstObject];

  nativeFocusElement = [firstObject nativeFocusElement];

  return nativeFocusElement;
}

- (BOOL)setNativeFocusOnBestElementNearRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  AXOverrideRequestingClientType();
  v7 = +[AXElement systemWideElement];
  systemApplication = [v7 systemApplication];
  currentApplications = [systemApplication currentApplications];
  firstObject = [currentApplications firstObject];

  [firstObject visibleElements];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = v39 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v37 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v36 + 1) + 8 * v15);
      [v16 frame];
      v44.origin.x = v17;
      v44.origin.y = v18;
      v44.size.width = v19;
      v44.size.height = v20;
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      if (CGRectContainsRect(v42, v44))
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v21 = v16;

    if (v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_9:
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = v11;
  v21 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v21)
  {
    v23 = *v33;
    while (2)
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v22);
        }

        v25 = *(*(&v32 + 1) + 8 * i);
        [v25 frame];
        v45.origin.x = v26;
        v45.origin.y = v27;
        v45.size.width = v28;
        v45.size.height = v29;
        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        if (CGRectIntersectsRect(v43, v45))
        {
          v21 = v25;
          goto LABEL_21;
        }
      }

      v21 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

LABEL_22:
  setNativeFocus = [v21 setNativeFocus];
  AXOverrideRequestingClientType();

  return setNativeFocus;
}

- (void)_handleFirstResponderChangedNotification
{
  _elementForFocus = [(ZWSmartZoomManager *)self _elementForFocus];
  [(ZWSmartZoomManager *)self setFocusElement:_elementForFocus];

  focusElement = [(ZWSmartZoomManager *)self focusElement];
  if (focusElement)
  {
    v5 = focusElement;
    delegate = [(ZWSmartZoomManager *)self delegate];
    v7 = [delegate isZoomInStandByModeWithSmartZoom:self];

    if ((v7 & 1) == 0)
    {
      delegate2 = [(ZWSmartZoomManager *)self delegate];
      [delegate2 updateFocusWithSmartZoom:self];
    }
  }
}

- (void)_handleNativeFocusItemChangedNotification:(void *)notification
{
  v5 = CFGetTypeID(notification);
  if (v5 == CFDictionaryGetTypeID())
  {
    v6 = [notification objectForKeyedSubscript:kAXElementKey];
    v7 = v6;
    if (v6)
    {
      v8 = CFGetTypeID(v6);
      if (v8 == AXUIElementGetTypeID())
      {
        v9 = [[AXElement alloc] initWithAXUIElement:v7];
        [(ZWSmartZoomManager *)self setFocusElement:v9];
      }
    }
  }

  focusElement = [(ZWSmartZoomManager *)self focusElement];

  if (!focusElement)
  {
    _elementForFocus = [(ZWSmartZoomManager *)self _elementForFocus];
    [(ZWSmartZoomManager *)self setFocusElement:_elementForFocus];
  }

  focusElement2 = [(ZWSmartZoomManager *)self focusElement];
  if (focusElement2)
  {
    v13 = focusElement2;
    delegate = [(ZWSmartZoomManager *)self delegate];
    v15 = [delegate isZoomInStandByModeWithSmartZoom:self];

    if ((v15 & 1) == 0)
    {
      delegate2 = [(ZWSmartZoomManager *)self delegate];
      [delegate2 updateFocusWithSmartZoom:self];
    }
  }
}

- (void)_handleUpdateElementVisualsNotification
{
  AXOverrideRequestingClientType();
  focusElement = [(ZWSmartZoomManager *)self focusElement];
  uiElement = [focusElement uiElement];
  [uiElement updateCache:2149];

  AXOverrideRequestingClientType();
  focusElement2 = [(ZWSmartZoomManager *)self focusElement];
  if (focusElement2)
  {
    v6 = focusElement2;
    delegate = [(ZWSmartZoomManager *)self delegate];
    v8 = [delegate isZoomInStandByModeWithSmartZoom:self];

    if ((v8 & 1) == 0)
    {
      delegate2 = [(ZWSmartZoomManager *)self delegate];
      [delegate2 updateFocusWithSmartZoom:self];
    }
  }
}

- (void)_updateApplicationAccessibility:(BOOL)accessibility
{
  accessibilityCopy = accessibility;
  v4 = _AXSApplicationAccessibilityEnabled();
  if (accessibilityCopy && !v4 || !accessibilityCopy && v4 && _AXSCanDisableApplicationAccessibility())
  {

    _AXSApplicationAccessibilitySetEnabled();
  }
}

- (void)_initializeAccessibility
{
  [(ZWSmartZoomManager *)self _updateApplicationAccessibility:1];
  AXUIElementRegisterSystemWideServerDeathCallback();
  v3 = +[AXElement systemWideElement];
  uiElement = [v3 uiElement];
  axElement = [uiElement axElement];

  pid = 0;
  AXUIElementGetPid(axElement, &pid);
  accessibilityRuntimeObserver = self->_accessibilityRuntimeObserver;
  if (!accessibilityRuntimeObserver)
  {
    if (AXObserverCreate(pid, _handleAccessibilityRuntimeEvent, &self->_accessibilityRuntimeObserver))
    {
      LOBYTE(v11) = 1;
      v12 = @"Failed to create an accessibility event observer: %ld";
      goto LABEL_7;
    }

    accessibilityRuntimeObserver = self->_accessibilityRuntimeObserver;
  }

  RunLoopSource = AXObserverGetRunLoopSource(accessibilityRuntimeObserver);
  if (RunLoopSource)
  {
    v8 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v8, kCFRunLoopDefaultMode);
    return;
  }

  v12 = @"Failed to get the observer run loop source";
  LOBYTE(v11) = 1;
LABEL_7:
  _AXLogWithFacility();
  v10 = objc_autoreleasePoolPush();
  [(ZWSmartZoomManager *)self _accessibilitySystemServerDied:v11];
  objc_autoreleasePoolPop(v10);
}

- (void)_registerForAccessibilityRuntimeNotifications
{
  LOBYTE(v16) = 1;
  _AXLogWithFacility();
  v3 = [AXElement systemWideElement:v16];
  uiElement = [v3 uiElement];
  axElement = [uiElement axElement];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  _accessibilityRuntimeNotifications = [(ZWSmartZoomManager *)self _accessibilityRuntimeNotifications];
  v7 = [_accessibilityRuntimeNotifications countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(_accessibilityRuntimeNotifications);
        }

        intValue = [*(*(&v22 + 1) + 8 * i) intValue];
        v13 = intValue;
        v14 = AXObserverAddNotification(self->_accessibilityRuntimeObserver, axElement, intValue, self);
        if (v14)
        {
          v18 = @"Zoom could not register for notification:%ld. Error:%ld";
          v19 = v13;
          v9 = 1;
          LOBYTE(v17) = 1;
          v20 = v14;
        }

        else
        {
          v18 = @"Zoom did register for ax notification: %ld";
          v19 = v13;
          LOBYTE(v17) = 1;
        }

        _AXLogWithFacility();
      }

      v8 = [_accessibilityRuntimeNotifications countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);

    if (v9)
    {
      v15 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __67__ZWSmartZoomManager__registerForAccessibilityRuntimeNotifications__block_invoke;
      block[3] = &unk_78D00;
      block[4] = self;
      dispatch_after(v15, &_dispatch_main_q, block);
    }
  }

  else
  {
  }
}

- (void)_unregisterForAccessibilityRuntimeNotifications
{
  LOBYTE(v16) = 1;
  _AXLogWithFacility();
  v3 = [AXElement systemWideElement:v16];
  uiElement = [v3 uiElement];
  axElement = [uiElement axElement];

  v6 = +[AXElement systemWideElement];
  [v6 setPassivelyListeningForEvents:1];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  _accessibilityRuntimeNotifications = [(ZWSmartZoomManager *)self _accessibilityRuntimeNotifications];
  v8 = [_accessibilityRuntimeNotifications countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(_accessibilityRuntimeNotifications);
        }

        intValue = [*(*(&v21 + 1) + 8 * v11) intValue];
        v13 = AXObserverRemoveNotification(self->_accessibilityRuntimeObserver, axElement, intValue);
        if (v13)
        {
          v14 = v13;
          v15 = [NSNumber numberWithInt:intValue];
          [NSNumber numberWithInt:v14];
          v20 = v19 = v15;
          v18 = @"Zoom could not unregister for notification:%@. Error:%@";
          LOBYTE(v17) = 1;
          _AXLogWithFacility();
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [_accessibilityRuntimeNotifications countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

- (void)_accessibilitySystemServerDied
{
  LOBYTE(v3) = 1;
  _AXLogWithFacility();
  if (self->_accessibilityRuntimeObserver)
  {
    [(ZWSmartZoomManager *)self _unregisterForAccessibilityRuntimeNotifications:v3];
    CFRelease(self->_accessibilityRuntimeObserver);
    self->_accessibilityRuntimeObserver = 0;
  }

  AXPerformBlockOnMainThreadAfterDelay();
}

- (ZWSmartZoomDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end