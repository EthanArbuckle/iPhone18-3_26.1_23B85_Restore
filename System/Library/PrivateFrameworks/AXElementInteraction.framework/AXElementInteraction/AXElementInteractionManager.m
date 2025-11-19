@interface AXElementInteractionManager
+ (id)sharedManager;
- (AXElementInteractionManager)init;
- (AXElementInteractionManagerDelegate)delegate;
- (BOOL)_moveFocusByHitTesting:(int64_t)a3;
- (id)_allowDelegateToDecideElement:(id)a3;
- (id)_client;
- (id)_clientIdentifier;
- (int)_registerForAXNotifications:(BOOL)a3;
- (void)_handleLayoutChange;
- (void)_handleScreenChange;
- (void)_highlightElement:(id)a3;
- (void)_initializeAXObserver;
- (void)_moveToElement:(id)a3;
- (void)_sendMessage:(id)a3 withIdentifier:(unint64_t)a4 errorHandler:(id)a5;
- (void)endInteractionMode;
- (void)initializeFocus;
- (void)startInteractionMode;
@end

@implementation AXElementInteractionManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[AXElementInteractionManager sharedManager];
  }

  v3 = sharedManager_Manager;

  return v3;
}

uint64_t __44__AXElementInteractionManager_sharedManager__block_invoke()
{
  sharedManager_Manager = objc_alloc_init(AXElementInteractionManager);

  return MEMORY[0x2821F96F8]();
}

- (AXElementInteractionManager)init
{
  v6.receiver = self;
  v6.super_class = AXElementInteractionManager;
  v2 = [(AXElementInteractionManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(AXElementInteractionManager *)v2 setDisplayCursor:1];
    v4 = v3;
  }

  return v3;
}

- (void)startInteractionMode
{
  if (!self->_interactionEnabled)
  {
    self->_interactionEnabled = 1;
    if (_AXSApplicationAccessibilityEnabled())
    {
      v3 = 0;
    }

    else
    {
      _AXSApplicationAccessibilitySetEnabled();
      v3 = 1000000000;
    }

    [(AXElementInteractionManager *)self _initializeAXObserver];
    v4 = dispatch_time(0, v3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__AXElementInteractionManager_startInteractionMode__block_invoke;
    block[3] = &unk_278BDA148;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x277D85CD0], block);
  }
}

- (void)_initializeAXObserver
{
  pid = 0;
  AXUIElementGetPid([MEMORY[0x277CE6BB0] systemWideAXUIElement], &pid);
  if (AXObserverCreate(pid, _axEventHandler, &self->_axEventObserver))
  {
    NSLog(&cfstr_AxRegisterForE.isa);
  }

  else
  {
    RunLoopSource = AXObserverGetRunLoopSource(self->_axEventObserver);
    if (RunLoopSource)
    {
      v4 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v4, *MEMORY[0x277CBF058]);
      [(AXElementInteractionManager *)self _registerForAXNotifications:1];
    }

    else
    {
      NSLog(&cfstr_AxCouldNotGetR.isa);
    }
  }
}

- (int)_registerForAXNotifications:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CE6BB0] systemWideAXUIElement];
  v6 = 0;
  LODWORD(v7) = 0;
  do
  {
    axEventObserver = self->_axEventObserver;
    v9 = dword_23D5EC980[v6];
    if (v3)
    {
      v10 = AXObserverAddNotification(axEventObserver, v5, v9, self);
    }

    else
    {
      v10 = AXObserverRemoveNotification(axEventObserver, v5, v9);
    }

    ++v6;
    if (v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = v10;
    }
  }

  while (v6 != 4);
  if (v7)
  {
    v11 = @"unregister";
    if (v3)
    {
      v11 = @"register";
    }

    NSLog(&cfstr_UnableToForNot.isa, v11, v7);
  }

  return v7;
}

- (void)endInteractionMode
{
  if (self->_interactionEnabled)
  {
    [(AXElementInteractionManager *)self _registerForAXNotifications:0];
    axEventObserver = self->_axEventObserver;
    if (axEventObserver)
    {
      CFRelease(axEventObserver);
      self->_axEventObserver = 0;
    }

    self->_interactionEnabled = 0;
    _AXSApplicationAccessibilitySetEnabled();
    focusedElement = self->_focusedElement;
    self->_focusedElement = 0;

    v6 = MEMORY[0x277CBEC10];

    [(AXElementInteractionManager *)self _sendMessage:v6 withIdentifier:2 errorHandler:&__block_literal_global_304];
  }
}

