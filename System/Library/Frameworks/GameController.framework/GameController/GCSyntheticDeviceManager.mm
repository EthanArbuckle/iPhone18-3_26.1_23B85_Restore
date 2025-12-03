@interface GCSyntheticDeviceManager
- (GCSyntheticDeviceManager)init;
- (GCSyntheticDeviceManager)initWithServer:(id)server;
- (id)_onqueue_setupDeviceWithDescription:(void *)description;
- (uint64_t)_kernel_close;
- (uint64_t)_kernel_createDeviceWithProperties:(_DWORD *)properties service:;
- (uint64_t)_kernel_open:(uint64_t)result;
- (uint64_t)_kernel_terminateAllDevices:(uint64_t)result;
- (uint64_t)_kernel_terminateDeviceWithIdentifier:(uint64_t)identifier;
- (uint64_t)_user_check:(void *)_user_check device:(int *)device enabled:;
- (void)_onqueue_refreshSyntheticControllersEnabled;
- (void)_onqueue_setActiveDevices:(uint64_t)devices;
- (void)_onqueue_teardownDevice:(uint64_t)device;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation GCSyntheticDeviceManager

- (GCSyntheticDeviceManager)initWithServer:(id)server
{
  serverCopy = server;
  v59.receiver = self;
  v59.super_class = GCSyntheticDeviceManager;
  v7 = [(GCSyntheticDeviceManager *)&v59 init];
  objc_storeStrong(v7 + 1, server);
  v8 = dispatch_queue_create("SyntheticDeviceManager", 0);
  v9 = *(v7 + 2);
  *(v7 + 2) = v8;

  v10 = *MEMORY[0x1E696CD60];
  v11 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  *(v7 + 3) = v11;
  if (!v11)
  {
    v15 = getLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [GCSyntheticDeviceManager initWithServer:];
    }

    goto LABEL_10;
  }

  IONotificationPortSetDispatchQueue(v11, *(v7 + 2));
  v12 = IOServiceMatching("AppleGCResource");
  MatchingService = IOServiceGetMatchingService(v10, v12);
  v7[8] = MatchingService;
  if (!MatchingService)
  {
    v15 = getLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [GCSyntheticDeviceManager initWithServer:];
    }

    goto LABEL_10;
  }

  v14 = MEMORY[0x1E69E9A60];
  if (!IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, v7 + 9))
  {
    if ([(GCSyntheticDeviceManager *)v7 _kernel_open:?])
    {
      v15 = getLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [GCSyntheticDeviceManager initWithServer:];
      }

      goto LABEL_10;
    }

    if (_os_feature_enabled_impl())
    {
      if (mach_port_allocate(*v14, 1u, v7 + 12))
      {
        if (!gc_isInternalBuild())
        {
          v16 = 0;
          goto LABEL_12;
        }

        v15 = getGCLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [GCSyntheticDeviceManager initWithServer:];
        }

        goto LABEL_10;
      }

      v18 = v7[12];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__GCSyntheticDeviceManager_initWithServer___block_invoke;
      aBlock[3] = &unk_1E841A690;
      v58 = v18;
      v56 = v7;
      v57 = a2;
      v19 = v7;
      v55 = v19;
      v20 = _Block_copy(aBlock);
      v21 = *(v7 + 2);
      v22 = dispatch_mach_create();
      v23 = *(v19 + 7);
      *(v19 + 7) = v22;

      if (!*(v19 + 7))
      {
        v47 = getLogger();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          [GCSyntheticDeviceManager initWithServer:];
        }

        v16 = 0;
        v15 = v55;
        goto LABEL_11;
      }

      v24 = v7[12];
      dispatch_mach_connect();
      if (MEMORY[0x1D38AC160](v7[9], 1, v18, 0))
      {
        v25 = getLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [GCSyntheticDeviceManager initWithServer:];
        }
      }
    }

    v26 = IOServiceMatching("IOHIDUserDevice");
    *(v7 + 8) = v26;
    CFDictionarySetValue(v26, @"VendorID", &unk_1F4E8E348);
    CFDictionarySetValue(*(v7 + 8), @"ProductID", &unk_1F4E8E360);
    v27 = *(v7 + 3);
    v28 = CFRetain(*(v7 + 8));
    if (IOServiceAddMatchingNotification(v27, "IOServicePublish", v28, __onqueue_3PSyntheticControllersChanged, v7, v7 + 18))
    {
      v29 = getLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [GCSyntheticDeviceManager initWithServer:];
      }
    }

    v30 = *(v7 + 3);
    v31 = CFRetain(*(v7 + 8));
    if (IOServiceAddMatchingNotification(v30, "IOServiceTerminate", v31, __onqueue_3PSyntheticControllersChanged, v7, v7 + 19))
    {
      v32 = getLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [GCSyntheticDeviceManager initWithServer:];
      }
    }

    v33 = v7[18];
    if (v33)
    {
      if (v7[19])
      {
        __3PSyntheticControllersDrainIterator(v7, v33);
        __3PSyntheticControllersDrainIterator(v7, v7[19]);
LABEL_40:
        v35 = *(v7 + 2);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__GCSyntheticDeviceManager_initWithServer___block_invoke_112;
        block[3] = &unk_1E8418C28;
        v36 = v7;
        v53 = v36;
        dispatch_async(v35, block);

        LOBYTE(v35) = _os_feature_enabled_impl() ^ 1;
        v37 = GCLookupService();
        v38 = *(v36 + 11);
        *(v36 + 11) = v37;

        v39 = GCLookupService();
        v40 = *(v36 + 13);
        *(v36 + 13) = v39;

        *(v36 + 96) = v35;
        v41 = *(v36 + 11);
        if (v41)
        {
          [v41 addObserver:v36 forKeyPath:@"enableSyntheticDevices" options:5 context:0];
        }

        else
        {
          [GCSyntheticDeviceManager initWithServer:];
        }

        v42 = *(v7 + 2);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __43__GCSyntheticDeviceManager_initWithServer___block_invoke_114;
        v50[3] = &unk_1E8418C28;
        v43 = v36;
        v51 = v43;
        dispatch_async(v42, v50);
        v44 = dispatch_time(0, 5000000000);
        v45 = *(v7 + 2);
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __43__GCSyntheticDeviceManager_initWithServer___block_invoke_2;
        v48[3] = &unk_1E8418C28;
        v46 = v43;
        v49 = v46;
        dispatch_after(v44, v45, v48);
        v16 = v46;

        v15 = v51;
        goto LABEL_11;
      }

      IOObjectRelease(v7[18]);
      v7[18] = 0;
    }

    v34 = v7[19];
    if (v34)
    {
      IOObjectRelease(v34);
      v7[19] = 0;
    }

    goto LABEL_40;
  }

  v15 = getLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [GCSyntheticDeviceManager initWithServer:];
  }

