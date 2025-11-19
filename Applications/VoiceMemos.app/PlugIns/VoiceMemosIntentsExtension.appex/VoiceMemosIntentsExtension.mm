void sub_100000CE4(uint64_t a1, int a2)
{
  v4 = [RecordVoiceMemoIntentResponse alloc];
  if (a2)
  {
    v5 = [v4 _initWithCode:1 userActivity:0];
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10000104C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v5 = [v4 _initWithCode:6 userActivity:0];
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100000FD4(v6, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100000EE0(uint64_t a1, int a2)
{
  v4 = [PlaybackVoiceMemoIntentResponse alloc];
  if (a2)
  {
    v5 = [v4 _initWithCode:1 userActivity:0];
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10000113C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v5 = [v4 _initWithCode:6 userActivity:0];
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000010C4(v6, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100000FB8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}