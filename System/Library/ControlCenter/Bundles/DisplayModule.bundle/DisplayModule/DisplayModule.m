void sub_29C9719A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_29C9719BC(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7 = a2[1];
    v13 = *a2;
    v6 = v13;
    v14 = v7;
    v15 = *(a2 + 4);
    *(WeakRetained + 141) = v15;
    *(WeakRetained + 1096) = v6;
    *(WeakRetained + 1112) = v7;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = sub_29C971AA4;
    v8[3] = &unk_29F338210;
    objc_copyWeak(&v9, (a1 + 32));
    v10 = v13;
    v11 = v14;
    v12 = v15;
    dispatch_async(MEMORY[0x29EDCA578], v8);
    objc_destroyWeak(&v9);
  }
}

void sub_29C971AA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = MEMORY[0x29EDC0CB0];
    v7 = objc_msgSend_viewIfLoaded(WeakRetained, v3, v4);
    v10 = objc_msgSend_window(v7, v8, v9);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = sub_29C971B8C;
    v12[3] = &unk_29F3381E8;
    v12[4] = v5;
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v15 = *(a1 + 72);
    objc_msgSend_performWithoutAnimationWhileHiddenInWindow_actions_(v6, v11, v10, v12);
  }
}

uint64_t sub_29C971B8C(uint64_t a1, const char *a2)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = sub_29C971C30;
  v3[3] = &unk_29F3381E8;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  return objc_msgSend_animateWithDuration_delay_options_animations_completion_(MEMORY[0x29EDC7DA0], a2, 4, v3, 0, 0.25, 0.0);
}

void sub_29C971C30(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_nightShiftButton(*(a1 + 32), a2, a3);
  objc_msgSend_setEnabled_(v4, v5, *(a1 + 41));
  if (*(a1 + 64))
  {
    objc_msgSend_setInoperative_(v4, v6, 1);
  }

  else
  {
    objc_msgSend_setInoperative_(v4, v6, (*(a1 + 72) ^ 1) & 1);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v12[0] = *(a1 + 40);
  v12[1] = v9;
  v13 = *(a1 + 72);
  v10 = objc_msgSend__subtitleForBlueLightStatus_(v8, v7, v12);
  objc_msgSend_setSubtitle_(v4, v11, v10);
}

void sub_29C971DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C971DBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = MEMORY[0x29EDC0CB0];
    v6 = objc_msgSend_viewIfLoaded(WeakRetained, v2, v3);
    v9 = objc_msgSend_window(v6, v7, v8);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = sub_29C971E80;
    v11[3] = &unk_29F338260;
    v11[4] = v4;
    objc_msgSend_performWithoutAnimationWhileHiddenInWindow_actions_(v5, v10, v9, v11);
  }
}

uint64_t sub_29C971E80(uint64_t a1, const char *a2)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = sub_29C971F0C;
  v3[3] = &unk_29F338260;
  v3[4] = *(a1 + 32);
  return objc_msgSend_animateWithDuration_delay_options_animations_completion_(MEMORY[0x29EDC7DA0], a2, 4, v3, 0, 0.25, 0.0);
}

void sub_29C971F0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v15 = objc_msgSend_trueToneButton(*(a1 + 32), a2, a3);
  Enabled = objc_msgSend_getEnabled(*(*(a1 + 32) + 1080), v4, v5);
  objc_msgSend_setEnabled_(v15, v7, Enabled);
  v9 = objc_msgSend__subtitleForTrueToneEnabled_(*(a1 + 32), v8, Enabled);
  objc_msgSend_setSubtitle_(v15, v10, v9);

  v13 = objc_msgSend_available(*(*(a1 + 32) + 1080), v11, v12);
  objc_msgSend_setInoperative_(v15, v14, v13 ^ 1u);
}

