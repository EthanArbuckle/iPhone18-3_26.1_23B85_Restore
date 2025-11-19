id getLogger()
{
  if (qword_8368 != -1)
  {
    sub_24E8();
  }

  v1 = qword_8370;

  return v1;
}

void sub_C14(id a1)
{
  qword_8370 = os_log_create("com.apple.EmergencyAlerts", "SwitchExtension");

  _objc_release_x1();
}

__CFString *asSwitchState(int a1)
{
  if (a1)
  {
    return @"enabled";
  }

  else
  {
    return @"disabled";
  }
}

void sub_24C8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_25C4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Error reading key: %{public}@ from %{public}@", &v3, 0x16u);
}

void sub_264C(uint64_t *a1)
{
  v6 = *a1;
  sub_24BC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_26C4(uint64_t a1, char a2)
{
  v2 = *(a1 + 192);
  v3 = @"disabled";
  if (a2)
  {
    v3 = @"enabled";
  }

  v4 = v3;
  sub_24A4();
  sub_24C8(&dword_0, v5, v6, "Enhanced delivery pref for %@: %@", v7, v8, v9, v10, v11);
}

void sub_2770(uint64_t a1, char a2)
{
  v2 = *(a1 + 192);
  v3 = @"disabled";
  if (a2)
  {
    v3 = @"enabled";
  }

  v4 = v3;
  sub_24A4();
  sub_24C8(&dword_0, v5, v6, "Always delivery pref for %@: %@", v7, v8, v9, v10, v11);
}