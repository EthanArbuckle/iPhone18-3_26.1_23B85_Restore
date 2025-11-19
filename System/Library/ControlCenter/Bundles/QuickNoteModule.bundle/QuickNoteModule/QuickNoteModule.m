void sub_29C9E6040(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_29C9E6394(a1, v2);
  }

  v6 = objc_msgSend_defaultWorkspace(MEMORY[0x29EDB9400], v3, v4, v5);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = (a1 + 32);
  v13 = objc_msgSend_openSensitiveURL_withOptions_(v6, v10, v11, v12, v7, v8);

  if ((v13 & 1) == 0)
  {
    v14 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_29C9E641C(v9, v14);
    }
  }
}

void sub_29C9E6394(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 138412546;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_29C9E5000, a2, OS_LOG_TYPE_DEBUG, "Launching with URL %@ and options %@", &v5, 0x16u);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_29C9E641C(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_29C9E5000, a2, OS_LOG_TYPE_DEBUG, "Failed to launch to URL %@", &v4, 0xCu);
  v3 = *MEMORY[0x29EDCA608];
}