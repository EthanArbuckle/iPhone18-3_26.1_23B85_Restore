void sub_10000EEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void startCallbackNewfs(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id *a6)
{
  v10 = localizeNewFSMessage(a6, a1, 0, 0);
  if (v10)
  {

    startCallback(v10, a2, a3, a4, a5);
  }

  else
  {
    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100010C10();
    }
  }
}

void endCallbackNewfs(int a1, void *a2, id *a3)
{
  v5 = a2;
  v6 = localizeNewFSMessage(a3, a1, 0, 0);
  if (v6)
  {
    v7 = [NSString stringWithUTF8String:v6];
    [v5 endPhase:v7];
  }

  else
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100010C10();
    }
  }
}

void sub_10000F018(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(a1 + 104);
  v4 = *(a1 + 136);
  v12[4] = *(a1 + 120);
  v12[5] = v4;
  v12[6] = *(a1 + 152);
  v5 = *(a1 + 72);
  v12[0] = *(a1 + 56);
  v12[1] = v5;
  v12[2] = *(a1 + 88);
  v12[3] = v3;
  v6 = format(v12, (v2 + 32));
  v7 = [*(*(*(a1 + 48) + 8) + 40) totalUnitCount];
  if (v7 < [*(*(*(a1 + 48) + 8) + 40) completedUnitCount])
  {
    [*(*(*(a1 + 48) + 8) + 40) setCompletedUnitCount:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "totalUnitCount")}];
  }

  v8 = *(*(*(a1 + 40) + 8) + 32);
  if (v8)
  {
    CFRelease(v8);
    *(*(*(a1 + 40) + 8) + 32) = 0;
  }

  v9 = *(a1 + 168);
  if (v9)
  {
    free(v9);
  }

  if (v6)
  {
    v10 = [NSError errorWithDomain:@"com.apple.fskit.exfat" code:v6 userInfo:0];
    [*(a1 + 32) didCompleteWithError:v10];
  }

  else
  {
    [*(a1 + 32) didCompleteWithError:0];
  }

  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v12[0]) = 136315138;
    *(v12 + 4) = "[exfatFileSystem startFormatWithTask:options:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: done", v12, 0xCu);
  }
}

void startCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = [NSString stringWithUTF8String:a1];
  v11 = [v9 startPhase:v10 parentUnitCount:a2 phaseTotalCount:a3 completedCounter:a4];

  if (v11)
  {
    v12 = [v11 description];
    v13 = [v12 UTF8String];
    v20 = newfs_ctx;
    v21 = qword_100026E38;
    newfs_print(&v20, 511, v14, v15, v16, v17, v18, v19, v13);
  }
}

void endCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithUTF8String:a1];
  [v3 endPhase:v4];
}

void sub_10000F930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_10000F974(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_10000FA3C(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = fskit_std_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100010F58(a1 + 40);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100010FEC(v7);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000FDF8()
{
  v0 = 136315138;
  v1 = "fsck_exfat_cache_recycle";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: ran out of buffers!", &v0, 0xCu);
}

void sub_100010334(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v8 = [a1 connection];
  sub_10000FB18();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

void sub_1000103F8(void *a1)
{
  [a1 code];
  sub_10000FB28();
  sub_10000FB18();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100010484()
{
  sub_10000FB28();
  sub_10000FB0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001068C(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "[exfatFileSystem getVolumeNameAndUUID:useAlt:reply:]";
  sub_10000FB0C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000106D8(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "[exfatFileSystem getVolumeNameAndUUID:useAlt:reply:]";
  sub_10000FB0C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100010724(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "[exfatFileSystem getVolumeNameAndUUID:useAlt:reply:]";
  sub_10000FB0C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100010904(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10000FAFC();
  sub_10000FAF0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100010988(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10000FAFC();
  sub_10000FAF0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100010A8C(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10000FAFC();
  sub_10000FAF0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100010C10()
{
  sub_10000FB3C();
  sub_10000FAF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100010CCC(void *a1, unsigned int *a2)
{
  [a1 fileDescriptor];
  v3 = *a2;
  sub_10000FAFC();
  sub_10000FB18();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x18u);
}

void sub_100010D6C(os_log_t log)
{
  v1 = 136315138;
  v2 = "wipeFSCallback";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: waiting for reply from send wipe resource request", &v1, 0xCu);
}

void sub_100010DF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a2 = 136315394;
  *(a2 + 4) = "wipeFSCallback";
  *(a2 + 12) = 2080;
  *(a2 + 14) = a1;
  sub_10000FB0C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100010F58(uint64_t a1)
{
  v6 = *(*(*a1 + 8) + 40);
  sub_10000FAF0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100010FEC(os_log_t log)
{
  v1 = 136315138;
  v2 = "wipeFSCallback_block_invoke";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: got reply from send wipe resource request with no errors", &v1, 0xCu);
}