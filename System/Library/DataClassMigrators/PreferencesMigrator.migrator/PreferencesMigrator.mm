id sub_F18()
{
  if (qword_C300 != -1)
  {
    sub_2B30();
  }

  v1 = qword_C2F8;

  return v1;
}

void sub_F5C(id a1)
{
  qword_C2F8 = os_log_create("com.apple.Settings.DataMigrator", "Base");

  _objc_release_x1();
}

void sub_2070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2088(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_F18();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_2B44(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Successfully ran migrateIfNeeded", v5, 2u);
  }
}

Class sub_27C0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_C310)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_2904;
    v4[4] = &unk_8308;
    v4[5] = v4;
    v5 = off_82F0;
    v6 = 0;
    qword_C310 = _sl_dlopen();
    v2 = v4[0];
    if (qword_C310)
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
  result = objc_getClass("LockdownModeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2BF0();
  }

  qword_C308 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2904(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_C310 = result;
  return result;
}

Class sub_2978(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_C320)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_2ABC;
    v4[4] = &unk_8308;
    v4[5] = v4;
    v5 = off_8328;
    v6 = 0;
    qword_C320 = _sl_dlopen();
    v2 = v4[0];
    if (qword_C320)
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
  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2C18();
  }

  qword_C318 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2ABC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_C320 = result;
  return result;
}

void sub_2B44(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 136315394;
  v5 = "[PreferencesDataMigrator _performLockdownModeMigration]_block_invoke";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s: Error migrating Lockdown Mode: %@", &v4, 0x16u);
}