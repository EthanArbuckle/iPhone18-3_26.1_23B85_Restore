uint64_t sub_29C9E85F0(uint64_t a1)
{
  [*(a1 + 32) refreshState];
  [*(a1 + 32) configureMenuItems];
  result = [*(a1 + 32) isExpanded];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return MEMORY[0x2A1C70FE8](v3, sel_updateStatusMessage);
  }

  return result;
}

uint64_t sub_29C9E8734(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 setSelected:0];
    v4 = *(a1 + 32);
  }

  else
  {
    [v3 setSelected:*(a1 + 41)];
    v5 = *(a1 + 32);
    [v5 isSelected];
    v4 = v5;
  }

  return MEMORY[0x2A1C70FE8](v4, sel_setGlyphState_);
}

void sub_29C9E88A4(uint64_t a1)
{
  v3 = [*(a1 + 32) contentModuleContext];
  v2 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:*(a1 + 40) type:*(a1 + 48)];
  [v3 enqueueStatusUpdate:v2];
}

void sub_29C9E89B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[160] dismissModule];
    WeakRetained = v2;
  }
}

void sub_29C9E8C70(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = shcore_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_29C9E7000, v6, OS_LOG_TYPE_ERROR, "Failed to access Shazam, %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x29EDCA608];
}

void sub_29C9E9094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_29C9E90BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissModule];
  v2 = [WeakRetained toggleManager];
  [v2 toggleRecognitionState];

  return 0;
}

void sub_29C9E9224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_29C9E9248(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissModule];
  [WeakRetained presentHistoryWithAuthentication];

  return 0;
}

void sub_29C9E9324(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_29C9E9340(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = sub_29C9E93DC;
    v5[3] = &unk_29F33E638;
    v5[4] = WeakRetained;
    [WeakRetained requestAuthenticationIfShazamIsInstalledAndProtected:v5];
  }

  else
  {
    [WeakRetained dismissModule];
  }
}

uint64_t sub_29C9E93DC(uint64_t a1, char a2)
{
  if (a2)
  {
    return MEMORY[0x2A1C70FE8](MEMORY[0x29EDBBD40], sel__presentMediaLibraryWithCompletionHandler_);
  }

  else
  {
    return [*(a1 + 32) dismissModule];
  }
}

void sub_29C9E93FC(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = a2;
  if (v2)
  {
    v3 = shcore_log_object();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_29C9E7000, v3, OS_LOG_TYPE_ERROR, "Failed to present Shazam Library with error: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}