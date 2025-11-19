uint64_t sub_100001F40(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100002704(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 96));
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 144));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_10000276C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v17 = 0;
  LOBYTE(v12) = 1;
  v9 = [v2 attributedStringForConstellationContent:v3 defaultAttributes:v4 identifier:v5 language:v6 assetsBaseURL:v7 assetFileInfoManager:v8 supportsLinks:v12 error:&v17];
  v10 = v17;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002870;
  block[3] = &unk_10000C320;
  objc_copyWeak(&v15, (a1 + 88));
  objc_copyWeak(&v16, (a1 + 96));
  v14 = v9;
  v11 = v9;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
}

void sub_100002870(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained tip];
  v4 = [v3 identifier];
  v5 = [v2 isEqualToString:v4];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [WeakRetained bodyTextView];
    [v7 setAttributedText:v6];

    [WeakRetained setContentTextOperation:0];
  }
}

void sub_100003828(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "xpc connection failed: %@", &v4, 0xCu);
  }
}

void sub_1000039F4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "xpc connection failed: %@", &v4, 0xCu);
  }
}