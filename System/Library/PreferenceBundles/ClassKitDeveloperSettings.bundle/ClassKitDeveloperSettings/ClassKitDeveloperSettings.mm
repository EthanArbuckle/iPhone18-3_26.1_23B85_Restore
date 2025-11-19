void sub_14E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_1500(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1538(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateCheckedSpecifierFromPreferences];
}

void sub_169C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_16C8(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    v13 = v3;
    v14 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (a2 == 2)
    {
      v8 = [WeakRetained actAsTeacherSpecifier];
    }

    else if (a2 == 1)
    {
      v8 = [WeakRetained actAsStudentSpecifier];
    }

    else if (a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = [WeakRetained actAsOffSpecifier];
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_17C0;
    v10[3] = &unk_41B8;
    v11 = v8;
    v12 = v7;
    v9 = v8;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

void sub_17C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) actAsGroupSpecifier];
  v4 = v3;
  if (v2)
  {
    [v3 setProperty:*(a1 + 32) forKey:PSRadioGroupCheckedSpecifierKey];
  }

  else
  {
    [v3 removePropertyForKey:PSRadioGroupCheckedSpecifierKey];
  }

  v5 = *(a1 + 40);
  v6 = [v5 actAsGroupSpecifier];
  [v5 reloadSpecifier:v6];
}

void sub_186C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v13 = v3;
    v14 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained catalogEnvProdSpecifier];
    if (a2 == 1)
    {
      v8 = [WeakRetained catalogEnvDevSpecifier];

      v7 = v8;
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1950;
    v10[3] = &unk_41B8;
    v11 = v7;
    v12 = WeakRetained;
    v9 = v7;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

void sub_1950(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) catalogEnvGroupSpecifier];
  v4 = v3;
  if (v2)
  {
    [v3 setProperty:*(a1 + 32) forKey:PSRadioGroupCheckedSpecifierKey];
  }

  else
  {
    [v3 removePropertyForKey:PSRadioGroupCheckedSpecifierKey];
  }

  v5 = *(a1 + 40);
  v6 = [v5 catalogEnvGroupSpecifier];
  [v5 reloadSpecifier:v6];
}