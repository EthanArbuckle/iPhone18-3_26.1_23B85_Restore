void sub_BC4(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  numer = info.numer;
  denom = info.denom;
  v4 = mach_absolute_time();
  *(*(*(a1 + 40) + 8) + 24) = _MGWriteCacheOnHelper();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = mach_absolute_time();
    v6 = *(*(*(a1 + 40) + 8) + 24);
    *buf = 134218240;
    v9 = (numer / denom) * (v5 - v4);
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Migrator rebuilt MGCache in %lf seconds. Success %d", buf, 0x12u);
  }

  dispatch_group_leave(*(a1 + 32));
}

 {
      *v7 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Rebuilding cache on helper.", v7, 2u);
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_BC4;
    v6[3] = &unk_4098;
    v6[4] = v2;
    v6[5] = buf;
    dispatch_async(global_queue, v6);
    v4 = dispatch_time(0, 100000000);
    dispatch_group_wait(v2, v4);
    if ((v9[24] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Migrator failed to generate new MobileGestalt cache.", v7, 2u);
    }

    _Block_object_dispose(buf, 8);
  }

  return 1;
}

@end