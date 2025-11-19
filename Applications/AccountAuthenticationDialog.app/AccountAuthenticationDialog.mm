void sub_1000022C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000023AC;
  v13[3] = &unk_100008208;
  v13[4] = *(a1 + 32);
  v14 = v9;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  dispatch_async(&_dispatch_main_q, v13);
}

id sub_1000023AC(void *a1)
{
  [*(a1[4] + 16) setUsername:a1[5]];
  [*(a1[4] + 16) setNavBarTitle:a1[6]];
  v2 = *(a1[4] + 16);
  v3 = a1[7];

  return [v2 setAuthURL:v3];
}

void sub_1000026E8(id a1)
{
  v1 = _ACLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100002BBC(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_10000272C(id a1)
{
  v1 = _ACLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100002BF4(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_10000286C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_100002970(void *a1, NSObject *a2)
{
  v3 = [a1 URL];
  v4 = [v3 host];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "willSendRequest called for host: %@", &v5, 0xCu);
}

void sub_100002A20()
{
  sub_1000020EC();
  sub_1000020E0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002A5C()
{
  sub_1000020EC();
  sub_1000020E0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002A98()
{
  sub_1000020EC();
  sub_1000020E0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002B48()
{
  sub_1000020EC();
  sub_1000020E0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}