- (void)_handleScreenChange
{
  v3 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__AXElementInteractionManager__handleScreenChange__block_invoke;
  block[3] = &unk_278BDA148;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

uint64_t __50__AXElementInteractionManager__handleScreenChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 axElementInteractionManagerScreenChanged:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 initializeFocus];
}

- (void)_handleLayoutChange
{
  if (([(AXElement *)self->_focusedElement isValid]& 1) == 0)
  {

    [(AXElementInteractionManager *)self initializeFocus];
  }
}

- (id)_allowDelegateToDecideElement:(id)a3
{
  v4 = a3;
  v5 = [(AXElementInteractionManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    do
    {
      v7 = [(AXElementInteractionManager *)self delegate];
      v8 = [v7 axElementInteraction:self shouldMoveToElement:v4];

      if (v8)
      {
        break;
      }

      v9 = [v4 nextElementsWithCount:1];
      v10 = [v9 firstObject];

      v4 = v10;
    }

    while (v10);
  }

  return v4;
}

- (void)initializeFocus
{
  focusedElement = self->_focusedElement;
  self->_focusedElement = 0;

  v4 = [MEMORY[0x277CE6BA0] systemWideElement];
  v5 = [v4 systemApplication];
  v6 = [v5 currentApplications];
  v7 = [v6 firstObject];

  v8 = [v7 firstElementInApplicationForFocus];
  v9 = [MEMORY[0x277CE6BA0] systemWideElement];
  v10 = [v9 systemApplication];
  v16 = self->_focusedElement;
  LOBYTE(v15) = 1;
  _AXLogWithFacility();

  if (v8)
  {
    v11 = [(AXElementInteractionManager *)self _allowDelegateToDecideElement:v8, v15, @"Apps: %@\n %@\n %@\n", v10, v7, v16];

    if (v11)
    {
      v12 = self->_focusedElement;
      self->_focusedElement = v11;
      v13 = v11;

      [(AXElementInteractionManager *)self _highlightElement:self->_focusedElement];
    }
  }

  else
  {
    v14 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__AXElementInteractionManager_initializeFocus__block_invoke;
    block[3] = &unk_278BDA148;
    block[4] = self;
    dispatch_after(v14, MEMORY[0x277D85CD0], block);
  }
}

- (void)_highlightElement:(id)a3
{
  if (self->_displayCursor)
  {
    v5 = a3;
    [v5 path];
    v16 = AX_CGPathCopyDataRepresentation();
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v17.origin.x = v8;
    v17.origin.y = v10;
    v17.size.width = v12;
    v17.size.height = v14;
    v15 = NSStringFromCGRect(v17);
    [v6 setObject:v15 forKeyedSubscript:@"frame"];

    if (v16)
    {
      [v6 setObject:v16 forKeyedSubscript:@"path"];
    }

    [(AXElementInteractionManager *)self _sendMessage:v6 withIdentifier:1 errorHandler:&__block_literal_global_319];
  }
}

- (void)_moveToElement:(id)a3
{
  objc_storeStrong(&self->_focusedElement, a3);
  v5 = a3;
  focusedElement = self->_focusedElement;
  v8 = v5;
  LOBYTE(v6) = 1;
  _AXLogWithFacility();
  [(AXElement *)self->_focusedElement scrollToVisible:v6];
  [(AXElementInteractionManager *)self _highlightElement:v8];
}

- (BOOL)_moveFocusByHitTesting:(int64_t)a3
{
  [(AXElement *)self->_focusedElement frame];
  v57 = v6;
  v58.origin.x = v5;
  v8 = v7;
  rect = v9;
  AX_CGRectGetCenter();
  v11 = v10;
  v13 = v12;
  v14 = 10.0;
  if (AXDeviceIsPad())
  {
    v15 = 20.0;
  }

  else
  {
    v15 = 10.0;
  }

  if (AXDeviceIsPad())
  {
    v14 = 20.0;
  }

  v16 = a3 == 3;
  v17 = a3 == 4;
  v18 = a3 - 1;
  v19 = a3 == 1;
  v20 = a3 == 2;
  v21 = [MEMORY[0x277CE6BA0] systemWideElement];
  v22 = [v21 systemApplication];
  v23 = [v22 applicationOrientation];

  *&v58.origin.y = MEMORY[0x277D85DD0];
  *&v58.size.width = 3221225472;
  *&v58.size.height = __54__AXElementInteractionManager__moveFocusByHitTesting___block_invoke;
  v59 = &unk_278BDA190;
  v60 = self;
  v24 = MEMORY[0x23EEE43B0](&v58.origin.y);
  v25 = MEMORY[0x23EEE41B0]();
  v56 = v26;
  if ((v23 - 1) <= 1)
  {
    if (v23 == 2)
    {
      if (v18 > 1)
      {
        v17 = a3 != 4;
        v16 = a3 != 3;
      }

      else
      {
        v20 = a3 != 2;
        v19 = a3 != 1;
      }
    }

    v27 = v16 || v17;
    v28 = !v17;
    v29 = -v14;
    if (v19)
    {
      v30 = -v14;
    }

    else
    {
      v30 = v14;
    }

    v31 = -v15;
    if (v16)
    {
      v32 = -v15;
    }

    else
    {
      v32 = v15;
    }

    if (v23 != 2)
    {
      v31 = v15;
      v29 = v14;
    }

    v50 = v31;
    v52 = v29;
    v33 = v56;
    v54 = v25;
LABEL_24:
    if (!v19 && !v20)
    {
      goto LABEL_105;
    }

    v61.size.width = v57;
    v61.origin.x = v58.origin.x;
    v61.origin.y = rect;
    v61.size.height = v8;
    if (v13 <= CGRectGetMinY(v61) - v8 || (v62.size.width = v57, v62.origin.x = v58.origin.x, v62.origin.y = rect, v62.size.height = v8, v13 >= v8 + CGRectGetMaxY(v62)))
    {
LABEL_105:
      if (!v27)
      {
        goto LABEL_101;
      }

      v63.origin.x = v58.origin.x;
      v63.origin.y = rect;
      v63.size.width = v57;
      v63.size.height = v8;
      if (v11 <= CGRectGetMinX(v63) - v57)
      {
        goto LABEL_101;
      }

      v64.origin.x = v58.origin.x;
      v64.origin.y = rect;
      v64.size.width = v57;
      v64.size.height = v8;
      v25 = v54;
      v33 = v56;
      if (v11 >= v57 + CGRectGetMaxX(v64))
      {
        goto LABEL_101;
      }
    }

    while (1)
    {
      if (v19)
      {
        if (v11 >= 0.0 && v11 <= v25)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v35 = v11 < 0.0 || !v20;
        if ((v35 & 1) == 0 && v11 <= v25)
        {
          goto LABEL_50;
        }
      }

      if (v16)
      {
        if (v13 < 0.0 || v13 > v33)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v13 < 0.0)
        {
          v36 = 1;
        }

        else
        {
          v36 = v28;
        }

        if ((v36 & 1) != 0 || v13 > v33)
        {
          if (v27)
          {
LABEL_55:
            v11 = v52 + v11;
            goto LABEL_24;
          }

          v13 = v50 + v13;
          goto LABEL_24;
        }
      }

LABEL_50:
      if (v24[2](v24, v11, v13))
      {
        goto LABEL_100;
      }

      if (v27)
      {
        v13 = v32 + v13;
      }

      else
      {
        v11 = v30 + v11;
      }
    }
  }

  if ((v23 - 3) <= 1)
  {
    if (v23 == 3)
    {
      if (v18 > 1)
      {
        v17 = a3 != 4;
        v16 = a3 != 3;
      }

      else
      {
        v20 = a3 != 2;
        v19 = a3 != 1;
      }
    }

    v37 = v16 || v17;
    v38 = !v17;
    v39 = -v15;
    if (v20)
    {
      v40 = -v15;
    }

    else
    {
      v40 = v15;
    }

    v41 = -v14;
    if (v16)
    {
      v42 = -v14;
    }

    else
    {
      v42 = v14;
    }

    if (v23 != 3)
    {
      v41 = v14;
      v39 = v15;
    }

    v51 = v41;
    v53 = v39;
    v44 = v56;
    v43 = v57;
LABEL_67:
    if (!v19 && !v20)
    {
      goto LABEL_106;
    }

    v65.origin.x = v58.origin.x;
    v65.origin.y = rect;
    v65.size.width = v43;
    v65.size.height = v8;
    if (v11 <= CGRectGetMinX(v65) - v43 || (v66.origin.x = v58.origin.x, v66.origin.y = rect, v66.size.width = v43, v66.size.height = v8, v11 >= v43 + CGRectGetMaxX(v66)))
    {
LABEL_106:
      if (!v37)
      {
        goto LABEL_101;
      }

      v67.origin.x = v58.origin.x;
      v67.size.width = v43;
      v67.origin.y = rect;
      v67.size.height = v8;
      if (v13 <= CGRectGetMinY(v67) - v8)
      {
        goto LABEL_101;
      }

      v68.origin.x = v58.origin.x;
      v68.origin.y = rect;
      v43 = v57;
      v68.size.width = v57;
      v68.size.height = v8;
      v44 = v56;
      if (v13 >= v8 + CGRectGetMaxY(v68))
      {
        goto LABEL_101;
      }
    }

    while (1)
    {
      if (v19)
      {
        if (v13 >= 0.0 && v13 <= v44)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v46 = v13 < 0.0 || !v20;
        if ((v46 & 1) == 0 && v13 <= v44)
        {
          goto LABEL_93;
        }
      }

      if (v16)
      {
        if (v11 < 0.0 || v11 > v25)
        {
          goto LABEL_98;
        }
      }

      else
      {
        if (v11 < 0.0)
        {
          v47 = 1;
        }

        else
        {
          v47 = v38;
        }

        if ((v47 & 1) != 0 || v11 > v25)
        {
          if (v37)
          {
LABEL_98:
            v13 = v53 + v13;
            goto LABEL_67;
          }

          v11 = v51 + v11;
          goto LABEL_67;
        }
      }

LABEL_93:
      if (v24[2](v24, v11, v13))
      {
LABEL_100:
        v48 = 1;
        goto LABEL_102;
      }

      if (v37)
      {
        v11 = v42 + v11;
      }

      else
      {
        v13 = v40 + v13;
      }
    }
  }

LABEL_101:
  v48 = 0;
LABEL_102:

  return v48;
}

