void sub_29C8D47B0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_29C8D2000, a2, OS_LOG_TYPE_FAULT, "Failed to get an account type for IDS identifier { identifier: %@ }", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29C8D4828(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C8D2000, a2, OS_LOG_TYPE_ERROR, "Failed loading existing accounts { error: %@}}", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}