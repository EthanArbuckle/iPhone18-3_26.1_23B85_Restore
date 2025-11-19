uint64_t sub_100000F40(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = qword_10000C828;
  v15 = qword_10000C828;
  if (!qword_10000C828)
  {
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100001054;
    v7 = &unk_1000081D8;
    v8 = &v11;
    v9 = v16;
    sub_100001054(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t sub_100001054(uint64_t a1)
{
  memcpy(__dst, off_1000081A8, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_10000C828 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001114()
{
  v2 = 0;
  v1 = sub_100000F40(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id sub_100001190()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_10000C830;
  v13 = qword_10000C830;
  if (!qword_10000C830)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000012C0;
    v6 = &unk_100008200;
    v7 = &v9;
    sub_1000012C0(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_1000012C0(uint64_t a1)
{
  sub_100001114();
  Class = objc_getClass("AKAppleIDAuthenticationInAppContext");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_10000C830 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100001368()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_10000C838;
  v13 = qword_10000C838;
  if (!qword_10000C838)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100001498;
    v6 = &unk_100008200;
    v7 = &v9;
    sub_100001498(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100001498(uint64_t a1)
{
  sub_100001114();
  Class = objc_getClass("AKBasicLoginContentViewController");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_10000C838 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}