uint64_t __54__AXElementInteractionManager__moveFocusByHitTesting___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE6BA0] elementAtCoordinate:0 withVisualPadding:?];
  v3 = [*(a1 + 32) _allowDelegateToDecideElement:v2];

  if (([v3 isEqual:*(*(a1 + 32) + 16)] & 1) == 0 && objc_msgSend(v3, "isAccessibleElement") && (v4 = objc_msgSend(v3, "windowContextId"), v4 == objc_msgSend(*(*(a1 + 32) + 16), "windowContextId")))
  {
    [*(a1 + 32) _moveToElement:v3];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_clientIdentifier
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processIdentifier];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v6 = [v4 stringWithFormat:@"AXElementInteractionIdentifier-%@", v5];

  return v6;
}

- (id)_client
{
  client = self->_client;
  if (!client)
  {
    v4 = [(AXElementInteractionManager *)self _clientIdentifier];
    v5 = [objc_alloc(MEMORY[0x277CE7740]) initWithIdentifier:v4 serviceBundleName:@"AXElementInteractionUIServer"];
    v6 = self->_client;
    self->_client = v5;

    [(AXUIClient *)self->_client setDelegate:self];
    client = self->_client;
  }

  return client;
}

- (void)_sendMessage:(id)a3 withIdentifier:(unint64_t)a4 errorHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(AXElementInteractionManager *)self _client];
  v11 = [MEMORY[0x277CE6948] mainAccessQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__AXElementInteractionManager__sendMessage_withIdentifier_errorHandler___block_invoke;
  v13[3] = &unk_278BDA1B8;
  v14 = v8;
  v15 = a4;
  v12 = v8;
  [v10 sendAsynchronousMessage:v9 withIdentifier:a4 targetAccessQueue:v11 completion:v13];
}

void __72__AXElementInteractionManager__sendMessage_withIdentifier_errorHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    _AXLogWithFacility();
    v6 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"AXElementInteraction" code:1 description:{@"Could not perform %d action: %@", *(a1 + 40), v4, v4}];

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, v6);
    }
  }
}

- (AXElementInteractionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end