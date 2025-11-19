void sub_29C98164C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_29C981688(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F70];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = objc_msgSend_assetState(WeakRetained, v3, v4, v5);
    isEqualToString = objc_msgSend_isEqualToString_(v7, v8, HACCIconAssetStateOff, v9);

    v11 = *MEMORY[0x29EDC7FF0];
    if (isEqualToString)
    {
      v11 = 0;
    }

    v1 |= v11;
  }

  return v1;
}

id sub_29C98170C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_msgSend_assetState(WeakRetained, v2, v3, v4);
    if ((objc_msgSend_isEqualToString_(v6, v7, HACCIconAssetStateSafe, v8) & 1) != 0 || objc_msgSend_isEqualToString_(v6, v9, HACCIconAssetStateWarning, v10))
    {
      v11 = hearingLocString();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_29C981938(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_29C981974(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__updateSelectedStatus(WeakRetained, v1, v2, v3);
}

void sub_29C9819B4(uint64_t a1, char a2)
{
  objc_copyWeak(&v3, (a1 + 32));
  v4 = a2;
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v3);
}

void sub_29C981A58(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setIsLiveListenEnabled_(WeakRetained, v4, v2, v5);

  v9 = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__updateSelectedStatus(v9, v6, v7, v8);
}

void sub_29C982190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C9821B4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  AXPerformBlockOnMainThread();

  objc_destroyWeak(&v5);
}

void sub_29C982278(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_updateViewWithAudioSample_(WeakRetained, v2, *(a1 + 32), v3);
}