@interface _GCHapticServerManager
+ (id)sharedInstance;
- (BOOL)acceptNewConnection:(id)a3 fromHapticsEnabledApp:(id)a4;
- (BOOL)playersHaveImpendingCommandsForStartTime:(double)a3 endTime:(double)a4;
- (BOOL)readClientDataForStartTime:(double)a3 endTime:(double)a4;
- (_GCHapticServerManager)init;
- (id)__onqueue_reserveChannels:(unint64_t)a3 forClient:(id)a4;
- (void)dealloc;
- (void)enterRunloop;
- (void)hapticClientProxyInitialized:(id)a3;
- (void)identifyCompletedClients;
- (void)logicalDeviceWasUnregistered:(id)a3;
- (void)notifyPlayerNoLongerRetained:(id)a3;
- (void)processActiveEventsForStartTime:(double)a3 endTime:(double)a4;
- (void)processScheduledCommandsForStartTime:(double)a3 endTime:(double)a4;
- (void)readListCommand:(HapticCommand *)a3 client:(id)a4 renderTime:(double)var2;
- (void)readParamCurveListCommand:(HapticCommand *)a3 client:(id)a4;
- (void)removeHapticClient:(id)a3;
- (void)scheduleCommand:(const void *)a3;
- (void)spawnInputThread;
@end

@implementation _GCHapticServerManager

+ (id)sharedInstance
{
  if (+[_GCHapticServerManager sharedInstance]::onceToken != -1)
  {
    +[_GCHapticServerManager sharedInstance];
  }

  v3 = +[_GCHapticServerManager sharedInstance]::hapticServerManager;

  return v3;
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_appMonitor invalidate];
  v3.receiver = self;
  v3.super_class = _GCHapticServerManager;
  [(_GCHapticServerManager *)&v3 dealloc];
}

- (_GCHapticServerManager)init
{
  v22.receiver = self;
  v22.super_class = _GCHapticServerManager;
  v2 = [(_GCHapticServerManager *)&v22 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    logicalHapticDevices = v2->_logicalHapticDevices;
    v2->_logicalHapticDevices = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    clientInvalidationHandlers = v2->_clientInvalidationHandlers;
    v2->_clientInvalidationHandlers = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    hapticPlayers = v2->_hapticPlayers;
    v2->_hapticPlayers = v9;

    v2->_nextClientID = 1;
    v2->_tickLengthSeconds = 0.06;
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v12 = dispatch_queue_create("com.apple.gamecontrollerd.haptics.runloop", v11);
    runloopQueue = v2->_runloopQueue;
    v2->_runloopQueue = v12;

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v2 selector:sel_logicalDeviceWasUnregistered_ name:@"GCLogicalDeviceWasUnregisteredNotification" object:0];

    objc_initWeak(&location, v2);
    v15 = objc_alloc_init(MEMORY[0x1E698D028]);
    appMonitor = v2->_appMonitor;
    v2->_appMonitor = v15;

    [(BKSApplicationStateMonitor *)v2->_appMonitor updateInterestedStates:14];
    v17 = v2->_appMonitor;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __30___GCHapticServerManager_init__block_invoke;
    v19[3] = &unk_1E841A118;
    objc_copyWeak(&v20, &location);
    [(BKSApplicationStateMonitor *)v17 setHandler:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (BOOL)acceptNewConnection:(id)a3 fromHapticsEnabledApp:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticServerManager acceptNewConnection:fromHapticsEnabledApp:];
  }

  v8 = [[_GCHapticClientConnection alloc] initWithConnection:v6 fromProcess:v7];
  [v7 addConnection:v8];
  nextClientID = self->_nextClientID;
  self->_nextClientID = nextClientID + 1;
  v10 = +[_GCControllerManagerServer sharedInstance];
  v11 = [_GCHapticClientProxy clientProxyWithConnection:v8 server:v10 clientID:nextClientID];

  [(_GCHapticClientConnection *)v8 setServer:v11];
  [(GCIPCRemoteConnection *)v8 resume];
  objc_initWeak(location, self);
  objc_initWeak(&from, v11);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke;
  aBlock[3] = &unk_1E841A140;
  objc_copyWeak(&v26, location);
  objc_copyWeak(&v27, &from);
  v12 = _Block_copy(aBlock);
  appMonitor = self->_appMonitor;
  v14 = [v6 processIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_13;
  v22[3] = &unk_1E841A168;
  objc_copyWeak(&v23, location);
  objc_copyWeak(&v24, &from);
  [(BKSApplicationStateMonitor *)appMonitor applicationInfoForPID:v14 completion:v22];
  runloopQueue = self->_runloopQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_15;
  block[3] = &unk_1E841A190;
  objc_copyWeak(&v20, location);
  objc_copyWeak(v21, &from);
  v21[1] = nextClientID;
  block[4] = self;
  v19 = v12;
  v16 = v12;
  dispatch_async(runloopQueue, block);

  objc_destroyWeak(v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);

  return 1;
}

