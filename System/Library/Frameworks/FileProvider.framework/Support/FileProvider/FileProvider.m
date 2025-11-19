uint64_t start(uint64_t a1, uint64_t *a2)
{
  v3 = objc_autoreleasePoolPush();
  fpfs_enable_fts_thread_fchdir();
  v4 = fp_default_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v24 = 136315394;
    v25 = v6;
    v26 = 1024;
    v27 = geteuid();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] %s starting for euid %u.", &v24, 0x12u);
  }

  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10000187C(v7);
  }

  [FPDaemonConnection setDisallowedConnectionReason:@"daemon should not XPC to itself"];
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000018C0();
    }

LABEL_43:

    exit(1);
  }

  if (os_variant_has_internal_content())
  {
    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.fileproviderd"];
    v9 = [v8 objectForKey:@"com.apple.fileproviderd.debug.sleepOnStartInitialDate"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        [v10 timeIntervalSinceNow];
        if (v11 >= -21600.0)
        {
          v13 = [v8 integerForKey:@"com.apple.fileproviderd.debug.sleepOnStartDuration"];
          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 >= 0x12C)
            {
              v14 = 300;
            }

            else
            {
              v14 = v13;
            }

            v15 = fp_current_or_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v24 = 134217984;
              v25 = v14;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] fileproviderd is going to sleep for %lds", &v24, 0xCu);
            }

            sleep(v14);
          }
        }

        else
        {
          v12 = fp_current_or_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            sub_10000193C(v10, v12);
          }
        }
      }
    }
  }

  if ((fpfs_enable_vnode_rapid_aging() & 0x80000000) != 0)
  {
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *__error();
      v24 = 67109120;
      LODWORD(v25) = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to activate VNODE rapid aging: %{errno}d", &v24, 8u);
    }
  }

  fpfs_allow_operation();
  if ((fpfs_set_vfs_ignore_permissions_iopolicy() & 0x80000000) != 0)
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100001B14();
    }

    goto LABEL_43;
  }

  if ((fpfs_set_vfs_parent_mtime_iopolicy() & 0x80000000) != 0)
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100001A98();
    }

    goto LABEL_43;
  }

  if ((fpfs_set_support_long_paths_iopolicy() & 0x80000000) != 0)
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100001A1C();
    }

    goto LABEL_43;
  }

  if (geteuid())
  {
    v18 = objc_alloc_init(FPDServer);
    [(FPDNotReachableServer *)v18 setFpfsClass:getFPDDomainFPFSBackendClass()];
    [(FPDNotReachableServer *)v18 setFpfsSQLBackupManagerClass:objc_opt_class()];
    [(FPDNotReachableServer *)v18 setFpfsSQLRestoreManagerClass:objc_opt_class()];
    [(FPDNotReachableServer *)v18 setFpckTaskClass:objc_opt_class()];
    [(FPDNotReachableServer *)v18 setFpdPurgerClass:getFPDPurgerClass()];
  }

  else
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1000019D8(v19);
    }

    v18 = objc_alloc_init(FPDNotReachableServer);
  }

  [(FPDNotReachableServer *)v18 start];
  objc_autoreleasePoolPop(v3);
  v20 = +[NSRunLoop currentRunLoop];
  [v20 run];

  v21 = objc_opt_self();
  return 0;
}

void sub_100001750(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

id Blah.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Blah.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Blah();
  return objc_msgSendSuper2(&v2, "init");
}

id Blah.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Blah();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000018C0()
{
  v0 = *__error();
  sub_100001770();
  sub_100001750(&_mh_execute_header, v1, v2, "[ERROR] Could not setup dirhelper suffix: %{errno}d", v3, v4, v5, v6, v7);
}

void sub_10000193C(void *a1, NSObject *a2)
{
  [a1 timeIntervalSinceNow];
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Start date expired: %@ (%f)", &v5, 0x16u);
}

void sub_100001A1C()
{
  v0 = *__error();
  sub_100001770();
  sub_100001750(&_mh_execute_header, v1, v2, "[ERROR] failed to enable support for long paths in VFS: %{errno}d\n", v3, v4, v5, v6, v7);
}

void sub_100001A98()
{
  v0 = *__error();
  sub_100001770();
  sub_100001750(&_mh_execute_header, v1, v2, "[ERROR] failed to set parent mTime iopolicy %d\n", v3, v4, v5, v6, v7);
}

void sub_100001B14()
{
  v0 = *__error();
  sub_100001770();
  sub_100001750(&_mh_execute_header, v1, v2, "[ERROR] failed to set ignore permissions iopolicy %d\n", v3, v4, v5, v6, v7);
}