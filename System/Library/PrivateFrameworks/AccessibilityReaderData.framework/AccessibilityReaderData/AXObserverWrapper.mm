@interface AXObserverWrapper
- (AXObserverWrapper)initWithSystemElement:(id)element runloop:(id)runloop notifications:(id)notifications handler:(id)handler error:(id *)error;
- (void)dealloc;
@end

@implementation AXObserverWrapper

- (AXObserverWrapper)initWithSystemElement:(id)element runloop:(id)runloop notifications:(id)notifications handler:(id)handler error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  runloopCopy = runloop;
  notificationsCopy = notifications;
  handlerCopy = handler;
  v41.receiver = self;
  v41.super_class = AXObserverWrapper;
  v16 = [(AXObserverWrapper *)&v41 init];
  v17 = v16;
  if (!v16)
  {
LABEL_15:
    v19 = v17;
    goto LABEL_16;
  }

  [(AXObserverWrapper *)v16 setRunloop:runloopCopy];
  [(AXObserverWrapper *)v17 setNotifications:notificationsCopy];
  outObserver = 0;
  [(AXObserverWrapper *)v17 setHandler:handlerCopy];
  [(AXObserverWrapper *)v17 setSystemElement:elementCopy];
  v18 = AXObserverCreate([elementCopy pid], _axEventHandler, &outObserver);
  if (v18 == kAXErrorSuccess)
  {
    [(AXObserverWrapper *)v17 setObserver:outObserver];
    CFRelease(outObserver);
    getCFRunLoop = [runloopCopy getCFRunLoop];
    RunLoopSource = AXObserverGetRunLoopSource([(AXObserverWrapper *)v17 observer]);
    CFRunLoopAddSource(getCFRunLoop, RunLoopSource, *MEMORY[0x277CBF058]);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = notificationsCopy;
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v33 = handlerCopy;
      v34 = notificationsCopy;
      v35 = runloopCopy;
      v25 = *v37;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v22);
          }

          intValue = [*(*(&v36 + 1) + 8 * i) intValue];
          observer = [(AXObserverWrapper *)v17 observer];
          systemElement = [(AXObserverWrapper *)v17 systemElement];
          uiElement = [systemElement uiElement];
          AXObserverAddNotification(observer, [uiElement axElement], intValue, v17);
        }

        v24 = [v22 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v24);

      notificationsCopy = v34;
      runloopCopy = v35;
      handlerCopy = v33;
    }

    else
    {
    }

    goto LABEL_15;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"AccessibilityReader" description:{@"Could not make observer. error: %ld", v18}];
  }

  v19 = 0;
LABEL_16:

  v31 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  notifications = [(AXObserverWrapper *)self notifications];
  v4 = [notifications countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(notifications);
        }

        intValue = [*(*(&v17 + 1) + 8 * v7) intValue];
        observer = [(AXObserverWrapper *)self observer];
        systemElement = [(AXObserverWrapper *)self systemElement];
        uiElement = [systemElement uiElement];
        AXObserverRemoveNotification(observer, [uiElement axElement], intValue);

        ++v7;
      }

      while (v5 != v7);
      v5 = [notifications countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  runloop = [(AXObserverWrapper *)self runloop];
  getCFRunLoop = [runloop getCFRunLoop];
  RunLoopSource = AXObserverGetRunLoopSource([(AXObserverWrapper *)self observer]);
  CFRunLoopRemoveSource(getCFRunLoop, RunLoopSource, *MEMORY[0x277CBF058]);

  v16.receiver = self;
  v16.super_class = AXObserverWrapper;
  [(AXObserverWrapper *)&v16 dealloc];
  v15 = *MEMORY[0x277D85DE8];
}

@end