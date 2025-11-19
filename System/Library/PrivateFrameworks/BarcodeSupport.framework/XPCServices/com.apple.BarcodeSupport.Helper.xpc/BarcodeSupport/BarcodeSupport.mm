uint64_t start()
{
  if ((_set_user_dir_suffix() & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100001218();
  }

  v0 = objc_opt_new();
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}

void sub_100001018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_100001068(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
    if (a2)
    {
      if (v6)
      {
        v9 = 0;
        v7 = "BarcodeSupportHelper: successfully enabled QR code control center module";
        v8 = &v9;
LABEL_10:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v7, v8, 2u);
      }
    }

    else if (v6)
    {
      *buf = 0;
      v7 = "BarcodeSupportHelper: did not successfully enable QR code control center module";
      v8 = buf;
      goto LABEL_10;
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32));
    goto LABEL_12;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000012A4(v5);
  }

  (*(*(a1 + 32) + 16))();
LABEL_12:
}

void sub_100001218()
{
  v0 = __error();
  v1 = strerror(*v0);
  v2 = 136315138;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to set user tmp directory suffix: %s", &v2, 0xCu);
}

void sub_1000012A4(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "BarcodeSupportHelper: requestEnableModuleWithIdentifier with error %{public}@", &v1, 0xCu);
}