void sub_29C9721A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32) + 1096;
  v6 = *(a2 + 32);
  v7 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v7;
  *(v5 + 32) = v6;
  v8 = objc_msgSend_nightShiftButton(*(a1 + 32), a2, a3);
  objc_msgSend_setEnabled_(v8, v9, *(a2 + 1));

  v12 = objc_msgSend_nightShiftButton(*(a1 + 32), v10, v11);
  v14 = v12;
  if (*(a2 + 24))
  {
    objc_msgSend_setInoperative_(v12, v13, 1);
  }

  else
  {
    objc_msgSend_setInoperative_(v12, v13, (*(a2 + 32) ^ 1) & 1);
  }

  v17 = objc_msgSend_nightShiftButton(*(a1 + 32), v15, v16);
  v18 = *(a1 + 32);
  v19 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v19;
  v24 = *(a2 + 32);
  v21 = objc_msgSend__subtitleForBlueLightStatus_(v18, v20, v23);
  objc_msgSend_setSubtitle_(v17, v22, v21);
}

void sub_29C972350(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 1);
  v4 = *(a1 + 32) + 1096;
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = sub_29C9724E8;
  v19[3] = &unk_29F3382D8;
  v19[4] = *(a1 + 32);
  v20 = v3 ^ 1;
  v7 = MEMORY[0x29ED4E110](v19);
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = sub_29C97254C;
  v18[3] = &unk_29F338260;
  v18[4] = *(a1 + 32);
  v8 = MEMORY[0x29ED4E110](v18);
  if ((v3 & 1) != 0 || !_AXSScreenFilterApplied())
  {
    v7[2](v7);
  }

  else
  {
    v10 = objc_msgSend__alertControllerForDisablingAccessibilityScreenFilter_cancelBlock_(*(a1 + 32), v9, v7, v8);
    v11 = *(a1 + 32);
    v12 = *(v11 + 1136);
    *(v11 + 1136) = v10;
    v13 = v10;

    v16 = objc_msgSend_parentViewController(*(a1 + 32), v14, v15);
    objc_msgSend_presentViewController_animated_completion_(v16, v17, v13, 1, 0);
  }
}

void sub_29C9724E8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 40);
  *(*(a1 + 32) + 1097) = v3;
  objc_msgSend__setNightShiftEnabled_(*(a1 + 32), a2, v3);
  v4 = *(a1 + 32);
  v5 = *(v4 + 1136);
  *(v4 + 1136) = 0;
}

void sub_29C97254C(uint64_t a1, const char *a2)
{
  objc_msgSend__setNightShiftEnabled_(*(a1 + 32), a2, *(*(a1 + 32) + 1097));
  v3 = *(a1 + 32);
  v4 = *(v3 + 1136);
  *(v3 + 1136) = 0;
}

uint64_t sub_29C972954(uint64_t a1)
{
  _AXSDisableScreenFilters();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_29C9729A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_29C973448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C973468(uint64_t a1)
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9734F8;
  block[3] = &unk_29F338340;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x29EDCA578], block);
  objc_destroyWeak(&v2);
}

void sub_29C9734F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x29EDC0CB0];
  v5 = objc_msgSend_viewIfLoaded(WeakRetained, v3, v4);
  v8 = objc_msgSend_window(v5, v6, v7);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C9735B4;
  v10[3] = &unk_29F338260;
  v10[4] = WeakRetained;
  objc_msgSend_performWithoutAnimationWhileHiddenInWindow_actions_(v2, v9, v8, v10);
}

uint64_t sub_29C9735B4(uint64_t a1, const char *a2)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = sub_29C973640;
  v3[3] = &unk_29F338260;
  v3[4] = *(a1 + 32);
  return objc_msgSend_animateWithDuration_delay_options_animations_completion_(MEMORY[0x29EDC7DA0], a2, 4, v3, 0, 0.25, 0.0);
}

uint64_t sub_29C973718(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_setNeedsLayout(*(*(a1 + 32) + 1040), a2, a3);
  v5 = *(*(a1 + 32) + 1040);

  return MEMORY[0x2A1C70FE8](v5, sel_layoutIfNeeded, v4);
}