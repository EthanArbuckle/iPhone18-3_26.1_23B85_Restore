void sub_E24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1360(v9, v10);
    }

    v11 = *(*(a1 + 40) + 16);
LABEL_5:
    v11();
    goto LABEL_22;
  }

  if (![v8 count])
  {
    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v7;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "No recommendations available for Review Large Files because there are no files larger than %@ MB", buf, 0xCu);
    }

    v11 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  v43 = v7;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
  v44 = a1;
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v46;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [*(*(&v45 + 1) + 8 * i) documentSize];
        v15 += [v18 integerValue];
      }

      v14 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v40 = v8;

  v20 = [CENativeModalRecommendationAction alloc];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"REVIEW_LARGE_FILES_TIP_ACTION" value:&stru_41E8 table:@"Localizable"];
  v23 = [v20 initWithIdentifier:@"com.apple.quota-reviewLargeFiles" title:v22 detailControllerClass:objc_opt_class()];

  v24 = [ICQUICoreSpotlightQueryHelper totalSizeStringForItems:v12];
  v25 = [NSBundle bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"REVIEW_LARGE_FILES_TIP_MESSAGE" value:&stru_41E8 table:@"Localizable"];
  v41 = v24;
  v27 = [NSString stringWithFormat:v26, v24];

  v28 = [CERecommendation alloc];
  v29 = [NSBundle bundleForClass:objc_opt_class()];
  v30 = [v29 localizedStringForKey:@"REVIEW_LARGE_FILES_TIP_TITLE" value:&stru_41E8 table:@"Localizable"];
  v31 = [*(v44 + 32) bundleID];
  v32 = [NSNumber numberWithInteger:v15];
  v33 = CERecommendationTypeDeclutter;
  v42 = v23;
  v50 = v23;
  v34 = [NSArray arrayWithObjects:&v50 count:1];
  v35 = [v28 initWithIdentifier:@"com.apple.quota-reviewLargeFiles" title:v30 message:v27 bundleID:v31 storageRecoverable:v32 category:v33 actions:v34];

  v36 = _ICQGetLogSystem();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v12 count];
    *buf = 134217984;
    v53 = v37;
    _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Review Large Files recommendation found %ld items", buf, 0xCu);
  }

  v38 = *(v44 + 40);
  v49 = v35;
  v39 = [NSArray arrayWithObjects:&v49 count:1];
  (*(v38 + 16))(v38, v39, 0);

  v7 = v43;
  v8 = v40;
LABEL_22:
}

void sub_1360(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "No recommendations available for Review Large Files due to error: %@", &v4, 0xCu);
}