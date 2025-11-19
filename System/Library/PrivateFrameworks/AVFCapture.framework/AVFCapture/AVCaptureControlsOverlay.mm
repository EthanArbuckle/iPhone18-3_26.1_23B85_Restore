@interface AVCaptureControlsOverlay
- (AVCaptureControlsOverlay)initWithSession:(id)a3;
- (void)_activateIsolated;
- (void)_invalidateIsolated;
- (void)_sendControlsIsolated;
- (void)_updateControlIsolated:(id)a3;
- (void)activate;
- (void)cameraOverlayConnection:(id)a3 didApplyControlUpdate:(id)a4;
- (void)cameraOverlayConnection:(id)a3 didChangeActiveControlIdentifier:(id)a4;
- (void)cameraOverlayConnection:(id)a3 didChangeFocusLocked:(BOOL)a4;
- (void)cameraOverlayConnection:(id)a3 didChangeInterfaceReduced:(BOOL)a4;
- (void)cameraOverlayConnection:(id)a3 didChangeOverlayVisible:(BOOL)a4 activeControlIdentifier:(id)a5;
- (void)cameraOverlayConnection:(id)a3 didChangeStatus:(unint64_t)a4;
- (void)dealloc;
- (void)invalidate;
- (void)rebuildControls;
- (void)updateControl:(id)a3;
- (void)updateControls:(id)a3;
@end

@implementation AVCaptureControlsOverlay

- (AVCaptureControlsOverlay)initWithSession:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVCaptureControlsOverlay;
  v4 = [(AVCaptureControlsOverlay *)&v7 init];
  if (v4)
  {
    v4->_sessionReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:a3];
    v5 = dispatch_queue_create("com.apple.avfoundation.controls-overlay", 0);
    v4->_controlsLock._os_unfair_lock_opaque = 0;
    v4->_connectionQueue = v5;
    os_unfair_lock_lock(&v4->_controlsLock);
    v4->_itemsByIdentifier = objc_alloc_init(MEMORY[0x1E695DF20]);
    v4->_orderedIdentifiers = objc_alloc_init(MEMORY[0x1E695DEC8]);
    os_unfair_lock_unlock(&v4->_controlsLock);
  }

  return v4;
}

- (void)dealloc
{
  connectionQueue = self->_connectionQueue;
  connection = self->_connection;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AVCaptureControlsOverlay_dealloc__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = connection;
  dispatch_async(connectionQueue, block);

  os_unfair_lock_lock(&self->_controlsLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemsByIdentifier = self->_itemsByIdentifier;
  v6 = [(NSDictionary *)itemsByIdentifier countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(itemsByIdentifier);
        }

        [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_itemsByIdentifier objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i)), "control"), "removeObservers"}];
      }

      v7 = [(NSDictionary *)itemsByIdentifier countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_controlsLock);
  v10.receiver = self;
  v10.super_class = AVCaptureControlsOverlay;
  [(AVCaptureControlsOverlay *)&v10 dealloc];
}

- (void)updateControls:(id)a3
{
  os_unfair_lock_lock(&self->_controlsLock);
  v5 = [(NSArray *)self->_orderedIdentifiers copy];
  v6 = [(NSDictionary *)self->_itemsByIdentifier copy];
  os_unfair_lock_unlock(&self->_controlsLock);
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v7 = [a3 count];
  if (v7 == [v5 count])
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __43__AVCaptureControlsOverlay_updateControls___block_invoke;
    v50[3] = &unk_1E7875CD0;
    v50[4] = a3;
    v50[5] = v6;
    v50[6] = &v51;
    [v5 enumerateObjectsUsingBlock:v50];
    if ((v52[3] & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *(v52 + 24) = 1;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v46 objects:v45 count:16];
  if (v8)
  {
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v6 objectForKeyedSubscript:*(*(&v46 + 1) + 8 * i)];
        if (([a3 containsObject:{objc_msgSend(v11, "control")}] & 1) == 0)
        {
          [objc_msgSend(v11 "control")];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v46 objects:v45 count:16];
    }

    while (v8);
  }

  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = [a3 countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v13)
  {
    v14 = *v42;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(a3);
        }

        v16 = *(*(&v41 + 1) + 8 * j);
        v17 = [v16 identifier];
        v18 = -[AVCaptureControlsOverlayItem initWithControl:overlayControl:]([AVCaptureControlsOverlayItem alloc], "initWithControl:overlayControl:", v16, [v16 overlayControl]);
        [v12 setObject:v18 forKeyedSubscript:v17];

        [v28 addObject:v17];
        [v16 setOverlay:self];
      }

      v13 = [a3 countByEnumeratingWithState:&v41 objects:v40 count:16];
    }

    while (v13);
  }

  os_unfair_lock_lock(&self->_controlsLock);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  itemsByIdentifier = self->_itemsByIdentifier;
  v20 = [(NSDictionary *)itemsByIdentifier countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v20)
  {
    v21 = *v37;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(itemsByIdentifier);
        }

        [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_itemsByIdentifier objectForKeyedSubscript:{*(*(&v36 + 1) + 8 * k), v28), "control"), "removeObservers"}];
      }

      v20 = [(NSDictionary *)itemsByIdentifier countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v20);
  }

  self->_itemsByIdentifier = [v12 copy];
  self->_orderedIdentifiers = [v28 copy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = self->_itemsByIdentifier;
  v24 = [(NSDictionary *)v23 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v24)
  {
    v25 = *v32;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = [(NSDictionary *)self->_itemsByIdentifier objectForKeyedSubscript:*(*(&v31 + 1) + 8 * m), v28];
        [objc_msgSend(v27 "control")];
        [objc_msgSend(v27 "control")];
      }

      v24 = [(NSDictionary *)v23 countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v24);
  }

  os_unfair_lock_unlock(&self->_controlsLock);

  [(AVCaptureControlsOverlay *)self updateControls:v29];
