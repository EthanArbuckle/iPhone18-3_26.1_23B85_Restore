@interface AXObserverWrapper
- (AXObserverWrapper)initWithSystemElement:(id)a3 runloop:(id)a4 notifications:(id)a5 handler:(id)a6 error:(id *)a7;
- (void)dealloc;
@end

@implementation AXObserverWrapper

- (AXObserverWrapper)initWithSystemElement:(id)a3 runloop:(id)a4 notifications:(id)a5 handler:(id)a6 error:(id *)a7
{
  v43 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
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

  [(AXObserverWrapper *)v16 setRunloop:v13];
  [(AXObserverWrapper *)v17 setNotifications:v14];
  outObserver = 0;
  [(AXObserverWrapper *)v17 setHandler:v15];
  [(AXObserverWrapper *)v17 setSystemElement:v12];
  v18 = AXObserverCreate([v12 pid], _axEventHandler, &outObserver);
  if (v18 == kAXErrorSuccess)
  {
    [(AXObserverWrapper *)v17 setObserver:outObserver];
    CFRelease(outObserver);
    v20 = [v13 getCFRunLoop];
    RunLoopSource = AXObserverGetRunLoopSource([(AXObserverWrapper *)v17 observer]);
    CFRunLoopAddSource(v20, RunLoopSource, *MEMORY[0x277CBF058]);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = v14;
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v33 = v15;
      v34 = v14;
      v35 = v13;
      v25 = *v37;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v36 + 1) + 8 * i) intValue];
          v28 = [(AXObserverWrapper *)v17 observer];
          v29 = [(AXObserverWrapper *)v17 systemElement];
          v30 = [v29 uiElement];
          AXObserverAddNotification(v28, [v30 axElement], v27, v17);
        }

        v24 = [v22 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v24);

      v14 = v34;
      v13 = v35;
      v15 = v33;
    }

    else
    {
    }

    goto LABEL_15;
  }

  if (a7)
  {
    *a7 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"AccessibilityReader" description:{@"Could not make observer. error: %ld", v18}];
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
  v3 = [(AXObserverWrapper *)self notifications];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v17 + 1) + 8 * v7) intValue];
        v9 = [(AXObserverWrapper *)self observer];
        v10 = [(AXObserverWrapper *)self systemElement];
        v11 = [v10 uiElement];
        AXObserverRemoveNotification(v9, [v11 axElement], v8);

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v12 = [(AXObserverWrapper *)self runloop];
  v13 = [v12 getCFRunLoop];
  RunLoopSource = AXObserverGetRunLoopSource([(AXObserverWrapper *)self observer]);
  CFRunLoopRemoveSource(v13, RunLoopSource, *MEMORY[0x277CBF058]);

  v16.receiver = self;
  v16.super_class = AXObserverWrapper;
  [(AXObserverWrapper *)&v16 dealloc];
  v15 = *MEMORY[0x277D85DE8];
}

@end