id sub_1D3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 reloadSpecifier:? animated:?];
  }

  else
  {
    return [v1 reloadSpecifiers];
  }
}

void sub_1E74(uint64_t a1, void *a2)
{
  v34 = a2;
  objc_storeStrong((*(a1 + 32) + 184), a2);
  v4 = +[NSMutableArray array];
  v5 = *(a1 + 32);
  v6 = *(v5 + 192);
  *(v5 + 192) = v4;

  v7 = +[NSMutableArray array];
  v8 = *(a1 + 32);
  v9 = *(v8 + 200);
  *(v8 + 200) = v7;

  v10 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = *(*(a1 + 32) + 184);
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(a1 + 32) + 184) objectForKeyedSubscript:*(*(&v43 + 1) + 8 * i)];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v13);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = *(a1 + 40);
  v18 = [v17 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v40;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(a1 + 32) + 184) objectForKeyedSubscript:*(*(&v39 + 1) + 8 * j)];
        v23 = v22;
        if (v22)
        {
          v24 = *(*(a1 + 32) + 192);
          v25 = [v22 bundleIdentifier];
          [v24 addObject:v25];

          [v10 removeObject:v23];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v19);
  }

  [v10 sortUsingComparator:&stru_8250];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = v10;
  v27 = [v26 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v36;
    do
    {
      for (k = 0; k != v28; k = k + 1)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(a1 + 32) + 200);
        v32 = [*(*(&v35 + 1) + 8 * k) bundleID];
        [v31 addObject:v32];
      }

      v28 = [v26 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v28);
  }

  v33 = *(a1 + 48);
  if (v33)
  {
    (*(v33 + 16))();
  }
}

void sub_29C0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 184);
  v4 = a2;
  v7 = [v3 objectForKeyedSubscript:v4];
  v5 = [v7 localizedName];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:*(a1 + 32) set:"_setActiveState:forSpecifier:" get:"_activeStateForSpecifier:" detail:0 cell:-1 edit:0];

  [v6 setApp:v7];
  [v6 setIdentifier:v4];
  [v6 setProperty:v4 forKey:PSLazyIconAppID];

  [v6 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [*(*(a1 + 32) + 168) addObject:v6];
}

void sub_364C(uint64_t a1, char a2)
{
  v3 = [NSNumber numberWithBool:a2 & 1];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not find destination index for setting specifier: %@ to active: %@", &v4, 0x16u);
}