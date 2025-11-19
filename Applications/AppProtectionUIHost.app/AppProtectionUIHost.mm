void sub_1000010FC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = sub_100001F04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "presenter connection event: %@", &v4, 0xCu);
  }
}

void sub_100001C0C(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    keys[0] = "result";
    values = xpc_int64_create(1);
    v2 = xpc_dictionary_create(keys, &values, 1uLL);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100001D58;
    v7[3] = &unk_100008230;
    v7[4] = v3;
    xpc_connection_send_message_with_reply(v4, v2, &_dispatch_main_q, v7);
  }

  else
  {
    v5 = sub_100001F04();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(keys[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No connection to presenter, dismissing self", keys, 2u);
    }

    v6 = [*(*(a1 + 32) + 40) windowScene];
    [v6 invalidate];
  }
}

void sub_100001D58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    v5 = xpc_copy_description(v3);
    v6 = sub_100001F04();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100002178(v5, v6);
    }

    free(v5);
    v4 = [*(*(a1 + 32) + 40) windowScene];
    [v4 invalidate];
  }

  else
  {
    v4 = sub_100001F04();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received reply to our result message, awaiting invalidation", v7, 2u);
    }
  }
}

id sub_100001F04()
{
  if (qword_10000CFE8 != -1)
  {
    sub_1000021F0();
  }

  v1 = qword_10000CFF0;

  return v1;
}

void sub_100001F48(id a1)
{
  qword_10000CFF0 = os_log_create("com.apple.appprotection", "UIHost");

  _objc_release_x1();
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

void sub_100002050(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "unknown feature %lld", &v2, 0xCu);
}

void sub_1000020C8(void *a1, NSObject *a2)
{
  v3 = [a1 configurationContext];
  v4 = [v3 userInfo];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "no bundleID provided for scene activation: %@", &v5, 0xCu);
}

void sub_100002178(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error on connection to presenter, dismissing self: %s", &v2, 0xCu);
}