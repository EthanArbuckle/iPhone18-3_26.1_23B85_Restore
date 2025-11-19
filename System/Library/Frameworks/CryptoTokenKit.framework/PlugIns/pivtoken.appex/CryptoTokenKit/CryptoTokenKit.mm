id sub_100001258()
{
  if (qword_10000CEE8 != -1)
  {
    sub_100003738();
  }

  v1 = qword_10000CEF0;

  return v1;
}

void sub_100001A38(id a1)
{
  qword_10000CEF0 = os_log_create("com.apple.CryptoTokenKit", "pivtoken");

  _objc_release_x1();
}

id sub_1000021D4()
{
  if (qword_10000CEF8 != -1)
  {
    sub_1000037D4();
  }

  v1 = qword_10000CF00;

  return v1;
}

void sub_1000025A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000025CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000025E4(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 tag] == 112)
  {
    v3 = [v10 value];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else if ([v10 tag] == 113)
  {
    v6 = [v10 value];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [v10 value];
      v9 = *[v8 bytes];

      if (v9)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }
}

void sub_100003478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1000034B8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 tag] == 52)
  {
    v6 = [v10 value];
    v7 = [v6 hexString];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

void sub_10000354C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 tag] == 193)
  {
    v6 = [v9 value];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [v9 value];
      *(*(*(a1 + 32) + 8) + 24) = *[v8 bytes];

      *a4 = 1;
    }
  }
}

void sub_100003664(id a1)
{
  qword_10000CF00 = os_log_create("com.apple.CryptoTokenKit", "pivtoken");

  _objc_release_x1();
}

void sub_1000036C0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "attempt to evaluate unsupported constraint %{public}@", &v2, 0xCu);
}

void sub_10000374C(int a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "expecting response with tag 0x%x, got %@", v3, 0x12u);
}

void sub_10000389C()
{
  sub_1000036B4();
  sub_1000036A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000390C()
{
  sub_1000036B4();
  sub_1000036A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000397C()
{
  sub_1000036B4();
  sub_1000036A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000039EC()
{
  sub_1000036B4();
  sub_1000036A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100003A5C()
{
  sub_1000036B4();
  sub_1000036A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100003B4C(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
  }

  sub_1000036A8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}