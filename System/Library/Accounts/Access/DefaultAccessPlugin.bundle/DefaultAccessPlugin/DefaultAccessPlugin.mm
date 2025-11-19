void sub_29C7F93B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29C7F9CA0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void sub_29C7F9CE0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_29C7F9CF8()
{
  sub_29C7F9CB8();
  sub_29C7F9CA0(v1, v2, v3, 5.778e-34);
  sub_29C7F9CE0(&dword_29C7F8000, v6, v4, "%@ has an existing authorization entry: %@", v5);
}

void sub_29C7F9D40()
{
  sub_29C7F9CB8();
  sub_29C7F9CA0(v1, v2, v3, 5.778e-34);
  _os_log_error_impl(&dword_29C7F8000, v5, OS_LOG_TYPE_ERROR, "Unentitled client %@ requesting access to account type %@ which doesn't support access dialogs. *** Please file a bug ***", v4, 0x16u);
}

void sub_29C7F9D90()
{
  sub_29C7F9CB8();
  sub_29C7F9CA0(v1, v2, v3, 5.778e-34);
  sub_29C7F9CE0(&dword_29C7F8000, v6, v4, "Unentitled client %@ requesting access to account type %@ which no longer supports access dialogs.", v5);
}

void sub_29C7F9DD8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_29C7F8000, a2, OS_LOG_TYPE_DEBUG, "Client %@ does not have any special entitlements. Prompting user...", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29C7F9E50()
{
  v3 = *MEMORY[0x29EDCA608];
  sub_29C7F9CC8();
  sub_29C7F9CE0(&dword_29C7F8000, v0, v0, "%@ will get default access to account type %@", v2);
  v1 = *MEMORY[0x29EDCA608];
}

void sub_29C7F9EC0()
{
  v3 = *MEMORY[0x29EDCA608];
  sub_29C7F9CC8();
  sub_29C7F9CE0(&dword_29C7F8000, v0, v0, "%@ will get full access to account type %@", v2);
  v1 = *MEMORY[0x29EDCA608];
}

void sub_29C7F9F30(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = [a2 identifier];
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v5;
  sub_29C7F9CE0(&dword_29C7F8000, a3, v6, "%@ is losing accessing to account type %@", &v8);

  v7 = *MEMORY[0x29EDCA608];
}

void sub_29C7F9FDC(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = [a1 identifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_29C7F8000, a2, OS_LOG_TYPE_DEBUG, "Revoking access to all clients of account type %@", &v5, 0xCu);

  v4 = *MEMORY[0x29EDCA608];
}