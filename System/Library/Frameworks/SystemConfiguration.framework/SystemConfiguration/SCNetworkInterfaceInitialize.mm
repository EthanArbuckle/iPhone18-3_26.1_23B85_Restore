@interface SCNetworkInterfaceInitialize
@end

@implementation SCNetworkInterfaceInitialize

void ____SCNetworkInterfaceInitialize_block_invoke()
{
  v8[1] = *MEMORY[0x1E69E9840];
  pthread_mutex_init(&lock_1, 0);
  __kSCNetworkInterfaceTypeID = _CFRuntimeRegisterClass();
  _CFRuntimeInitStaticInstance();
  qword_1ED4C3C08 = @"IPv4";
  qword_1ED4C3C28 = @"ipv4";
  _CFRuntimeInitStaticInstance();
  qword_1ED4C3A70 = @"Loopback";
  qword_1ED4C3A90 = @"loopback";
  qword_1ED4C3AD0 = CFRetain(@"lo0");
  qword_1ED4C3AE0 = @"Loopback";
  bundle = _SC_CFBundleGet();
  v0 = MEMORY[0x1B26F45E0](0, &masterPort);
  if (v0)
  {
    v1 = v0;
    v2 = __log_SCNetworkConfiguration();
    v3 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v2, v3))
    {
      v4 = v8 - ((_os_log_pack_size() + 15) & 0xFFFFFFFFFFFFFFF0);
      v5 = *__error();
      v6 = _os_log_pack_fill();
      *v6 = 67109120;
      v6[1] = v1;
      __SC_log_send(5, v2, v3, v4);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end