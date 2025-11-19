void sub_E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeCapsLockIfNeeded];
}

id sub_195C(uint64_t a1)
{
  [*(a1 + 32) removeConstraints:*(a1 + 40)];
  [*(a1 + 32) addConstraints:*(a1 + 48)];
  [*(a1 + 56) setAlpha:1.0];
  v2 = [*(a1 + 32) hudBackgroundView];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 32);

  return [v3 layoutIfNeeded];
}

id sub_20D4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) hudBackgroundView];
    [v2 setAlpha:0.0];
  }

  else
  {
    [*(a1 + 40) setAlpha:0.0];
  }

  [*(a1 + 32) removeConstraints:*(a1 + 48)];
  [*(a1 + 32) addConstraints:*(a1 + 56)];
  v3 = *(a1 + 32);

  return [v3 layoutIfNeeded];
}

void sub_2158(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) allStickyKeyLabels];
  v3 = [v2 count];

  if (!v3)
  {
    v4 = [*(a1 + 40) hudBackgroundView];
    [v4 removeFromSuperview];

    v5 = *(a1 + 40);

    [v5 setHudBackgroundView:0];
  }
}

void sub_22CC(uint64_t a1)
{
  v1 = [*(a1 + 32) hudBackgroundView];
  [v1 setAlpha:0.0];
}

uint64_t sub_2314(uint64_t a1)
{
  v2 = [*(a1 + 32) hudBackgroundView];
  [v2 removeFromSuperview];

  [*(a1 + 32) setHudBackgroundView:0];
  v3 = [*(a1 + 32) allStickyKeyLabels];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) allStickyKeyHorizontalConstraints];
  [v4 removeAllObjects];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_2A68(uint64_t a1)
{
  v2 = +[AXUIDisplayManager sharedDisplayManager];
  [v2 removeContentViewController:*(a1 + 32) withUserInteractionEnabled:0 forService:*(a1 + 40)];
}