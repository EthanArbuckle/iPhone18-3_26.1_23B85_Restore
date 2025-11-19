void sub_24D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2500(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v12 isEqualToString:*(a1 + 32)];

        if (v13)
        {
          v14 = [v11 title];
          v15 = *(*(a1 + 40) + 8);
          v16 = *(v15 + 40);
          *(v15 + 40) = v14;

          *a4 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_34D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_34FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isViewLoaded])
  {
    [WeakRetained reloadSpecifiers];
  }
}

void sub_5BBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = PSRadioGroupCheckedSpecifierKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = *(a1 + 32);
        v12 = [v10 title];
        v13 = [v10 identifier];
        v14 = [v11 _makeListItemSpecifier:v12 value:v13];

        v15 = [v10 identifier];
        LODWORD(v12) = [v15 isEqualToString:*(a1 + 40)];

        if (v12)
        {
          [*(*(a1 + 32) + 144) setProperty:v14 forKey:v8];
        }

        [*(a1 + 48) addObject:v14];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

void sub_7C00(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "the currently configured sting bundleID:%@ is missing from app library", &v2, 0xCu);
}