_xpc_connection_s *create_amfid_xpc_connection()
{
  mach_service = xpc_connection_create_mach_service("com.apple.amfi.xpc", 0, 0);
  xpc_connection_set_event_handler(mach_service, &stru_8300);

  return mach_service;
}

void sub_DAC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(v2, _xpc_error_key_description);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_3110(string);
    }
  }
}

id dict_to_xpc_msg()
{
  v0 = _CFXPCCreateXPCMessageWithCFObject();

  return v0;
}

id xpc_msg_to_dict(void *a1)
{
  if (a1)
  {
    v1 = xpc_dictionary_get_value(a1, "cfreply");
    if (v1)
    {
      v2 = _CFXPCCreateCFObjectFromXPCMessage();
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_2318(uint64_t a1)
{
  *(*(a1 + 32) + 136) = 1;
  [*(a1 + 32) reloadSpecifier:*(a1 + 40) animated:1];
  v2 = *(*(a1 + 32) + 144);
  v3 = dict_to_xpc_msg();
  v4 = xpc_connection_send_message_with_reply_sync(v2, v3);

  if (v4)
  {
    v5 = xpc_msg_to_dict(v4);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v5 description];
      v7 = 136315138;
      v8 = [v6 UTF8String];
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "amfid response %s", &v7, 0xCu);
    }
  }
}

id sub_26F0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 reboot];
}

uint64_t sub_2738(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_3094(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a4;
  [v4 reloadSpecifier:v5 animated:1];
  v6[2](v6, 0);
}

void sub_3110(uint64_t a1)
{
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "amfid connection error: %s\n", &v1, 0xCu);
}

void sub_3190(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Unknown Developer Mode key to get %@", &v1, 0xCu);
}

void sub_3210(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Unknown Developer Mode key to set %@", &v1, 0xCu);
}