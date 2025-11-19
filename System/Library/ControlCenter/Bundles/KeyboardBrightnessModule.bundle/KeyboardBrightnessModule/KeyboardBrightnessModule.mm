void sub_29C9CB434(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = sub_29C9CB4EC;
  v6[3] = &unk_29F33CC28;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x29EDCA578], v6);

  objc_destroyWeak(&v8);
}

uint64_t sub_29C9CB4EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v20 = WeakRetained;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_msgSend_sliderView(v20, v20, v4, v5, v6);
      isTracking = objc_msgSend_isTracking(v7, v8, v9, v10, v11);

      if ((isTracking & 1) == 0)
      {
        objc_msgSend_floatValue(*(a1 + 32), v20, v13, v14, v15);
        objc_msgSend_updateControlsForValue_animated_(v20, v16, 1, v17, v18);
      }
    }
  }

  return MEMORY[0x2A1C71028]();
}