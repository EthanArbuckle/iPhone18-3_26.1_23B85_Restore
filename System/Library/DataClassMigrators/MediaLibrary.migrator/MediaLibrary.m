os_log_t sub_BE0()
{
  v0 = os_log_create("com.apple.amp.medialibrary.migrator", "Migration");

  return v0;
}

void sub_140C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = sub_BE0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *(v10 - 128) = 138543362;
      *(v10 - 124) = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_FAULT, "[Migrator] !!! Exception while trying to migrate library. %{public}@", (v10 - 128), 0xCu);
    }

    *(a10 + 24) = 0;
    objc_end_catch();
    v13 = *(a10 + 24);
    JUMPOUT(0x13CCLL);
  }

  _Unwind_Resume(a1);
}