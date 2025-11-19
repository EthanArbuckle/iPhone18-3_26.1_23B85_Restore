__CFString *sub_29C91AE40(CFStringRef originalString)
{
  v1 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x29EDB8ED8], originalString, 0, @":/?#[]@!$&‚Äö√Ñ√¥()*+,;='", 0x8000100u);

  return v1;
}

void sub_29C91B018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C91B030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a1 + 40);

    dispatch_semaphore_signal(v5);
  }

  else
  {
    v12 = v3;
    v13 = v4;
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = sub_29C91B0E8;
    v10[3] = &unk_29F3335F0;
    v9 = *(a1 + 40);
    v8 = v9;
    v11 = v9;
    [v7 accountsWithAccountType:a2 handler:v10];
  }
}

intptr_t sub_29C91B0E8(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = [a2 count] != 0;
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

void sub_29C91B388(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v9 = 0;
  v3 = [MEMORY[0x29EDBA118] sendSynchronousRequest:v2 returningResponse:&v9 error:&v8];
  v4 = v9;
  v5 = v8;
  if (v5)
  {
    v6 = *(a1 + 40);
    _SLLog();
  }

  else
  {
    v7 = [*(a1 + 40) username];
    _SLLog();
  }
}