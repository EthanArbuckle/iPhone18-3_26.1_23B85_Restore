int main(int argc, const char **argv, const char **envp)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_100008008;
  v10 = qword_100008008;
  if (!qword_100008008)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100000A38;
    v6[3] = &unk_100004068;
    v6[4] = &v7;
    sub_100000A38(v6);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);
  [v3 runAsXPCService];
  return 0;
}

void sub_100000A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100000A38(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100008010)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100000B7C;
    v4[4] = &unk_1000040A0;
    v4[5] = v4;
    v5 = off_100004088;
    v6 = 0;
    qword_100008010 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100008010)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_EXService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100000BF0();
  }

  qword_100008008 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100000B7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100008010 = result;
  return result;
}