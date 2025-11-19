void sub_2371BA58C()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v0 = 0;
    _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton xpc service(locationUI) Interrupted", v0, 2u);
  }
}

void sub_2371BA5EC()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v0 = 0;
    _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton xpc service(locationUI) Invalidated", v0, 2u);
  }
}

void sub_2371BA64C(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_error_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "#locationButton Error with proxy, error: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_2371BAC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_2371BACD0(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = objc_msgSend_traitCollection(v5, v7, v9, v10);
    hasDifferentColorAppearanceComparedToTraitCollection = objc_msgSend_hasDifferentColorAppearanceComparedToTraitCollection_(v6, v12, v13, v14, v11);

    if (hasDifferentColorAppearanceComparedToTraitCollection)
    {
      v19 = WeakRetained[58];
      v20 = objc_msgSend_traitCollection(v5, v16, v17, v18);
      v24 = objc_msgSend_resolvedColorWithTraitCollection_(v19, v21, v22, v23, v20);
      v25 = WeakRetained[60];
      WeakRetained[60] = v24;

      v26 = WeakRetained[59];
      v30 = objc_msgSend_traitCollection(v5, v27, v28, v29);
      v34 = objc_msgSend_resolvedColorWithTraitCollection_(v26, v31, v32, v33, v30);
      v35 = WeakRetained[61];
      WeakRetained[61] = v34;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v40 = objc_msgSend_traitCollection(v5, v36, v37, v38);
        v41 = WeakRetained[60];
        v42 = WeakRetained[61];
        v43 = 138412802;
        v44 = v40;
        v45 = 2112;
        v46 = v41;
        v47 = 2112;
        v48 = v42;
        _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton traitCollection: %@ backgroundColor:%@ tintColor:%@", &v43, 0x20u);
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_2371BAE94(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__yieldSlotViewContentForLayerContextID_slotStyle_withYieldBlock_(WeakRetained, v9, v10, v11, a2, v8, v7);
}

void sub_2371BB674(uint64_t a1, const char *a2, __n128 a3, __n128 a4)
{
  v5 = objc_msgSend_locationUIProxy(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2371BB73C;
  v13[3] = &unk_278A27DC8;
  v9 = *(a1 + 72);
  v14 = *(a1 + 64);
  objc_msgSend_getRemoteContentForStyle_layerContext_tag_sandboxExtension_completionHandler_(v5, v10, v11, v12, v6, v9, v7, v8, v13);
}

void sub_2371BB73C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_2371BB834;
    v4[3] = &unk_278A27DA0;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Error: #locationButton remote-imaging suspended. RemoteSlotContent is null", buf, 2u);
  }
}

void sub_2371BC09C(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_msgSend_setAccessibilityContrast_(v8, v2, v3, v4, 0);
  objc_msgSend_setAccessibilityButtonShapes_(v8, v5, v6, v7, 0);
}

double sub_2371BC43C(void *a1, void *a2, double a3)
{
  v25 = 0.0;
  v26 = 0.0;
  v24 = 0.0;
  v5 = a2;
  objc_msgSend_getRed_green_blue_alpha_(a1, v6, v7, v8, &v26, &v25, &v24, 0);
  v22 = 0.0;
  v23 = 0.0;
  v21 = 0.0;
  objc_msgSend_getRed_green_blue_alpha_(v5, v9, v10, v11, &v23, &v22, &v21, 0);

  v12 = (1.0 - a3) * v23 + v26 * a3;
  v13 = v24;
  v14 = (1.0 - a3) * v22 + v25 * a3;
  v15 = (1.0 - a3) * v21;
  if (v12 <= 0.03928)
  {
    v16 = v12 / 12.92;
  }

  else
  {
    v16 = pow((v12 + 0.055) / 1.055, 2.4);
  }

  v17 = v15 + v13 * a3;
  if (v14 <= 0.03928)
  {
    v18 = v14 / 12.92;
  }

  else
  {
    v18 = pow((v14 + 0.055) / 1.055, 2.4);
  }

  if (v17 <= 0.03928)
  {
    v19 = v17 / 12.92;
  }

  else
  {
    v19 = pow((v17 + 0.055) / 1.055, 2.4);
  }

  return v18 * 0.7152 + v16 * 0.2126 + v19 * 0.0722;
}