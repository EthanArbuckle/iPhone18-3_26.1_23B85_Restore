void sub_10A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_2268(v4, v5);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1174;
    block[3] = &unk_8250;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_168C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_16B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateIconGlyph];
}

void sub_1AE8(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Updating QuickNote icon glyph", v5, 2u);
  }

  v3 = [*(a1 + 32) moduleViewController];
  v4 = [*(a1 + 32) iconGlyph];
  [v3 setGlyphImage:v4];
}

id sub_1E3C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v2 == 1)
  {
    return [v3 drawAtPoint:17 blendMode:v4 alpha:{v5, 0.4}];
  }

  else
  {
    return [v3 drawAtPoint:0 blendMode:v4 alpha:{v5, 1.0}];
  }
}

void sub_20FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) remoteAlertHandle];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    [*(a1 + 32) invalidate];
    [*(a1 + 32) unregisterObserver:*(a1 + 40)];
    v4 = *(a1 + 40);

    [v4 setRemoteAlertHandle:0];
  }
}

void sub_2268(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to open primary app: %@", &v2, 0xCu);
}

void sub_2368(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[ICSystemPaperControlCenterModule remoteAlertHandle:didInvalidateWithError:] - error: %@", &v2, 0xCu);
}

void sub_23E0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[ICSystemPaperControlCenterModule remoteAlertHandle:didInvalidateWithError:] - error: %@", &v2, 0xCu);
}