LABEL_34:
  _Block_object_dispose(&v51, 8);
}

uint64_t __43__AVCaptureControlsOverlay_updateControls___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) objectAtIndexedSubscript:?];
  v8 = [a2 isEqualToString:{objc_msgSend(v7, "identifier")}];
  v9 = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{a2), "overlayControl"}];
  result = [v7 overlayControl];
  v11 = v8 ^ 1;
  if (v9 != result)
  {
    v11 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v11;
  *a4 = *(*(*(a1 + 48) + 8) + 24);
  return result;
}

- (void)rebuildControls
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  os_unfair_lock_lock(&self->_controlsLock);
  v4 = [(NSArray *)self->_orderedIdentifiers copy];
  v5 = [(NSDictionary *)self->_itemsByIdentifier copy];
  v14 = self;
  os_unfair_lock_unlock(&self->_controlsLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [objc_msgSend(v5 objectForKeyedSubscript:{v10, v14), "control"}];
        v12 = -[AVCaptureControlsOverlayItem initWithControl:overlayControl:]([AVCaptureControlsOverlayItem alloc], "initWithControl:overlayControl:", v11, [v11 overlayControl]);
        [v3 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v4 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v7);
  }

  os_unfair_lock_lock(&v14->_controlsLock);

  v14->_itemsByIdentifier = [v3 copy];
  os_unfair_lock_unlock(&v14->_controlsLock);

  connectionQueue = v14->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVCaptureControlsOverlay_rebuildControls__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = v14;
  dispatch_async(connectionQueue, block);
}

uint64_t __49__AVCaptureControlsOverlay__sendControlsIsolated__block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v2 = result;
    result = [*(result + 32) count];
    if (!result)
    {
      result = [*(v2 + 40) focusLockGestureEnabled];
      if ((result & 1) == 0)
      {
        v3 = *(v2 + 48);

        return [v3 invalidate];
      }
    }
  }

  return result;
}

- (void)_invalidateIsolated
{
  [(CAMOverlayServiceConnection *)self->_connection invalidate];

  self->_connection = 0;
}

- (void)activate
{
  objc_initWeak(&location, self);
  connectionQueue = self->_connectionQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__AVCaptureControlsOverlay_activate__block_invoke;
  v4[3] = &unk_1E7875D40;
  objc_copyWeak(&v5, &location);
  dispatch_async(connectionQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __36__AVCaptureControlsOverlay_activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activateIsolated];
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AVCaptureControlsOverlay_invalidate__block_invoke;
  block[3] = &unk_1E7875D68;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(connectionQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __38__AVCaptureControlsOverlay_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) _invalidateIsolated];
}

- (void)cameraOverlayConnection:(id)a3 didApplyControlUpdate:(id)a4
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  os_unfair_lock_lock(&self->_controlsLock);
  v6 = -[NSDictionary objectForKeyedSubscript:](self->_itemsByIdentifier, "objectForKeyedSubscript:", [a4 controlIdentifier]);
  os_unfair_lock_unlock(&self->_controlsLock);
  v7 = [v6 control];

  [v7 enqueueActionWithUpdate:a4];
}

