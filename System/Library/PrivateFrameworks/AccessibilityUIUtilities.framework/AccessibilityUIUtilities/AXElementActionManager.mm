@interface AXElementActionManager
- (AXElementActionManager)initWithDragManager:(id)manager;
- (AXElementActionManager)initWithDragServiceName:(id)name;
- (BOOL)canShowActionsForElement:(id)element;
- (BOOL)isDragActive;
- (BOOL)performAction:(id)action;
- (id)actionsForElement:(id)element;
@end

@implementation AXElementActionManager

- (AXElementActionManager)initWithDragServiceName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = AXElementActionManager;
  v5 = [(AXElementActionManager *)&v9 init];
  if (v5)
  {
    v6 = [[AXDragManager alloc] initWithMachServiceName:nameCopy];
    dragManager = v5->_dragManager;
    v5->_dragManager = v6;
  }

  return v5;
}

- (AXElementActionManager)initWithDragManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = AXElementActionManager;
  v6 = [(AXElementActionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dragManager, manager);
  }

  return v7;
}

- (BOOL)isDragActive
{
  dragManager = [(AXElementActionManager *)self dragManager];
  isDragActive = [dragManager isDragActive];

  return isDragActive;
}

- (BOOL)canShowActionsForElement:(id)element
{
  elementCopy = element;
  isDragActive = [(AXElementActionManager *)self isDragActive];
  customActions = [elementCopy customActions];
  v7 = 1;
  if (![customActions count] && !isDragActive)
  {
    drags = [elementCopy drags];
    v7 = [drags count] != 0;
  }

  if ([(AXElementActionManager *)self shouldIncludeMedusaActions])
  {
    server = [MEMORY[0x1E69898A0] server];
    allowedMedusaGestures = [server allowedMedusaGestures];
    v11 = [allowedMedusaGestures count] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11 || v7;
}

- (id)actionsForElement:(id)element
{
  selfCopy = self;
  v57 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  array = [MEMORY[0x1E695DF70] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v38 = elementCopy;
  customActions = [elementCopy customActions];
  v6 = [customActions countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(customActions);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v11 = objc_alloc_init(AXElementAction);
        [(AXElementAction *)v11 setType:0];
        [(AXElementAction *)v11 setElement:v38];
        v12 = [v10 objectForKeyedSubscript:@"CustomActionName"];
        [(AXElementAction *)v11 setName:v12];

        v13 = [v10 objectForKeyedSubscript:@"CustomActionIdentifier"];
        [(AXElementAction *)v11 setCustomActionIdentifier:v13];

        [array addObject:v11];
      }

      v7 = [customActions countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v7);
  }

  v14 = selfCopy;
  if ([(AXElementActionManager *)selfCopy isDragActive])
  {
    drops = [v38 drops];
    v16 = AXNamesForDrops(drops);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __44__AXElementActionManager_actionsForElement___block_invoke;
    v47[3] = &unk_1E812E080;
    v17 = &v48;
    v18 = &v49;
    v48 = v38;
    v49 = v16;
    v19 = &v50;
    v20 = array;
    v50 = v20;
    v21 = v16;
    [drops enumerateObjectsUsingBlock:v47];
    v22 = objc_alloc_init(AXElementAction);
    [(AXElementAction *)v22 setType:3];
    v23 = AXUILocalizedStringForKey(@"CANCEL_DRAG");
    [(AXElementAction *)v22 setName:v23];

    v24 = v20;
    v14 = selfCopy;
    [v24 addObject:v22];
  }

  else
  {
    drops = [v38 drags];
    v25 = AXNamesForDrags(drops);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __44__AXElementActionManager_actionsForElement___block_invoke_2;
    v43[3] = &unk_1E812E080;
    v17 = &v44;
    v18 = &v45;
    v44 = v38;
    v45 = v25;
    v19 = &v46;
    v46 = array;
    v21 = v25;
    [drops enumerateObjectsUsingBlock:v43];
  }

  if ([(AXElementActionManager *)v14 shouldIncludeMedusaActions])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    server = [MEMORY[0x1E69898A0] server];
    allowedMedusaGestures = [server allowedMedusaGestures];

    v28 = [allowedMedusaGestures countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v40;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(allowedMedusaGestures);
          }

          unsignedIntegerValue = [*(*(&v39 + 1) + 8 * j) unsignedIntegerValue];
          v33 = objc_opt_new();
          [v33 setType:4];
          mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
          [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];
          v35 = AXSBTitleForMedusaGesture();
          [v33 setName:v35];

          [v33 setMedusaGesture:unsignedIntegerValue];
          [array addObject:v33];
        }

        v29 = [allowedMedusaGestures countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v29);
    }
  }

  return array;
}

void __44__AXElementActionManager_actionsForElement___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  [v6 setType:2];
  [v6 setElement:*(a1 + 32)];
  v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [v6 setName:v7];

  valuePtr = 0.0;
  v16 = 0.0;
  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6988CD8]];

  AXValueGetValue(v8, kAXValueTypeCGPoint, &valuePtr);
  v13 = 0.0;
  v14 = 0.0;
  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6988CC8]];

  AXValueGetValue(v9, kAXValueTypeCGPoint, &v13);
  v10 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6988CC0]];

  v11 = [v10 unsignedIntValue];
  v12 = objc_alloc_init(AXElementActionDropDescriptor);
  [(AXElementActionDropDescriptor *)v12 setFixedScreenSpacePoint:valuePtr, v16];
  [(AXElementActionDropDescriptor *)v12 setContextSpacePoint:v13, v14];
  [(AXElementActionDropDescriptor *)v12 setContextID:v11];
  [v6 setDropDescriptor:v12];
  [*(a1 + 48) addObject:v6];
}

void __44__AXElementActionManager_actionsForElement___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_opt_new();
  [v7 setType:1];
  [v7 setElement:*(a1 + 32)];
  v6 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [v7 setName:v6];

  [v7 setDragActivationToken:v5];
  [*(a1 + 48) addObject:v7];
}

- (BOOL)performAction:(id)action
{
  v19[2] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  type = [actionCopy type];
  v6 = 1;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        dragManager = [(AXElementActionManager *)self dragManager];
        element = [actionCopy element];
        [dragManager waitForDragStartFromPid:objc_msgSend(element completionHandler:{"pid"), 0}];

        element2 = [actionCopy element];
        dragManager2 = [(AXElementActionManager *)self dragManager];
        machServiceName = [dragManager2 machServiceName];
        v19[0] = machServiceName;
        dragActivationToken = [actionCopy dragActivationToken];
        v19[1] = dragActivationToken;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
        v6 = [element2 performAction:2050 withValue:v14];
      }
    }

    else
    {
      element3 = [actionCopy element];
      customActionIdentifier = [actionCopy customActionIdentifier];
      v6 = [element3 performAction:2021 withValue:customActionIdentifier];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        dragManager3 = [(AXElementActionManager *)self dragManager];
        dropDescriptor = [actionCopy dropDescriptor];
        [dropDescriptor fixedScreenSpacePoint];
        [dragManager3 moveToAndDropAtPoint:?];

        goto LABEL_11;
      case 3:
        dragManager3 = [(AXElementActionManager *)self dragManager];
        [dragManager3 cancelDrag];
        goto LABEL_11;
      case 4:
        dragManager3 = [MEMORY[0x1E69898A0] server];
        [dragManager3 performMedusaGesture:{objc_msgSend(actionCopy, "medusaGesture")}];
LABEL_11:

        v6 = 1;
        break;
    }
  }

  return v6;
}

@end