- (void)removeHapticClient:(id)a3
{
  v4 = a3;
  runloopQueue = self->_runloopQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45___GCHapticServerManager_removeHapticClient___block_invoke;
  v7[3] = &unk_1E841A0F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(runloopQueue, v7);
}

- (void)hapticClientProxyInitialized:(id)a3
{
  v4 = a3;
  logicalHapticDevices = self->_logicalHapticDevices;
  v12 = v4;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)logicalHapticDevices objectForKey:v6];

  if (!v7)
  {
    v8 = [_GCHapticLogicalDevice alloc];
    v9 = [v12 identifier];
    v7 = [(_GCHapticLogicalDevice *)v8 initWithIdentifier:v9 clientConnection:v12];

    v10 = self->_logicalHapticDevices;
    v11 = [v12 identifier];
    [(NSMutableDictionary *)v10 setObject:v7 forKey:v11];
  }

  [(_GCHapticLogicalDevice *)v7 registerHapticClient:v12];
  [(_GCHapticServerManager *)self spawnInputThread];
}

- (void)spawnInputThread
{
  v0 = getGCHapticsLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
  }
}

- (void)logicalDeviceWasUnregistered:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  runloopQueue = self->_runloopQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___GCHapticServerManager_logicalDeviceWasUnregistered___block_invoke;
  block[3] = &unk_1E841A1E0;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  dispatch_sync(runloopQueue, block);
  if (v14[5])
  {
    v7 = self->_runloopQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55___GCHapticServerManager_logicalDeviceWasUnregistered___block_invoke_23;
    v8[3] = &unk_1E841A208;
    v8[4] = self;
    v8[5] = &v13;
    dispatch_sync(v7, v8);
  }

  _Block_object_dispose(&v13, 8);
}

- (void)scheduleCommand:(const void *)a3
{
  hapticPlayers = self->_hapticPlayers;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(a3 + 2)];
  v6 = [(NSMutableDictionary *)hapticPlayers objectForKey:v5];

  [v6 scheduleCommand:a3];
}

