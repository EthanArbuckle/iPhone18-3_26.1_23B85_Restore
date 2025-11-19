void sub_29C92D640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_29C92D6A0(void *a1)
{
  v1 = MEMORY[0x29EDB9F48];
  v2 = a1;
  v3 = objc_opt_class();
  v5 = objc_msgSend_bundleForClass_(v1, v4, v3);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v2, &stru_2A23DFCB0, @"Accessibility");

  return v7;
}

void sub_29C92D73C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__updateShortcutActionsIfVisible(WeakRetained, v1, v2);
}

void sub_29C92D77C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__updateShortcutActionsIfVisible(WeakRetained, v1, v2);
}

void sub_29C92DB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_29C92DBB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_msgSend_shortcutDelegate(WeakRetained, v2, v3);
  objc_msgSend_openAccessibilityShortcutSettings(v4, v5, v6);

  return 0;
}

void sub_29C92DD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_29C92DD68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_intValue(*(a1 + 32), v3, v4);
  objc_msgSend__toggleOption_(WeakRetained, v6, v5);

  objc_copyWeak(&v8, (a1 + 40));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v8);
  return 0;
}

void sub_29C92DE2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__updateShortcutActions(WeakRetained, v1, v2);
}

uint64_t sub_29C92E09C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_server(MEMORY[0x29EDBDF40], a2, a3);
  v7 = objc_msgSend_guidedAccessEffectiveAppBundleIdentifier(v4, v5, v6);
  *(*(a1 + 32) + 1280) = v7 == 0;

  v9 = *(a1 + 32);
  return AXPerformBlockAsynchronouslyOnMainThread();
}

void sub_29C92E378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C92E390(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_source(a2, a2, a3);
  isEqual = objc_msgSend_isEqual_(v4, v5, *MEMORY[0x29EDBDFD8]);

  if (isEqual)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_29C92E494(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_server(MEMORY[0x29EDBDFA8], a2, a3);
  objc_msgSend_launchAccessibilityReader(v5, v3, v4);
}

Class sub_29C92E610(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!qword_2A1798630)
  {
    v5[1] = MEMORY[0x29EDCA5F8];
    v5[2] = 3221225472;
    v5[3] = sub_29C92E754;
    v5[4] = &unk_29F334780;
    v5[5] = v5;
    v6 = xmmword_29F334768;
    v7 = 0;
    qword_2A1798630 = _sl_dlopen();
    v2 = v5[0];
    if (qword_2A1798630)
    {
      if (!v5[0])
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
  result = objc_getClass("HUComfortSoundsSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C92EDB0();
  }

  qword_2A1798628 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29C92E754(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A1798630 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}