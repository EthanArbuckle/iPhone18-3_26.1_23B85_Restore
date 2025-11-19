id pmw_log()
{
  if (qword_81F8 != -1)
  {
    sub_175C();
  }

  v1 = qword_81F0;

  return v1;
}

void sub_CB4(id a1)
{
  qword_81F0 = os_log_create("com.apple.NanoPingMy", "NanoPingMy");

  _objc_release_x1();
}

void sub_DC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_DDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setPingInProgress:0];
    [v2 refreshStateAnimated:1];
    WeakRetained = v2;
  }
}

void sub_F84(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ([objc_opt_class() isPingMyWatchSupported])
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2050000000;
    v2 = qword_8200;
    v9 = qword_8200;
    if (!qword_8200)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_13EC;
      v5[3] = &unk_4258;
      v5[4] = &v6;
      sub_13EC(v5);
      v2 = v7[3];
    }

    v3 = v2;
    _Block_object_dispose(&v6, 8);
    v4 = [v2 sharedDeviceConnection];
    [v4 playSoundOnCompanionWithCompletion:&stru_41E0];
  }

  else
  {
    v4 = pmw_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "PMWControlCenterModule: ping my watch is not supported for the active device", v5, 2u);
    }
  }
}

void sub_10AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_13B4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

Class sub_13EC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_8208)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1530;
    v4[4] = &unk_4290;
    v4[5] = v4;
    v5 = off_4278;
    v6 = 0;
    qword_8208 = _sl_dlopen();
    v2 = v4[0];
    if (qword_8208)
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
  result = objc_getClass("NFMWhereIsMyCompanionConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1770();
  }

  qword_8200 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1530(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_8208 = result;
  return result;
}

Class sub_15A4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_8218)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_16E8;
    v4[4] = &unk_4290;
    v4[5] = v4;
    v5 = off_42B0;
    v6 = 0;
    qword_8218 = _sl_dlopen();
    v2 = v4[0];
    if (qword_8218)
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
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1798();
  }

  qword_8210 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_16E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_8218 = result;
  return result;
}