LABEL_10:
  v16 = 0;
LABEL_11:

LABEL_12:
  return v16;
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 2)
  {
    v6 = dispatch_mach_msg_get_msg();
    v7 = v6;
    memset(msg, 0, sizeof(msg));
    p_msgh_id = &v6->msgh_id;
    if (v6->msgh_id == 1)
    {
      if ((v6->msgh_bits & 0x80000000) != 0)
      {
        p_msgh_size = &v6->msgh_size;
        if (v7->msgh_size == 48)
        {
          if (v7[1].msgh_bits == 1)
          {
            if (HIBYTE(v7[1].msgh_local_port) == 1 && (v10 = *&v7[1].msgh_size) != 0)
            {
              v32 = 0;
              errorString = 0;
              v11 = IOCFUnserializeWithSize(v10, v7[1].msgh_voucher_port, 0, 0, &errorString);
              v12 = v11;
              if (v11)
              {
                v13 = CFGetTypeID(v11);
                if (v13 != CFDictionaryGetTypeID())
                {
                  CFRelease(v12);
                  v12 = 0;
                  errorString = @"ClientAttributes not a CFDictionary";
                }
              }

              MEMORY[0x1D38AD500](*MEMORY[0x1E69E9A60], *&v7[1].msgh_size, v7[1].msgh_voucher_port);
              if (v12)
              {
                v29 = 0u;
                v30 = 0u;
                v27 = 0u;
                v28 = 0u;
                v14 = [*(*(a1 + 40) + 112) keyEnumerator];
                v15 = [v14 countByEnumeratingWithState:&v27 objects:v34 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v28;
LABEL_16:
                  v18 = 0;
                  while (1)
                  {
                    if (*v28 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = [*(*(a1 + 40) + 112) objectForKey:*(*(&v27 + 1) + 8 * v18)];
                    if (!v19)
                    {
                      __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_4((a1 + 48), (a1 + 32));
                    }

                    if ([(_GCSyntheticDevice *)v19 serviceIdentity]== v7[1].msgh_id)
                    {
                      break;
                    }

                    if (v16 == ++v18)
                    {
                      v16 = [v14 countByEnumeratingWithState:&v27 objects:v34 count:16];
                      if (v16)
                      {
                        goto LABEL_16;
                      }

                      goto LABEL_24;
                    }
                  }

                  if (!v19)
                  {
                    goto LABEL_30;
                  }

                  [(GCSyntheticDeviceManager *)*(a1 + 40) _user_check:v12 device:v19 enabled:&v32];
                  v21 = 0;
                }

                else
                {
LABEL_24:

LABEL_30:
                  v19 = getLogger();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_5();
                  }

                  v21 = 4;
                }

                v22 = v32;
              }

              else
              {
                v23 = getLogger();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_6(&errorString);
                }

                v22 = 0;
                v21 = 4;
              }

              *msg = v7->msgh_bits & 0x1F;
              *&msg[4] = 32;
              msgh_id = v7->msgh_id;
              *&msg[8] = v7->msgh_remote_port;
              *&msg[20] = __PAIR64__(v21, msgh_id);
              *&msg[28] = v22;
              v25 = mach_msg(msg, 17, 0x20u, 0, 0, 0, 0);
              if (v25)
              {
                __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_7(v25);
              }
            }

            else
            {
              __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_8(v7);
            }
          }

          else
          {
            __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_3(&v7[1], v7);
          }
        }

        else
        {
          __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_2(p_msgh_size, v7);
        }
      }

      else
      {
        __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_9(v6);
      }
    }

    else
    {
      v20 = getLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_1(p_msgh_id);
      }

      mach_msg_destroy(v7);
    }
  }

  else if (a2 == 8)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(a1 + 56), 1u, -1);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_user_check:(void *)_user_check device:(int *)device enabled:
{
  v7 = a2;
  _user_checkCopy = _user_check;
  if (self)
  {
    v9 = _os_activity_create(&dword_1D2CD5000, "[Synthetic Device Manager] Check Process Enabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v20.opaque[0] = 0;
    v20.opaque[1] = 0;
    os_activity_scope_enter(v9, &v20);
    v10 = getLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [GCSyntheticDeviceManager _user_check:_user_checkCopy device:v7 enabled:v10];
    }

    persistentIdentifier = [(_GCSyntheticDevice *)_user_checkCopy persistentIdentifier];
    v13 = [v7 objectForKeyedSubscript:@"BundleIdentifier"];
    if (v13)
    {
      games = [*(self + 104) games];
      v15 = [games gameWithBundleIdentifier:v13];

      if (v15)
      {
        controllerToCompatibilityModeMappings = [v15 controllerToCompatibilityModeMappings];
        v17 = [controllerToCompatibilityModeMappings objectForKeyedSubscript:persistentIdentifier];
      }

      else
      {
        v17 = 0;
      }

      if ([v17 isEqualToString:*MEMORY[0x1E69A0720]])
      {
        v18 = 2;
LABEL_12:
        *device = v18;

LABEL_15:
        os_activity_scope_leave(&v20);

        goto LABEL_16;
      }

      if ([v17 isEqualToString:*MEMORY[0x1E69A0718]])
      {
        v18 = 0;
        goto LABEL_12;
      }
    }

    *device = 0;
    goto LABEL_15;
  }

LABEL_16:

  return 0;
}