- (BOOL)readClientDataForStartTime:(double)a3 endTime:(double)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v30.var0 = 168;
  v30.var2 = 0.0;
  v30.var3 = -1;
  v30.var4 = -1;
  memset(&v30.var5, 0, 76);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_clients;
  v7 = 0;
  v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v24 objects:&v29 count:16];
  if (v8)
  {
    v10 = *v25;
    *&v9 = 134218496;
    v21 = v9;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(NSMutableDictionary *)self->_clients objectForKeyedSubscript:*(*(&v24 + 1) + 8 * v11), v21];
        logicalHapticDevices = self->_logicalHapticDevices;
        v14 = [v12 identifier];
        v15 = [(NSMutableDictionary *)logicalHapticDevices objectForKey:v14];
        LOBYTE(logicalHapticDevices) = v15 == 0;

        if ((logicalHapticDevices & 1) == 0 && [v12 running] && (objc_msgSend(v12, "stopping") & 1) == 0)
        {
          while (HapticSharedMemory::readCommand([v12 sharedMemory], &v30))
          {
            if (v30.var0.var1 == 6)
            {
              if (gc_isInternalBuild())
              {
                v17 = getGCHapticsLogger();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                {
                  buf.var0 = v21;
                  *&buf.var1 = v30.var2;
                  WORD2(buf.var2) = 1024;
                  *(&buf.var2 + 6) = v30.var0.var1;
                  WORD1(buf.var3) = 1024;
                  HIDWORD(buf.var3) = v30.var3;
                  _os_log_debug_impl(&dword_1D2CD5000, v17, OS_LOG_TYPE_DEBUG, "StartEventList from client: time: %.3f type: %u chanID: %d", &buf, 0x18u);
                }
              }

              buf = v30;
              [(_GCHapticServerManager *)self readListCommand:&buf client:v12 renderTime:a3];
              v7 = 1;
            }

            else if (v30.var0.var1 == 9)
            {
              v7 = 1;
              if (gc_isInternalBuild())
              {
                v16 = getGCHapticsLogger();
                [(_GCHapticServerManager *)v16 readClientDataForStartTime:v23 endTime:?];
              }
            }

            else
            {
              v7 = 1;
              [(_GCHapticServerManager *)self scheduleCommand:&v30];
            }
          }
        }

        ++v11;
      }

      while (v11 != v8);
      v18 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v24 objects:&v29 count:16];
      v8 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (void)processScheduledCommandsForStartTime:(double)a3 endTime:(double)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_hapticPlayers;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(NSMutableDictionary *)self->_hapticPlayers objectForKey:*(*(&v17 + 1) + 8 * i), v17];
        v11 = v10[1];
        v12 = [v11 count];
        if (v12 >= 1)
        {
          for (j = (v12 & 0x7FFFFFFF) + 1; j > 1; --j)
          {
            v14 = [v11 objectAtIndexedSubscript:j - 2];
            if ([v14 type] == 30)
            {
              [v11 removeLastObject];
            }

            else
            {
              [v14 time];
              if (v15 >= a4)
              {

                break;
              }

              [v11 removeLastObject];
              [v10 handleCommand:v14];
            }
          }
        }
      }

      v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)playersHaveImpendingCommandsForStartTime:(double)a3 endTime:(double)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_hapticPlayers;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(NSMutableDictionary *)self->_hapticPlayers objectForKey:*(*(&v14 + 1) + 8 * i), v14];
        if ([v10[1] count])
        {
          v11 = [v10 hasScheduledEventsByTime:a4 + 1.0];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)processActiveEventsForStartTime:(double)a3 endTime:(double)a4
{
  v120 = *MEMORY[0x1E69E9840];
  [(_GCHapticServerManager *)self setActiveEvents:0];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v72 = self;
  obj = self->_logicalHapticDevices;
  v62 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v89 objects:v119 count:16];
  if (v62)
  {
    v63 = *v90;
    v8 = &OBJC_IVAR____GCHapticLogicalDevice__hapticPlayers;
    *&v7 = 138414338;
    v60 = v7;
    do
    {
      v65 = 0;
      do
      {
        if (*v90 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v61 = *(*(&v89 + 1) + 8 * v65);
        v71 = [(NSMutableDictionary *)v72->_logicalHapticDevices objectForKeyedSubscript:v60];
        v118 = 0;
        v117 = 0;
        v116 = 0;
        v115 = 0;
        v66 = [MEMORY[0x1E695DF70] array];
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v67 = *(v71 + *v8);
        v9 = 0;
        v10 = [v67 countByEnumeratingWithState:&v85 objects:v114 count:16];
        if (v10)
        {
          v68 = *v86;
          do
          {
            v11 = 0;
            v69 = v10;
            do
            {
              if (*v86 != v68)
              {
                objc_enumerationMutation(v67);
              }

              v12 = *(*(&v85 + 1) + 8 * v11);
              [v12 processSliceForLogicalDevice:v71 startTime:a3 endTime:a4];
              [v12 continuousIntensity];
              if (v13 > 0.0)
              {
                v14 = v12[6];
                if (v14)
                {
                  *(v14 + 8) = 1;
                }
              }

              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v15 = [v12 actuators];
              v16 = [v15 countByEnumeratingWithState:&v81 objects:v113 count:16];
              v70 = v9;
              v17 = v8;
              if (v16)
              {
                v18 = *v82;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v82 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v20 = *(*(&v81 + 1) + 8 * i);
                    [v12 continuousIntensity];
                    v22 = v21;
                    v23 = [v20 index];
                    *(&v117 + v23) = v22 + *(&v117 + v23);
                    [v12 continuousSharpness];
                    v25 = v24;
                    v26 = [v20 index];
                    *(&v115 + v26) = v25 + *(&v115 + v26);
                  }

                  v16 = [v15 countByEnumeratingWithState:&v81 objects:v113 count:16];
                }

                while (v16);
              }

              v8 = v17;
              v9 = v70;
              if (![(_GCHapticServerManager *)v72 activeEvents])
              {
                -[_GCHapticServerManager setActiveEvents:](v72, "setActiveEvents:", [v12 hasProcessedActiveEventsAfterTime:a4 + -1.0] | -[_GCHapticServerManager activeEvents](v72, "activeEvents"));
              }

              if ([v12 transientsEnqueuedSinceLastQuery])
              {
                v27 = v12[6];
                v9 = 1;
                if (v27)
                {
                  *(v27 + 8) = 1;
                }
              }

              if (([v12 isActiveAtTime:a3] & 1) == 0)
              {
                [v66 addObject:v12];
              }

              ++v11;
            }

            while (v11 != v69);
            v10 = [v67 countByEnumeratingWithState:&v85 objects:v114 count:16];
          }

          while (v10);
        }

        v28 = 0;
        v29 = 0;
        do
        {
          while (1)
          {
            v30 = fmin(fmax(*(&v115 + v28), 0.0), 1.0);
            *(&v115 + v28) = v30;
            v31 = fmin(fmax(*(&v117 + v28), 0.0), 1.0);
            *(&v117 + v28) = v31;
            if (*(v71 + v28 + 10) != v30)
            {
              *(v71 + v28 + 10) = v30;
              v29 = 1;
            }

            if (*(v71 + v28 + 14) == v31)
            {
              break;
            }

            *(v71 + v28++ + 14) = v31;
            v29 = 1;
            if (v28 == 4)
            {
              goto LABEL_38;
            }
          }

          ++v28;
        }

        while (v28 != 4);
        if (v29)
        {
LABEL_38:
          if (gc_isInternalBuild())
          {
            v57 = getGCHapticsLogger();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              *buf = v60;
              v96 = v61;
              v97 = 2048;
              v98 = *&v117;
              v99 = 2048;
              v100 = *(&v117 + 1);
              v101 = 2048;
              v102 = *&v118;
              v103 = 2048;
              v104 = *(&v118 + 1);
              v105 = 2048;
              v106 = *&v115;
              v107 = 2048;
              v108 = *(&v115 + 1);
              v109 = 2048;
              v110 = *&v116;
              v111 = 2048;
              v112 = *(&v116 + 1);
              _os_log_debug_impl(&dword_1D2CD5000, v57, OS_LOG_TYPE_DEBUG, "%@ I=(%.3f %.3f %.3f %.3f) S=(%.3f %.3f %.3f %.3f)", buf, 0x5Cu);
            }
          }

          v32 = [v71[10] actuators];
          v33 = [v32 firstObject];
          v34 = [v33 type] == 1;

          v37 = v71[9];
          if (v34)
          {
            LODWORD(v35) = v115;
            LODWORD(v36) = v117;
            [v37 setHapticMotor:0 frequency:v35 amplitude:v36];
            LODWORD(v38) = HIDWORD(v115);
            LODWORD(v39) = HIDWORD(v117);
            [v71[9] setHapticMotor:1 frequency:v38 amplitude:v39];
            LODWORD(v40) = v116;
            LODWORD(v41) = v118;
            [v71[9] setHapticMotor:2 frequency:v40 amplitude:v41];
            LODWORD(v42) = HIDWORD(v116);
            LODWORD(v43) = HIDWORD(v118);
          }

          else
          {
            LODWORD(v35) = v117;
            [v37 setHapticMotor:0 frequency:v35 amplitude:0.0];
            LODWORD(v44) = HIDWORD(v117);
            [v71[9] setHapticMotor:1 frequency:v44 amplitude:0.0];
            LODWORD(v45) = v118;
            [v71[9] setHapticMotor:2 frequency:v45 amplitude:0.0];
            v43 = 0.0;
            LODWORD(v42) = HIDWORD(v118);
          }

          [v71[9] setHapticMotor:3 frequency:v42 amplitude:v43];
LABEL_43:
          [v71[9] enableHaptics];
          goto LABEL_44;
        }

        if (v9)
        {
          goto LABEL_43;
        }

LABEL_44:
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v46 = v66;
        v47 = [v46 countByEnumeratingWithState:&v77 objects:v94 count:16];
        if (v47)
        {
          v48 = *v78;
          do
          {
            for (j = 0; j != v47; ++j)
            {
              if (*v78 != v48)
              {
                objc_enumerationMutation(v46);
              }

              [*(v71 + *v8) removeObject:*(*(&v77 + 1) + 8 * j)];
            }

            v47 = [v46 countByEnumeratingWithState:&v77 objects:v94 count:16];
          }

          while (v47);
        }

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v50 = v46;
        v51 = [v50 countByEnumeratingWithState:&v73 objects:v93 count:16];
        if (v51)
        {
          v52 = *v74;
          do
          {
            for (k = 0; k != v51; ++k)
            {
              if (*v74 != v52)
              {
                objc_enumerationMutation(v50);
              }

              v54 = *(*(&v73 + 1) + 8 * k);
              if (gc_isInternalBuild())
              {
                getGCHapticsLogger();
                objc_claimAutoreleasedReturnValue();
                [_GCHapticServerManager processActiveEventsForStartTime:endTime:];
              }

              hapticPlayers = v72->_hapticPlayers;
              v56 = [v54 identifier];
              [(NSMutableDictionary *)hapticPlayers removeObjectForKey:v56];
            }

            v51 = [v50 countByEnumeratingWithState:&v73 objects:v93 count:16];
          }

          while (v51);
        }

        ++v65;
      }

      while (v65 != v62);
      v58 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v89 objects:v119 count:16];
      v62 = v58;
    }

    while (v58);
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (void)notifyPlayerNoLongerRetained:(id)a3
{
  v4 = a3;
  runloopQueue = self->_runloopQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55___GCHapticServerManager_notifyPlayerNoLongerRetained___block_invoke;
  v7[3] = &unk_1E841A0F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(runloopQueue, v7);
}

