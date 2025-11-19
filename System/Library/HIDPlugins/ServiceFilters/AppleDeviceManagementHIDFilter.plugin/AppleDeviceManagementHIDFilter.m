uint64_t crc16_updateBuffer(uint64_t result, char *a2, int a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    LODWORD(result) = word_7098[(v3 ^ result)] ^ ((result & 0xFF00) >> 8);
  }

  return result;
}

uint64_t crc16_compute(char *a1, int a2)
{
  for (LOWORD(v2) = 0; a2; --a2)
  {
    v3 = *a1++;
    v2 = word_7098[(v3 ^ v2)] ^ ((v2 & 0xFF00) >> 8);
  }

  return v2;
}

void sub_FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_FE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained inputReportHandler:v12 timestamp:a3 type:a4 reportID:a5 report:v11];
}

id sub_14DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = 0;
  return [v1 extractCrashlogsWithError:&v3];
}

void sub_2754(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_27B4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_2C70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2C8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cleanupTimerFired];
}

void sub_2CCC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained crashlogExtractedAction:v3];
}

void sub_3E64(id a1)
{
  v1 = objc_opt_class();
  v5 = NSStringFromClass(v1);
  v2 = v5;
  v3 = os_log_create("com.apple.hid.AppleTopCase", [v5 UTF8String]);
  v4 = qword_11080;
  qword_11080 = v3;
}

void sub_467C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PalmspringCrashlogManager.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"device"}];
}

void sub_46F8(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_2774();
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%@", v5, 0xCu);
}

void sub_47A0(void *a1)
{
  v2 = a1;
  v3 = sub_2780();
  v4 = NSStringFromSelector(v3);
  sub_2774();
  sub_2754(&dword_0, v5, v6, "%@", v7, v8, v9, v10, v11);
}

void sub_4830(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
  }

  sub_278C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_48B4()
{
  sub_27A8();
  sub_278C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_48F0(char a1, int *a2, os_log_t log)
{
  v3 = @"unsuccessfully";
  v4 = *a2;
  if (a1)
  {
    v3 = @"sucessfully";
  }

  v5 = 138412546;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Payload size was %@ received, using payload size of %d", &v5, 0x12u);
}

void sub_4994(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Calling crashlog extracted callback...", buf, 2u);
}

void sub_49D4(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_2774();
  sub_2798();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_4A88()
{
  sub_27A8();
  sub_278C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_4AC4(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_2774();
  sub_2798();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);
}

void sub_4B7C(unsigned __int8 a1, uint64_t *a2, NSObject *a3)
{
  if (a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  LODWORD(v4) = 67109378;
  HIDWORD(v4) = a1;
  LOWORD(v5) = 2112;
  *(&v5 + 2) = v3;
  sub_27B4(&dword_0, a2, a3, "set report failed when trying to clear crashlog with ID %d: error %@", v4, v5, HIWORD(v3));
}

void sub_4C08(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PalmspringCrashlogManager.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"outSize"}];
}

void sub_4C80()
{
  sub_27A8();
  sub_278C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_4CBC()
{
  sub_27A8();
  sub_278C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_4CF8(int *a1)
{
  v6 = *a1;
  sub_278C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_4D80(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_2774();
  sub_2798();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);
}

void sub_4E34(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  if (a1)
  {
    v3 = *a1;
  }

  else
  {
    v3 = 0;
  }

  LODWORD(v4) = 67109378;
  HIDWORD(v4) = a2;
  LOWORD(v5) = 2112;
  *(&v5 + 2) = v3;
  sub_27B4(&dword_0, a2, a3, "set report failed when trying to set payload size to %d: error %@", v4, v5, HIWORD(v3));
}

void sub_4EBC(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_2774();
  sub_3984();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_4F4C(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  sub_3984();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_4FEC()
{
  sub_399C();
  v1 = +[NSAssertionHandler currentHandler];
  sub_3990();
  [v0 handleFailureInMethod:@"service" object:? file:? lineNumber:? description:?];
}

void sub_5060(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_3970();
  v8 = a3;
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%@, service %@", v7, 0x16u);
}

void sub_5118(void *a1, id *a2)
{
  v3 = a1;
  WeakRetained = objc_loadWeakRetained(a2);
  sub_2774();
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Failed to find hid device for service %@", v5, 0xCu);
}

void sub_51BC()
{
  sub_399C();
  v1 = +[NSAssertionHandler currentHandler];
  sub_3990();
  [v0 handleFailureInMethod:@"key" object:? file:? lineNumber:? description:?];
}

void sub_5230(void *a1, char a2, os_log_t log)
{
  v3 = @"YES";
  if (*a1)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (a2)
  {
    v3 = @"NO";
  }

  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Cannot collect palmspring crashlog error stats (crashlogs supported %@, authenticated %@)", &v5, 0x16u);
}

void sub_531C()
{
  sub_399C();
  v1 = +[NSAssertionHandler currentHandler];
  sub_3990();
  [v0 handleFailureInMethod:@"key" object:? file:? lineNumber:? description:?];
}

void sub_5390()
{
  sub_399C();
  v1 = +[NSAssertionHandler currentHandler];
  sub_3990();
  [v0 handleFailureInMethod:@"handler" object:? file:? lineNumber:? description:?];
}

void sub_5448(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_3970();
  v8 = a3;
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%@, crashlog %@", v7, 0x16u);
}

void sub_54FC()
{
  sub_3970();
  v3 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Failed to write crashlog %@ to file, dropping crashlog: err %@", v2, 0x16u);
}

void sub_5578()
{
  sub_3970();
  sub_3984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_56B8(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_2774();
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%@", v5, 0xCu);
}

void sub_575C(void *a1, void *a2, int a3)
{
  v5 = a1;
  [a2 length];
  sub_2774();
  v7 = 1024;
  v8 = a3;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Received crashlog info report does not contain the expected amount of bytes based on the header (received %ld, expected %d)", v6, 0x12u);
}

void sub_580C(void *a1, void *a2)
{
  v3 = a1;
  [a2 length];
  sub_2774();
  v5 = 2048;
  v6 = 5;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Crashlog info did not contain the report ID and full header (bytes: %ld, report ID + header size: %lu)", v4, 0x16u);
}

void sub_58C8(const char *a1, NSObject *a2)
{
  v3 = NSStringFromSelector(a1);
  sub_2774();
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%@", v4, 0xCu);
}

void sub_595C(void *a1, unsigned __int8 *a2, NSObject *a3)
{
  v5 = [a1 uniqueID];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10[0] = 67110144;
  v10[1] = v5;
  v11 = 1024;
  v12 = v6;
  v13 = 1024;
  v14 = v7;
  v15 = 1024;
  v16 = v8;
  v17 = 1024;
  v18 = v9;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "Crashlog (%d) header: blob version %d, type %d, blob size %d, crc16 0x%04x", v10, 0x20u);
}

void sub_5A20(void *a1, NSObject *a2)
{
  v4[0] = 67109632;
  v4[1] = [a1 uniqueID];
  v5 = 2048;
  v6 = 8;
  v7 = 1024;
  v8 = [a1 headerAndRawBlobSize];
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Crashlog (%d) does not have a full header: header size %ld, crashlog header+blob size %d", v4, 0x18u);
}

void sub_5AE0(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
  }

  sub_2774();
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Failed to create directory %@: error %@", v5, 0x16u);
}