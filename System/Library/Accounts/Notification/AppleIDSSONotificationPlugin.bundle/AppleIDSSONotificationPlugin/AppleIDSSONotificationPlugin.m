void sub_29C89C18C(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = _AIDALogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_29C89C47C(v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) username];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_29C89B000, v6, OS_LOG_TYPE_DEFAULT, "Successfully removed AIDA account with username %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_29C89C47C(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C89B000, a2, OS_LOG_TYPE_ERROR, "Failed to removed AIDA account: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}