- (GCSyntheticDeviceManager)init
{
  [(GCSyntheticDeviceManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  if (self->_syntheticDevices)
  {
    [(_GCControllerManagerServer *)self->_server removeObserver:self forKeyPath:@"activeControllerDevices" context:0];
    syntheticDevices = self->_syntheticDevices;
    self->_syntheticDevices = 0;
  }

  defaults = self->_defaults;
  if (defaults)
  {
    [(GCUserDefaults *)defaults removeObserver:self forKeyPath:@"enableSyntheticDevices"];
    v5 = self->_defaults;
    self->_defaults = 0;
  }

  IOObjectRelease(self->_3pSyntheticControllerTerminatedNotification);
  self->_3pSyntheticControllerTerminatedNotification = 0;
  IOObjectRelease(self->_3pSyntheticControllerPublishedNotification);
  self->_3pSyntheticControllerPublishedNotification = 0;
  _3pSyntheticControllerMatchingCriteria = self->_3pSyntheticControllerMatchingCriteria;
  if (_3pSyntheticControllerMatchingCriteria)
  {
    CFRelease(_3pSyntheticControllerMatchingCriteria);
    self->_3pSyntheticControllerMatchingCriteria = 0;
  }

  if (self->_upcallMachChannel)
  {
    dispatch_mach_cancel();
    upcallMachChannel = self->_upcallMachChannel;
    self->_upcallMachChannel = 0;
  }

  IOConnectCallScalarMethod(self->_connect, 1u, 0, 0, 0, 0);
  IOServiceClose(self->_connect);
  self->_connect = 0;
  IOObjectRelease(self->_service);
  self->_service = 0;
  v8.receiver = self;
  v8.super_class = GCSyntheticDeviceManager;
  [(GCSyntheticDeviceManager *)&v8 dealloc];
}

- (id)_onqueue_setupDeviceWithDescription:(void *)description
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (description)
  {
    v4 = _os_activity_create(&dword_1D2CD5000, "[Synthetic Device Manager] Setup Kernel Device", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    v5 = getLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 debugDescription];
      [(GCSyntheticDeviceManager *)v6 _onqueue_setupDeviceWithDescription:buf, v5];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__GCSyntheticDeviceManager__onqueue_setupDeviceWithDescription___block_invoke;
    v9[3] = &unk_1E841A6B8;
    v9[4] = description;
    description = [(_GCSyntheticDevice *)_GCSyntheticXbox360Controller deviceWithDescription:v3 creator:v9];
    os_activity_scope_leave(&state);
  }

  v7 = *MEMORY[0x1E69E9840];

  return description;
}

uint64_t __64__GCSyntheticDeviceManager__onqueue_setupDeviceWithDescription___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [(GCSyntheticDeviceManager *)*(a1 + 32) _kernel_createDeviceWithProperties:a2 service:&v7];
  if (v2)
  {
    v3 = v2;
    v4 = getLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_DEFAULT, "#KERNEL AppleGCResource create device failed: %{mach.errno}d.", buf, 8u);
    }

    result = 0;
  }

  else
  {
    result = v7;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self->_server == objectCopy && [pathCopy isEqualToString:@"activeControllerDevices"])
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v13 = _os_activity_create(&dword_1D2CD5000, "[Synthetic Device Manager] 'activeControllerDevices' changed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v13, &state);
    v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__GCSyntheticDeviceManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E8418C50;
    v23 = v14;
    selfCopy = self;
    v16 = v14;
    dispatch_async(queue, block);
    os_activity_scope_leave(&state);
  }

  else
  {
    if (self->_defaults != objectCopy || ![pathCopy isEqualToString:@"enableSyntheticDevices"])
    {
      v20.receiver = self;
      v20.super_class = GCSyntheticDeviceManager;
      [(GCSyntheticDeviceManager *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_13;
    }

    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v13 = _os_activity_create(&dword_1D2CD5000, "[Synthetic Device Manager] Preference changed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v13, &state);
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v18 = getLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [GCSyntheticDeviceManager observeValueForKeyPath:v17 ofObject:v18 change:? context:?];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_disabledByPreference = [v17 BOOLValue] ^ 1;
    }

    v19 = self->_queue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__GCSyntheticDeviceManager_observeValueForKeyPath_ofObject_change_context___block_invoke_131;
    v21[3] = &unk_1E8418C28;
    v21[4] = self;
    dispatch_async(v19, v21);
    os_activity_scope_leave(&state);
  }

LABEL_13:
}

- (uint64_t)_kernel_open:(uint64_t)result
{
  if (result)
  {
    output = 0;
    input = 0;
    outputCnt = 1;
    result = IOConnectCallScalarMethod(*(result + 36), 0, &input, 1u, &output, &outputCnt);
    if (a2)
    {
      *a2 = output;
    }
  }

  return result;
}

- (void)_onqueue_refreshSyntheticControllersEnabled
{
  v25 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_13;
  }

  dispatch_assert_queue_V2(*(self + 16));
  if (*(self + 80))
  {
    v2 = getLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(self + 80);
      OUTLINED_FUNCTION_5_6();
      _os_log_debug_impl(v9, v10, v11, v12, v13, 0xCu);
    }

    if (*(self + 96) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (*(self + 96))
  {
LABEL_8:
    v3 = getLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_5_6();
      _os_log_debug_impl(v14, v15, v16, v17, v18, 2u);
    }

LABEL_11:
    if (*(self + 112))
    {
      [(GCSyntheticDeviceManager *)self _onqueue_setActiveDevices:?];
      [*(self + 8) removeObserver:self forKeyPath:@"activeControllerDevices" context:0];
      v8 = *(self + 112);
      *(self + 112) = 0;
    }

    goto LABEL_13;
  }

  if (!*(self + 112))
  {
    v5 = getLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_5_6();
      _os_log_debug_impl(v19, v20, v21, v22, v23, 2u);
    }

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v7 = *(self + 112);
    *(self + 112) = strongToStrongObjectsMapTable;

    [*(self + 8) addObserver:self forKeyPath:@"activeControllerDevices" options:5 context:0];
  }

