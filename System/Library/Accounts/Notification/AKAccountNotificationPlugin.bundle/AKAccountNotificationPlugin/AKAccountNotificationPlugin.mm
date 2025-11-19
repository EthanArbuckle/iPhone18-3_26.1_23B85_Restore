uint64_t sub_29C872030(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

_BYTE *sub_29C8728F4(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_29C87296C(void *a1, char a2, id obj)
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9[1] = a1;
  if (v11)
  {
    v9[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v9[0];
      type = v8;
      sub_29C8728F4(v7);
      _os_log_impl(&dword_29C871000, log, type, "Successfully cleaned Hide My Email database", v7, 2u);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_29C872030(v13, location);
      _os_log_error_impl(&dword_29C871000, oslog, OS_LOG_TYPE_ERROR, "Failed to wipe Hide My Email database with error:%@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x29EDCA608];
}

void sub_29C873E60(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if ((v6 & 1) == 0)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_29C872030(v8, location);
      _os_log_error_impl(&dword_29C871000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to mark followup sync timestamp, oh well... %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x29EDCA608];
}

void sub_29C873F70(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_29C873FF8(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_29C8749DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 3;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 65;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 65;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_29C875140(uint64_t a1, char a2, id obj, void *a4)
{
  v21 = a1;
  v20 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17[1] = a1;
  if (v20)
  {
    v17[0] = _ACDLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v17[0];
      type = v16;
      sub_29C8728F4(v15);
      _os_log_impl(&dword_29C871000, log, type, "Successfully updated remote IdMS account...", v15, 2u);
    }

    objc_storeStrong(v17, 0);
  }

  else
  {
    v14 = _ACDLogSystem();
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v5 = v14;
      v6 = v13;
      sub_29C8728F4(v12);
      _os_log_error_impl(&dword_29C871000, v5, v6, "Failed to update the remote IdMS account, bailing!", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
  }

  v11 = [*(a1 + 32) _saveOptionsForCompanionDeviceAuth];
  v4 = [*(a1 + 40) remoteDeviceProxy];
  [v4 sendCommand:*MEMORY[0x29EDB8398] withAccount:*(a1 + 48) options:v11 completion:&unk_2A23CEF90];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
}

void sub_29C875340(void *a1, char a2, id obj, void *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = a1;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11[1] = a1;
  if (v14)
  {
    v11[0] = _ACDLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v11[0];
      type = v10;
      sub_29C8728F4(v9);
      _os_log_impl(&dword_29C871000, log, type, "Successfully verified credentials on the remote iCloud account!", v9, 2u);
    }

    objc_storeStrong(v11, 0);
  }

  else
  {
    oslog = _ACDLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_29C872030(v16, v12);
      _os_log_error_impl(&dword_29C871000, oslog, OS_LOG_TYPE_ERROR, "Failed to verify credentials on the remote iCloud account, error: %@", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x29EDCA608];
}

void sub_29C8756AC(NSObject *a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [location[0] description];
    sub_29C872030(v6, v2);
    _os_log_impl(&dword_29C871000, oslog[0], OS_LOG_TYPE_DEFAULT, "Remove PCS auth credentials completed with error: %@", v6, 0xCu);
    MEMORY[0x29EDC9740](v2);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x29EDCA608];
}

uint64_t sub_29C875D8C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_29C876360(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 3;
  *(result + 1) = 2;
  *(result + 2) = 65;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 65;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_29C876CB4(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = [location[0] actions];
  v8 = 0;
  v7 = 1;
  if ([v6 count])
  {
    v9 = [location[0] informativeText];
    v8 = 1;
    v7 = v9 == 0;
  }

  *(*(a1[4] + 8) + 24) = v7;
  if (v8)
  {
    MEMORY[0x29EDC9740](v9);
  }

  MEMORY[0x29EDC9740](v6);
  if (*(*(a1[4] + 8) + 24))
  {
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_29C876F54(uint64_t a1, char a2, id obj)
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_29C872030(v8, location);
      _os_log_error_impl(&dword_29C871000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to update follow up synchronization date: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  objc_storeStrong(&location, 0);
  *MEMORY[0x29EDCA608];
}