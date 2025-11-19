uint64_t sub_10000108C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100016CE0 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_100002964(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 communicateButtonPressWithButtonDisposition:1];
}

void sub_1000029AC(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 communicateButtonPressWithButtonDisposition:2];
}

void sub_1000029F4(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 communicateButtonPressWithButtonDisposition:3];
}

void sub_1000039BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000051A0(a1);
    }
  }

  v6 = [*(a1 + 40) delegate];
  [v6 communicateButtonPressWithButtonDisposition:3];
}

void sub_100003C6C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

id sub_100003D54(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003DF4;
  block[3] = &unk_100010328;
  block[4] = a1;
  if (qword_100016CF8 != -1)
  {
    dispatch_once(&qword_100016CF8, block);
  }

  v1 = off_100016BB8;

  return v1;
}

uint64_t sub_100003DF4(uint64_t a1)
{
  off_100016BB8 = os_log_create(*(a1 + 32), "app-deletion-ui-host-app");

  return _objc_release_x1();
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

void sub_100004120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003D54(off_100016A30);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[AppDeletionUISceneDelegate connectToInvokerEndpoint:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Presenter connection event", &v12, 0xCu);
  }

  type = xpc_get_type(v3);
  if (type == &_xpc_type_dictionary)
  {
    v8 = xpc_dictionary_get_value(v3, "invalidate");
    if (v8)
    {
      v9 = sub_100003D54(off_100016A30);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[AppDeletionUISceneDelegate connectToInvokerEndpoint:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Dismissing remote alert", &v12, 0xCu);
      }

      [*(a1 + 32) _dismissAlert:xpc_BOOL_get_value(v8)];
    }
  }

  else if (type == &_xpc_type_error)
  {
    v10 = sub_100003D54(off_100016A30);
    v11 = v10;
    if (v3 == &_xpc_error_connection_invalid)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[AppDeletionUISceneDelegate connectToInvokerEndpoint:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: PresenterConnection invalidated", &v12, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000052AC(v3, v11);
    }
  }

  else
  {
    v6 = xpc_copy_description(v3);
    v7 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100005220(v6, v7);
    }

    free(v6);
  }
}

void sub_100004A64(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 presentingVC];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100004B24;
    v5[3] = &unk_1000103F0;
    v5[4] = *(a1 + 32);
    [v4 dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {

    [v3 _communicateAlertInvalidate];
  }
}

void sub_100004D10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100004D2C(uint64_t *a1)
{
  v1 = *a1;
  sub_100003C58();
  sub_100003C4C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100004F2C()
{
  sub_100003C38();
  sub_100003C4C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100004FA8()
{
  v2 = 136315650;
  sub_100003C38();
  sub_100003C6C(&_mh_execute_header, v0, v1, "%s: Failed to get CGImageRef from ISImage %@ for bundleID %@", v2);
}

void sub_100005024()
{
  sub_100003C38();
  sub_100003C4C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000051A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  sub_100003C58();
  sub_100003C6C(&_mh_execute_header, v2, v3, "%s: Failed to open URL %@: %@", v4);
}

void sub_100005220(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[AppDeletionUISceneDelegate connectToInvokerEndpoint:]_block_invoke";
  v4 = 2080;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Got unknown XPC event on listenerConnection handler: %s", &v2, 0x16u);
}

void sub_1000052AC(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[AppDeletionUISceneDelegate connectToInvokerEndpoint:]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Got XPC error on listenerConnection handler: %@", &v2, 0x16u);
}

void sub_100005338(os_log_t log)
{
  v1 = 136315138;
  v2 = "[AppDeletionUISceneDelegate scene:willConnectToSession:options:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s: Scene class is not of kind SBSUIRemoteAlertScene; failing!", &v1, 0xCu);
}