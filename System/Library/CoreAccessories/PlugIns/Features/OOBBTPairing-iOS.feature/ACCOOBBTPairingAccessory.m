@interface ACCOOBBTPairingAccessory
- (ACCOOBBTPairingAccessory)init;
- (void)dealloc;
- (void)init;
@end

@implementation ACCOOBBTPairingAccessory

- (ACCOOBBTPairingAccessory)init
{
  v32.receiver = self;
  v32.super_class = ACCOOBBTPairingAccessory;
  v2 = [(ACCOOBBTPairingAccessory *)&v32 init];
  v3 = v2;
  if (v2)
  {
    iap2ShimAccessory = v2->_iap2ShimAccessory;
    v2->_iap2ShimAccessory = 0;

    currentOOBBTPairingUID = v3->_currentOOBBTPairingUID;
    v3->_currentOOBBTPairingUID = 0;

    displayName = v3->_displayName;
    v3->_displayName = 0;

    v3->_isBTReady = 0;
    v3->_BTAccessoryManager = 0;
    v7 = dispatch_queue_create(kBTQueueName, 0);
    BTSessionQueue = v3->_BTSessionQueue;
    v3->_BTSessionQueue = v7;

    v9 = dispatch_queue_create(kProcessingQueueName, 0);
    processingQueue = v3->_processingQueue;
    v3->_processingQueue = v9;

    currentRemoteMACAddress = v3->_currentRemoteMACAddress;
    v3->_currentRemoteMACAddress = 0;

    v3->_currentRemoteBTDevice = 0;
    v12 = dispatch_semaphore_create(0);
    setup_complete_semaphore = v3->_setup_complete_semaphore;
    v3->_setup_complete_semaphore = v12;

    v31 = __callbackSessionEvent;
    v14 = v3->_processingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__ACCOOBBTPairingAccessory_init__block_invoke;
    block[3] = &unk_2789E5990;
    v15 = v3;
    v30 = v15;
    dispatch_async(v14, block);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v16 = v3->_BTSessionQueue;
    v28 = BTSessionAttachWithQueue();
    if (*(v26 + 6))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCOOBBTPairingAccessory init];
        }

        v17 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingAccessory init];
      }

      v19 = dispatch_time(0, 5000000000);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __32__ACCOOBBTPairingAccessory_init__block_invoke_4;
      v21[3] = &unk_2789E59B8;
      v23 = &v25;
      v24 = v31;
      v22 = v15;
      dispatch_after(v19, MEMORY[0x277D85CD0], v21);
    }

    _Block_object_dispose(&v25, 8);
  }

  return v3;
}

void __32__ACCOOBBTPairingAccessory_init__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23361B000, v4, OS_LOG_TYPE_DEFAULT, "Blocking the processing queue while waiting for the BT session initialization to finish...", buf, 2u);
  }

  dispatch_semaphore_wait(*(*(a1 + 32) + 96), 0xFFFFFFFFFFFFFFFFLL);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v5 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23361B000, v5, OS_LOG_TYPE_DEFAULT, "Unblocking the processing queue", v7, 2u);
  }
}

void __32__ACCOOBBTPairingAccessory_init__block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  *(*(*(a1 + 40) + 8) + 24) = BTSessionAttachWithQueue();
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    if (v4)
    {
      v5 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingAccessory init];
      }

      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __32__ACCOOBBTPairingAccessory_init__block_invoke_4_cold_2();
    }
  }

  else
  {
    if (v4)
    {
      v5 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingAccessory init];
      }

      v5 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23361B000, v5, OS_LOG_TYPE_DEFAULT, "2nd attempted to establish BT session succeeded", v8, 2u);
    }
  }
}

- (void)dealloc
{
  if (self->_BTSession)
  {
    v3 = BTSessionDetachWithQueue();
    if (gLogObjects)
    {
      v4 = gNumLogObjects <= 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = !v4;
    if (v3)
    {
      if (v5)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCOOBBTPairingAccessory init];
        }

        v6 = MEMORY[0x277D86220];
        v7 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v8 = "BTSessionDetachWithQueue failed";
    }

    else
    {
      if (v5)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCOOBBTPairingAccessory init];
        }

        v6 = MEMORY[0x277D86220];
        v9 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v8 = "Succesfully detached from BTSession";
    }

    _os_log_impl(&dword_23361B000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
LABEL_24:
  }

  iap2ShimAccessory = self->_iap2ShimAccessory;
  self->_iap2ShimAccessory = 0;

  currentOOBBTPairingUID = self->_currentOOBBTPairingUID;
  self->_currentOOBBTPairingUID = 0;

  currentRemoteMACAddress = self->_currentRemoteMACAddress;
  self->_currentRemoteMACAddress = 0;

  setup_complete_semaphore = self->_setup_complete_semaphore;
  *&self->_setup_complete_semaphore = 0u;

  BTSessionQueue = self->_BTSessionQueue;
  *&self->_BTAccessoryManager = 0u;

  processingQueue = self->_processingQueue;
  *&self->_BTSession = 0u;

  v16.receiver = self;
  v16.super_class = ACCOOBBTPairingAccessory;
  [(ACCOOBBTPairingAccessory *)&v16 dealloc];
}

- (void)init
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __32__ACCOOBBTPairingAccessory_init__block_invoke_4_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end