- (void)identifyCompletedClients
{
  v46 = *MEMORY[0x1E69E9840];
  v30 = [MEMORY[0x1E695DF90] dictionary];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = self->_clients;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v4)
  {
    v5 = *v40;
    v6 = MEMORY[0x1E695E118];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v40 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [v30 setObject:v6 forKeyedSubscript:*(*(&v39 + 1) + 8 * i)];
      }

      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v4);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = self->_hapticPlayers;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v9)
  {
    v10 = *v36;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [(NSMutableDictionary *)self->_hapticPlayers objectForKey:*(*(&v35 + 1) + 8 * j)];
        if (([v12[6] complete] & 1) == 0)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12[6], "clientID")}];
          if ([v12 hasScheduledCommands])
          {
            v14 = 0;
          }

          else
          {
            v14 = [v12 hasProcessedActiveEventsThisSlice] ^ 1;
          }

          v15 = [v30 objectForKeyedSubscript:v13];
          v16 = v15 == 0;

          v17 = MEMORY[0x1E696AD98];
          if (v16)
          {
            v18 = [MEMORY[0x1E696AD98] numberWithBool:v14];
            [v30 setObject:v18 forKeyedSubscript:v13];
          }

          else
          {
            v18 = [v30 objectForKeyedSubscript:v13];
            v19 = [v17 numberWithBool:{objc_msgSend(v18, "BOOLValue") & v14}];
            [v30 setObject:v19 forKeyedSubscript:v13];
          }
        }
      }

      v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v9);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v30;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v21)
  {
    v22 = *v32;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v31 + 1) + 8 * k);
        v25 = [v20 objectForKeyedSubscript:v24];
        v26 = [v25 BOOLValue];

        v27 = [(NSMutableDictionary *)self->_clients objectForKeyedSubscript:v24];
        v28 = v27;
        if (v26)
        {
          [v27 setComplete:1];
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v21);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)enterRunloop
{
  OUTLINED_FUNCTION_6_4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    *a3 = 0;
    OUTLINED_FUNCTION_4_6();
    _os_log_debug_impl(v7, v8, v9, v10, v11, 2u);
  }
}

