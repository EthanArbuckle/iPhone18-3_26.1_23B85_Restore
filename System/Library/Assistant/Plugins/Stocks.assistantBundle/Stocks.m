BOOL sub_1558(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 symbol];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [*(a1 + 32) symbol];
    v7 = [v3 symbol];
    v8 = [v6 caseInsensitiveCompare:v7] == 0;
  }

  else
  {
    v9 = [v3 companyName];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [*(a1 + 32) companyName];
      v12 = [v11 length];
      v13 = [v3 companyName];
      v14 = [v13 length];

      if (v12 <= v14)
      {
        v15 = [v3 companyName];
        v16 = *(a1 + 32);
      }

      else
      {
        v15 = [*(a1 + 32) companyName];
        v16 = v3;
      }

      v17 = [v16 companyName];
      [v15 rangeOfString:v17 options:385];
      v19 = v18;

      v8 = v19 != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}