LABEL_13:
  v4 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_kernel_terminateAllDevices:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v4 = *(result + 40);
    }

    else
    {
      v4 = 0;
    }

    input[1] = v2;
    input[2] = v3;
    input[0] = v4;
    return IOConnectCallScalarMethod(*(result + 36), 4u, input, 1u, 0, 0);
  }

  return result;
}

- (uint64_t)_kernel_close
{
  if (result)
  {
    return IOConnectCallScalarMethod(*(result + 36), 1u, 0, 0, 0, 0);
  }

  return result;
}

- (uint64_t)_kernel_createDeviceWithProperties:(_DWORD *)properties service:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = IOCFSerialize(v5, 0);
    if (v7)
    {
      v8 = v7;
      output = 0;
      outputCnt = 1;
      v9 = *(self + 36);
      BytePtr = CFDataGetBytePtr(v7);
      Length = CFDataGetLength(v8);
      self = IOConnectCallMethod(v9, 2u, 0, 0, BytePtr, Length, &output, &outputCnt, 0, 0);
      if (!self)
      {
        if (properties)
        {
          *properties = output;
        }

        else
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], output);
        }
      }

      CFRelease(v8);
    }

    else
    {
      v12 = getLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D2CD5000, v12, OS_LOG_TYPE_INFO, "Serialization failed", buf, 2u);
      }

      self = 3758097097;
    }
  }

  return self;
}