- (void)readParamCurveListCommand:(HapticCommand *)a3 client:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  var2 = a3->var2;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticServerManager readParamCurveListCommand:client:];
  }

  *&v8 = 134218240;
  v17 = v8;
  while (HapticSharedMemory::readCommand([v6 sharedMemory], a3))
  {
    var1 = a3->var0.var1;
    if (var1 != 10)
    {
      if (var1 == 9)
      {
        if (!gc_isInternalBuild())
        {
          break;
        }

        v14 = getGCHapticsLogger();
        [_GCHapticServerManager readParamCurveListCommand:v14 client:?];
      }

      else if (var1 == 11)
      {
        if (!gc_isInternalBuild())
        {
          break;
        }

        v13 = getGCHapticsLogger();
        [_GCHapticServerManager readParamCurveListCommand:v13 client:?];
      }

      else
      {
        if (!gc_isInternalBuild())
        {
          break;
        }

        v16 = getGCHapticsLogger();
        [(_GCHapticServerManager *)v16 readParamCurveListCommand:buf client:?];
      }

      break;
    }

    a3->var2 = var2 + a3->var2;
    if (gc_isInternalBuild())
    {
      v10 = getGCHapticsLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = a3->var2;
        v12 = a3->var0.var1;
        *buf = v17;
        *&buf[4] = v11;
        v19 = 1024;
        v20 = v12;
        _os_log_debug_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_DEBUG, "AddParamCurve - adjusted time: %.3f, type: %u", buf, 0x12u);
      }
    }

    [(_GCHapticServerManager *)self scheduleCommand:a3];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)readListCommand:(HapticCommand *)a3 client:(id)a4 renderTime:(double)var2
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a3->var2 > var2)
  {
    var2 = a3->var2;
  }

  *&v9 = 67110144;
  v26 = v9;
  while (1)
  {
    while (1)
    {
      if (!HapticSharedMemory::readCommand([v8 sharedMemory], a3))
      {
        if (!gc_isInternalBuild())
        {
          goto LABEL_20;
        }

        v22 = getGCHapticsLogger();
        [_GCHapticServerManager readListCommand:v22 client:buf renderTime:?];
        goto LABEL_22;
      }

      var1 = a3->var0.var1;
      if (var1 != 9)
      {
        break;
      }

      a3->var2 = var2 + a3->var2;
      if (gc_isInternalBuild())
      {
        getGCHapticsLogger();
        objc_claimAutoreleasedReturnValue();
        [_GCHapticServerManager readListCommand:client:renderTime:];
      }

      v12 = *&a3->var5.var5.var1[13].var1;
      v33 = *&a3->var5.var5.var1[11].var1;
      v34 = v12;
      v35 = *&a3->var5.var5.var1[15].var1;
      v13 = *&a3->var5.var5.var1[5].var1;
      v29 = *&a3->var5.var5.var1[3].var1;
      v30 = v13;
      v14 = *&a3->var5.var5.var1[9].var1;
      v31 = *&a3->var5.var5.var1[7].var1;
      v32 = v14;
      v15 = *&a3->var3;
      *buf = *&a3->var0.var0;
      *&buf[16] = v15;
      v16 = *&a3->var5.var5.var1[1].var1;
      *&buf[32] = *&a3->var5.var0.var0;
      v28 = v16;
      [(_GCHapticServerManager *)self readParamCurveListCommand:buf client:v8];
    }

    if (var1 == 6)
    {
      break;
    }

    if (var1 == 7)
    {
      if (!gc_isInternalBuild())
      {
        goto LABEL_20;
      }

      v23 = getGCHapticsLogger();
      [_GCHapticServerManager readListCommand:v23 client:? renderTime:?];
      goto LABEL_22;
    }

    a3->var2 = var2 + a3->var2;
    [(_GCHapticServerManager *)self scheduleCommand:a3];
    if (gc_isInternalBuild())
    {
      v11 = getGCHapticsLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v17 = a3->var0.var1;
        var4 = a3->var4;
        var0 = a3->var5.var0.var0;
        v20 = a3->var2;
        var3 = a3->var3;
        *buf = v26;
        *&buf[4] = v17;
        *&buf[8] = 2048;
        *&buf[10] = var4;
        *&buf[18] = 2048;
        *&buf[20] = v20;
        *&buf[28] = 1024;
        *&buf[30] = var0;
        *&buf[34] = 2048;
        *&buf[36] = var3;
        _os_log_debug_impl(&dword_1D2CD5000, v11, OS_LOG_TYPE_DEBUG, "Start event type %u, event id %lu, time %.3f, token %u, channel %lu", buf, 0x2Cu);
      }
    }
  }

  if (!gc_isInternalBuild())
  {
    goto LABEL_20;
  }

  v25 = getGCHapticsLogger();
  [_GCHapticServerManager readListCommand:v25 client:? renderTime:?];
