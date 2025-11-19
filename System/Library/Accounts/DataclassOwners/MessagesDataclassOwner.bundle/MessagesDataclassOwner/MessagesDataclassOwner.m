id sub_DD0(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_8260 table:@"IMiCloudSettingsPlugin"];

  return v3;
}

void sub_1B1C(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _disablementOptionForUserNotificationResponse:v3];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(*(a1 + 40) + 8) + 24);
      v6 = 134217984;
      v7 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "User chose disablement option {%ld} in IMUserNotificationCenter completion.", &v6, 0xCu);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_2DD4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x2D74);
  }

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(exc_buf);
}

void sub_2E34(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = [v10 error];

  v12 = IMOSLoggingEnabled();
  if (v11)
  {
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v10 error];
        v16 = 138412290;
        v17 = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "request quota with error: %@", &v16, 0xCu);
      }
    }
  }

  else
  {
    if (v12)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = 67109120;
        LODWORD(v17) = [v10 hasMaxTier];
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "request quota returned: hasMaxTier: %d", &v16, 8u);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = [v10 hasMaxTier];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2FDC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2F7CLL);
  }

  _Unwind_Resume(a1);
}