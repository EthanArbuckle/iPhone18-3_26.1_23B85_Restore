void sub_29C9EE00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C9EE034(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_29C9EE0EC;
  v5[3] = &unk_29F33EB30;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x29EDCA578], v5);

  objc_destroyWeak(&v7);
}

void sub_29C9EE0EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateMenuItemsWithDate:*(a1 + 32)];
}

void sub_29C9EE680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(va);
  objc_destroyWeak((v17 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_29C9EE6DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _turnOnSpokenMessages];
    [v2 _refreshState];
  }

  return 1;
}

uint64_t sub_29C9EE720(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _muteSpokenMessages];
    [v2 _refreshState];
  }

  return 1;
}

uint64_t sub_29C9EE764(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _turnOffSpokenMessagesForTheDay];
    [v2 _refreshState];
  }

  return 1;
}

void sub_29C9EEF38(uint64_t a1, char a2)
{
  objc_initWeak(&location, *(a1 + 32));
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C9EEFF4;
  v4[3] = &unk_29F33EBA8;
  v6 = a2;
  v4[4] = *(a1 + 32);
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x29EDCA578], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_29C9EEFF4(uint64_t a1)
{
  v2 = (*(a1 + 48) & 1) == 0 && [*(a1 + 32) isDeviceInEligibleAnnounceNotificationsConfiguration] && objc_msgSend(*(a1 + 32), "contentRenderingMode") != 1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _refreshStateWithSelected:v2 expanded:{objc_msgSend(*(a1 + 32), "isExpanded")}];
}

uint64_t sub_29C9EF288(uint64_t a1)
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

void sub_29C9EF48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C9EF4B0(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained _turnOnSpokenMessages];
  }

  else
  {
    [WeakRetained _turnOffSpokenMessagesForTheDay];
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _refreshState];
}

void sub_29C9EF8A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _fetchAnnounceSettingsAndRefreshState];
    WeakRetained = v2;
  }
}