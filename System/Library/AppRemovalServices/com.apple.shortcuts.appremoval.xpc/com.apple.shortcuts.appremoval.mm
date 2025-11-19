void sub_100000EFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100000F2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100001240();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315394;
    v4 = "[WFShortcutsRemovalServiceDelegate listener:shouldAcceptNewConnection:]_block_invoke";
    v5 = 2114;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "%s Connection %{public}@ was interrupted", &v3, 0x16u);
  }
}

void sub_100000FF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100001240();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315394;
    v4 = "[WFShortcutsRemovalServiceDelegate listener:shouldAcceptNewConnection:]_block_invoke";
    v5 = 2114;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "%s Connection %{public}@ was invalidated", &v3, 0x16u);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id sub_100001240()
{
  if (qword_1000085D0 != -1)
  {
    dispatch_once(&qword_1000085D0, &stru_100004158);
  }

  v1 = qword_1000085D8;

  return v1;
}

void sub_100001294(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001240();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[WFShortcutsRemovalService removeAppWithReply:]_block_invoke";
      v18 = 2114;
      v19 = v3;
      v6 = "%s Removal finished with error: %{public}@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v6, buf, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[WFShortcutsRemovalService removeAppWithReply:]_block_invoke";
    v6 = "%s Removal finished";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    v9 = 12;
    goto LABEL_6;
  }

  v10 = WFTerminateDaemon();
  v11 = 0;
  v12 = 0;
  v13 = v12;
  if ((v10 & 1) == 0 && v12)
  {
    v14 = sub_100001240();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v17 = "[WFShortcutsRemovalService removeAppWithReply:]_block_invoke";
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "%s Terminating siriactionsd failed with error: %{public}@", buf, 0x16u);
    }
  }

  if (v11)
  {
    [v11 invalidate];
  }

  if (v3)
  {
    v15 = v3;
  }

  else
  {
    v15 = v13;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v15);
}

void sub_100001478(id a1)
{
  qword_1000085D8 = os_log_create(WFLogSubsystem, "RemovalService");

  _objc_release_x1();
}