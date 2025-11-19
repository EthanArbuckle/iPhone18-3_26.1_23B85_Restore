int main(int argc, const char **argv, const char **envp)
{
  unsetenv("TMPDIR");
  unsetenv("HOME");
  unsetenv("CFFIXED_USER_HOME");
  if (!_set_user_dir_suffix() || !confstr(65537, 0, 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v3 = *__error();
      v4[0] = 67109120;
      v4[1] = v3;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to initialize temporary directory: %{darwin.errno}d", v4, 8u);
    }

    exit(1);
  }

  UpdateRunningInXPCService();
  sub_100000CBC();
  IIOInitDebugFlags();
  xpc_main(sub_100000CE8);
}

void sub_100000CBC()
{
  if (qword_100008000 != -1)
  {
    sub_100000E40();
  }
}

void sub_100000CE8(_xpc_connection_s *a1)
{
  kdebug_trace();
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100000DB8;
  handler[3] = &unk_100004108;
  handler[4] = a1;
  xpc_connection_set_event_handler(a1, handler);
  xpc_connection_resume(a1);
}

void sub_100000D88(id a1)
{
  _CFPrefsSetDirectModeEnabled();

  __CFPrefsSetReadOnly(1);
}

void sub_100000DB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  logEventType();
  if (xpc_get_type(a2) == &_xpc_type_dictionary)
  {
    v4 = IIOProcessEvent();
    if (v4)
    {
      v5 = v4;
      xpc_connection_send_message(v3, v4);

      xpc_release(v5);
    }
  }
}