- (void)_onqueue_teardownDevice:(uint64_t)device
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (device)
  {
    v16.opaque[0] = 0;
    v16.opaque[1] = 0;
    v4 = _os_activity_create(&dword_1D2CD5000, "[Synthetic Device Manager] Teardown Kernel Device", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &v16);
    v5 = getLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v3;
      _os_log_debug_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_DEBUG, "Teardown kernel synthetic device: %@", buf, 0xCu);
    }

    identifier = [(_GCSyntheticDevice *)v3 identifier];
    v8 = [(GCSyntheticDeviceManager *)device _kernel_terminateDeviceWithIdentifier:identifier];
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = v8;
    if (v8 == -536870208)
    {
      v10 = getLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = identifier;
        v11 = "No kernel device with identifier '%@'.";
        v12 = v10;
        v13 = OS_LOG_TYPE_INFO;
        v14 = 12;
LABEL_10:
        _os_log_impl(&dword_1D2CD5000, v12, v13, v11, buf, v14);
      }
    }

    else
    {
      v10 = getLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = v9;
        v11 = "#KERNEL AppleGCResource terminate device failed: %{mach.errno}d.";
        v12 = v10;
        v13 = OS_LOG_TYPE_DEFAULT;
        v14 = 8;
        goto LABEL_10;
      }
    }

LABEL_12:
    os_activity_scope_leave(&v16);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_kernel_terminateDeviceWithIdentifier:(uint64_t)identifier
{
  identifierCopy = identifier;
  v16[1] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    v15 = @"_GCSyntheticDeviceIdentifier";
    v16[0] = a2;
    v3 = MEMORY[0x1E695DF20];
    v4 = a2;
    v5 = [v3 dictionaryWithObjects:v16 forKeys:&v15 count:1];

    v6 = IOCFSerialize(v5, 0);
    if (v6)
    {
      v7 = v6;
      v8 = *(identifierCopy + 36);
      BytePtr = CFDataGetBytePtr(v6);
      Length = CFDataGetLength(v7);
      identifierCopy = IOConnectCallMethod(v8, 3u, 0, 0, BytePtr, Length, 0, 0, 0, 0);
      CFRelease(v7);
    }

    else
    {
      v11 = getLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D2CD5000, v11, OS_LOG_TYPE_INFO, "Serialization failed", buf, 2u);
      }

      identifierCopy = 3758097097;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return identifierCopy;
}

