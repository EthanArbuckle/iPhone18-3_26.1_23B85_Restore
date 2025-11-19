void sub_1518(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 isActive];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v5];
}

int64_t sub_157C(id a1, NCSComplication *a2, NCSComplication *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NCSComplication *)v4 name];
  if (v6 && (v7 = v6, [(NCSComplication *)v5 name], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [(NCSComplication *)v4 name];
    v10 = [(NCSComplication *)v5 name];
    v11 = [v9 localizedCaseInsensitiveCompare:v10];
  }

  else
  {
    v12 = [(NCSComplication *)v4 name];
    if (v12)
    {
    }

    else
    {
      v18 = [(NCSComplication *)v5 name];

      if (v18)
      {
        v16 = 1;
        goto LABEL_10;
      }
    }

    v13 = [(NCSComplication *)v4 name];
    if (v13)
    {
      v14 = v13;
      v15 = [(NCSComplication *)v5 name];

      if (!v15)
      {
        v16 = -1;
        goto LABEL_10;
      }
    }

    v9 = [(NCSComplication *)v4 complicationIdentifier];
    v10 = [(NCSComplication *)v5 complicationIdentifier];
    v11 = [v9 compare:v10];
  }

  v16 = v11;

LABEL_10:
  return v16;
}

void sub_16CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:*(a1 + 32) set:"setActiveState:forSpecifier:" get:"activeStateForSpecifier:" detail:0 cell:-1 edit:0];

  [v5 setComplication:v3];
  v6 = [v3 complicationIdentifier];
  [v5 setIdentifier:v6];

  v7 = [*(a1 + 32) _iconForSpecifier:v5];
  if (v7)
  {
    [v5 setProperty:v7 forKey:PSIconImageKey];
  }

  else
  {
    v8 = [v3 appBundleIdentifier];
    if (v8)
    {
    }

    else
    {
      v9 = [v3 sockPuppetIdentifier];

      if (!v9)
      {
        goto LABEL_13;
      }
    }

    v10 = [v3 sockPuppetIdentifier];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v3 appBundleIdentifier];
    }

    v13 = v12;

    v14 = +[UIScreen mainScreen];
    v15 = [v14 traitCollection];
    [v15 displayScale];
    if (v16 <= 2.0)
    {
      v17 = 47;
    }

    else
    {
      v17 = 48;
    }

    v18 = +[NanoResourceGrabber sharedInstance];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1910;
    v19[3] = &unk_4220;
    v19[4] = *(a1 + 32);
    v20 = v3;
    [v18 getIconForBundleID:v13 iconVariant:v17 block:v19 timeout:-1.0];
  }

LABEL_13:
  [*(a1 + 40) addObject:v5];
}

void sub_1910(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_19C0;
  block[3] = &unk_41F8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_19C0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 48) complicationIdentifier];
    v9 = [v2 specifierForID:v3];

    v4 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 160);
    v6 = [*(a1 + 48) complicationIdentifier];
    [v5 setObject:v4 forKeyedSubscript:v6];

    [v9 setProperty:*(a1 + 32) forKey:PSIconImageKey];
    v7 = *(a1 + 40);
    v8 = [v9 identifier];
    [v7 reloadSpecifierID:v8];
  }
}

void sub_1B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 complicationIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_1D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

id sub_1D40(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isActive];
  if (*(a1 + 64) == result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v7 = *(a1 + 56);
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) > v7;
    }
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);
  if ((v8 & 1) == 0)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    v8 = *(*(*(a1 + 40) + 8) + 24);
  }

  *a4 = v8;
  return result;
}