@interface DaemonSandboxer_macOS
+ (void)enterSandbox;
@end

@implementation DaemonSandboxer_macOS

+ (void)enterSandbox
{
  bzero(v14, 0x400uLL);
  pw_dir = getenv("HOME");
  if (!pw_dir)
  {
    v3 = +[_TtC11postersyncd13DaemonLogging daemon];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100015A28(v3);
    }

    v4 = getuid();
    v5 = getpwuid(v4);
    if (!v5)
    {
      v12 = +[_TtC11postersyncd13DaemonLogging daemon];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100015D54();
      }

LABEL_27:

      exit(1);
    }

    pw_dir = v5->pw_dir;
  }

  v6 = realpath_DARWIN_EXTSN(pw_dir, 0);
  if (!v6)
  {
    v12 = +[_TtC11postersyncd13DaemonLogging daemon];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100015CD8();
    }

    goto LABEL_27;
  }

  v7 = v6;
  if (!confstr(65537, v14, 0x400uLL))
  {
    v12 = +[_TtC11postersyncd13DaemonLogging daemon];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100015C5C();
    }

    goto LABEL_27;
  }

  v8 = realpath_DARWIN_EXTSN(v14, 0);
  if (!v8)
  {
    v12 = +[_TtC11postersyncd13DaemonLogging daemon];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100015BE0();
    }

    goto LABEL_27;
  }

  v9 = v8;
  if (!confstr(65538, v14, 0x400uLL))
  {
    v12 = +[_TtC11postersyncd13DaemonLogging daemon];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100015B64();
    }

    goto LABEL_27;
  }

  v10 = realpath_DARWIN_EXTSN(v14, 0);
  if (!v10)
  {
    v12 = +[_TtC11postersyncd13DaemonLogging daemon];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100015AE8();
    }

    goto LABEL_27;
  }

  v11 = v10;
  v13[1] = "HOME";
  v13[2] = v7;
  v13[3] = "TMPDIR";
  v13[4] = v9;
  v13[5] = "DARWIN_CACHE_DIR";
  v13[6] = v10;
  v13[7] = 0;
  v13[0] = 0;
  if (sandbox_init_with_parameters())
  {
    v12 = +[_TtC11postersyncd13DaemonLogging daemon];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_100015A6C(v13, v12);
    }

    goto LABEL_27;
  }

  free(v7);
  free(v9);
  free(v11);
}

@end