- (void)_sendControlsIsolated
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  connection = self->_connection;
  if (connection && [(CAMOverlayServiceConnection *)self->_connection status]== 1)
  {
    os_unfair_lock_lock(&self->_controlsLock);
    v4 = [(NSArray *)self->_orderedIdentifiers copy];
    v5 = [(NSDictionary *)self->_itemsByIdentifier copy];
    os_unfair_lock_unlock(&self->_controlsLock);
    v6 = [MEMORY[0x1E695DF70] array];
    v13 = OUTLINED_FUNCTION_1_12(v6, v7, &v95, v8, v9, v10, v11, v12, v62, v67, v71, v75, v79, v83, v87, v91, 0, 0, 0, 0, 0, 0, 0, 0, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, *(&v112 + 1), v113, *(&v113 + 1), v114, *(&v114 + 1), v115);
    if (v13)
    {
      v14 = v13;
      do
      {
        v15 = 0;
        do
        {
          OUTLINED_FUNCTION_3_4();
          if (!v16)
          {
            objc_enumerationMutation(v4);
          }

          v17 = [v6 addObject:{objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", *(v96 + 8 * v15++)), "overlayControl")}];
        }

        while (v14 != v15);
        v14 = OUTLINED_FUNCTION_1_12(v17, v18, &v95, v19, v20, v21, v22, v23, v63, v68, v72, v76, v80, v84, v88, v92, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, *(&v112 + 1), v113, *(&v113 + 1), v114, *(&v114 + 1), v115);
      }

      while (v14);
    }

    v64 = [v6 copy];
    v24 = [MEMORY[0x1E695DF70] array];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v31 = OUTLINED_FUNCTION_1_12(v24, v25, &v116, v26, v27, v28, v29, v30, v64, v68, v72, v76, v80, v84, v88, v92, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, *(&v112 + 1), v113, *(&v113 + 1), v114, *(&v114 + 1), v115);
    if (v31)
    {
      v39 = v31;
      v40 = *v117;
      do
      {
        v41 = 0;
        do
        {
          if (*v117 != v40)
          {
            objc_enumerationMutation(v4);
          }

          v42 = [objc_msgSend(v5 objectForKeyedSubscript:{*(*(&v116 + 1) + 8 * v41)), "control"}];
          v43 = [v42 isEnabled];
          if ((v43 & 1) == 0)
          {
            v43 = [v42 enabledUpdate];
            if (v43)
            {
              v43 = [v24 addObject:v43];
            }
          }

          ++v41;
        }

        while (v39 != v41);
        v31 = OUTLINED_FUNCTION_1_12(v43, v44, &v116, v45, v46, v47, v48, v49, v65, v69, v73, v77, v81, v85, v89, v93, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, *(&v112 + 1), v113, *(&v113 + 1), v114, *(&v114 + 1), v115);
        v39 = v31;
      }

      while (v31);
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v50 = OUTLINED_FUNCTION_4_2(v31, v32, v33, v34, v35, v36, v37, v38, v65, v69, v73, v77, v81, v85, v89, v93, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, 0);
    if (v50)
    {
      v51 = v50;
      do
      {
        v52 = 0;
        do
        {
          OUTLINED_FUNCTION_3_4();
          if (!v16)
          {
            objc_enumerationMutation(v4);
          }

          v53 = [v24 addObject:{objc_msgSend(objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", *(*(&v111 + 1) + 8 * v52++)), "control"), "overlayUpdate")}];
        }

        while (v51 != v52);
        v51 = OUTLINED_FUNCTION_4_2(v53, v54, v55, v56, v57, v58, v59, v60, v66, v70, v74, v78, v82, v86, v90, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
      }

      while (v51);
    }

    v61 = [v24 copy];
    [CAMOverlayServiceConnection configureWithControls:"configureWithControls:initialUpdates:completion:" initialUpdates:? completion:?];
  }
}

- (void)updateControl:(id)a3
{
  if (a3)
  {
    connectionQueue = self->_connectionQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __42__AVCaptureControlsOverlay_updateControl___block_invoke;
    v4[3] = &unk_1E786EAA8;
    v4[4] = self;
    v4[5] = a3;
    dispatch_async(connectionQueue, v4);
  }
}

- (void)_updateControlIsolated:(id)a3
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  connection = self->_connection;
  if (connection && [(CAMOverlayServiceConnection *)connection status]== 1)
  {

    [(CAMOverlayServiceConnection *)connection applyControlUpdate:a3 completion:&__block_literal_global_25];
  }
}

- (void)_activateIsolated
{
  if ([(CAMOverlayServiceConnection *)self->_connection status]!= 1)
  {
    [(AVCaptureControlsOverlay *)self _invalidateIsolated];
    self->_connection = [objc_msgSend(MEMORY[0x1E6993900] "sharedService")];
    -[CAMOverlayServiceConnection setFocusLockGestureEnabled:](self->_connection, "setFocusLockGestureEnabled:", [-[AVWeakReference referencedObject](self->_sessionReference "referencedObject")]);

    [(AVCaptureControlsOverlay *)self _sendControlsIsolated];
  }
}

- (void)cameraOverlayConnection:(id)a3 didChangeStatus:(unint64_t)a4
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  if (self->_connection == a3)
  {
    v6 = [a3 status];
    if (v6 == 1)
    {

      [(AVCaptureControlsOverlay *)self _sendControlsIsolated];
    }

    else if (v6 == 2)
    {
      v7 = [(AVWeakReference *)self->_sessionReference referencedObject];

      [v7 handleControlsOverlayInvalidated:self];
    }
  }
}

- (void)cameraOverlayConnection:(id)a3 didChangeOverlayVisible:(BOOL)a4 activeControlIdentifier:(id)a5
{
  OUTLINED_FUNCTION_2_5(self);
  os_unfair_lock_lock((v6 + 32));
  *(v6 + 56) = v5;

  *(v6 + 64) = 0;
  if (v5)
  {
    *(v6 + 64) = [a5 copy];
  }

  v8 = [*(v6 + 40) copy];
  os_unfair_lock_unlock((v6 + 32));
  v17 = OUTLINED_FUNCTION_0_9(v9, v10, v11, v12, v13, v14, v15, v16, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, 0);
  if (v17)
  {
    v18 = v17;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        OUTLINED_FUNCTION_3_4();
        if (!v20)
        {
          objc_enumerationMutation(v8);
        }

        v21 = [v8 objectForKeyedSubscript:*(8 * i)];
        [objc_msgSend(v21 "control")];
        v22 = [v21 control];
        if (v5)
        {
          v23 = [objc_msgSend(v22 "identifier")];
          v22 = [v21 control];
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = [v22 overlayDidMakeControlActive:v24];
      }

      v18 = OUTLINED_FUNCTION_0_9(v25, v26, v27, v28, v29, v30, v31, v32, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v66);
    }

    while (v18);
  }

  if (a5)
  {
    a5 = [objc_msgSend(v8 objectForKeyedSubscript:{a5), "control"}];
  }

  v33 = [*(v6 + 8) referencedObject];
  if (v33)
  {
    [v33 handleControlsOverlay:v6 didChangeVisibility:v5 activeControl:a5];
  }
}

- (void)cameraOverlayConnection:(id)a3 didChangeActiveControlIdentifier:(id)a4
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  v6 = [(AVWeakReference *)self->_sessionReference referencedObject];
  if (v6)
  {
    v7 = v6;
    os_unfair_lock_lock(&self->_controlsLock);
    v8 = [(NSDictionary *)self->_itemsByIdentifier copy];

    self->_activeControlIdentifier = [a4 copy];
    os_unfair_lock_unlock(&self->_controlsLock);
    v17 = OUTLINED_FUNCTION_0_9(v9, v10, v11, v12, v13, v14, v15, v16, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, 0);
    if (v17)
    {
      v18 = v17;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          OUTLINED_FUNCTION_3_4();
          if (!v20)
          {
            objc_enumerationMutation(v8);
          }

          v21 = [v8 objectForKeyedSubscript:*(8 * i)];
          v22 = [objc_msgSend(v21 "control")];
        }

        v18 = OUTLINED_FUNCTION_0_9(v22, v23, v24, v25, v26, v27, v28, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v62);
      }

      while (v18);
    }

    [v7 handleControlsOverlay:self didChangeActiveControl:{objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", a4), "control")}];
  }
}

- (void)cameraOverlayConnection:(id)a3 didChangeInterfaceReduced:(BOOL)a4
{
  OUTLINED_FUNCTION_2_5(self);
  v6 = [*(v5 + 8) referencedObject];
  if (v6)
  {

    [v6 handleControlsOverlay:v5 didChangeInterfaceReduced:v4];
  }
}

- (void)cameraOverlayConnection:(id)a3 didChangeFocusLocked:(BOOL)a4
{
  OUTLINED_FUNCTION_2_5(self);
  v6 = [*(v5 + 8) referencedObject];
  if (v6)
  {

    [v6 handleControlsOverlay:v5 didChangeFocusLocked:v4];
  }
}

- (void)updateControls:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *a2 = MEMORY[0x1E69E9820];
  a2[1] = 3221225472;
  a2[2] = __43__AVCaptureControlsOverlay_updateControls___block_invoke_2;
  a2[3] = &unk_1E786EC08;
  a2[4] = a1;
  dispatch_async(v2, a2);
}

@end