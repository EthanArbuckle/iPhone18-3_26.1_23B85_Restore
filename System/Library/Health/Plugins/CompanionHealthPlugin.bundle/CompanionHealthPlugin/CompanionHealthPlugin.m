void sub_29E9FE2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29E9FE318(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x29EDBA7A8];
    if (os_log_type_enabled(*MEMORY[0x29EDBA7A8], OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_29E9FD000, v2, OS_LOG_TYPE_DEFAULT, "CHCompanionHealthProfileExtension did receive HKStandalonePhoneFitnessModeDidUpdateNotification notification", v3, 2u);
    }
  }
}