LABEL_22:

LABEL_20:
  v24 = *MEMORY[0x1E69E9840];
}

- (id)__onqueue_reserveChannels:(unint64_t)a3 forClient:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  logicalHapticDevices = self->_logicalHapticDevices;
  v8 = [v6 identifier];
  v9 = [(NSMutableDictionary *)logicalHapticDevices objectForKey:v8];

  v29 = v9;
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = self;
    objc_sync_enter(v11);
    channelID = v11->_channelID;
    v11->_channelID = channelID + a3;
    objc_sync_exit(v11);

    if (gc_isInternalBuild())
    {
      v25 = getGCHapticsLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v31 = a3;
        v32 = 2048;
        v33 = channelID;
        v34 = 2048;
        v35 = channelID + a3;
        _os_log_impl(&dword_1D2CD5000, v25, OS_LOG_TYPE_INFO, "reserving %lu channels, from [%lu - %lu)", buf, 0x20u);
      }
    }

    if (channelID < channelID + a3)
    {
      v13 = a3;
      v14 = channelID;
      do
      {
        v15 = [_GCHapticPlayer alloc];
        v16 = [v6 actuators];
        v17 = [(_GCHapticPlayer *)v15 initWithIdentifier:v14 actuators:v16 client:v6];

        [v10 addObject:v17];
        ++v14;
        --v13;
      }

      while (v13);
      if (channelID < channelID + a3)
      {
        v18 = 0;
        v28 = 134218242;
        do
        {
          v19 = [v10 objectAtIndexedSubscript:{v18, v28}];
          hapticPlayers = v11->_hapticPlayers;
          v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:channelID];
          [(NSMutableDictionary *)hapticPlayers setObject:v19 forKey:v21];

          if (gc_isInternalBuild())
          {
            v22 = getGCHapticsLogger();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = v28;
              v31 = channelID;
              v32 = 2112;
              v33 = v19;
              _os_log_impl(&dword_1D2CD5000, v22, OS_LOG_TYPE_INFO, "_hapticPlayers[%lu] = %@", buf, 0x16u);
            }
          }

          [v19 setHapticLogicalDevice:v29];
          [v29[4] addObject:v19];

          ++channelID;
          ++v18;
          --a3;
        }

        while (a3);
      }
    }
  }

  else
  {
    if (gc_isInternalBuild())
    {
      v26 = getGCHapticsLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v6 identifier];
        [(_GCHapticServerManager *)v27 __onqueue_reserveChannels:buf forClient:a3, v26];
      }
    }

    v10 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)acceptNewConnection:fromHapticsEnabledApp:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_12_3(v2, v3, v4, v5, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)readClientDataForStartTime:(_BYTE *)a3 endTime:.cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  OUTLINED_FUNCTION_6_4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    *a3 = 0;
    OUTLINED_FUNCTION_4_6();
    _os_log_debug_impl(v7, v8, v9, v10, v11, 2u);
  }
}

