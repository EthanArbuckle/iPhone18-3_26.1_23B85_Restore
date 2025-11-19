@interface IOHIDEventSystemConnectionSetQueue
@end

@implementation IOHIDEventSystemConnectionSetQueue

void ___IOHIDEventSystemConnectionSetQueue_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  CFRetain(*(a1 + 32));
  v2 = CFGetAllocator(*(a1 + 32));
  v3 = MEMORY[0x19A8DA570](v2, 92, 0x1000040504FFAC1, 0);
  *&v3->msgh_bits = 0x5C00000000;
  v4 = *(*(a1 + 32) + 104);
  v3->msgh_remote_port = 0;
  v3->msgh_local_port = v4;
  v3->msgh_id = 0;
  v5 = mach_msg(v3, 117440518, 0, 0x5Cu, v4, 0, 0);
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      v7 = _IOHIDLogCategory(9u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(*(a1 + 32) + 168);
        v9 = mach_error_string(v6);
        *buf = 136315394;
        v18 = v8;
        v19 = 2080;
        v20 = v9;
        _os_log_impl(&dword_197195000, v7, OS_LOG_TYPE_INFO, "%s: mach_msg(sendPossiblePort):%s", buf, 0x16u);
      }

      if (v6 != 268451844)
      {
        break;
      }

      v10 = (v3->msgh_size + 71) & 0xFFFFFFFC;
      v3 = MEMORY[0x19A8DA5C0](v2, v3, v10, 703748202, 0);
      v3->msgh_bits = 0;
      v3->msgh_size = v10;
      v11 = *(*(a1 + 32) + 104);
      v3->msgh_remote_port = 0;
      v3->msgh_local_port = v11;
      v3->msgh_id = 0;
      v6 = mach_msg(v3, 117440518, 0, v10, v11, 0, 0);
      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v12 = *(a1 + 32);
    msgh_id = v3->msgh_id;
    if (msgh_id == 72)
    {
      os_unfair_recursive_lock_lock_with_options();
      *(v12 + 128) = 0;
      os_unfair_recursive_lock_unlock();
      v14 = *(v12 + 8);
      if (v14)
      {
        _IOHIDEventSystemSetPropertyForConnection(v14, @"IOHIDEventSystemClientIsUnresponsive", *MEMORY[0x1E695E4D0], v12);
      }
    }

    else if (msgh_id == 66)
    {
      os_unfair_recursive_lock_lock_with_options();
      if (*(v12 + 128))
      {
        os_unfair_recursive_lock_unlock();
      }

      else
      {
        IsActive = IOHIDEventQueueIsActive(*(v12 + 24));
        os_unfair_recursive_lock_unlock();
        if (IsActive)
        {
          _IOHIDEventSystemConnectionQueueStart(v12);
        }
      }
    }
  }

  CFAllocatorDeallocate(v2, v3);
  CFRelease(*(a1 + 32));
  v16 = *MEMORY[0x1E69E9840];
}

void ___IOHIDEventSystemConnectionSetQueue_block_invoke_24(uint64_t a1)
{
  dispatch_release(*(*(a1 + 32) + 112));
  *(*(a1 + 32) + 112) = 0;
  v2 = *(a1 + 32);

  CFRelease(v2);
}

@end