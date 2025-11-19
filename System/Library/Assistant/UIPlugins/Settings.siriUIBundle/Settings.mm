void sub_14A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_14CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _wiFiStateChangedWithOldState:a2 newState:a3];
}

id ACSettingsLocalizedStringWithTable(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.assistant.Settings"];
  v6 = [v5 assistantUILocalizedStringForKey:v4 table:v3];

  return v6;
}

void sub_3130(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_41D0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACSettingsSwitchSetting.m" lineNumber:110 description:{@"Asked to show cellular data snippet, but device doesn't support cellular data"}];
}