- (void)processActiveEventsForStartTime:endTime:.cold.1()
{
  OUTLINED_FUNCTION_2_8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 138412290;
    *v2 = v3;
    OUTLINED_FUNCTION_4_6();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)readParamCurveListCommand:client:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)readParamCurveListCommand:(NSObject *)a1 client:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_8_4(a1))
  {
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v1 = v2;
}

- (void)readParamCurveListCommand:(NSObject *)a1 client:.cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_8_4(a1))
  {
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v1 = v2;
}

- (void)readParamCurveListCommand:(NSObject *)a3 client:.cold.4(NSObject *a1, unsigned __int16 *a2, NSObject **a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    v12 = *a2;
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v7, v8, v9, v10, v11, 8u);
  }

  *a3 = a1;
  v6 = *MEMORY[0x1E69E9840];
}

- (void)readListCommand:(NSObject *)a1 client:(NSObject *)a2 renderTime:.cold.1(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D2CD5000, a1, OS_LOG_TYPE_INFO, "Reached end of queued commands", v4, 2u);
  }

  *a2 = a1;
}

- (void)readListCommand:(NSObject *)a1 client:renderTime:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_8_4(a1))
  {
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v1 = v2;
}

- (void)readListCommand:(NSObject *)a1 client:renderTime:.cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_8_4(a1))
  {
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v1 = v2;
}

- (void)readListCommand:client:renderTime:.cold.4()
{
  OUTLINED_FUNCTION_2_8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *v3;
    *v1 = 134217984;
    *v2 = v5;
    OUTLINED_FUNCTION_4_6();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
  }
}

- (void)__onqueue_reserveChannels:(uint64_t)a3 forClient:(os_log_t)log .cold.1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_ERROR, "reserving %lu channels - unknown client: %@", buf, 0x16u);
}

@end