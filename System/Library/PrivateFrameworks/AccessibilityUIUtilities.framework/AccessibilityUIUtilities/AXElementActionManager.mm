@interface AXElementActionManager
- (AXElementActionManager)initWithDragManager:(id)a3;
- (AXElementActionManager)initWithDragServiceName:(id)a3;
- (BOOL)canShowActionsForElement:(id)a3;
- (BOOL)isDragActive;
- (BOOL)performAction:(id)a3;
- (id)actionsForElement:(id)a3;
@end

@implementation AXElementActionManager

- (AXElementActionManager)initWithDragServiceName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXElementActionManager;
  v5 = [(AXElementActionManager *)&v9 init];
  if (v5)
  {
    v6 = [[AXDragManager alloc] initWithMachServiceName:v4];
    dragManager = v5->_dragManager;
    v5->_dragManager = v6;
  }

  return v5;
}

- (AXElementActionManager)initWithDragManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AXElementActionManager;
  v6 = [(AXElementActionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dragManager, a3);
  }

  return v7;
}

- (BOOL)isDragActive
{
  v2 = [(AXElementActionManager *)self dragManager];
  v3 = [v2 isDragActive];

  return v3;
}

- (BOOL)canShowActionsForElement:(id)a3
{
  v4 = a3;
  v5 = [(AXElementActionManager *)self isDragActive];
  v6 = [v4 customActions];
  v7 = 1;
  if (![v6 count] && !v5)
  {
    v8 = [v4 drags];
    v7 = [v8 count] != 0;
  }

  if ([(AXElementActionManager *)self shouldIncludeMedusaActions])
  {
    v9 = [MEMORY[0x1E69898A0] server];
    v10 = [v9 allowedMedusaGestures];
    v11 = [v10 count] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11 || v7;
}

- (id)actionsForElement:(id)a3
{
  v37 = self;
  v57 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v38 = v3;
  v5 = [v3 customActions];
  v6 = [v5 countByEnumeratingWithState:&v51 objects:v56 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v11 = objc_alloc_init(AXElementAction);
        [(AXElementAction *)v11 setType:0];
        [(AXElementAction *)v11 setElement:v38];
        v12 = [v10 objectForKeyedSubscript:@"CustomActionName"];
        [(AXElementAction *)v11 setName:v12];

        v13 = [v10 objectForKeyedSubscript:@"CustomActionIdentifier"];
        [(AXElementAction *)v11 setCustomActionIdentifier:v13];

        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v7);
  }

  v14 = v37;
  if ([(AXElementActionManager *)v37 isDragActive])
  {
    v15 = [v38 drops];
    v16 = AXNamesForDrops(v15);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __44__AXElementActionManager_actionsForElement___block_invoke;
    v47[3] = &unk_1E812E080;
    v17 = &v48;
    v18 = &v49;
    v48 = v38;
    v49 = v16;
    v19 = &v50;
    v20 = v4;
    v50 = v20;
    v21 = v16;
    [v15 enumerateObjectsUsingBlock:v47];
    v22 = objc_alloc_init(AXElementAction);
    [(AXElementAction *)v22 setType:3];
    v23 = AXUILocalizedStringForKey(@"CANCEL_DRAG");
    [(AXElementAction *)v22 setName:v23];

    v24 = v20;
    v14 = v37;
    [v24 addObject:v22];
  }

  else
  {
    v15 = [v38 drags];
    v25 = AXNamesForDrags(v15);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __44__AXElementActionManager_actionsForElement___block_invoke_2;
    v43[3] = &unk_1E812E080;
    v17 = &v44;
    v18 = &v45;
    v44 = v38;
    v45 = v25;
    v19 = &v46;
    v46 = v4;
    v21 = v25;
    [v15 enumerateObjectsUsingBlock:v43];
  }

  if ([(AXElementActionManager *)v14 shouldIncludeMedusaActions])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v26 = [MEMORY[0x1E69898A0] server];
    v27 = [v26 allowedMedusaGestures];

    v28 = [v27 countByEnumeratingWithState:&v39 objects:v55 count:16];
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
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v39 + 1) + 8 * j) unsignedIntegerValue];
          v33 = objc_opt_new();
          [v33 setType:4];
          v34 = [MEMORY[0x1E69DC668] sharedApplication];
          [v34 userInterfaceLayoutDirection];
          v35 = AXSBTitleForMedusaGesture();
          [v33 setName:v35];

          [v33 setMedusaGesture:v32];
          [v4 addObject:v33];
        }

        v29 = [v27 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v29);
    }
  }

  return v4;
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

- (BOOL)performAction:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 type];
  v6 = 1;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v8 = [(AXElementActionManager *)self dragManager];
        v9 = [v4 element];
        [v8 waitForDragStartFromPid:objc_msgSend(v9 completionHandler:{"pid"), 0}];

        v10 = [v4 element];
        v11 = [(AXElementActionManager *)self dragManager];
        v12 = [v11 machServiceName];
        v19[0] = v12;
        v13 = [v4 dragActivationToken];
        v19[1] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
        v6 = [v10 performAction:2050 withValue:v14];
      }
    }

    else
    {
      v16 = [v4 element];
      v17 = [v4 customActionIdentifier];
      v6 = [v16 performAction:2021 withValue:v17];
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v7 = [(AXElementActionManager *)self dragManager];
        v15 = [v4 dropDescriptor];
        [v15 fixedScreenSpacePoint];
        [v7 moveToAndDropAtPoint:?];

        goto LABEL_11;
      case 3:
        v7 = [(AXElementActionManager *)self dragManager];
        [v7 cancelDrag];
        goto LABEL_11;
      case 4:
        v7 = [MEMORY[0x1E69898A0] server];
        [v7 performMedusaGesture:{objc_msgSend(v4, "medusaGesture")}];
LABEL_11:

        v6 = 1;
        break;
    }
  }

  return v6;
}

@end