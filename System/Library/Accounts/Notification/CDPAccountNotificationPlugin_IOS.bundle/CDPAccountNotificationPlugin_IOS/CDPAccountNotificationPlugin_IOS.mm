void sub_29C8A24D4(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_29C8A1000, v5, OS_LOG_TYPE_DEFAULT, "Updated keychain sync with success: %{BOOL}d, error: %{public}@", v7, 0x12u);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_29C8A2620(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = 141558274;
  v4 = 1752392040;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_29C8A1000, a2, OS_LOG_TYPE_DEBUG, "No dataclass changes for %{mask.hash}@, skipping update.", &v3, 0x16u);
  v2 = *MEMORY[0x29EDCA608];
}