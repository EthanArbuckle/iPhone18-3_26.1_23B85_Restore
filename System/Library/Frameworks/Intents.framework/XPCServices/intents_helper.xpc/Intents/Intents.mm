int main(int argc, const char **argv, const char **envp)
{
  setenv("TMPDIR", "/private/var/tmp", 1);
  _set_user_dir_suffix();
  v7[0] = 0;
  if (!qword_10000C7C0)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_1000012B0;
    v7[4] = &unk_1000083C0;
    v7[5] = v7;
    v8 = off_1000082D8;
    v9 = 0;
    qword_10000C7C0 = _sl_dlopen();
    v3 = v7[0];
    if (qword_10000C7C0)
    {
      if (!v7[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
  }

LABEL_4:
  v4 = objc_opt_new();
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  return 0;
}

uint64_t sub_1000012B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000C7C0 = result;
  return result;
}

void sub_10000199C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000019BC(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_10000C7E0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100001AFC;
    v5[4] = &unk_1000083C0;
    v5[5] = v5;
    v6 = off_1000083E0;
    v7 = 0;
    qword_10000C7E0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_10000C7E0;
    if (qword_10000C7E0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_10000C7E0;
LABEL_5:
  result = dlsym(v2, "_PSIntentForSelectedSuggestionWithContextExtensionUUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000C7D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001AFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000C7E0 = result;
  return result;
}

void sub_100001FA8(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v6 objectForInfoDictionaryKey:PKSDKInfoKey ofClass:objc_opt_class() inScope:1];
      if ([v3 isEqualToString:INIntentsServiceExtensionPointName])
      {
        v4 = *(a1 + 32);
        v5 = [v6 containingBundle];
        LOBYTE(v4) = [v4 containsObject:v5];

        if ((v4 & 1) == 0)
        {
          [*(a1 + 32) addObject:v6];
        }
      }
    }
  }
}

void sub_1000028FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
LABEL_9:
    v7();
    goto LABEL_10;
  }

  if (*(a1 + 40) <= 0.0 || *(a1 + 48) <= 0.0)
  {
    v7 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  v8 = v5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v9 = qword_10000C7C8;
  v20 = qword_10000C7C8;
  if (!qword_10000C7C8)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100002AA0;
    v16[3] = &unk_100008388;
    v16[4] = &v17;
    sub_100002AA0(v16);
    v9 = v18[3];
  }

  v10 = v9;
  _Block_object_dispose(&v17, 8);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v15 = 0;
  v13 = [v9 downscaledPNGImageForImage:v8 size:&v15 error:{v11, v12}];
  v14 = v15;

  (*(*(a1 + 32) + 16))();
LABEL_10:
}

void sub_100002A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100002AA0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10000C7D0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100002BF4;
    v4[4] = &unk_1000083C0;
    v4[5] = v4;
    v5 = off_1000083A8;
    v6 = 0;
    qword_10000C7D0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10000C7D0)
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
  result = objc_getClass("INUIImageSizeProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_10000C7C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002BF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000C7D0 = result;
  return result;
}