- (void)_onqueue_setActiveDevices:(uint64_t)devices
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (devices)
  {
    dispatch_assert_queue_V2(*(devices + 16));
    v4 = [*(devices + 112) copy];
    v5 = v4;
    if (v4)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      keyEnumerator = [v4 keyEnumerator];
      v7 = [keyEnumerator countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v32;
        do
        {
          v10 = 0;
          do
          {
            if (*v32 != v9)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v11 = *(*(&v31 + 1) + 8 * v10);
            v12 = [v3 member:v11];

            if (!v12)
            {
              v13 = [v5 objectForKey:v11];
              if (!v13)
              {
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler handleFailureInMethod:sel__onqueue_setActiveDevices_ object:devices file:@"GCSyntheticDeviceManager.m" lineNumber:449 description:{@"Bug in %s", "-[GCSyntheticDeviceManager _onqueue_setActiveDevices:]"}];
              }

              [(GCSyntheticDeviceManager *)devices _onqueue_teardownDevice:v13];
              [*(devices + 112) removeObjectForKey:v11];
            }

            ++v10;
          }

          while (v8 != v10);
          v14 = [keyEnumerator countByEnumeratingWithState:&v31 objects:v38 count:16];
          v8 = v14;
        }

        while (v14);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = v3;
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v28;
        do
        {
          v19 = 0;
          do
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v27 + 1) + 8 * v19);
            v21 = [v5 objectForKey:v20];

            if (!v21)
            {
              makeSyntheticController = [v20 makeSyntheticController];
              if (makeSyntheticController)
              {
                v23 = [(GCSyntheticDeviceManager *)devices _onqueue_setupDeviceWithDescription:makeSyntheticController];
                [*(devices + 112) setObject:v23 forKey:v20];
              }

              else
              {
                v23 = getLogger();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v36 = v20;
                  _os_log_error_impl(&dword_1D2CD5000, v23, OS_LOG_TYPE_ERROR, "%@ did not return a synthetic device description.", buf, 0xCu);
                }
              }
            }

            ++v19;
          }

          while (v17 != v19);
          v24 = [v15 countByEnumeratingWithState:&v27 objects:v37 count:16];
          v17 = v24;
        }

        while (v24);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __75__GCSyntheticDeviceManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_25];
  v4 = [v2 filteredSetUsingPredicate:v3];

  [(GCSyntheticDeviceManager *)*(a1 + 40) _onqueue_setActiveDevices:v4];
}

- (void)initWithServer:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithServer:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithServer:.cold.3()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithServer:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithServer:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithServer:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithServer:.cold.7()
{
  v0 = getLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_ERROR, "Failed to load user defaults.", v1, 2u);
  }
}

- (void)initWithServer:.cold.8()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithServer:.cold.9()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithServer:.cold.10()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_1(int *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_2(int *a1, mach_msg_header_t *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = getLogger();
  if (OUTLINED_FUNCTION_5_8(v5))
  {
    v12 = *a1;
    OUTLINED_FUNCTION_1_18();
    _os_log_error_impl(v7, v8, v9, v10, v11, 8u);
  }

  mach_msg_destroy(a2);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_3(int *a1, mach_msg_header_t *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = getLogger();
  if (OUTLINED_FUNCTION_5_8(v5))
  {
    v12 = *a1;
    OUTLINED_FUNCTION_1_18();
    _os_log_error_impl(v7, v8, v9, v10, v11, 8u);
  }

  mach_msg_destroy(a2);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_4(void *a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*a1 object:*a2 file:@"GCSyntheticDeviceManager.m" lineNumber:202 description:{@"Bug in %s", "-[GCSyntheticDeviceManager initWithServer:]_block_invoke"}];
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_6(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_7(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = getLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_ERROR, "#Mach message reply failed: %{mach.errno}d.", v4, 8u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_8(mach_msg_header_t *a1)
{
  v3 = getLogger();
  if (OUTLINED_FUNCTION_5_8(v3))
  {
    OUTLINED_FUNCTION_1_18();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  mach_msg_destroy(a1);
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_9(mach_msg_header_t *a1)
{
  v3 = getLogger();
  if (OUTLINED_FUNCTION_5_8(v3))
  {
    OUTLINED_FUNCTION_1_18();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  mach_msg_destroy(a1);
}

- (void)_user_check:(uint64_t)a1 device:(uint64_t)a2 enabled:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_DEBUG, "Check %@ enabled: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_setupDeviceWithDescription:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_DEBUG, "Setup kernel synthetic device with description: %@", buf, 0xCu);
}

- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:(NSObject *)a2 change:context:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = @"enableSyntheticDevices";
  v5 = 2114;
  v6 = a1;
  _os_log_debug_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_DEBUG, "New %{public}@ #preference is %{public}@.", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end