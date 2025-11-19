uint64_t sub_29C951594(uint64_t a1)
{
  [*(a1 + 32) updateItems];
  v2 = *(a1 + 32);

  return MEMORY[0x2A1C70FE8](v2, sel_updateFooter);
}

void sub_29C951D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v43 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_29C951D94(uint64_t a1, void *a2)
{
  v2 = [a2 airPlayProperties];
  v3 = [v2 objectForKeyedSubscript:@"IsDiscoveredOverInfra"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_29C951E1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v4 = *(a1 + 49);
  if (*(a1 + 48))
  {
    if ((*(a1 + 49) & 1) == 0)
    {
      [WeakRetained stopMirroringDismissOnComplete:0];
    }
  }

  else if ((*(a1 + 49) & 1) == 0)
  {
    [WeakRetained selectOutputDevice:*(a1 + 32)];
  }

  return 0;
}

uint64_t sub_29C951E80(uint64_t a1)
{
  [*(a1 + 32) setShowMoreExpanded:1];
  [*(a1 + 32) updateItems];
  return 0;
}

void sub_29C9520E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

uint64_t sub_29C952128(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stopMirroringDismissOnComplete:1];

  return 0;
}

void sub_29C952788(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_29C9527A4(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a2 && *(a1 + 40) == 1)
  {
    v5 = _MRLogCategoryMirroringView();
    v6 = os_signpost_id_generate(v5);

    v7 = _MRLogCategoryMirroringView();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = [MEMORY[0x29EDBA070] numberWithInteger:0];
      v12 = 138543362;
      v13 = v9;
      _os_signpost_emit_with_name_impl(&dword_29C950000, v8, OS_SIGNPOST_EVENT, v6, "DismissedMirroringModuleUponStopMirroring", "EVENT DETAILS || destinationChangeResult:%{public}@", &v12, 0xCu);
    }

    v10 = [WeakRetained contentModuleContext];
    [v10 dismissModule];
  }

  v11 = *MEMORY[0x29EDCA608];
}