@interface CFXNotificationCenterSetupConnection
@end

@implementation CFXNotificationCenterSetupConnection

void ____CFXNotificationCenterSetupConnection_block_invoke(uint64_t a1, id a2)
{
  if (object_getClass(a2) == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(a2, "method");
    if (string && !strcmp("post_token", string) && xpc_dictionary_get_uint64(a2, "version") == 1)
    {
      uint64 = xpc_dictionary_get_uint64(a2, "token");
      v17 = xpc_dictionary_get_string(a2, "name");
      v18 = strlen(v17);
      v19 = CFStringCreateWithBytes(&__kCFAllocatorSystemDefault, v17, v18, 0x8000100u, 0);
      v20 = xpc_dictionary_get_string(a2, "object");
      v21 = v20;
      if (v20)
      {
        if (!strcmp(v20, "kCFNotificationAnyObject"))
        {
          v21 = 0;
        }

        else
        {
          v22 = strlen(v21);
          v21 = CFStringCreateWithBytes(&__kCFAllocatorSystemDefault, v21, v22, 0x8000100u, 0);
        }
      }

      value = xpc_dictionary_get_value(a2, "userinfo");
      if (value)
      {
        v24 = value;
        bytes_ptr = xpc_data_get_bytes_ptr(value);
        length = xpc_data_get_length(v24);
        v27 = CFDataCreate(&__kCFAllocatorSystemDefault, bytes_ptr, length);
        v28 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v27, 0, 0, 0);
        CFRelease(v27);
        __CFXNotificationPostToken(*(a1 + 32), uint64, v19, v21, v28);
        if (v28)
        {
          CFRelease(v28);
        }
      }

      else
      {
        __CFXNotificationPostToken(*(a1 + 32), uint64, v19, v21, 0);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      CFRelease(v19);
    }
  }

  else if (object_getClass(a2) == MEMORY[0x1E69E9E98])
  {
    if (a2 != MEMORY[0x1E69E9E38] && a2 != MEMORY[0x1E69E9E20] && a2 != MEMORY[0x1E69E9E18])
    {
      v6 = MEMORY[0x1865E4620](a2);
      v13 = v6;
      v14 = "(null)";
      if (v6)
      {
        v14 = v6;
      }

      CFLog(3, @"Unknown or mysterious error received: %s", v7, v8, v9, v10, v11, v12, v14);
      if (v13)
      {

        free(v13);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

@end