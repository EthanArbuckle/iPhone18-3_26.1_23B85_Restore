__n128 *sub_100130FE0(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 6;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + (v9 << 6));
      do
      {
        sub_1001311A0(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *a4;
        v14 = v12[1];
        v37 = *v12;
        v38 = v14;
        v15 = v12[3];
        v39 = v12[2];
        v40 = v15;
        v16 = *(a1 + 16);
        v36[0] = *a1;
        v36[1] = v16;
        v17 = *(a1 + 48);
        v36[2] = *(a1 + 32);
        v36[3] = v17;
        if (v13(&v37, v36))
        {
          v19 = v12[2];
          v18 = v12[3];
          v21 = *v12;
          v20 = v12[1];
          v22 = *(a1 + 48);
          v24 = *a1;
          v23 = *(a1 + 16);
          v12[2] = *(a1 + 32);
          v12[3] = v22;
          *v12 = v24;
          v12[1] = v23;
          *a1 = v21;
          *(a1 + 16) = v20;
          *(a1 + 32) = v19;
          *(a1 + 48) = v18;
          sub_1001311A0(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v25 = a2 - 4;
      do
      {
        v26 = *(a1 + 16);
        v37 = *a1;
        v38 = v26;
        v27 = *(a1 + 48);
        v39 = *(a1 + 32);
        v40 = v27;
        v28 = sub_100131370(a1, a4, v8);
        if (v25 == v28)
        {
          *v28 = v37;
          v28[1] = v38;
          v28[2] = v39;
          v28[3] = v40;
        }

        else
        {
          v29 = *v25;
          v30 = v25[1];
          v31 = v25[3];
          v28[2] = v25[2];
          v28[3] = v31;
          *v28 = v29;
          v28[1] = v30;
          v32 = v38;
          *v25 = v37;
          v25[1] = v32;
          v33 = v40;
          v25[2] = v39;
          v25[3] = v33;
          sub_10013144C(a1, &v28[4], a4, (&v28[4] - a1) >> 6);
        }

        v25 -= 4;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

__n128 sub_1001311A0(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v56 = v4;
    v57 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 6)
    {
      v12 = (a4 - a1) >> 5;
      v13 = v12 + 1;
      v14 = (a1 + ((v12 + 1) << 6));
      v15 = v12 + 2;
      if (v12 + 2 < a3)
      {
        v16 = *a2;
        v17 = v14[1];
        v52 = *v14;
        v53 = v17;
        v18 = v14[3];
        v54 = v14[2];
        v55 = v18;
        v19 = v14[5];
        v48 = v14[4];
        v49 = v19;
        v20 = v14[7];
        v50 = v14[6];
        v51 = v20;
        if (v16(&v52, &v48))
        {
          v14 += 4;
          v13 = v15;
        }
      }

      v21 = *a2;
      v22 = v14[1];
      v52 = *v14;
      v53 = v22;
      v23 = v14[3];
      v54 = v14[2];
      v55 = v23;
      v24 = v7[1];
      v48 = *v7;
      v49 = v24;
      v25 = v7[3];
      v50 = v7[2];
      v51 = v25;
      if ((v21(&v52, &v48) & 1) == 0)
      {
        v27 = v7[1];
        v52 = *v7;
        v53 = v27;
        v28 = v7[3];
        v54 = v7[2];
        v55 = v28;
        do
        {
          v29 = v14;
          v30 = *v14;
          v31 = v14[1];
          v32 = v14[3];
          v7[2] = v14[2];
          v7[3] = v32;
          *v7 = v30;
          v7[1] = v31;
          if (v9 < v13)
          {
            break;
          }

          v33 = (2 * v13) | 1;
          v14 = (a1 + (v33 << 6));
          if (2 * v13 + 2 < a3)
          {
            v34 = *a2;
            v35 = v14[1];
            v48 = *v14;
            v49 = v35;
            v36 = v14[3];
            v50 = v14[2];
            v51 = v36;
            v37 = v14[5];
            v44 = v14[4];
            v45 = v37;
            v38 = v14[7];
            v46 = v14[6];
            v47 = v38;
            if (v34(&v48, &v44))
            {
              v14 += 4;
              v33 = 2 * v13 + 2;
            }
          }

          v39 = *a2;
          v40 = v14[1];
          v48 = *v14;
          v49 = v40;
          v41 = v14[3];
          v50 = v14[2];
          v51 = v41;
          v44 = v52;
          v45 = v53;
          v46 = v54;
          v47 = v55;
          v7 = v29;
          v13 = v33;
        }

        while (!v39(&v48, &v44));
        result = v52;
        v42 = v53;
        v43 = v55;
        v29[2] = v54;
        v29[3] = v43;
        *v29 = result;
        v29[1] = v42;
      }
    }
  }

  return result;
}

_OWORD *sub_100131370(_OWORD *a1, unsigned int (**a2)(_OWORD *, _OWORD *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[4 * v6];
    v9 = v8 + 4;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v13 = *v9;
      v14 = v8[5];
      v15 = v8[7];
      v25[2] = v8[6];
      v25[3] = v15;
      v25[0] = v13;
      v25[1] = v14;
      v16 = v8 + 8;
      v17 = v8[8];
      v18 = v8[9];
      v19 = v8[11];
      v24[2] = v8[10];
      v24[3] = v19;
      v24[0] = v17;
      v24[1] = v18;
      if (v12(v25, v24))
      {
        v9 = v16;
        v10 = v11;
      }
    }

    v20 = *v9;
    v21 = v9[1];
    v22 = v9[3];
    a1[2] = v9[2];
    a1[3] = v22;
    *a1 = v20;
    a1[1] = v21;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double sub_10013144C(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v40 = v4;
    v41 = v5;
    v10 = *a3;
    v11 = v6 >> 1;
    v12 = (a1 + (v6 >> 1 << 6));
    v13 = v12[1];
    v36 = *v12;
    v37 = v13;
    v14 = v12[3];
    v38 = v12[2];
    v39 = v14;
    v15 = *(a2 - 48);
    v32 = *(a2 - 64);
    v33 = v15;
    v16 = *(a2 - 16);
    v34 = *(a2 - 32);
    v35 = v16;
    if (v10(&v36, &v32))
    {
      v18 = (a2 - 64);
      v19 = *(a2 - 48);
      v36 = *(a2 - 64);
      v37 = v19;
      v20 = *(a2 - 16);
      v38 = *(a2 - 32);
      v39 = v20;
      do
      {
        v21 = v12;
        v22 = *v12;
        v23 = v12[1];
        v24 = v12[3];
        v18[2] = v12[2];
        v18[3] = v24;
        *v18 = v22;
        v18[1] = v23;
        if (!v11)
        {
          break;
        }

        v25 = *a3;
        v11 = (v11 - 1) >> 1;
        v12 = (a1 + (v11 << 6));
        v26 = v12[1];
        v32 = *v12;
        v33 = v26;
        v27 = v12[3];
        v34 = v12[2];
        v35 = v27;
        v31[0] = v36;
        v31[1] = v37;
        v31[2] = v38;
        v31[3] = v39;
        v28 = v25(&v32, v31);
        v18 = v21;
      }

      while ((v28 & 1) != 0);
      v29 = v37;
      *v21 = v36;
      v21[1] = v29;
      result = *&v38;
      v30 = v39;
      v21[2] = v38;
      v21[3] = v30;
    }
  }

  return result;
}

void sub_100131554(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_10012CB98();
}

void sub_10013159C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_10012CB98();
}

void sub_100131628(id a1)
{
  v1 = +[NSMutableSet set];
  v2 = qword_100AF76F0;
  qword_100AF76F0 = v1;
}

void sub_100133104(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (!v4)
  {
    v4 = &stru_100A30A68;
  }

  v21 = @"buyParams";
  v22 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  [v2 _recordMetricsForBuyButtonWithAssetID:v3 actionDetails:v5 offerType:*(a1 + 56)];

  if (*(a1 + 48))
  {
    v6 = *(a1 + 48);
  }

  else
  {
    v6 = &stru_100A30A68;
  }

  v7 = [NSMutableString stringWithString:v6];
  v8 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001332D8;
  block[3] = &unk_100A05240;
  v17 = *(a1 + 40);
  v18 = v7;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v19 = v14;
  v20 = v13;
  v15 = v7;
  dispatch_async(v8, block);
}

void sub_1001332D8(id *a1)
{
  v2 = [JSAApplication purchaseEventFieldsWithPageId:a1[4] pageType:@"AudiobookPreview" pageContext:0 topic:0];
  if ([a1[5] length] && objc_msgSend(v2, "length"))
  {
    if (([a1[5] hasSuffix:@"&"] & 1) == 0)
    {
      [a1[5] appendString:@"&"];
    }

    [a1[5] appendString:v2];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100133460;
  v9[3] = &unk_100A05240;
  v3 = a1[5];
  v4 = a1[4];
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = a1[8];
  v13 = a1[9];
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_100133460(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) longLongValue]);
  v4 = [BLPurchaseRequest requestWithBuyParameters:v2 storeIdentifier:v3];

  [v4 setAudiobook:1];
  [v4 setSuppressNetworkEvaluatorDialogs:1];
  [v4 setAnalyticsInfo:*(a1 + 48)];
  v5 = +[JSABridge sharedInstance];
  v6 = [v5 windowManager];

  v7 = +[BLDownloadQueue sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001335D4;
  v8[3] = &unk_100A06000;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [v7 purchaseWithRequest:v4 uiManager:v6 completion:v8];
}

void sub_1001335D4(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001336AC;
  v6[3] = &unk_100A04FE8;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1001336AC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_retainBlock(*(a1 + 56));
    if (v2)
    {
      v5 = v2;
      (*(v2 + 2))(v2, 0, *(a1 + 32));
      v2 = v5;
    }
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) _lockupProfile];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001337AC;
    v6[3] = &unk_100A03920;
    v7 = *(a1 + 56);
    [v3 didPurchaseWithProductProfile:v4 completion:v6];
  }
}

void sub_1001337AC(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 1, 0);
    v1 = v2;
  }
}

void sub_100133B68(uint64_t a1)
{
  v2 = [*(a1 + 32) imaxValueForKey:@"m_systemButtons"];
  v28 = a1;
  v3 = [*(a1 + 32) imaxValueForKey:@"m_extraButtons"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_30;
  }

  v25 = v3;
  +[NSMutableArray array];
  v27 = v26 = v2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = v5;
  v7 = *v34;
  v8 = &BuyButtonDataManager;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v33 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        v11 = [v10 action];
        if (v11 == "_accessibilitySpeak:" || v11 == v8[485].count)
        {
          v13 = v11;
          [v10 setHidden:1];
          v14 = [*(v28 + 32) imaxValueForKey:@"_accessibilitySystemShouldShowPauseBubble"];
          if ([v14 BOOLValue] && v13 == v8[485].count)
          {

LABEL_19:
            v17 = NSClassFromString(@"UICalloutBarButton");
            v18 = [v10 titleForState:0];
            v19 = [(objc_class *)v17 buttonWithTitle:v18 action:v13 type:5 inView:*(v28 + 32)];

            [v27 addObject:v19];
            v8 = &BuyButtonDataManager;
            continue;
          }

          v15 = [*(v28 + 32) imaxValueForKey:@"_accessibilitySystemShouldShowSpeakBubble"];
          v16 = [v15 BOOLValue];

          v8 = &BuyButtonDataManager;
          if (v13 == "_accessibilitySpeak:" && v16)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  }

  while (v6);
LABEL_22:

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = v27;
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
  v3 = v25;
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [v25 addObject:*(*(&v29 + 1) + 8 * j)];
      }

      v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v22);
  }

  v2 = v26;
LABEL_30:
}

void sub_100133FA0(uint64_t a1)
{
  v1 = IMAccessibilityMoveToElementNotification;
  v2 = [*(a1 + 32) lastObject];
  UIAccessibilityPostNotification(v1, v2);
}

void sub_10013466C(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_100AF7708;
  qword_100AF7708 = v1;
}

void sub_100136318(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained q_pollStorageForMissingFilesWithGeneration:{objc_msgSend(*(a1 + 32), "fetchGeneration")}];
}

uint64_t sub_100136448(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 fileManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5 ^ 1;
}

void sub_1001365FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained q_pollStorageForMissingFilesWithGeneration:*(a1 + 40)];
}

id sub_100136C50(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 32);
  if (result)
  {

    return [result setCompletion:0];
  }

  return result;
}

void sub_100137344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100137368(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [WeakRetained setTabIdentifierToShow:v4];
  }

  [WeakRetained _presentTheNextViewController];
}

void sub_100138004(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_10013812C(uint64_t a1)
{
  v22 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = a1;
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:BKLibraryOwnershipAssetsKey];

  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v24 = *v27;
    v23 = BKLibraryOwnershipNewDatasourceKey;
    v7 = BKLibraryOwnershipOldDatasourceKey;
    v21 = BKLibraryOwnershipAssetIDKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        v10 = [v9 objectForKey:v23];
        v11 = BUDynamicCast();

        objc_opt_class();
        v12 = [v9 objectForKey:v7];
        v13 = BUDynamicCast();

        v14 = [*(v25 + 40) identifier];
        v15 = [v11 isEqual:v14];

        if ((v15 & 1) == 0)
        {
          v16 = [v9 objectForKey:v21];
          [v22 addObject:v16];
        }

        v6 |= v13 == 0;
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if ([v22 count])
  {
    v17 = +[BKSeriesManager sharedManager];
    v18 = [v17 allSeriesItemsForAdamIDs:v22];

    if ([v18 count])
    {
      v19 = [*(v25 + 40) _arrayOfSeriesAssetsFromAdamIDs:v18 insertNullsForMissingAssets:0];
      if ([v19 count])
      {
        v20 = [*(v25 + 40) libraryManager];
        [v20 libraryDataSource:*(v25 + 40) updatedAssets:v19];
      }
    }
  }

  if (v6)
  {
    [*(v25 + 40) _updateSeriesManager];
  }
}

void sub_1001384EC(uint64_t a1)
{
  v2 = BKLibraryDataSourceSeriesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#BCCloudStoreAssetManagerChanged Notification:%@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) libraryManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001385FC;
  v5[3] = &unk_100A03EA8;
  v5[4] = *(a1 + 40);
  [v4 performBackgroundReadOnlyBlock:v5];
}

void sub_1001385FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 libraryManager];
  v6 = [v5 cloudSyncVersionsForDataType:@"BCStoreItem" inContext:v4];

  v7 = BKLibraryDataSourceSeriesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#BCCloudStoreAssetManagerChanged storeAssetManager:getStoreItemChangesSince:%@", buf, 0xCu);
  }

  v8 = +[BCCloudAssetManager sharedManager];
  v9 = [v8 storeAssetManager];
  v10 = [v6 mutableCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100138784;
  v11[3] = &unk_100A08198;
  v11[4] = *(a1 + 32);
  [v9 getStoreItemChangesSince:v10 completion:v11];
}

void sub_100138784(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v11 allObjects];
  v16 = [v15 bu_arrayByInvokingBlock:&stru_100A08170];

  v17 = BKLibraryDataSourceSeriesLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v11 count];
    v19 = [v16 bu_prettyDescription];
    v20 = 134219522;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    v24 = 2048;
    v25 = [v12 count];
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v14;
    v32 = 1024;
    v33 = a6;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#BCCloudStoreAssetManagerChanged updated %lu items:(%@) removed %lu items:(%@) currentSyncVersions:(%@) error:(%@), fetchAgain:%{BOOL}d", &v20, 0x44u);
  }

  [*(a1 + 32) _storeItemsUpdatedWithCurrentCloudSyncVersions:v13 updated:v11 removed:v12];
}

id sub_10013892C(id a1, BCMutableCloudData *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = BUDynamicCast();

  v4 = [v3 storeID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"(nil)";
  }

  v7 = v6;

  return v6;
}

void sub_100138AA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) dispatchQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100138BA4;
  v15[3] = &unk_100A03C78;
  v16 = v7;
  v17 = v8;
  v11 = *(a1 + 32);
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

void sub_100138BA4(uint64_t a1)
{
  v2 = BKLibraryDataSourceSeriesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 134218498;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    *&buf[22] = 2112;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#storeItemsUpdatedWithCurrentCloudSyncVersions %lu storeItems, currentCloudSyncVersions:(%@) error:(%@)", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = sub_100027410;
  v32 = sub_100027640;
  v33 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 storeID];

        if (v11)
        {
          v12 = *(*&buf[8] + 40);
          v13 = [v10 storeID];
          [v12 addObject:v13];
        }

        else
        {
          v13 = BKLibraryDataSourceSeriesLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_1007908CC(&v21, v22, v13);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  v14 = +[BKSeriesManager sharedManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100138F08;
  v18[3] = &unk_100A05B18;
  v18[4] = *(a1 + 56);
  v20 = buf;
  v19 = *(a1 + 40);
  v15 = objc_retainBlock(v18);
  v27 = BKSeriesManagerAssetTypeUnknown;
  v16 = [*(*&buf[8] + 40) copy];
  v28 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];

  [v14 updateAssetsFromCloudSyncForAssetAdamIDsWithTypes:v17 completion:v15];
  _Block_object_dispose(buf, 8);
}

void sub_100138F08(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100138FBC;
  block[3] = &unk_100A05B18;
  block[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_async(v2, block);
}

void sub_100138FBC(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryManager];
  v3 = *(a1 + 32);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1001390D4;
  v12 = &unk_100A081C0;
  v4 = *(a1 + 48);
  v13 = v3;
  v14 = v4;
  [v2 libraryDataSource:? updateWithName:? block:?];

  v5 = [*(a1 + 32) libraryManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001391E8;
  v7[3] = &unk_100A044A0;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v5 performBlockOnWorkerQueue:v7];
}

void sub_1001390D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLibraryDataSourceSeriesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(*(a1 + 40) + 8) + 40) count];
    v9 = 134217984;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#storeItemsUpdatedWithCurrentCloudSyncVersions seriesStoreBookUpdate update %lu storeIDs", &v9, 0xCu);
  }

  v6 = [*(a1 + 32) libraryManager];
  [v6 libraryDataSource:*(a1 + 32) reloadInGroup:v3];

  v7 = [*(a1 + 32) libraryManager];
  v8 = [v7 priceManager];
  [v8 invalidate:0];
}

void sub_1001391E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 libraryManager];
  [v5 updateCloudVersionFromCloudSyncVersions:*(a1 + 40) inContext:v4];
}

id sub_100139258(uint64_t a1)
{
  result = [*(a1 + 32) wantsSeriesUpdated];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _updateSeriesManager];
  }

  return result;
}

void sub_10013A724(id *a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013A7DC;
  block[3] = &unk_100A04C50;
  v3 = a1[4];
  v5 = a1[6];
  v4 = a1[5];
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10013A7DC(uint64_t a1)
{
  v4 = [*(a1 + 32) view];
  [v4 setFrame:{0.0, 0.0, 200.0, 200.0}];
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
  }
}

void sub_10013B0C0(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryAsset];
  v3 = [v2 permanentOrTemporaryAssetID];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  if (v4)
  {
    v5 = +[BKLibraryAssetStatusController sharedController];
    v6 = [v5 statusForAssetID:*(a1 + 40)];
    [*(a1 + 32) setLibraryDownloadStatus:v6];

    v7 = *(a1 + 32);

    [v7 updateConfiguration:0];
  }
}

id sub_10013CAA4(uint64_t a1)
{
  [*(a1 + 32) updateInfoKind];
  v2 = +[BKReachability isOffline];
  v3 = +[BURestrictionsProvider sharedInstance];
  v4 = [v3 isBookStoreAllowed];

  v5 = [*(a1 + 32) infoKind];
  v6 = [*(a1 + 32) moreButton];
  v7 = [v6 superview];
  v8 = v7;
  if (v5 != 8 || (v2 & 1) == 0)
  {
    if (v7)
    {
      v10 = *(a1 + 40);

      if (v10 != 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    [*(a1 + 32) createOrUpdateMoreButton];
    goto LABEL_10;
  }

  if (v8)
  {
    v9 = [*(a1 + 32) moreButton];
    [v9 removeFromSuperview];

LABEL_10:
    [*(a1 + 32) setNeedsLayout];
  }

LABEL_11:
  [*(a1 + 32) createOrUpdateAudiobookBadge];
  [*(a1 + 32) createOrUpdateCloudButton];
  [*(a1 + 32) createOrUpdateDownloadProgressButton];
  v11 = [*(a1 + 32) badge];
  if (!v11 || (v12 = *(a1 + 40), v11, v12 == 1))
  {
    v13 = [*(a1 + 32) infoKind];
    if (v13 <= 5)
    {
      if (v13 > 3)
      {
        v14 = *(a1 + 32);
        if (v13 == 4)
        {
          v15 = [*(a1 + 32) cellMetrics];
          v16 = [v15 proofBadgeColor];
          v17 = [*(a1 + 32) cellMetrics];
          v18 = [v17 infoBadgeFontAttributes];
          v19 = [v18 foregroundColor];
          v84[0] = _NSConcreteStackBlock;
          v84[1] = 3221225472;
          v84[2] = sub_10013DBAC;
          v84[3] = &unk_100A08248;
          v84[4] = *(a1 + 32);
          v20 = v84;
        }

        else
        {
          v15 = [*(a1 + 32) cellMetrics];
          v16 = [v15 preOrderableBadgeColor];
          v17 = [*(a1 + 32) cellMetrics];
          v18 = [v17 infoBadgeFontAttributes];
          v19 = [v18 foregroundColor];
          v83[0] = _NSConcreteStackBlock;
          v83[1] = 3221225472;
          v83[2] = sub_10013DC74;
          v83[3] = &unk_100A08248;
          v83[4] = *(a1 + 32);
          v20 = v83;
        }

        goto LABEL_42;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          if (v4 & 1) == 0 && ([*(*(a1 + 32) + 16) isStoreOrSeriesItem])
          {
            goto LABEL_45;
          }

          v14 = *(a1 + 32);
          v15 = [v14 cellMetrics];
          v16 = [v15 nextBadgeColor];
          v17 = [*(a1 + 32) cellMetrics];
          v18 = [v17 infoBadgeFontAttributes];
          v19 = [v18 foregroundColor];
          v85[0] = _NSConcreteStackBlock;
          v85[1] = 3221225472;
          v85[2] = sub_10013DAE4;
          v85[3] = &unk_100A08248;
          v85[4] = *(a1 + 32);
          v20 = v85;
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      goto LABEL_29;
    }

    if (v13 <= 7)
    {
      v14 = *(a1 + 32);
      if (v13 == 6)
      {
        v15 = [*(a1 + 32) cellMetrics];
        v16 = [v15 preOrderedBadgeColor];
        v17 = [*(a1 + 32) cellMetrics];
        v18 = [v17 infoBadgeFontAttributes];
        v19 = [v18 foregroundColor];
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_10013DD3C;
        v82[3] = &unk_100A08248;
        v82[4] = *(a1 + 32);
        v20 = v82;
      }

      else
      {
        v15 = [*(a1 + 32) cellMetrics];
        v16 = [v15 sampleBadgeColor];
        v17 = [*(a1 + 32) cellMetrics];
        v18 = [v17 infoBadgeFontAttributes];
        v19 = [v18 foregroundColor];
        v81[0] = _NSConcreteStackBlock;
        v81[1] = 3221225472;
        v81[2] = sub_10013DE04;
        v81[3] = &unk_100A08248;
        v81[4] = *(a1 + 32);
        v20 = v81;
      }

      goto LABEL_42;
    }

    if (v13 == 8)
    {
      v29 = [*(a1 + 32) _shouldRemovePriceBadge];
      v30 = *(a1 + 32);
      if (v29)
      {
        v31 = [v30 badge];
        [v31 removeFromSuperview];

        [*(a1 + 32) setBadge:0];
        [*(a1 + 32) createOrUpdateFinishedLabelIfNeeded];
      }

      else
      {
        [v30 createOrUpdatePriceBadge];
      }

      goto LABEL_45;
    }

    if (v13 != 9)
    {
      if (v13 != 10)
      {
LABEL_41:
        v14 = *(a1 + 32);
        v15 = [v14 cellMetrics];
        v16 = [v15 unreadBadgeColor];
        v17 = [*(a1 + 32) cellMetrics];
        v18 = [v17 infoBadgeFontAttributes];
        v19 = [v18 foregroundColor];
        v93[0] = _NSConcreteStackBlock;
        v93[1] = 3221225472;
        v93[2] = sub_10013D6EC;
        v93[3] = &unk_100A08248;
        v93[4] = *(a1 + 32);
        v20 = v93;
LABEL_42:
        [v14 createOrUpdateBadgeWithBadgeBackgroundColor:v16 badgeFrameColor:v19 textConfigurationBlock:v20];

LABEL_43:
LABEL_44:

LABEL_45:
        [*(a1 + 32) setNeedsLayout];
        goto LABEL_46;
      }

LABEL_29:
      v21 = *(a1 + 32);
      v22 = *(v21 + 48);
      if (v22)
      {
        [v22 assetAudiobookStatusTrackTimeRemaining];
        v24 = -v23;
        v25 = *(a1 + 32);
        v26 = [v25 cellMetrics];
        v27 = [v26 timeRemainingFontAttributes];
        v28 = [v27 foregroundColor];
        v92[0] = _NSConcreteStackBlock;
        v92[1] = 3221225472;
        v92[2] = sub_10013D7B4;
        v92[3] = &unk_100A08270;
        *&v92[5] = v24;
        v92[4] = *(a1 + 32);
        [v25 createOrUpdateBadgeWithBadgeBackgroundColor:0 badgeFrameColor:v28 textConfigurationBlock:v92];

LABEL_59:
        goto LABEL_45;
      }

      if ([*(v21 + 16) isFinished])
      {
        v58 = +[NSBundle mainBundle];
        v59 = [v58 localizedStringForKey:@"Finished_Infobar" value:@"Finished" table:&stru_100A30A68];

        v60 = *(a1 + 32);
        v61 = +[UIColor bc_booksGray];
        v90[0] = _NSConcreteStackBlock;
        v90[1] = 3221225472;
        v90[2] = sub_10013D880;
        v90[3] = &unk_100A08248;
        v91 = v59;
        v26 = v59;
        [v60 createOrUpdateBadgeWithBadgeBackgroundColor:0 badgeFrameColor:v61 textConfigurationBlock:v90];

        goto LABEL_59;
      }

      v62 = [*(*(a1 + 32) + 16) readingProgress];
      v15 = v62;
      if (v62)
      {
        [v62 floatValue];
        if (v63 > 0.0)
        {
          v64 = *(a1 + 32);
          v65 = +[UIColor bc_booksGray];
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_10013D988;
          v87[3] = &unk_100A08298;
          v66 = v15;
          v67 = *(a1 + 32);
          v88 = v66;
          v89 = v67;
          [v64 createOrUpdateBadgeWithBadgeBackgroundColor:0 badgeFrameColor:v65 textConfigurationBlock:v87];

          goto LABEL_44;
        }
      }

      v74 = *(a1 + 32);
      v16 = [v74 cellMetrics];
      v41 = [v16 unreadBadgeColor];
      v73 = [*(a1 + 32) cellMetrics];
      v72 = [v73 infoBadgeFontAttributes];
      v75 = [v72 foregroundColor];
      v86[0] = _NSConcreteStackBlock;
      v86[1] = 3221225472;
      v86[2] = sub_10013DA1C;
      v86[3] = &unk_100A08248;
      v86[4] = *(a1 + 32);
      [v74 createOrUpdateBadgeWithBadgeBackgroundColor:v41 badgeFrameColor:v75 textConfigurationBlock:v86];

LABEL_69:
      goto LABEL_43;
    }

    v15 = +[BKLibraryManager defaultManager];
    v79 = 0;
    v80 = 0;
    v16 = [*(*(a1 + 32) + 16) seriesID];
    v32 = [v15 uiChildContext];
    [v15 countOfSeriesLibraryAssetsWithSeriesID:v16 total:&v80 markedFinished:&v79 context:v32];

    objc_opt_class();
    v33 = [*(*(a1 + 32) + 16) seriesBooks];
    v34 = [v33 allObjects];
    v35 = [v34 firstObject];
    v36 = BUDynamicCast();
    v37 = [v36 isAudiobook];

    v38 = +[NSBundle mainBundle];
    v39 = v38;
    if (v37)
    {
      v40 = @"%lu audiobooks";
    }

    else
    {
      v40 = @"%lu books";
    }

    v41 = [v38 localizedStringForKey:v40 value:&stru_100A30A68 table:0];

    v42 = [NSString localizedStringWithFormat:v41, v80];
    v43 = v42;
    v44 = v79;
    if (v79)
    {
      v45 = v80;
      v46 = +[NSBundle mainBundle];
      v47 = v46;
      if (v44 != v45)
      {
        v69 = [v46 localizedStringForKey:@"Finished %lu of %lu" value:&stru_100A30A68 table:0];

        v48 = [NSString localizedStringWithFormat:v69, v79, v80];
        v68 = v43;

        goto LABEL_67;
      }

      v48 = [v46 localizedStringForKey:@"Finished_Infobar" value:@"Finished" table:&stru_100A30A68];
    }

    else
    {
      v48 = v42;
    }

    v68 = 0;
LABEL_67:
    v70 = *(a1 + 32);
    v71 = +[UIColor bc_booksGray];
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_10013DECC;
    v76[3] = &unk_100A08298;
    v77 = v48;
    v78 = v68;
    v72 = v68;
    v73 = v48;
    [v70 createOrUpdateBadgeWithBadgeBackgroundColor:0 badgeFrameColor:v71 textConfigurationBlock:v76];

    goto LABEL_69;
  }

LABEL_46:
  v49 = [*(a1 + 32) showsDateBadge];
  if ([*(a1 + 32) infoKind] != 5 && objc_msgSend(*(a1 + 32), "infoKind") != 6)
  {
    [*(*(a1 + 32) + 88) removeFromSuperview];
    v52 = *(a1 + 32);
    v53 = *(v52 + 88);
    *(v52 + 88) = 0;

    if (!v49)
    {
      return [*(a1 + 32) layoutIfNeeded];
    }

    goto LABEL_54;
  }

  v50 = [*(a1 + 32) dateBadge];
  if (!v50 || (v51 = *(a1 + 40), v50, v51 == 1))
  {
    [*(a1 + 32) createOrUpdateDateBadge];
  }

  if ((v49 & 1) == 0)
  {
LABEL_54:
    v54 = [*(a1 + 32) delegate];
    v55 = objc_opt_respondsToSelector();

    if (v55)
    {
      v56 = [*(a1 + 32) delegate];
      [v56 libraryBookshelfInfoCellDidChangeContentHeight:*(a1 + 32)];
    }
  }

  return [*(a1 + 32) layoutIfNeeded];
}

void sub_10013D6EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataSource];
  v9 = [v5 infoBarNew];

  v6 = [*(a1 + 32) cellMetrics];
  v7 = [v6 infoBadgeFontAttributes];
  v8 = [TUIFontSpec attributedStringWith:v9 attributes:v7];
  [v4 setAttributedBadgeText:v8];
}

void sub_10013D7B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v8 = [NSString stringWithDuration:v3];
  v5 = [*(a1 + 32) cellMetrics];
  v6 = [v5 timeRemainingFontAttributes];
  v7 = [TUIFontSpec attributedStringWith:v8 attributes:v6];
  [v4 setAttributedBadgeText:v7];
}

void sub_10013D894(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [UIFont _preferredFontForTextStyle:UIFontTextStyleFootnote maximumContentSizeCategory:UIContentSizeCategoryExtraLarge];
  [v7 setFont:v8];

  [v7 setBadgeText:v6];
  [v7 setFallbackBadgeText:v5];

  v9 = +[UIColor bc_booksGray];
  [v7 setTextColor:v9];
}

void sub_10013D988(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);
  v4 = a2;
  v5 = +[NSString bc_formattedReadingProgress:isFinished:](NSString, "bc_formattedReadingProgress:isFinished:", v2, [v3 isFinished]);
  sub_10013D894(v4, v5, 0);
}

void sub_10013DA1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataSource];
  v9 = [v5 infoBarNew];

  v6 = [*(a1 + 32) cellMetrics];
  v7 = [v6 infoBadgeFontAttributes];
  v8 = [TUIFontSpec attributedStringWith:v9 attributes:v7];
  [v4 setAttributedBadgeText:v8];
}

void sub_10013DAE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataSource];
  v9 = [v5 infoBarNext];

  v6 = [*(a1 + 32) cellMetrics];
  v7 = [v6 infoBadgeFontAttributes];
  v8 = [TUIFontSpec attributedStringWith:v9 attributes:v7];
  [v4 setAttributedBadgeText:v8];
}

void sub_10013DBAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataSource];
  v9 = [v5 infoBarProof];

  v6 = [*(a1 + 32) cellMetrics];
  v7 = [v6 infoBadgeFontAttributes];
  v8 = [TUIFontSpec attributedStringWith:v9 attributes:v7];
  [v4 setAttributedBadgeText:v8];
}

void sub_10013DC74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataSource];
  v9 = [v5 infoBarPreOrderable];

  v6 = [*(a1 + 32) cellMetrics];
  v7 = [v6 infoBadgeFontAttributes];
  v8 = [TUIFontSpec attributedStringWith:v9 attributes:v7];
  [v4 setAttributedBadgeText:v8];
}

void sub_10013DD3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataSource];
  v9 = [v5 infoBarPreOrdered];

  v6 = [*(a1 + 32) cellMetrics];
  v7 = [v6 infoBadgeFontAttributes];
  v8 = [TUIFontSpec attributedStringWith:v9 attributes:v7];
  [v4 setAttributedBadgeText:v8];
}

void sub_10013DE04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataSource];
  v9 = [v5 infoBarSample];

  v6 = [*(a1 + 32) cellMetrics];
  v7 = [v6 infoBadgeFontAttributes];
  v8 = [TUIFontSpec attributedStringWith:v9 attributes:v7];
  [v4 setAttributedBadgeText:v8];
}

void sub_10013ED0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10013ED28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013EDF0;
  block[3] = &unk_100A03620;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
}

void sub_10013EDF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained infoKind] != 5 && objc_msgSend(v3, "infoKind") != 6)
    {
      v4 = *(a1 + 32);
      v5 = [v3 libraryAsset];
      v6 = [v5 storeID];
      LODWORD(v4) = [v4 isEqualToString:v6];

      if (v4)
      {
        v7 = [v3 cellMetrics];
        v8 = [v7 infoBadgeFontAttributes];
        v9 = [v3 cellMetrics];
        v10 = [v9 priceColor];
        v11 = [v8 attributesWithForegroundColor:v10];

        v12 = +[UIColor clearColor];
        v13 = [v11 foregroundColor];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10013EFAC;
        v15[3] = &unk_100A082C0;
        v16 = *(a1 + 40);
        v17 = v3;
        v18 = v11;
        v14 = v11;
        [v3 createOrUpdateBadgeWithBadgeBackgroundColor:v12 badgeFrameColor:v13 textConfigurationBlock:v15];
      }
    }
  }
}

void sub_10013EFAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 length])
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v6 = [*(a1 + 40) dataSource];
    v8 = [v6 infoBarBuy];

    v5 = v8;
  }

  v9 = v5;
  v7 = [TUIFontSpec attributedStringWith:v5 attributes:*(a1 + 48)];
  [v4 setAttributedText:v7];
}

id sub_10013F650(uint64_t a1)
{
  v2 = [*(a1 + 32) badge];
  [v2 removeFromSuperview];

  [*(a1 + 32) setBadge:0];
  v3 = *(a1 + 32);

  return [v3 updateConfiguration:0];
}

id sub_10013F75C(uint64_t a1)
{
  [*(a1 + 32) updateConfiguration:1];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

void sub_100140AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100140B30(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained processSeriesBooksQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100140C4C;
    block[3] = &unk_100A074A8;
    objc_copyWeak(&v12, (a1 + 40));
    v10 = *(a1 + 32);
    v11 = v3;
    dispatch_async(v6, block);

    objc_destroyWeak(&v12);
  }

  else
  {
    v7 = objc_retainBlock(v3);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }
}

void sub_100140C4C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained seriesIDsToResetNext];
    v5 = [v4 copy];

    v6 = [v3 seriesIDsToResetNext];
    [v6 removeAllObjects];

    v7 = [a1[4] libraryManager];
    v8 = [v7 newPrivateQueueManagedObjectContext];

    [v8 setSessionContextType:4];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100140DD0;
    v13[3] = &unk_100A08310;
    v14 = v5;
    v15 = v3;
    v16 = v8;
    v17 = a1[4];
    v18 = a1[5];
    v9 = v8;
    v10 = v5;
    [v9 performBlock:v13];
  }

  else
  {
    v11 = objc_retainBlock(a1[5]);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11);
    }
  }
}

void sub_100140DD0(id *a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [a1[5] _resetNextForSeriesID:*(*(&v10 + 1) + 8 * v6) inMOC:{a1[6], v10}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  if ([a1[6] hasChanges])
  {
    v7 = [a1[7] libraryManager];
    [v7 saveManagedObjectContext:a1[6]];
  }

  v8 = objc_retainBlock(a1[8]);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
  }
}

void sub_100140F10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _migrateAudiobookProgressIfNeeded];
  v4 = objc_retainBlock(v3);

  if (v4)
  {
    v4[2](v4);
  }
}

void sub_100141D20(uint64_t a1)
{
  v5 = [*(a1 + 32) markedAssets];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100141D84(uint64_t a1)
{
  v2 = [*(a1 + 32) markedAssets];
  [v2 unionSet:*(a1 + 40)];
}

void sub_100141DD8(uint64_t a1)
{
  v2 = [*(a1 + 32) seriesIDsToResetNext];
  [v2 unionSet:*(a1 + 40)];

  v3 = [*(a1 + 32) coalescedResetNextInSeries];
  [v3 signalWithCompletion:&stru_100A08358];
}

void sub_100142180(id a1)
{
  v1 = sub_100146624();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "_mediaLibraryDidChange: migration done", v2, 2u);
  }
}

void sub_1001422A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v5 = [BKLibraryManager predicateForAssetIDsTaggedLibraryAssets:*(a1 + 32)];
  v23 = [NSPredicate predicateWithFormat:@"%K != NULL AND %K != 0", @"seriesID", @"seriesID"];
  v24 = v5;
  v34[0] = v5;
  v34[1] = v23;
  v6 = [NSArray arrayWithObjects:v34 count:2];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  v22 = v7;
  [v4 setPredicate:v7];
  v32 = 0;
  v25 = v4;
  v8 = [v3 executeFetchRequest:v4 error:&v32];
  v9 = v32;
  v10 = [v8 valueForKey:@"seriesID"];
  v11 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v12 = [BKLibraryManager predicateForAssetIDsTaggedLibraryAssets:v10];
  [v11 setPredicate:v12];

  v31 = v9;
  v26 = v3;
  v13 = [v3 executeFetchRequest:v11 error:&v31];
  v21 = v31;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      v18 = 0;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * v18);
        v20 = [*(a1 + 40) libraryManager];
        [v20 updateAuthorForSeriesContainer:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v16);
  }
}

void sub_10014261C(uint64_t a1)
{
  kdebug_trace();
  v65 = a1;
  v2 = [*(a1 + 32) libraryManager];
  v55 = [v2 newManagedObjectContext];

  v3 = [NSString stringWithFormat:@"NewMOC 4 %s %@", "[BKLibraryAssetIsNewManager resetIsNewForAssetIDs:]_block_invoke", *(v65 + 40)];
  [v55 setName:v3];

  [v55 setSessionContextType:4];
  if (*(v65 + 40))
  {
    v4 = [BKLibraryManager predicateForAssetIDsTaggedLibraryAssets:?];
    v105[0] = v4;
    v5 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:*(v65 + 40)];
    v105[1] = v5;
    v6 = [NSArray arrayWithObjects:v105 count:2];
    v7 = [NSCompoundPredicate orPredicateWithSubpredicates:v6];

    v104[0] = v7;
    v8 = +[BKLibraryManager predicateForLibraryAssetsNotMarkedAsOld];
    v104[1] = v8;
    v9 = [NSArray arrayWithObjects:v104 count:2];
    v53 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  }

  else
  {
    v53 = +[BKLibraryManager predicateForLibraryAssetsNotMarkedAsOld];
  }

  v66 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v66 setPredicate:v53];
  [v66 setReturnsObjectsAsFaults:0];
  v99 = 0;
  v54 = [v55 executeFetchRequest:v66 error:&v99];
  v52 = v99;
  if (v54)
  {
    if ([v54 count])
    {
      v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v54 count]);
      if (*(v65 + 40))
      {
        v11 = [v54 valueForKey:@"assetID"];
        v12 = [AEAnnotation predicateForAnnotationsWithAssetIDInList:v11 includingDeleted:0];
      }

      else
      {
        v12 = [AEAnnotation predicateForAllAnnotationsIncludingDeleted:0];
      }

      v97[0] = 0;
      v97[1] = v97;
      v97[2] = 0x3032000000;
      v97[3] = sub_100027420;
      v97[4] = sub_100027648;
      v98 = 0;
      v91 = 0;
      v92 = &v91;
      v93 = 0x3032000000;
      v94 = sub_100027420;
      v95 = sub_100027648;
      v96 = 0;
      v13 = [*(v65 + 32) annotationProvider];
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_1001430E0;
      v87[3] = &unk_100A083A0;
      v89 = v97;
      v51 = v12;
      v88 = v51;
      v90 = &v91;
      [v13 performBlockOnUserSideQueueAndWait:v87];

      v60 = v10;
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v56 = dispatch_queue_create("BKLibraryAssetIsNewManager.resetIsNewForAssetIDs.isNewSync", v14);

      group = dispatch_group_create();
      v58 = objc_opt_new();
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v15 = v54;
      v16 = [v15 countByEnumeratingWithState:&v83 objects:v103 count:16];
      if (v16)
      {
        v63 = *v84;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v84 != v63)
            {
              objc_enumerationMutation(v15);
            }

            v18 = *(*(&v83 + 1) + 8 * i);
            if ([v18 isValid])
            {
              v19 = [v18 isNew];
              v78[0] = _NSConcreteStackBlock;
              v78[1] = 3221225472;
              v78[2] = sub_100143208;
              v78[3] = &unk_100A05DA0;
              v82 = v19;
              v79 = v56;
              v80 = v58;
              v20 = v18;
              v81 = v20;
              v21 = objc_retainBlock(v78);
              if ([v20 contentType] == 6)
              {
                dispatch_group_enter(group);
                v22 = [v20 isCloud];
                v23 = +[BKMediaLibraryCache sharedCache];
                v24 = [v20 assetID];
                v102 = v24;
                v25 = [NSArray arrayWithObjects:&v102 count:1];
                v75[0] = _NSConcreteStackBlock;
                v75[1] = 3221225472;
                v75[2] = sub_100143340;
                v75[3] = &unk_100A083C8;
                v77 = v21;
                v76 = group;
                [v23 fetchAssetsWithIDs:v25 type:v22 completion:v75];
              }

              else
              {
                v26 = v92[5];
                v27 = [v20 assetID];
                LODWORD(v26) = [v26 containsObject:v27];

                (v21[2])(v21, v26 ^ 1);
              }

              v28 = [v20 seriesID];

              if (v28)
              {
                v29 = [v20 seriesID];
                [v60 addObject:v29];
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v83 objects:v103 count:16];
        }

        while (v16);
      }

      dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_1001433B0;
      v73[3] = &unk_100A083F0;
      v64 = v55;
      v74 = v64;
      [v58 enumerateKeysAndObjectsUsingBlock:v73];
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = v60;
      v30 = [obj countByEnumeratingWithState:&v69 objects:v101 count:16];
      v31 = v52;
      if (v30)
      {
        v61 = *v70;
        do
        {
          v62 = v30;
          v32 = 0;
          v33 = v31;
          do
          {
            if (*v70 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v69 + 1) + 8 * v32);
            v35 = [*(v65 + 32) libraryManager];
            v36 = [v35 predicateForContainerWithSeriesIDLibraryAsset:v34];
            [v66 setPredicate:v36];

            [v66 setReturnsObjectsAsFaults:0];
            v68 = v33;
            v37 = [v64 executeFetchRequest:v66 error:&v68];
            v31 = v68;

            v38 = [v37 lastObject];

            v39 = [*(v65 + 32) libraryManager];
            v40 = [v39 predicateForLibraryAssetsWithSeriesID:v34];
            v100[0] = v40;
            v41 = +[BKLibraryManager predicateForLibraryAssetsMarkedAsNew];
            v100[1] = v41;
            v42 = [*(v65 + 32) libraryManager];
            v43 = [v42 predicateForLocalLibraryAssets];
            v100[2] = v43;
            v44 = [NSArray arrayWithObjects:v100 count:3];
            v45 = [NSCompoundPredicate andPredicateWithSubpredicates:v44];
            [v66 setPredicate:v45];

            v67 = 0;
            v46 = [v64 countForFetchRequest:v66 error:&v67];
            v47 = v67;
            if (v46)
            {
              v48 = v46 == 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v48 = 1;
            }

            v49 = !v48;
            if (v49 != [v38 isNew])
            {
              [v38 setIsNew:v49];
            }

            v32 = v32 + 1;
            v33 = v31;
          }

          while (v62 != v32);
          v30 = [obj countByEnumeratingWithState:&v69 objects:v101 count:16];
        }

        while (v30);
      }

      v52 = v31;

      _Block_object_dispose(&v91, 8);
      _Block_object_dispose(v97, 8);
    }

    if ([v55 hasChanges])
    {
      v50 = [*(v65 + 32) libraryManager];
      [v50 saveManagedObjectContext:v55];
    }
  }

  kdebug_trace();
}

void sub_10014307C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Unwind_Resume(a1);
}

void sub_1001430E0(void *a1, void *a2)
{
  v12 = @"annotationAssetID";
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v12 count:1];
  v5 = [v3 copyEntityPropertiesArray:v4 fromEntityName:@"AEAnnotation" withPredicate:a1[4] sortBy:0 ascending:0 distinct:{1, v12}];

  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(*(a1[5] + 8) + 40) valueForKey:@"annotationAssetID"];
  v9 = [NSSet setWithArray:v8];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_100143208(uint64_t a1, int a2)
{
  if (*(a1 + 56) != a2)
  {
    v11 = v2;
    v12 = v3;
    v4 = a2;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001432C8;
    block[3] = &unk_100A03E80;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = v4;
    dispatch_sync(v6, block);
  }
}

void sub_1001432C8(uint64_t a1)
{
  v4 = [NSNumber numberWithBool:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectID];
  [v2 setObject:v4 forKeyedSubscript:v3];
}

void sub_100143340(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [v3 hasBeenPlayed]);
  dispatch_group_leave(*(a1 + 32));
}

void sub_1001433B0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) existingObjectWithID:a2 error:0];
  if ([v5 isValid])
  {
    v6 = [v5 isNew];
    if (v6 != [v7 BOOLValue])
    {
      [v5 setIsNew:{objc_msgSend(v7, "BOOLValue")}];
    }
  }
}

void sub_10014350C(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) libraryManager];
  v3 = [v2 newManagedObjectContext];

  v4 = [NSString stringWithFormat:@"NewMOC 5 %s %@", "[BKLibraryAssetIsNewManager resetProgressHighWaterMarkForAssetIDs:]_block_invoke", *(a1 + 40)];
  [v3 setName:v4];

  [v3 setSessionContextType:4];
  v5 = +[BKLibraryManager predicateForHighWaterMarkCapableLibraryAssets];
  v6 = v5;
  if (*(a1 + 40))
  {
    v64[0] = v5;
    v7 = [BKLibraryManager predicateForAssetIDsTaggedLibraryAssets:?];
    v64[1] = v7;
    v8 = [NSArray arrayWithObjects:v64 count:2];
    v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];

    v6 = v9;
  }

  v10 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v10 setPredicate:v6];
  [v10 setReturnsObjectsAsFaults:0];
  [v10 setFetchBatchSize:20];
  v62 = 0;
  v11 = [v3 executeFetchRequest:v10 error:&v62];
  v12 = v62;
  v13 = +[NSMutableSet set];
  v14 = [v11 valueForKeyPath:@"assetID"];
  v15 = [v14 bu_arrayByRemovingNSNulls];
  v16 = [v15 mutableCopy];

  if ([v11 count])
  {
    v53 = v13;
    v45 = v12;
    v47 = v10;
    v48 = v6;
    v50 = v3;
    v17 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v11 count]);
    v49 = a1;
    v18 = [*(a1 + 32) annotationProvider];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100143B5C;
    v60[3] = &unk_100A08418;
    v19 = v17;
    v61 = v19;
    v51 = v16;
    [v18 onGlobalAnnotationsForAssetIDs:v16 performBlockAndWait:v60];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v46 = v11;
    obj = v11;
    v20 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v57;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v57 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v56 + 1) + 8 * i);
          v25 = [v24 assetID];
          v26 = [v19 objectForKeyedSubscript:v25];

          if (v26)
          {
            [v26 highWaterMark];
            v27 = [NSNumber numberWithDouble:?];
            v28 = [v27 bc_clampedToUnitIntervalOrNegativeOne];
            v29 = [v24 setDifferentNumber:v28 forKey:@"bookHighWaterMarkProgress"];

            if (v29)
            {
              v30 = [v24 assetID];
              [v51 removeObject:v30];
            }

            [v26 readingProgress];
            v31 = [NSNumber numberWithDouble:?];
            v32 = [v31 bc_assertClampedToUnitInterval];
            v33 = [v24 setDifferentNumber:v32 forKey:@"readingProgress"];

            if ((v33 | v29))
            {
              v34 = [v24 localOnlySeriesItemsParent];
              v35 = [v34 assetID];
              v36 = [v24 localOnlySeriesItemsParent];
              [v36 setAssetID:v35];

              v37 = [v24 purchasedAndLocalParent];
              v38 = [v37 assetID];
              v39 = [v24 purchasedAndLocalParent];
              [v39 setAssetID:v38];
            }
          }

          v40 = [v24 seriesID];

          if (v40)
          {
            v41 = [v24 seriesID];
            [v53 addObject:v41];
          }
        }

        v21 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v21);
    }

    v13 = v53;
    if ([v53 count])
    {
      v42 = [*(v49 + 32) processSeriesBooksQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100143CC0;
      block[3] = &unk_100A03440;
      block[4] = *(v49 + 32);
      v55 = v53;
      dispatch_async(v42, block);
    }

    v3 = v50;
    v6 = v48;
    v16 = v51;
    if ([v50 hasChanges])
    {
      v43 = [*(v49 + 32) libraryManager];
      [v43 saveManagedObjectContext:v50];
    }

    v11 = v46;
    v10 = v47;
    if ([v51 count])
    {
      v44 = [*(v49 + 32) delegate];
      [v44 processedButNoHighWaterUpdateForAssetsWithIDs:v51];
    }

    v12 = v45;
  }

  kdebug_trace();
}

void sub_100143B5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [BKLibraryAssetIsNewManagerProgressInfo alloc];
        [v8 readingProgress];
        v11 = v10;
        [v8 readingProgressHighWaterMark];
        v13 = [(BKLibraryAssetIsNewManagerProgressInfo *)v9 initWithReadingProgress:v11 highWaterMark:v12];
        v14 = *(a1 + 32);
        v15 = [v8 annotationAssetID];
        [v14 setObject:v13 forKeyedSubscript:v15];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

void sub_100143CC0(uint64_t a1)
{
  v2 = [*(a1 + 32) seriesIDsToResetNext];
  [v2 unionSet:*(a1 + 40)];

  v3 = [*(a1 + 32) coalescedResetNextInSeries];
  [v3 signalWithCompletion:&stru_100A08438];
}

void sub_1001440E8(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryManager];
  v3 = [v2 newManagedObjectContext];

  v4 = [NSString stringWithFormat:@"NewMOC 3 %s %@", "[BKLibraryAssetIsNewManager p_processEpubIDForAssetIDs:]_block_invoke", *(a1 + 40)];
  [v3 setName:v4];

  [v3 setSessionContextType:4];
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v6 = [BKLibraryManager predicateForLocalAssetsNeedingEpubIDUpdatesFromAssetIDs:*(a1 + 40)];
  [v5 setPredicate:v6];

  [v5 setReturnsObjectsAsFaults:0];
  v10 = 0;
  v7 = [v3 executeFetchRequest:v5 error:&v10];
  v8 = v10;
  if ([v7 count])
  {
    [*(a1 + 32) p_processEpubIDForLibraryAssets:v7 handlingEpubID:0 foundAssetHandler:0];
  }

  if ([v3 hasChanges])
  {
    v9 = [*(a1 + 32) libraryManager];
    [v9 saveManagedObjectContext:v3];
  }
}

void sub_1001443C4(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) libraryManager];
  v3 = [v2 newManagedObjectContext];

  v4 = [NSString stringWithFormat:@"NewMOC 6 %s %@", "[BKLibraryAssetIsNewManager updateLibraryAssetEpubIDsHandling:foundAssetHandler:]_block_invoke", *(a1 + 40)];
  [v3 setName:v4];

  [v3 setSessionContextType:4];
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v6 = +[BKLibraryManager predicateForLocalAssetsNeedingEpubIDUpdates];
  [v5 setPredicate:v6];

  [v5 setReturnsObjectsAsFaults:0];
  v9 = 0;
  v7 = [v3 executeFetchRequest:v5 error:&v9];
  v8 = v9;
  if (v7 && [v7 count])
  {
    [*(a1 + 32) p_processEpubIDForLibraryAssets:v7 handlingEpubID:*(a1 + 40) foundAssetHandler:*(a1 + 48)];
  }

  [v3 saveLibrary];
  kdebug_trace();
}

void sub_100144D8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100144DB0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v25 = a3;
  v5 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [v10 localReadPercent];
        v12 = [v10 collection];
        v13 = [v12 bk_localBookmarkTimestamp];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = +[NSDate distantPast];
        }

        v16 = v15;

        v17 = [v10 assetID];
        if (v17)
        {
          [v11 doubleValue];
          v19 = v18 > 0.0;

          if (v19)
          {
            v35[0] = v11;
            v35[1] = v11;
            v35[2] = v16;
            v20 = [NSArray arrayWithObjects:v35 count:3];
            v21 = [v10 assetID];
            [v5 setObject:v20 forKeyedSubscript:v21];
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10014506C;
  v27[3] = &unk_100A08460;
  objc_copyWeak(&v30, (a1 + 56));
  v24 = v5;
  v28 = v24;
  v29 = *(a1 + 48);
  [v22 fetchAssetsWithIDs:v23 type:1 completion:v27];

  objc_destroyWeak(&v30);
}

void sub_10014506C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v29 = WeakRetained;
    v30 = v3;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = [v11 cloudReadPercent];
          v13 = [v11 collection];
          v14 = [v13 bk_cloudBookmarkTimestamp];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = +[NSDate distantPast];
          }

          v17 = v16;

          v18 = [v11 assetID];
          if (v18)
          {
            v19 = v18;
            [v12 doubleValue];
            v21 = v20;

            if (v21 > 0.0)
            {
              v35[0] = v12;
              v35[1] = v12;
              v35[2] = v17;
              v22 = [NSArray arrayWithObjects:v35 count:3];
              v23 = *(a1 + 32);
              v24 = [v11 assetID];
              [v23 setObject:v22 forKeyedSubscript:v24];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }

    v25 = objc_retainBlock(*(a1 + 40));
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25, *(a1 + 32));
    }

    v5 = v29;
    v3 = v30;
  }

  else
  {
    v27 = objc_retainBlock(*(a1 + 40));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, 0);
    }
  }
}

void sub_100145360(id a1)
{
  v1 = sub_100146624();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "migrateAudiobookProgressIfNeeded: migration done", v2, 2u);
  }
}

void sub_1001454E4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v4 = +[BKLibraryManager predicateForAllOwnedAudiobooks];
  v30 = +[BKLibraryManager predicateToExcludeSeriesLibraryAssets];
  v31 = v4;
  v45[0] = v4;
  v45[1] = v30;
  v5 = [NSArray arrayWithObjects:v45 count:2];
  v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  [v3 setPredicate:v6];
  v41 = 0;
  v32 = v3;
  v33 = v2;
  v7 = [v2 executeFetchRequest:v3 error:&v41];
  v29 = v41;
  v8 = sub_100146624();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 count];
    *buf = 134217984;
    v44 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "fetching owned audiobook libraryAssets libraryAssets.count=%ld", buf, 0xCu);
  }

  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        v18 = [v17 assetID];
        v19 = [v18 length];

        if (v19)
        {
          v20 = [v17 isCloud];
          v21 = [v17 assetID];
          if (v20)
          {
            v22 = v11;
          }

          else
          {
            v22 = v10;
          }

          [v22 addObject:v21];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v14);
  }

  v23 = [v11 count];
  v24 = v23 + [v10 count];
  if (v24 < 1)
  {
    v26 = sub_100146624();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No audiobooks found.  Setting audiobook migration complete, there is nothing to migrate.", buf, 2u);
    }

    [*(a1 + 32) setAudiobookProgressMigrationComplete:1];
    [*(a1 + 32) setCoalescedMigrateAudiobookProgress:0];
    v27 = +[NSNotificationCenter defaultCenter];
    [v27 removeObserver:*(a1 + 32) name:MPMediaLibraryDidChangeNotification object:0];
  }

  else
  {
    v25 = *(a1 + 32);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1001458C8;
    v34[3] = &unk_100A084F8;
    v34[4] = v25;
    v35 = v6;
    v36 = v24;
    [v25 _alternateProgressInfoForLocalAssetIDs:v10 cloudAssetIDs:v11 completion:v34];
  }
}

void sub_1001458C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100145998;
  v7[3] = &unk_100A084D0;
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v5;
  v6 = v3;
  [v4 performBlockOnWorkerQueue:v7];
}

void sub_100145998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v4 setPredicate:*(a1 + 32)];
  v50 = 0;
  v42 = v4;
  v43 = v3;
  v5 = [v3 executeFetchRequest:v4 error:&v50];
  v41 = v50;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        v11 = *(a1 + 40);
        v12 = [v10 assetID];
        v13 = [v11 objectForKeyedSubscript:v12];

        if ([v13 count] == 3)
        {
          objc_opt_class();
          v14 = [v13 objectAtIndexedSubscript:2];
          v15 = BUDynamicCast();

          v16 = [v10 lastOpenDate];
          if (!v16 || (v17 = v16, [v10 lastOpenDate], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v15, "compare:", v18), v18, v17, v19 == 1))
          {
            v20 = [v13 objectAtIndexedSubscript:0];
            v21 = [v20 bc_assertClampedToUnitInterval];
            [v10 setReadingProgress:v21];

            v22 = [v10 bookHighWaterMarkProgress];
            [v22 floatValue];
            v24 = v23;

            v25 = [v13 objectAtIndexedSubscript:1];
            v26 = [v25 bc_clampedToUnitIntervalOrNegativeOne];
            [v26 floatValue];
            v28 = v27;

            if (v24 >= v28)
            {
              *&v29 = v24;
            }

            else
            {
              *&v29 = v28;
            }

            v30 = [NSNumber numberWithFloat:v29];
            [v10 setBookHighWaterMarkProgress:v30];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v7);
  }

  if ([v43 hasChanges])
  {
    v45 = 0;
    [v43 save:&v45];
    v31 = v45;
    if (v31)
    {
      v32 = sub_100146624();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100791028(v31, v32);
      }
    }
  }

  v33 = [*(a1 + 40) count];
  v34 = *(a1 + 56) * 0.5;
  v35 = sub_100146624();
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  if (v34 >= v33)
  {
    if (v36)
    {
      v39 = [*(a1 + 40) count];
      v40 = *(a1 + 56);
      *buf = 134218240;
      v52 = v39;
      v53 = 2048;
      v54 = v40;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Audiobook progress migration incomplete.  Updated %lu audiobooks of %lu.", buf, 0x16u);
    }
  }

  else
  {
    if (v36)
    {
      v37 = [*(a1 + 40) count];
      v38 = *(a1 + 56);
      *buf = 134218240;
      v52 = v37;
      v53 = 2048;
      v54 = v38;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Audiobook progress migration complete.  Updated %lu audiobooks of %lu.", buf, 0x16u);
    }

    [*(a1 + 48) setAudiobookProgressMigrationComplete:1];
    [*(a1 + 48) setCoalescedMigrateAudiobookProgress:0];
    v35 = +[NSNotificationCenter defaultCenter];
    [v35 removeObserver:*(a1 + 48) name:MPMediaLibraryDidChangeNotification object:0];
  }
}

void sub_100146000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100146024(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 56);
  if (v9 <= a4)
  {
    v9 = a4;
  }

  v10 = (a4 != 0.0) & *(a1 + 72);
  v11 = (v9 > *(a1 + 64) + -120.0) & ~*(a1 + 73);
  if (v10 || v11)
  {
    v12 = [*(a1 + 32) libraryManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100146174;
    v13[3] = &unk_100A08548;
    objc_copyWeak(&v15, (a1 + 48));
    v14 = *(a1 + 40);
    v16 = v10;
    v17 = v11;
    [v12 performBlockOnWorkerQueue:v13];

    objc_destroyWeak(&v15);
  }
}

void sub_100146174(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained libraryManager];
  v6 = [v5 libraryMutableAssetWithAssetID:*(a1 + 32) inManagedObjectContext:v3];

  if (*(a1 + 48) == 1)
  {
    [v6 setIsNew:0];
  }

  if (*(a1 + 49) == 1)
  {
    v30[0] = BKLibraryAssetMarkedLocation;
    v30[1] = BKLibraryAssetIDKey;
    v7 = *(a1 + 32);
    v31[0] = BALocationTypePostReading;
    v31[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    [v6 setFinishedStateUserSetsFinished:1 userInfo:v8];

    v9 = [WeakRetained delegate];
    v10 = *(a1 + 32);
    v11 = [v6 dateFinished];
    [v9 willMarkAsset:v10 finished:1 finishedDate:v11];

    if ([v6 isOwned])
    {
      v12 = [v6 storeID];
      if ([v12 length])
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = +[BAUtilities contentTypeFromAssetType:](BAUtilities, "contentTypeFromAssetType:", [v6 contentType]);
    v15 = [v6 supplementalContentAssets];
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 count]);

    v17 = +[BAEventReporter sharedReporter];
    v18 = [v17 seriesTypeForContentID:*(a1 + 32)];

    if ([v6 isAudiobook])
    {
      v19 = [v6 hasRACSupport];
      if ([v19 BOOLValue])
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      v20 = 0;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014645C;
    block[3] = &unk_100A08520;
    v21 = *(a1 + 32);
    v26 = v13;
    v27 = v14;
    v24 = v21;
    v25 = v16;
    v28 = v18;
    v29 = v20;
    v22 = v16;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10014645C(void *a1)
{
  v2 = +[BAEventReporter sharedReporter];
  [v2 emitMarkAsFinishedEventWithTracker:0 contentID:a1[4] contentAcquisitionType:a1[6] contentType:a1[7] supplementalContentCount:a1[5] seriesType:a1[8] productionType:a1[9]];
}

id sub_100146624()
{
  if (qword_100AF7730 != -1)
  {
    sub_1007910A0();
  }

  v1 = qword_100AF7728;

  return v1;
}

void sub_100146668(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibraryAssetIsNewManager");
  v2 = qword_100AF7728;
  qword_100AF7728 = v1;
}

void sub_100149768(id *a1, void *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014988C;
  v10[3] = &unk_100A085E0;
  v11 = a2;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v14 = a1[8];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v12 = v8;
  v13 = v7;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_10014988C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [[BKAudiobookPreviewHelper alloc] initWithMAsset:*(a1 + 48) lockupProfile:v2];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(BKAudiobookPreviewHelper *)v3 helperMinifiedController];
    [*(a1 + 56) setMinifiedController:v4];
  }

  else
  {
    [*(a1 + 56) setMinifiedController:0];
  }

  v5 = *(a1 + 56);
  v6 = [v5 minifiedController];
  [v6 setMinifiedControllerDelegate:v5];

  v7 = [*(a1 + 56) minifiedController];
  v8 = BUProtocolCast();
  v9 = [*(a1 + 56) touchVC];
  [v9 setDelegate:v8];

  v10 = [*(a1 + 56) touchVC];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100149BB4;
  v21[3] = &unk_100A03A58;
  v23 = *(a1 + 72);
  v22 = *(a1 + 56);
  [v10 setHelper:v3 completion:v21];

  v11 = +[BKAudiobookNowPlayingModuleFactory instantiate];
  v12 = [*(a1 + 48) id];
  v13 = [BKAssetID identifierWithAssetID:v12];

  v14 = [(BKBasePresentingViewController *)[BKAudiobookPreviewPresentingViewController alloc] initWithAssetIdentifier:v13 assetViewController:v11 helper:v3 libraryAssetProvider:0];
  [(BKBasePresentingViewController *)v14 setOpenOptions:*(a1 + 64)];
  [v11 setHelper:v3 completion:&stru_100A085B8];
  objc_opt_class();
  v15 = BUClassAndProtocolCast();
  v16 = +[BKAppDelegate sceneManager];
  v17 = [v16 primarySceneController];
  v18 = [v17 rootBarCoordinator];

  [v18 registerFullPlayer:v15];
  objc_opt_class();
  v19 = [*(a1 + 64) objectForKeyedSubscript:@"fullScreen"];
  v20 = BUDynamicCast();
  LODWORD(v17) = [v20 BOOLValue];

  if (v17)
  {
    [v18 presentFullPlayer:v15 completion:0];
  }
}

void sub_100149BB4(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

void sub_100149EA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100149EBC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained assetViewControllerFuture];

  if (!v5)
  {
    v6 = [WeakRetained minifiedAssetPresenterAssetID];
    v7 = [WeakRetained options];
    v8 = [WeakRetained _futureViewControllerWithAssetID:v6 options:v7];
    [WeakRetained setAssetViewControllerFuture:v8];
  }

  v9 = [WeakRetained assetViewControllerFuture];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100149FEC;
  v11[3] = &unk_100A08698;
  v12 = v3;
  v10 = v3;
  [v9 get:v11];
}

void sub_10014E93C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 startedSubTest:@"page-turn" forTest:v2 withMetrics:&off_100A43E40];
}

void sub_10014EE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10014EE58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setResult:0];
  v1 = [WeakRetained onTestFinished];
  v1[2]();
}

void sub_10014FB20(uint64_t a1)
{
  [*(a1 + 32) setResult:*(a1 + 40) ^ 1];
  v2 = [*(a1 + 32) onTestFinished];
  v2[2]();
}

void sub_10014FE4C(uint64_t a1)
{
  [*(a1 + 32) setResult:0];
  v2 = [*(a1 + 32) onTestFinished];
  v2[2]();
}

void sub_100151ADC(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = BUProtocolCast();

  v4 = [*(a1 + 40) items];
  v5 = [v4 objectAtIndexedSubscript:0];

  objc_opt_class();
  v6 = [v5 dragItem];
  v7 = [v6 localObject];
  v8 = BUDynamicCast();

  v9 = [v3 indexPathForRepresentedObject:v8];
  v10 = [*(a1 + 32) numberOfItemsInSection:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "section")}] - 1;
  if ([*(*(*(a1 + 48) + 8) + 40) item] >= v10)
  {
    v11 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", v10, [*(*(*(a1 + 48) + 8) + 40) section]);
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = [*(a1 + 32) dataSource];
  [v14 collectionView:*(a1 + 32) moveItemAtIndexPath:v9 toIndexPath:*(*(*(a1 + 48) + 8) + 40)];

  v15 = *(a1 + 32);
  v20 = v9;
  v16 = [NSArray arrayWithObjects:&v20 count:1];
  [v15 deleteItemsAtIndexPaths:v16];

  v17 = *(a1 + 32);
  v19 = *(*(*(a1 + 48) + 8) + 40);
  v18 = [NSArray arrayWithObjects:&v19 count:1];
  [v17 insertItemsAtIndexPaths:v18];
}

id sub_100152B5C()
{
  if (qword_100AF7750 != -1)
  {
    sub_10079114C();
  }

  v1 = qword_100AF7748;

  return v1;
}

void sub_100152BA0(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKMinifiedAssetPresenter");
  v2 = qword_100AF7748;
  qword_100AF7748 = v1;
}

void sub_100152D70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100152D90(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained minifiedController];
  [v8 setMinifiedControllerLoadedAssetViewController:v11];

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 minifiedController];
  [v10 minifiedControllerDidLoadAsset];

  [*(a1 + 32) set:v11 error:v6];
}

void sub_100152E48(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 code] == 1)
  {
    v4 = [v6 domain];
    v5 = [v4 isEqualToString:BCFutureErrorDomain];

    if (v5)
    {
      [*(a1 + 32) cancel];
    }
  }
}

void sub_1001535D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100152B5C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "minimizedPresenterWithLibraryAsset logID:%{public}@ got BKAsset", buf, 0xCu);
  }

  if (*(a1 + 88) == 1)
  {
    v6 = [v3 title];
    v7 = [MPMediaItem bk_audioBookAssetURLWithAlbumTitle:v6 isCloudItem:1];
  }

  else
  {
    v7 = [v3 url];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001538A4;
  v18[3] = &unk_100A08768;
  v19 = *(a1 + 40);
  v8 = v3;
  v20 = v8;
  v21 = *(a1 + 48);
  v22 = *(a1 + 32);
  v9 = v7;
  v23 = v9;
  v10 = *(a1 + 80);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v26 = *(a1 + 89);
  v27 = *(a1 + 90);
  *&v13 = *(a1 + 72);
  *(&v13 + 1) = v10;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v24 = v14;
  v25 = v13;
  v15 = objc_retainBlock(v18);
  if (v15)
  {
    if (+[NSThread isMainThread])
    {
      (v15[2])(v15);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100153BB8;
      block[3] = &unk_100A03920;
      v17 = v15;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_1001538A4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = [*(a1 + 40) storeID];
  v4 = [v3 longLongValue];

  if (v4 >= 1)
  {
    v5 = [*(a1 + 40) storeID];
    [v2 setObject:v5 forKeyedSubscript:@"storeID"];
  }

  if ([*(a1 + 48) length])
  {
    [v2 setObject:*(a1 + 48) forKeyedSubscript:@"assetID"];
  }

  if ([*(a1 + 56) length])
  {
    [v2 setObject:*(a1 + 56) forKeyedSubscript:AEAssetLogID];
  }

  v6 = sub_100152B5C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 56);
    v20 = 138543362;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "minimizedPresenterWithLibraryAsset Creating Helper for logID:%{public}@", &v20, 0xCu);
  }

  if (*(a1 + 64))
  {
    v8 = +[AEPluginRegistry sharedInstance];
    v9 = [v8 pluginForURL:*(a1 + 64)];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 helperForURL:*(a1 + 64) withOptions:v2];
  v11 = BUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 helperMinifiedController];
    if (v12)
    {
      v13 = objc_alloc(*(a1 + 96));
      v14 = [*(a1 + 72) assetID];
      v15 = [v13 initWithAssetID:v14 helper:v11 minifiedController:v12 options:v2 presenter:*(a1 + 80)];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v12 = 0;
  }

  v16 = sub_100152B5C();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 56);
    v20 = 138412546;
    v21 = v15;
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "minimizedPresenterWithLibraryAsset Got minified asset presenter %@, logID:%{public}@", &v20, 0x16u);
  }

  [v15 setMinifiedAssetPresenterIsAudiobook:*(a1 + 104)];
  [v15 setMinifiedAssetPresenterCanStayOpenInBackground:*(a1 + 104)];
  [v15 setMinifiedAssetPresenterIsSupplementalContent:*(a1 + 105)];
  [v15 setMinifiedAssetPresenterWorkaround36067646:*(a1 + 106)];
  v18 = objc_retainBlock(*(a1 + 88));
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18, v15);
  }
}

void sub_100153EAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100153EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained minifiedAssetPresenterWorkaround36067646])
  {
    v5 = [WeakRetained assetViewControllerFuture];
    [v5 cancel];

    [WeakRetained setAssetViewControllerFuture:0];
  }

  v6 = [WeakRetained assetViewControllerFuture];

  if (!v6)
  {
    v7 = [WeakRetained minifiedAssetPresenterAssetID];
    v8 = [WeakRetained options];
    v9 = [WeakRetained _futureViewControllerWithAssetID:v7 options:v8];
    [WeakRetained setAssetViewControllerFuture:v9];
  }

  v10 = [WeakRetained assetViewControllerFuture];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100154050;
  v12[3] = &unk_100A087B8;
  v11 = v3;
  v13 = v11;
  objc_copyWeak(&v14, (a1 + 32));
  [v10 get:v12];

  objc_destroyWeak(&v14);
}

void sub_100154050(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained helper];
  (*(v5 + 16))(v5, v7, v8, v6);
}

void sub_1001549F4(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    return;
  }

  v2 = +[BKLibraryManager defaultManager];
  v8 = [v2 libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:*(*(a1 + 32) + 8)];

  v3 = [v8 dataSourceIdentifier];
  if (![v3 isEqualToString:@"com.apple.ibooks.plist.untethered"])
  {
    goto LABEL_7;
  }

  v4 = [v8 state];

  if (v4 == 1)
  {
    v5 = objc_retainBlock(*(*(a1 + 32) + 16));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, v8);
    }

    v7 = *(a1 + 32);
    v3 = *(v7 + 16);
    *(v7 + 16) = 0;
LABEL_7:
  }
}

id sub_100154CC4(uint64_t a1)
{
  result = [*(a1 + 32) canModifyBackupFiles];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 rewriteSyncSidecarWithCompletionBlock:0];
  }

  return result;
}

void sub_10015525C(uint64_t a1)
{
  v3 = +[BKDatabaseBackupFileManager mergeSyncSidecarFileName];
  if ([v3 length])
  {
    v2 = [[AEAnnotationSidecarConsumer alloc] initWithName:v3];
    [v2 mergeIntoAnnotationProvider:*(a1 + 32) completionBlock:*(a1 + 40)];
  }
}

void sub_1001562A0(uint64_t a1)
{
  v2 = [*(a1 + 32) progressValue];
  if (v2)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [*(a1 + 32) progressTrack];
  [v4 setAlpha:v3];

  v8 = [*(a1 + 32) progressValue];
  [v8 floatValue];
  v6 = v5;
  v7 = [*(a1 + 32) progressTrack];
  [v7 setReadingProgress:v6];
}

void sub_100156548(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[8])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [v1 navBarForBackButton];
  [v3 setAlpha:v2];
}

void sub_1001574E4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) libraryAssetWithPermanentOrTemporaryAssetID:*(a1 + 40) inManagedObjectContext:a2];
  if (v3)
  {
    v29[0] = @"path";
    v29[1] = @"assetID";
    v29[2] = @"permlink";
    v29[3] = @"temporaryAssetID";
    v29[4] = @"title";
    v29[5] = @"storeID";
    v4 = [NSArray arrayWithObjects:v29 count:6];
    v5 = [v3 propertiesForKeys:v4];

    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v28 = 1;
    v6 = dispatch_time(0, 30000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100157800;
    block[3] = &unk_100A087E0;
    v7 = *(a1 + 56);
    block[4] = *(a1 + 48);
    v26 = v27;
    v23 = v7;
    v8 = v5;
    v24 = v8;
    v25 = *(a1 + 80);
    dispatch_after(v6, &_dispatch_main_q, block);
    v9 = *(a1 + 48);
    v10 = *(v9 + 16);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10015796C;
    v16[3] = &unk_100A08830;
    v16[4] = v9;
    v17 = *(a1 + 64);
    v18 = v8;
    v21 = v27;
    v19 = *(a1 + 72);
    v20 = *(a1 + 80);
    v11 = v8;
    dispatch_async(v10, v16);

    _Block_object_dispose(v27, 8);
  }

  else
  {
    v12 = BCImageCacheLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10079119C(a1, v12);
    }

    v13 = *(*(a1 + 48) + 24);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100157C40;
    v14[3] = &unk_100A03920;
    v15 = *(a1 + 80);
    dispatch_async(v13, v14);
  }
}

void sub_100157800(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_100157954;
  v10 = &unk_100A055C0;
  v3 = *(a1 + 64);
  v11 = &v13;
  v12 = v3;
  v4 = v8;
  os_unfair_lock_lock_with_options();
  v9(v4);
  os_unfair_lock_unlock(v2 + 2);

  if (*(v14 + 24) == 1)
  {
    v5 = BCImageCacheLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100791218();
    }

    v6 = objc_retainBlock(*(a1 + 56));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }

  _Block_object_dispose(&v13, 8);
}

void sub_100157934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015796C(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100157A48;
  v5[3] = &unk_100A08808;
  v4 = *(a1 + 72);
  v5[4] = *(a1 + 32);
  v8 = v4;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 bookCoverForLibraryAssetProperties:v3 size:v5 completion:{CGSizeZero.width, CGSizeZero.height}];
}

void sub_100157A48(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100157BC4;
  v18[3] = &unk_100A03CF0;
  v18[4] = *(a1 + 56);
  os_unfair_lock_lock_with_options();
  sub_100157BC4(v18);
  os_unfair_lock_unlock(v8 + 2);
  if (v7)
  {
    v9 = BCImageCacheLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100791294();
    }
  }

  v10 = *(*(a1 + 32) + 24);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100157BD4;
  v14[3] = &unk_100A073B0;
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v15 = v6;
  v16 = v12;
  v17 = v11;
  v13 = v6;
  dispatch_async(v10, v14);
}

intptr_t sub_100157BD4(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v2[2](v2, [*(a1 + 32) CGImage]);
  }

  v3 = *(*(a1 + 40) + 32);

  return dispatch_semaphore_signal(v3);
}

void sub_100157C40(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_100158884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015889C(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 40) "imaxTargetClass")];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100158A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100158A18(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryAssetOnMainQueueWithAssetID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100158B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100158B94(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = *(a1[6] + 8);
  v4 = *(a1[7] + 8);
  v5 = [v1 _bkaxUiChildContext];
  [v1 countOfSeriesLibraryAssetsWithSeriesID:v2 total:v3 + 24 purchased:v4 + 24 context:v5];
}

void sub_100158CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100158D14(uint64_t a1)
{
  v2 = [*(a1 + 32) imaxValueForKey:@"uiChildContext"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100159144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10015916C(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = +[NSMutableDictionary dictionary];
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = v5;
}

void sub_1001591D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10015928C;
  v5[3] = &unk_100A04058;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10015928C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v20 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained frc];
    v4 = [v3 fetchedObjects];
    v5 = [v4 valueForKey:@"assetID"];

    v6 = [v20 frc];
    v7 = [v6 fetchRequest];
    v8 = [v7 copy];

    [v8 setPropertiesToFetch:&off_100A43E58];
    v9 = [v20 frc];
    v10 = [v9 managedObjectContext];
    v11 = [v10 executeFetchRequest:v8 error:0];
    v12 = [v11 valueForKey:@"assetID"];

    v13 = [v12 count];
    if (v13 != [v5 count] || (objc_msgSend(v12, "isEqualToArray:", v5) & 1) == 0)
    {
      v14 = [v20 frc];
      [v14 performFetch:0];

      if ([v20 isSeries])
      {
        [v20 _updateHasSeriesSequenceLabel];
      }

      v15 = [v20 delegate];
      LOBYTE(v19) = 1;
      [v15 booksDataSource:v20 insertedSections:0 deletedSections:0 insertedItems:0 deletedItems:0 updatedItems:0 mayHaveZeroObjects:v19];
    }

    v16 = objc_retainBlock(*(a1 + 32));
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16);
    }
  }

  else
  {
    v18 = objc_retainBlock(*(a1 + 32));
    v5 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18);
    }
  }
}

void sub_100159A74(uint64_t a1)
{
  v2 = +[AEUserPublishing sharedInstance];
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100159B50;
  v4[3] = &unk_100A08918;
  objc_copyWeak(&v6, (a1 + 48));
  v5 = *(a1 + 40);
  [v2 productProfilesForStoreIDs:v3 completion:v4];

  objc_destroyWeak(&v6);
}

void sub_100159B50(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v6 allValues];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          [v14 calculateTrimmedStandardDescription];
          [v14 calculateTrimmedStandardNotes];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v15 = [WeakRetained extendedDataAccessQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100159D38;
    v16[3] = &unk_100A088F0;
    v17 = WeakRetained;
    v18 = v6;
    v20 = *(a1 + 32);
    v19 = v7;
    dispatch_async(v15, v16);
  }
}

void sub_100159D38(id *a1)
{
  v2 = [a1[4] productInfoData];
  [v2 addEntriesFromDictionary:a1[5]];

  v3 = [a1[4] checkedProductProfileIDs];
  v4 = [a1[5] allKeys];
  [v3 addObjectsFromArray:v4];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100159E48;
  block[3] = &unk_100A073B0;
  v8 = a1[7];
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100159E48(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

void sub_10015A0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10015A10C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained extendedDataAccessQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10015A210;
    v10[3] = &unk_100A088F0;
    v10[4] = v8;
    v11 = v5;
    v13 = *(a1 + 32);
    v12 = v6;
    dispatch_async(v9, v10);
  }
}

void sub_10015A210(id *a1)
{
  v2 = [a1[4] resourceCache];
  [v2 addEntriesFromDictionary:a1[5]];

  v3 = [a1[4] checkedResourceIDs];
  v4 = [a1[5] allKeys];
  [v3 addObjectsFromArray:v4];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015A320;
  block[3] = &unk_100A073B0;
  v8 = a1[7];
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10015A320(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

void sub_10015A630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10015A654(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    v6 = [v7 allKeys];
    [v5 booksDataSourceReloadAssetInfo:v4 forAssetIDs:v6];
  }
}

void sub_10015A958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10015A984(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained extendedDataAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015AA78;
    block[3] = &unk_100A03620;
    objc_copyWeak(&v10, (a1 + 40));
    v8 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
  }
}

void sub_10015AA78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained checkedAssetIDs];
    [v4 removeAllObjects];

    v5 = [v3 assetReviewData];
    [v5 removeAllObjects];

    v6 = [v3 checkedAssetIDs];
    [v6 addObjectsFromArray:*(a1 + 32)];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 assetReviewID];
          v14 = [BCAssetReview assetIDFromAssetReviewID:v13];

          if (v14)
          {
            v15 = [v3 assetReviewData];
            [v15 setObject:v12 forKey:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015AC90;
    block[3] = &unk_100A033C8;
    v17 = v3;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10015AC90(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 booksDataSourceReloadAssetReviewData:*(a1 + 32)];
}

void sub_10015AFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015AFBC(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) productInfoData];
  v2 = [v6 objectForKey:*(a1 + 40)];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10015B184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015B19C(uint64_t a1)
{
  v6 = [*(a1 + 32) resourceCache];
  v2 = [v6 objectForKey:*(a1 + 40)];
  v3 = BUProtocolCast();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10015B55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_10015B5B0(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceCache];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = BUProtocolCast();
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) checkedResourceIDs];
  *(*(*(a1 + 56) + 8) + 24) = [v7 containsObject:*(a1 + 40)];
}

void sub_10015B66C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = objc_retainBlock(*(a1 + 40));
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v11 allValues];
      v10 = [v9 lastObject];
      v7[2](v7, v8, v10, v5);
    }
  }
}

void sub_10015B8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015B8D8(uint64_t a1)
{
  v5 = [*(a1 + 32) assetReviewData];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10015BC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10015BC4C(uint64_t a1)
{
  v2 = [*(a1 + 32) assetReviewData];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) checkedAssetIDs];
  *(*(*(a1 + 56) + 8) + 24) = [v6 containsObject:*(a1 + 40)];
}

void sub_10015BCE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [BCAssetReview assetReviewIDWithUserID:*(a1 + 32) assetID:*(a1 + 40)];
    v4 = [WeakRetained checkedAssetIDs];
    [v4 addObject:*(a1 + 40)];

    v5 = [WeakRetained assetReviewManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10015BE08;
    v6[3] = &unk_100A08A08;
    objc_copyWeak(&v8, (a1 + 56));
    v7 = *(a1 + 48);
    [v5 assetReviewForAssetReviewID:v3 completion:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_10015BE08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained extendedDataAccessQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10015BF18;
    v10[3] = &unk_100A088F0;
    v11 = v5;
    v12 = v8;
    v14 = *(a1 + 32);
    v13 = v6;
    dispatch_async(v9, v10);
  }
}

void sub_10015BF18(id *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = [v2 assetReviewID];
    v4 = [BCAssetReview assetIDFromAssetReviewID:v3];

    if (v4)
    {
      v5 = [a1[5] assetReviewData];
      [v5 setObject:a1[4] forKey:v4];
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015C034;
  block[3] = &unk_100A073B0;
  v9 = a1[7];
  v7 = a1[4];
  v8 = a1[6];
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10015C034(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

void sub_10015D6A0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100AF7758;
  qword_100AF7758 = v1;
}

void sub_10015DC90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [v5 UIImage];
    v9 = BCUbiquityMetadataHelperLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = 141558786;
      v12 = 1752392040;
      v13 = 2112;
      v14 = v10;
      v15 = 2160;
      v16 = 1752392040;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[iCloudSync] url: %{mask.hash}@ generateThumbnail thumbnail: %{mask.hash}@", &v11, 0x2Au);
    }

    [*(a1 + 40) setObject:v8 forKey:*(a1 + 48)];
LABEL_9:

    goto LABEL_10;
  }

  if (v6)
  {
    v8 = BCUbiquityMetadataHelperLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1007913C8();
    }

    goto LABEL_9;
  }

LABEL_10:
  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_10015E088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015E0C0(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_10015E430;
  v29 = &unk_100A08BC0;
  v4 = v3;
  v5 = *(a1 + 56);
  v30 = v4;
  v31 = v5;
  v6 = objc_retainBlock(&v26);
  v7 = BCUbiquityMetadataHelperLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 141558274;
    v33 = 1752392040;
    v34 = 2112;
    v35 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[iCloudSync] Adding ubiquitous metadata to URL: %{mask.hash}@", buf, 0x16u);
  }

  (v6[2])(v6, BCMetadataXattrAssetID, *(a1 + 32));
  (v6[2])(v6, BCMetadataXattrTitle, *(a1 + 40));
  v8 = BCMetadataXattrAuthor;
  v9 = [*(a1 + 48) author];
  v10 = [BKLibraryAsset actualAuthorFromMetedata:v9];
  (v6[2])(v6, v8, v10);

  v11 = BCMetadataXattrGenre;
  v12 = [*(a1 + 48) genre];
  (v6[2])(v6, v11, v12);

  v13 = BCMetadataXattrExplicit;
  v14 = [*(a1 + 48) isExplicit];
  v15 = [v14 stringValue];
  (v6[2])(v6, v13, v15);

  v16 = BCMetadataXattrGeneration;
  v17 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 48) generation]);
  v18 = [v17 stringValue];
  (v6[2])(v6, v16, v18);

  v19 = BCMetadataXattrIsSupplementalContent;
  v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 48) isSupplementalContent]);
  v21 = [v20 stringValue];
  (v6[2])(v6, v19, v21);

  v22 = BCMetadataXattrStoreID;
  v23 = [*(a1 + 48) storeID];
  (v6[2])(v6, v22, v23);

  v24 = BCMetadataXattrStorePlaylistID;
  v25 = [*(a1 + 48) storePlaylistID];
  (v6[2])(v6, v24, v25);
}

void sub_10015E430(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 length] && (+[BCUbiquityMetadataHelper setExtendedAttributeNamed:toValue:forUrl:](BCUbiquityMetadataHelper, "setExtendedAttributeNamed:toValue:forUrl:", v6, v5, *(a1 + 32)) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_10015E674(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BCUbiquityMetadataHelperLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 141558274;
    v6 = 1752392040;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[iCloudSync] Adding ubiquitous metadata to URL: %{mask.hash}@", &v5, 0x16u);
  }

  [BCUbiquityMetadataHelper setExtendedAttributeNamed:BCMetadataXattrTitle toValue:*(a1 + 32) forUrl:v3];
}

void sub_10015E944(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BCUbiquityMetadataHelperLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 141558274;
    v9 = 1752392040;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[iCloudSync] Adding supplemental ubiquitous metadata to URL: %{mask.hash}@", &v8, 0x16u);
  }

  v5 = BCMetadataXattrIsSupplementalContent;
  v6 = [NSNumber numberWithBool:*(a1 + 48)];
  v7 = [v6 stringValue];
  [BCUbiquityMetadataHelper setExtendedAttributeNamed:v5 toValue:v7 forUrl:v3];

  [BCUbiquityMetadataHelper setExtendedAttributeNamed:BCMetadataXattrStorePlaylistID toValue:*(a1 + 32) forUrl:v3];
  [BCUbiquityMetadataHelper setExtendedAttributeNamed:BCMetadataXattrStoreID toValue:*(a1 + 40) forUrl:v3];
}

uint64_t sub_10015EFA8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 count] == 0;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_10015F12C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = BKLibraryLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1007915BC(a1, v5, v6);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [a2 firstObject];
    if ([v7 isValid])
    {
      v8 = [v7 assetID];
      if (v8)
      {
        v9 = v8;
        v10 = [v7 state];

        if (v10 == 2)
        {
          v11 = [*(a1 + 40) libraryAssetProvider];
          [v11 cancelDownloadingAsset:v7];
        }
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_10015F2DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 count] == 0;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_10015F434(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2 != 0, v7);
  }
}

void sub_10015F5F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10015F73C;
    v14[3] = &unk_100A03C78;
    v7 = *(a1 + 48);
    v15 = *(a1 + 32);
    v16 = v7;
    dispatch_async(&_dispatch_main_q, v14);
    v8 = [BSUIAssetActionModifyResponse alloc];
    v9 = [v5 collectionTitle];
    v10 = [v5 assetID];
    v11 = [v8 initWithCollectionTitle:v9 assetID:v10 assetContentType:{objc_msgSend(v5, "assetContentType")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_retainBlock(*(a1 + 64));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v11, v6);
  }
}

void sub_10015F73C(uint64_t a1)
{
  v4 = [*(a1 + 32) _contentDataForContentID:*(a1 + 40) tracker:*(a1 + 48)];
  v2 = +[BAEventReporter sharedReporter];
  [v2 emitAddToCollectionEventWithTracker:*(a1 + 48) collectionID:*(a1 + 56) contentData:v4];

  if ([*(a1 + 56) isEqualToString:kBKCollectionDefaultIDWantToRead])
  {
    v3 = +[BAEventReporter sharedReporter];
    [v3 emitWantListAddEventWithTracker:*(a1 + 48) contentData:v4];
  }

  else
  {
    if (![*(a1 + 56) isEqualToString:kBKCollectionDefaultIDFinished])
    {
      goto LABEL_6;
    }

    v3 = +[BAEventReporter sharedReporter];
    [v3 emitMarkAsFinishedEventWithTracker:*(a1 + 48) contentData:v4 markedData:0];
  }

LABEL_6:
}

void sub_10015F938(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2 != 0, v7);
  }
}

void sub_10015FAF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10015FC3C;
    v14[3] = &unk_100A03C78;
    v7 = *(a1 + 48);
    v15 = *(a1 + 32);
    v16 = v7;
    dispatch_async(&_dispatch_main_q, v14);
    v8 = [BSUIAssetActionModifyResponse alloc];
    v9 = [v5 collectionTitle];
    v10 = [v5 assetID];
    v11 = [v8 initWithCollectionTitle:v9 assetID:v10 assetContentType:{objc_msgSend(v5, "assetContentType")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_retainBlock(*(a1 + 64));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v11, v6);
  }
}

void sub_10015FC3C(uint64_t a1)
{
  v4 = [*(a1 + 32) _contentDataForContentID:*(a1 + 40) tracker:*(a1 + 48)];
  v2 = +[BAEventReporter sharedReporter];
  [v2 emitRemoveFromCollectionEventWithTracker:*(a1 + 48) collectionID:*(a1 + 56) contentData:v4];

  if ([*(a1 + 56) isEqualToString:kBKCollectionDefaultIDWantToRead])
  {
    v3 = +[BAEventReporter sharedReporter];
    [v3 emitRemoveFromWantListEventWithTracker:*(a1 + 48) contentData:v4];
  }
}

void sub_10015FDE8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) libraryMutableAssetWithAssetID:*(a1 + 40) inManagedObjectContext:a2];
  v4 = v3;
  if (v3)
  {
    if ([v3 isFinished])
    {
      v5 = objc_retainBlock(*(a1 + 56));
      v6 = v5;
      if (v5)
      {
        (*(v5 + 2))(v5, v4, 0);
      }

      goto LABEL_13;
    }

    v21 = NSLocalizedDescriptionKey;
    v22 = @"Cannot update non-finished asset";
    v9 = &v22;
    v10 = &v21;
  }

  else
  {
    if (*(a1 + 64) == 1)
    {
      v7 = *(a1 + 32);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100160010;
      v16[3] = &unk_100A049A0;
      v15 = *(a1 + 40);
      v8 = v15.i64[0];
      v17 = vextq_s8(v15, v15, 8uLL);
      v18 = *(a1 + 56);
      [v7 waitForAssetID:v8 completion:v16];

      goto LABEL_13;
    }

    v19 = NSLocalizedDescriptionKey;
    v20 = @"Asset not found. Cannot update finished asset.";
    v9 = &v20;
    v10 = &v19;
  }

  v11 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:1];
  v12 = [NSError errorWithDomain:@"BKJSALibraryManager" code:-1 userInfo:v11];

  v13 = objc_retainBlock(*(a1 + 56));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, 0, v12);
  }

LABEL_13:
}

void sub_10016013C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 userUpdateDateFinished:*(a1 + 32) ofKind:1];
    v7 = objc_retainBlock(*(a1 + 64));
    v8 = v7;
    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = v7[2];
  }

  else
  {
    v10 = objc_retainBlock(*(a1 + 64));
    v8 = v10;
    if (!v10)
    {
      goto LABEL_7;
    }

    v9 = v10[2];
  }

  v9();
LABEL_7:

  if (*(a1 + 40))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100160278;
    block[3] = &unk_100A03A30;
    v11 = *(a1 + 56);
    block[4] = *(a1 + 48);
    v13 = v11;
    v14 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100160278(uint64_t a1)
{
  v4 = [*(a1 + 32) _contentDataForContentID:*(a1 + 40) tracker:*(a1 + 48)];
  v2 = [[BAMarkedData alloc] initWithIsFinishedDateSet:1];
  v3 = +[BAEventReporter sharedReporter];
  [v3 emitMarkAsFinishedEventWithTracker:*(a1 + 48) contentData:v4 markedData:v2];
}

void sub_1001604FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 userUpdateDateFinished:*(a1 + 32) ofKind:2];
    v7 = objc_retainBlock(*(a1 + 64));
    v8 = v7;
    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = v7[2];
  }

  else
  {
    v10 = objc_retainBlock(*(a1 + 64));
    v8 = v10;
    if (!v10)
    {
      goto LABEL_7;
    }

    v9 = v10[2];
  }

  v9();
LABEL_7:

  if (*(a1 + 40))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100160638;
    block[3] = &unk_100A03A30;
    v11 = *(a1 + 56);
    block[4] = *(a1 + 48);
    v13 = v11;
    v14 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100160638(uint64_t a1)
{
  v4 = [*(a1 + 32) _contentDataForContentID:*(a1 + 40) tracker:*(a1 + 48)];
  v2 = [[BAMarkedData alloc] initWithIsFinishedDateSet:1];
  v3 = +[BAEventReporter sharedReporter];
  [v3 emitMarkAsFinishedEventWithTracker:*(a1 + 48) contentData:v4 markedData:v2];
}

void sub_10016077C(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  if (a2)
  {
    [a2 unsetFinishedDate];
    v5 = objc_retainBlock(*(a1 + 32));
    v6 = v5;
    if (!v5)
    {
      goto LABEL_7;
    }

    v7 = v5[2];
  }

  else
  {
    v8 = objc_retainBlock(*(a1 + 32));
    v6 = v8;
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = v8[2];
  }

  v7();
LABEL_7:
}

void sub_100160C54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSNumber numberWithBool:a2];
  v7 = v6;
  if (v5)
  {
    v20[0] = v6;
    v8 = [v5 localizedDescription];
    v20[1] = v8;
    v9 = [NSArray arrayWithObjects:v20 count:2];
  }

  else
  {
    v19 = v6;
    v9 = [NSArray arrayWithObjects:&v19 count:1];
  }

  v10 = JSALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 136446722;
    v14 = "[BKJSALibraryManager openBook::::]_block_invoke";
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s Error occurred when opening book %@: %@", &v13, 0x20u);
  }

  v12 = +[JSABridge sharedInstance];
  [v12 enqueueValueCall:*(a1 + 40) arguments:v9 file:@"BKJSALibraryManager.m" line:328];
}

void sub_100160F50(uint64_t a1, void *a2)
{
  v4 = a2;
  v13[0] = @"status";
  if ([v4 count])
  {
    v5 = @"error";
  }

  else
  {
    v5 = @"ok";
  }

  v13[1] = @"description";
  v14[0] = v5;
  v6 = [v4 count];
  if (v6)
  {
    v2 = [v4 componentsJoinedByString:{@", "}];
    [NSString stringWithFormat:@"Failed to download assets: %@", v2];
  }

  else
  {
    +[NSNull null];
  }
  v7 = ;
  v14[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  if (v6)
  {

    v7 = v2;
  }

  v9 = +[JSABridge sharedInstance];
  v10 = *(a1 + 32);
  v12 = v8;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [v9 enqueueValueCall:v10 arguments:v11 file:@"BKJSALibraryManager.m" line:340];
}

void sub_1001612B4(uint64_t a1, uint64_t a2)
{
  v4 = +[JSABridge sharedInstance];
  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithBool:a2];
  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v4 enqueueValueCall:v5 arguments:v7 file:@"BKJSALibraryManager.m" line:349];
}

void sub_1001614E0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v21[0] = @"error";
    v20[0] = @"status";
    v20[1] = @"description";
    v4 = *(a1 + 32);
    v5 = [a3 localizedDescription];
    v6 = [NSString stringWithFormat:@"Failed to cancel download for assetID %@: %@", v4, v5];
    v21[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

    v8 = +[JSABridge sharedInstance];
    v9 = *(a1 + 40);
    v19 = v7;
    v10 = [NSArray arrayWithObjects:&v19 count:1];
    v11 = v8;
    v12 = v9;
    v13 = v10;
    v14 = 362;
  }

  else
  {
    v7 = +[JSABridge sharedInstance];
    v15 = *(a1 + 40);
    v16 = @"status";
    v17 = @"ok";
    v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v18 = v8;
    v10 = [NSArray arrayWithObjects:&v18 count:1];
    v11 = v7;
    v12 = v15;
    v13 = v10;
    v14 = 364;
  }

  [v11 enqueueValueCall:v12 arguments:v13 file:@"BKJSALibraryManager.m" line:v14];
}

void sub_100161814(uint64_t a1, void *a2)
{
  v4 = a2;
  v13[0] = @"status";
  if ([v4 count])
  {
    v5 = @"error";
  }

  else
  {
    v5 = @"ok";
  }

  v13[1] = @"description";
  v14[0] = v5;
  v6 = [v4 count];
  if (v6)
  {
    v2 = [v4 componentsJoinedByString:{@", "}];
    [NSString stringWithFormat:@"Failed to download assets: %@", v2];
  }

  else
  {
    +[NSNull null];
  }
  v7 = ;
  v14[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  if (v6)
  {

    v7 = v2;
  }

  v9 = +[JSABridge sharedInstance];
  v10 = *(a1 + 32);
  v12 = v8;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [v9 enqueueValueCall:v10 arguments:v11 file:@"BKJSALibraryManager.m" line:378];
}

void sub_100161B20(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (*(a1 + 32))
  {
    if (a2)
    {
      v7 = 0;
    }

    else
    {
      v14 = @"error";
      v8 = [v5 localizedDescription];
      v15 = v8;
      v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    }

    v9 = +[JSABridge sharedInstance];
    v10 = v9;
    v11 = *(a1 + 32);
    if (v7)
    {
      v13 = v7;
      v12 = [NSArray arrayWithObjects:&v13 count:1];
      [v10 enqueueValueCall:v11 arguments:v12 file:@"BKJSALibraryManager.m" line:388];
    }

    else
    {
      [v9 enqueueValueCall:v11 arguments:0 file:@"BKJSALibraryManager.m" line:388];
    }
  }
}

void sub_100161DE0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = 0;
    if (v5 && (a2 & 1) == 0)
    {
      v7 = [v5 localizedDescription];
    }

    v8 = +[JSABridge sharedInstance];
    v9 = v8;
    v10 = *(a1 + 32);
    if (v7)
    {
      v12 = v7;
      v11 = [NSArray arrayWithObjects:&v12 count:1];
      [v9 enqueueValueCall:v10 arguments:v11 file:@"BKJSALibraryManager.m" line:400];
    }

    else
    {
      [v8 enqueueValueCall:v10 arguments:0 file:@"BKJSALibraryManager.m" line:400];
    }
  }
}

void sub_100162054(uint64_t a1)
{
  v2 = +[BKAppDelegate sceneManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100162110;
  v4[3] = &unk_100A08D70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 requestPrimaryScene:v4];
}

void sub_100162110(uint64_t a1, void *a2)
{
  v6 = [a2 newShowAssetTransaction];
  v3 = [*(a1 + 32) presentersProvider];
  v4 = [v3 libraryCollectionPresenter];
  [v4 showLibraryCollectionInPlaceWithTransaction:v6 collectionID:*(a1 + 40)];

  v5 = +[JSABridge sharedInstance];
  [v5 enqueueValueCall:*(a1 + 48) arguments:0 file:@"BKJSALibraryManager.m" line:412];
}

void sub_100162394(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSNumber numberWithBool:a2];
  v7 = v6;
  if (v5)
  {
    v22[0] = v6;
    v8 = [v5 localizedDescription];
    v22[1] = v8;
    v9 = [NSArray arrayWithObjects:v22 count:2];
  }

  else
  {
    v21 = v6;
    v9 = [NSArray arrayWithObjects:&v21 count:1];
  }

  v10 = JSALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 136446978;
    v14 = "[BKJSALibraryManager openSampleBook:downloadSampleURL:options:callback:tracker:]_block_invoke";
    v15 = 2112;
    v16 = v11;
    v17 = 1024;
    v18 = a2;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s Finished opening sample for assetID: %@, success: %{BOOL}d, error: %@", &v13, 0x26u);
  }

  v12 = +[JSABridge sharedInstance];
  [v12 enqueueValueCall:*(a1 + 40) arguments:v9 file:@"BKJSALibraryManager.m" line:424];
}

void sub_1001627A8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001629AC;
    block[3] = &unk_100A03A30;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v18 = v6;
    v19 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v7 = JSALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 136446722;
      v21 = "[BKJSALibraryManager previewAudiobook::::]_block_invoke";
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s Error occurred adding preview to My Samples %@: %@", buf, 0x20u);
    }
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 72);
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100162A2C;
  v14[3] = &unk_100A034F8;
  v15 = *(a1 + 64);
  v16 = *(a1 + 40);
  [v9 _previewAssetID:v10 asset:v12 fullScreen:v11 tracker:v13 callback:v14];
}

void sub_1001629AC(uint64_t a1)
{
  v3 = [*(a1 + 32) _contentDataForContentID:*(a1 + 40) tracker:*(a1 + 48)];
  v2 = +[BAEventReporter sharedReporter];
  [v2 emitAddToCollectionEventWithTracker:*(a1 + 48) collectionID:kBKCollectionDefaultIDSamples contentData:v3];
}

void sub_100162A2C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = +[JSABridge sharedInstance];
    [v7 enqueueValueCall:*(a1 + 32) arguments:&__NSArray0__struct file:@"BKJSALibraryManager.m" line:453];
  }

  else
  {
    v19 = @"error";
    v8 = [v5 localizedDescription];
    v20 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v21 = v9;
    v7 = [NSArray arrayWithObjects:&v21 count:1];

    v10 = JSALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v13 = 136446722;
      v14 = "[BKJSALibraryManager previewAudiobook::::]_block_invoke";
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s Error occurred when previewing audiobook %@: %@", &v13, 0x20u);
    }

    v12 = +[JSABridge sharedInstance];
    [v12 enqueueValueCall:*(a1 + 32) arguments:v7 file:@"BKJSALibraryManager.m" line:457];
  }
}

void sub_100162D7C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162F30;
  block[3] = &unk_100A04AC8;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v4;
  v13 = *(a1 + 48);
  v15 = *(a1 + 64);
  v5 = v3;
  v14 = v5;
  dispatch_async(&_dispatch_main_q, block);
  v6 = +[JSABridge sharedInstance];
  v7 = *(a1 + 56);
  v8 = [v5 localizedDescription];
  if (v8)
  {
    v9 = [v5 localizedDescription];
    v16 = v9;
    v10 = [NSArray arrayWithObjects:&v16 count:1];
    [v6 enqueueValueCall:v7 arguments:v10 file:@"BKJSALibraryManager.m" line:483];
  }

  else
  {
    [v6 enqueueValueCall:v7 arguments:0 file:@"BKJSALibraryManager.m" line:483];
  }
}

void sub_100162F30(uint64_t a1)
{
  v7 = [*(a1 + 32) _contentDataForContentID:*(a1 + 40) tracker:*(a1 + 48)];
  v2 = *(a1 + 64);
  v3 = +[BAEventReporter sharedReporter];
  v4 = v3;
  v5 = *(a1 + 48);
  if (v2 == 1)
  {
    [v3 emitAddToCollectionEventWithTracker:v5 collectionID:kBKCollectionDefaultIDFinished contentData:v7];
  }

  else
  {
    [v3 emitRemoveFromCollectionEventWithTracker:v5 collectionID:kBKCollectionDefaultIDFinished contentData:v7];
  }

  if (!*(a1 + 56) && *(a1 + 64) == 1)
  {
    v6 = +[BAEventReporter sharedReporter];
    [v6 emitMarkAsFinishedEventWithTracker:*(a1 + 48) contentData:v7 markedData:0];
  }
}

void sub_100163310(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ![v5 isValid])
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (([v5 isLocal] & 1) != 0 || (objc_msgSend(v5, "streamable") & 1) != 0 || !+[BKReachability isOffline](BKReachability, "isOffline"))
    {
      v8 = sub_1000D2D24(*(a1 + 40));
      v9 = [v8 mutableCopy];
      v10 = [v5 assetLogID];
      [v9 setObject:v10 forKeyedSubscript:AEAssetLogID];

      [v9 removeObjectForKey:BCTransactionOptionsTransactionKey];
      if (([v5 isOwned] & 1) != 0 || objc_msgSend(v5, "isLocal"))
      {
        v11 = [v5 isAudiobook];
        v12 = [*(a1 + 32) presentersProvider];
        v13 = [v12 bookPresenter];

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100163730;
        v18[3] = &unk_100A08E38;
        v24 = *(a1 + 80);
        v25 = v11;
        v14 = *(a1 + 40);
        v18[4] = *(a1 + 32);
        v19 = v14;
        v20 = v13;
        v21 = *(a1 + 48);
        v22 = v9;
        v23 = *(a1 + 72);
        v15 = v13;
        dispatch_async(&_dispatch_main_q, v18);
      }

      else
      {
        v15 = [*(a1 + 32) _contentDataForLibraryAsset:v5 contentID:*(a1 + 48) tracker:*(a1 + 56)];
        kdebug_trace();
        [*(a1 + 32) _openSample:*(a1 + 48) options:v9 sampleURL:*(a1 + 64) contentData:v15 tracker:*(a1 + 56) callback:*(a1 + 72)];
        kdebug_trace();
      }
    }

    else
    {
      v7 = [v5 isStore];
      objc_initWeak(&location, *(a1 + 32));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001636B0;
      block[3] = &unk_100A08DE8;
      objc_copyWeak(&v28, &location);
      v29 = v7;
      v27 = *(a1 + 72);
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }

    if (*(a1 + 80) == 1)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1001639B0;
      v16[3] = &unk_100A08E58;
      v17 = [v5 isAudiobook];
      dispatch_async(&_dispatch_main_q, v16);
    }
  }
}

void sub_1001636B0(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 40));
  v2 = objc_loadWeakRetained(&to);
  [v2 _displayStoreConnectionErrorAlert:*(a1 + 48)];

  (*(*(a1 + 32) + 16))();
  objc_destroyWeak(&to);
}

void sub_100163730(uint64_t a1)
{
  if ((*(a1 + 80) & 1) != 0 || *(a1 + 81) == 1)
  {
    v2 = [*(a1 + 32) _transactionFromOptionsForShowAsset:*(a1 + 40)];
    v3 = +[BKAppDelegate sceneManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001638E8;
    v11[3] = &unk_100A08310;
    v4 = &v12;
    v12 = *(a1 + 48);
    v13 = v2;
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    v5 = v2;
    [v3 forceTransaction:v5 ontoPrimarySceneWithContinuation:v11];
  }

  else
  {
    v5 = [*(a1 + 32) _transactionFromOptionsForShowAsset:*(a1 + 40)];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001639A0;
    v9[3] = &unk_100A08E10;
    v4 = &v10;
    v8 = *(a1 + 64);
    v10 = *(a1 + 72);
    [v6 showAssetWithTransaction:v5 assetID:v7 location:0 options:v8 completion:v9];
  }
}

void sub_1001638E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100163990;
  v5[3] = &unk_100A08E10;
  v6 = *(a1 + 64);
  [v1 showAssetWithTransaction:v2 assetID:v3 location:0 options:v4 completion:v5];
}

void sub_1001639B0(uint64_t a1)
{
  objc_opt_class();
  v2 = BCGetUnsafeAppDelegateReference();
  v6 = BUDynamicCast();

  v3 = [v6 engagementManager];
  LODWORD(v2) = *(a1 + 32);
  v4 = [v3 sessionDonor];
  v5 = v4;
  if (v2 == 1)
  {
    [v4 reportPreviewButtonUsed];
  }

  else
  {
    [v4 reportSampleButtonUsed];
  }
}

void sub_100163C64(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = +[BKBookSampleHelper defaultHelper];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100163DF0;
  v14[3] = &unk_100A06300;
  v15 = *(a1 + 72);
  [v4 downloadSampleWithURL:v3 contentData:v5 tracker:v6 completion:v14];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100163E78;
  v9[3] = &unk_100A04370;
  v10 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  objc_copyWeak(&v13, &location);
  dispatch_async(&_dispatch_main_q, v9);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

void sub_100163DF0(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 firstObject];
  (*(*(a1 + 32) + 16))();
}

void sub_100163E78(id *a1)
{
  v2 = [a1[4] objectForKeyedSubscript:@"storeAsset"];
  if (v2)
  {
    v3 = [BCMAssetWrapper assetWithData:v2];
    v4 = [[BSUIItemDescription alloc] initWithAsset:v3];
    objc_opt_class();
    v5 = [a1[4] objectForKeyedSubscript:@"feedViewController"];
    v6 = BUDynamicCast();

    v7 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
    if (v6)
    {
      v35 = v3;
      v8 = [a1[4] objectForKeyedSubscript:@"BKBookPresentingAnimateFromUid"];
      v9 = [a1[4] objectForKeyedSubscript:@"BKBookPresentingAnimateFromRefId"];
      v10 = v9;
      v11 = @"cover";
      if (v9)
      {
        v11 = v9;
      }

      v12 = v11;

      v13 = [a1[4] objectForKeyedSubscript:@"BKBookPresentingAnimateFromRefInstance"];
      v14 = v13;
      if (!v13)
      {
        v14 = a1[5];
      }

      v15 = v14;

      v34 = v12;
      v16 = [TUIRenderReferenceQuery queryWithUUID:0 uid:v8 refId:v12 refInstance:v15];
      v17 = [v6 imageResourcesMatchingQuery:v16];

      v18 = [v17 allKeys];
      v19 = [v18 firstObject];

      if (v19)
      {
        v33 = v8;
        v20 = [v17 objectForKeyedSubscript:v19];
        v21 = [v20 anyObject];

        v22 = [v21 unprocessedImageResource];
        v47 = 0;
        v48 = &v47;
        v49 = 0x3032000000;
        v50 = sub_100027460;
        v51 = sub_100027668;
        v52 = dispatch_semaphore_create(0);
        v23 = +[BCCacheManager defaultCacheManager];
        v24 = a1[5];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_100164380;
        v46[3] = &unk_100A03CF0;
        v46[4] = &v47;
        [v23 addImageResource:v22 withIdentifier:v24 completion:v46];

        v25 = v48[5];
        v26 = dispatch_time(0, 2000000000);
        dispatch_semaphore_wait(v25, v26);
        _Block_object_dispose(&v47, 8);

        v8 = v33;
        v7 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
      }

      v3 = v35;
    }

    v27 = [a1[6] _transactionFromOptionsForShowAsset:a1[4]];
    v28 = +[BKAppDelegate sceneManager];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = v7[23];
    v41[2] = sub_100164390;
    v41[3] = &unk_100A03C50;
    objc_copyWeak(&v45, a1 + 7);
    v29 = v4;
    v42 = v29;
    v30 = v27;
    v43 = v30;
    v44 = a1[4];
    [v28 forceTransaction:v30 ontoPrimarySceneWithContinuation:v41];

    objc_destroyWeak(&v45);
  }

  else
  {
    v31 = [a1[6] _transactionFromOptionsForShowAsset:a1[4]];
    v32 = +[BKAppDelegate sceneManager];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100164414;
    v36[3] = &unk_100A03C50;
    objc_copyWeak(&v40, a1 + 7);
    v29 = v31;
    v37 = v29;
    v38 = a1[5];
    v39 = a1[4];
    [v32 forceTransaction:v29 ontoPrimarySceneWithContinuation:v36];

    objc_destroyWeak(&v40);
  }
}

void sub_100164390(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained presentersProvider];
  v3 = [v2 itemPresenter];
  [v3 presentItem:*(a1 + 32) transaction:*(a1 + 40) host:0 source:0 options:*(a1 + 48)];
}

void sub_100164414(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained presentersProvider];
  v3 = [v2 bookPresenter];
  [v3 showAssetWithTransaction:*(a1 + 32) storeID:*(a1 + 40) options:*(a1 + 48)];
}

uint64_t sub_100164490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

void sub_1001646B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001646DC(uint64_t a1, void *a2)
{
  if ([a2 canOpen])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100164868;
    v12[3] = &unk_100A08EF8;
    v13 = v4;
    v14 = *(a1 + 56);
    [WeakRetained _openAssetID:v13 options:0 sampleURL:0 isSample:0 tracker:v5 callback:v12];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016495C;
    block[3] = &unk_100A08F48;
    objc_copyWeak(&v10, (a1 + 64));
    v7 = *(a1 + 48);
    v11 = *(a1 + 72);
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v10);
  }
}

void sub_100164868(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 136446722;
    v8 = "[BKJSALibraryManager _previewAssetID:asset:fullScreen:tracker:callback:]_block_invoke_2";
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s Error occurred when opening audiobook (asked to preview) %@: %@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v4 == 0, v4);
}

void sub_10016495C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) previewURL];

  if (v3)
  {
    v4 = +[BKAppDelegate sceneManager];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100164B4C;
    v14 = &unk_100A08F20;
    v19 = *(a1 + 64);
    v15 = *(a1 + 40);
    v16 = WeakRetained;
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    [v4 requestPrimaryScene:&v11];

    v5 = [BKAppDelegate delegate:v11];
    v6 = [v5 engagementManager];

    v7 = [v6 sessionDonor];
    [v7 reportPreviewButtonUsed];

    v8 = v15;
  }

  else
  {
    v9 = *(a1 + 48);
    v20 = NSLocalizedDescriptionKey;
    v21 = @"Attempting to preview audiobook without URL";
    v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v10 = [NSError errorWithDomain:@"BKJSALibraryManager" code:-1 userInfo:v8];
    (*(v9 + 16))(v9, 0, v10);
  }
}

void sub_100164B4C(uint64_t a1, void *a2)
{
  v3 = [a2 newShowAssetTransaction];
  v4 = [NSNumber numberWithBool:*(a1 + 64)];
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    v15[0] = @"tracker";
    v15[1] = @"fullScreen";
    v16[0] = v6;
    v16[1] = v4;
    v7 = v16;
    v8 = v15;
    v9 = 2;
  }

  else
  {
    v13 = @"fullScreen";
    v14 = v4;
    v7 = &v14;
    v8 = &v13;
    v9 = 1;
  }

  v10 = [NSDictionary dictionaryWithObjects:v7 forKeys:v8 count:v9];
  v11 = [*(a1 + 40) presentersProvider];
  v12 = [v11 bookPresenter];
  [v12 showStoreAsset:v3 asset:*(a1 + 48) options:v10];

  (*(*(a1 + 56) + 16))();
}

void sub_100164E08(uint64_t a1)
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 serviceCenter];
  v4 = [v3 readingActivityService];

  +[BKLibraryManager defaultManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100164F28;
  v9 = v8[3] = &unk_100A08F98;
  v5 = *(a1 + 32);
  v13 = *(a1 + 48);
  v10 = v5;
  v11 = v4;
  v12 = *(a1 + 40);
  v6 = v4;
  v7 = v9;
  [v7 performBlockOnWorkerQueue:v8];
}

void sub_100164F28(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) libraryMutableAssetWithAssetID:*(a1 + 40) inManagedObjectContext:a2];
  v4 = v3;
  if (v3)
  {
    if (*(a1 + 64) == 1)
    {
      v14 = BKLibraryAssetMarkedLocation;
      v15 = BALocationTypeFromReadingNowFinish;
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [v4 setFinishedStateUserSetsFinished:0 userInfo:v5];
    }

    else
    {
      [v3 setFinishedStateUserSetsUnfinished];
    }

    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(a1 + 64);
    v6 = [v4 dateFinished];
    [v8 willMarkAsset:v9 finished:v10 finishedDate:v6];
    v7 = 0;
  }

  else
  {
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Asset not found. Cannot mark as finished";
    v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v7 = [NSError errorWithDomain:@"BKJSALibraryManager" code:-1 userInfo:v6];
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v7);
  }
}

void sub_10016524C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100165268(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) longLongValue]);
  v4 = [BLPurchaseRequest requestWithBuyParameters:v2 storeIdentifier:v3];

  [v4 setAudiobook:*(a1 + 72)];
  if (*(a1 + 48))
  {
    v19[0] = *(a1 + 48);
    v18[0] = @"BATracker";
    v18[1] = @"hasRacSupport";
    v5 = [NSNumber numberWithBool:*(a1 + 73)];
    v19[1] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  else
  {
    v7 = JSALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100791648(v7);
    }

    v16 = @"hasRacSupport";
    v5 = [NSNumber numberWithBool:*(a1 + 73)];
    v17 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  }

  v8 = v6;
  [v4 setAnalyticsInfo:v6];

  v9 = +[JSABridge sharedInstance];
  v10 = [v9 windowManager];

  v11 = +[BLDownloadQueue sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001654EC;
  v12[3] = &unk_100A08FC0;
  objc_copyWeak(&v15, (a1 + 64));
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  [v11 purchaseWithRequest:v4 uiManager:v10 completion:v12];

  objc_destroyWeak(&v15);
}

void sub_1001654EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a4)
  {
    v6 = [WeakRetained libraryItemStateProvider];
    [v6 updateStateToPurchaseFailedForIdentifier:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100165630(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  if ([v3 isValid] && (objc_msgSend(v3, "assetID"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = objc_msgSend(v3, "state"), v5, v6 == 3))
  {
    v7 = [v3 assetID];
    v8 = [*(a1 + 32) libraryItemStateProvider];
    [v8 updateStateToPurchasingForIdentifier:v7];

    v9 = [*(a1 + 32) libraryAssetProvider];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001657F8;
    v15[3] = &unk_100A09010;
    v10 = *(a1 + 32);
    v18 = &v19;
    v15[4] = v10;
    v11 = v7;
    v16 = v11;
    v12 = v4;
    v17 = v12;
    [v9 resolveLibraryAsset:v3 completion:v15];

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    v13 = *(v20 + 24);
  }

  else
  {
    v13 = 0;
    *(v20 + 24) = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v13 & 1;
}

void sub_1001657DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1001657F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = [*(a1 + 32) libraryItemStateProvider];
    [v5 updateStateToPurchaseFailedForIdentifier:*(a1 + 40)];
  }

  v6 = *(a1 + 48);

  return dispatch_semaphore_signal(v6);
}

uint64_t sub_10016591C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100165A60;
  v11[3] = &unk_100A09088;
  v5 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v8 = v4;
  v15 = v8;
  v16 = &v17;
  [BKUpdatesParameterProvider fetchUpdateParametersForLibraryAsset:v5 completion:v11];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v9;
}

void sub_100165A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100165A60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) libraryAssetProvider];
    v9 = [*(a1 + 48) count] > 1;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100165BD8;
    v13[3] = &unk_100A09060;
    v12 = *(a1 + 32);
    v10 = v12.i64[0];
    v14 = vextq_s8(v12, v12, 8uLL);
    v15 = *(a1 + 56);
    [BKBookPurchaseAction tryToPurchaseBook:v7 libraryAssetProvider:v8 buyParameters:v5 allowPurchaseFromNonSampleBuyButton:1 suppressNetworkEvaluatorDialogs:v9 analyticsInfo:0 completion:v13];
  }

  else
  {
    v11 = BKStoreBookUpdateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10079168C(a1, v6, v11);
    }

    if (v6)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    dispatch_semaphore_signal(*(a1 + 56));
  }
}

intptr_t sub_100165BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [*(a1 + 32) storeController];
    v5 = [*(a1 + 40) storeID];
    [v4 clearAvailableUpdatesForStoreIDAndRefreshUpdateCount:v5];
  }

  v6 = *(a1 + 48);

  return dispatch_semaphore_signal(v6);
}

void sub_100165D50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100791740(v6, v7);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100165E74;
    block[3] = &unk_100A090D8;
    v10 = v5;
    v11 = *(a1 + 56);
    v12 = *(a1 + 48);
    dispatch_async(v8, block);
  }
}

void sub_100165E74(uint64_t a1)
{
  v7 = objc_opt_new();
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    do
    {
      v3 = [*(a1 + 32) objectAtIndexedSubscript:v2];
      if (((*(*(a1 + 40) + 16))() & 1) == 0)
      {
        v4 = [v3 assetID];
        [v7 addObject:v4];
      }

      ++v2;
    }

    while (v2 < [*(a1 + 32) count]);
  }

  v5 = *(a1 + 48);
  v6 = [v7 copy];
  (*(v5 + 16))(v5, v6);
}

void sub_1001661B4(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = v3;
  v5 = &__NSArray0__struct;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = +[JSABridge sharedInstance];
  v8 = *(a1 + 32);
  v10 = v6;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [v7 enqueueValueCall:v8 arguments:v9 file:@"BKJSALibraryManager.m" line:976];
}

void sub_1001663C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = BKLibraryLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1007917B8(v5, v6);
    }
  }

  else
  {
    v6 = [NSMutableSet setWithArray:a2];
    [*(a1 + 32) minusSet:v6];
  }

  v7 = +[JSABridge sharedInstance];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) allObjects];
  v11 = v9;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [v7 enqueueValueCall:v8 arguments:v10 file:@"BKJSALibraryManager.m" line:997];
}

void sub_10016666C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100166684(uint64_t a1)
{
  v5 = +[BKAppDelegate currentSceneController];
  v2 = [v5 newShowAssetTransaction];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100167640(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [BKNotificationOptInStatusController alloc];
  v5 = *(*(a1 + 32) + 16);
  v6 = [v3 authorizationStatus];

  v7 = [(BKNotificationOptInStatusController *)v4 initWithCenter:v5 status:v6];
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = v7;
}

void sub_1001677E8(uint64_t a1, uint64_t a2)
{
  v4 = a2 == 4 || (a2 & 0xFFFFFFFFFFFFFFFELL) == 2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"denied";
    if (v4)
    {
      v5 = @"granted";
    }

    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BKNotificationManager] [Reauthorization] Authorization %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = objc_retainBlock(*(*(&v13 + 1) + 8 * i));
        v12 = v11;
        if (v11)
        {
          (*(v11 + 2))(v11, v4);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void sub_100167A20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[JSABridge sharedInstance];
  v5 = *(a1 + 32);
  v6 = [v3 authorizationStatus];

  v7 = [NSNumber numberWithInteger:v6];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [v4 enqueueValueCall:v5 arguments:v8 file:@"BKNotificationManager.m" line:84];
}

void sub_100167BB0(uint64_t a1, uint64_t a2)
{
  v4 = +[JSABridge sharedInstance];
  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithBool:a2];
  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v4 enqueueValueCall:v5 arguments:v7 file:@"BKNotificationManager.m" line:91];
}

void sub_100167D2C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100AF7770;
  qword_100AF7770 = v1;
}

void sub_100167E14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2);
  }

  if ((a2 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100791958(v5);
  }
}

void sub_100167F2C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 2) < 3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BKNotificationManager] [Reauthorization] Already authorized", &v9, 2u);
    }

    v3 = objc_retainBlock(*(a1 + 40));
    v4 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }

    v5 = v3[2];
LABEL_12:
    v5();
LABEL_13:

    return;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [NSNumber numberWithInteger:a2];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BKNotificationManager] [Reauthorization] Unknown (%@); assuming not authorized", &v9, 0xCu);
      }

      v8 = objc_retainBlock(*(a1 + 40));
      v4 = v8;
      if (!v8)
      {
        goto LABEL_13;
      }

      v5 = v8[2];
      goto LABEL_12;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BKNotificationManager] [Reauthorization] Denied; requesting REauthorization", &v9, 2u);
    }

    sub_100791830(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BKNotificationManager] [Reauthorization] Not determined; requesting authorization", &v9, 2u);
    }

    [*(a1 + 32) requestAuthorizationWithCompletion:*(a1 + 40)];
  }
}

void sub_100168110(uint64_t a1)
{
  v2 = [NSURL URLWithString:UIApplicationOpenNotificationSettingsURLString];
  v3 = *(a1 + 40);
  if (v2)
  {
    if (v3)
    {
      v4 = [*(a1 + 32) reauthorizationCompletions];
      v5 = [*(a1 + 40) copy];
      v6 = objc_retainBlock(v5);
      [v4 addObject:v6];
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BKNotificationManager] [Reauthorization] Bouncing out to Settings app", v9, 2u);
    }

    v7 = +[UIApplication sharedApplication];
    [v7 openURL:v2];
  }

  else
  {
    v8 = objc_retainBlock(v3);
    v7 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }
  }
}

uint64_t sub_1001682EC(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = [a2 authorizationStatus];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

void sub_100168620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bk_window];
  [v4 makeKeyAndVisible];

  v5 = [NSMutableDictionary alloc];
  v6 = [*(a1 + 32) userInfo];
  v11 = [v5 initWithDictionary:v6];

  v7 = [BKSceneControllerUtilities sceneTypekeyForSceneController:v3];
  v8 = +[BKSceneControllerUtilities sceneTypeKey];
  [v11 setObject:v7 forKeyedSubscript:v8];

  v9 = [v3 requestAssetID];

  v10 = +[BKSceneControllerUtilities assetIDKey];
  [v11 setObject:v9 forKeyedSubscript:v10];

  [JSAApplication openAchievementSheet:v11];
}

void sub_100169808(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = [v2 parentViewController];
  [v2 preferredFrameInViewController:v12 newSize:objc_msgSend(*(a1 + 32) isPresented:{"isPresented"), *(a1 + 40), *(a1 + 48)}];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) view];
  [v11 setFrame:{v4, v6, v8, v10}];
}

void sub_100169A48(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) view];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void sub_100169D10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100791AB8(a1, v3, v4);
    }
  }

  (*(*(a1 + 40) + 16))();
}

id sub_10016A240(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setTransform:v3];
}

void sub_10016A8A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_10016A8D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [WeakRetained presentationCompletionBlocks];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = objc_retainBlock(*(*(&v11 + 1) + 8 * v7));
          v9 = v8;
          if (v8)
          {
            (*(v8 + 2))(v8);
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v10 = [v2 presentationCompletionBlocks];
    [v10 removeAllObjects];
  }
}

void sub_10016AA14(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained transitionAnimationController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10016AB04;
  v4[3] = &unk_100A074A8;
  objc_copyWeak(&v7, a1 + 6);
  v5 = a1[4];
  v6 = a1[5];
  [v3 prepareForPresentation:v4];

  objc_destroyWeak(&v7);
}

void sub_10016AB04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10016ABB4;
  v4[3] = &unk_100A03788;
  v4[4] = WeakRetained;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [WeakRetained presentViewController:v3 animated:1 completion:v4];
}

uint64_t sub_10016ABB4(uint64_t a1)
{
  [*(a1 + 32) bc_analyticsVisibilityUpdateSubtree];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10016AE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016AE54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v6 = WeakRetained;
    v4 = [WeakRetained transitionAnimationController];
    v5 = v4;
    if (v3 == 1)
    {
      [v4 setupAnimationsForPresentation];
    }

    else
    {
      [v4 setupAnimationsForDismissal];
    }

    WeakRetained = v6;
  }
}

void sub_10016AEC8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    v8 = WeakRetained;
    v6 = [WeakRetained transitionAnimationController];
    v7 = v6;
    if (v5 == 1)
    {
      [v6 finalizeAnimationsForPresentation:a2];
    }

    else
    {
      [v6 finalizeAnimationsForDismissal:a2];
    }

    [v8 setTransitionAnimationController:0];
    WeakRetained = v8;
  }
}

void sub_10016B30C(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([v8 isInteractive] & 1) == 0 && (objc_msgSend(v8, "isCancelled") & 1) == 0)
  {
    [*(a1 + 32) _willDismissCardWithReason:2];
    if (*(a1 + 40) == 1)
    {
      v3 = [*(a1 + 32) transitionAnimationController];

      if (!v3)
      {
        objc_opt_class();
        v4 = [*(a1 + 32) cardViewController];
        v5 = BUDynamicCast();

        v6 = [[BKEndOfBookCardTransitionAnimationController alloc] initWithCompactViewController:*(a1 + 32) cardViewController:v5];
        [*(a1 + 32) setTransitionAnimationController:v6];
      }

      v7 = [*(a1 + 32) transitionAnimationController];
      [v7 prepareForDismissal];
    }
  }
}

void sub_10016B744(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationController];
  [v2 dismissalTransitionWillBegin];

  v3 = [*(a1 + 32) view];
  [v3 setAlpha:0.0];
}

void sub_10016B85C(uint64_t a1)
{
  [*(a1 + 32) dismiss];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_10016B9E0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 endOfBookCompactViewControllerWantsToCloseAsset:*(a1 + 32) completion:*(a1 + 40)];

  *(*(a1 + 32) + 8) = 0;
}

void sub_10016D7C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[BUAccountsProvider sharedProvider];
  v2 = [v1 activeStoreAccount];
  v3 = [v2 ams_DSID];

  v4 = [WeakRetained currentStoreAccountID];
  LOBYTE(v2) = [v4 isEqual:v3];

  if ((v2 & 1) == 0)
  {
    [WeakRetained setCurrentStoreAccountID:v3];
  }

  [WeakRetained _updateStoreStatus];
}

void sub_10016E188(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_10016E1AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v5)
  {
    v8 = [v5 lastObject];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 storeDownloadParameters];
      [WeakRetained _executePurchaseOfBookWithParameters:v10 storeID:*(a1 + 32) isAudiobook:objc_msgSend(*(a1 + 40) suppressNetworkEvaluatorDialogs:"isAudiobook") shouldSuppressError:*(a1 + 72) analyticsInfo:1 completion:{*(a1 + 48), *(a1 + 56)}];
    }

    else
    {
      v13 = BKLibraryDataSourceJaliscoLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100791BBC(a1, v13);
      }

      v14 = objc_retainBlock(*(a1 + 56));
      v15 = v14;
      if (v14)
      {
        (*(v14 + 2))(v14, 0, 0);
      }
    }
  }

  else
  {
    v11 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100791C38(a1, v6, v11);
    }

    v12 = objc_retainBlock(*(a1 + 56));
    v9 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0, v6);
    }
  }
}

void sub_10016E32C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    [*(a1 + 64) _executePurchaseOfBookWithParameters:v8 storeID:*(a1 + 32) isAudiobook:objc_msgSend(*(a1 + 40) suppressNetworkEvaluatorDialogs:"isAudiobook") shouldSuppressError:*(a1 + 72) analyticsInfo:1 completion:{*(a1 + 48), *(a1 + 56)}];
  }

  else
  {
    v6 = objc_retainBlock(*(a1 + 56));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, 0, v5);
    }
  }
}

void sub_10016E52C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016E554(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8 = *(a1 + 56);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10016E66C;
    v11[3] = &unk_100A03520;
    v12 = v9;
    [WeakRetained _executePurchaseOfBookWithParameters:v5 storeID:v12 isAudiobook:v8 suppressNetworkEvaluatorDialogs:0 shouldSuppressError:0 analyticsInfo:v10 completion:v11];
  }

  else
  {
    WeakRetained = BKStoreBookUpdateLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      sub_100791CB4(a1, v6, WeakRetained);
    }
  }
}

void sub_10016E66C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[BKAppDelegate delegate];
    v4 = [v3 storeController];

    [v4 clearAvailableUpdatesForStoreIDAndRefreshUpdateCount:*(a1 + 32)];
  }
}

void sub_10016E884(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100791D30(v6, v7, v8);
  }

  if (v7 && (*(a1 + 40) & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016E9A0;
    block[3] = &unk_100A033C8;
    v12 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }

  v9 = objc_retainBlock(*(a1 + 32));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v7 == 0, v7);
  }
}

void sub_10016E9A0(uint64_t a1)
{
  v1 = [*(a1 + 32) localizedDescription];
  v6 = [UIAlertController alertControllerWithTitle:v1 message:0 preferredStyle:1];

  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
  v4 = [UIAlertAction actionWithTitle:v3 style:0 handler:0];
  [v6 addAction:v4];

  v5 = +[BKAppDelegate currentSceneController];
  [v5 presentViewController:v6 animated:1 completion:0];
}

void *sub_10016F444(void *result)
{
  v1 = result[4];
  if (!*(v1 + 8))
  {
    v2 = result;
    v3 = [*(v1 + 16) isInLibrary];
    v4 = v2[4];
    if (v3)
    {

      return [v4 decideAboutOpeningTheNextBook];
    }

    else
    {
      result = [v4[2] goToLibrary];
      *(v2[4] + 8) = 8;
    }
  }

  return result;
}

void *sub_10016F540(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 8);
  if (v2 == 5)
  {
    v3 = result;
    result = [*(v1 + 16) goToFirstPage];
    *(v3[4] + 8) = 9;
  }

  else if (v2 == 6)
  {
    *(v1 + 8) = 4;
  }

  return result;
}

_DWORD *sub_10016F628(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[2] == 8)
  {
    return [result decideAboutOpeningTheNextBook];
  }

  return result;
}

void *sub_10016F6CC(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 8);
  if (v2 == 4)
  {
    v3 = result;
    result = [*(v1 + 16) goToFirstPage];
    *(v3[4] + 8) = 9;
  }

  else if (v2 == 6)
  {
    *(v1 + 8) = 5;
  }

  return result;
}

_DWORD *sub_10016F7B4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[2] == 7)
  {
    result = [result sleepBeforeSnapshot];
    *(*(a1 + 32) + 8) = 2;
  }

  return result;
}

void *sub_10016F880(void *result)
{
  v1 = result[4];
  if (*(v1 + 8) == 7)
  {
    v2 = result;
    v3 = [*(v1 + 16) isLooping];
    v4 = *(v2[4] + 16);
    if (v3)
    {
      result = [v4 goToFirstPage];
      v5 = 10;
    }

    else
    {
      [v4 terminateBookTest];
      result = [*(v2[4] + 16) goToLibrary];
      v5 = 8;
    }

    *(v2[4] + 8) = v5;
  }

  return result;
}

_DWORD *sub_10016F980(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[2];
  if (v3 == 10)
  {
    result = [result sleepBeforeSnapshot];
    v4 = 2;
  }

  else
  {
    if (v3 != 9)
    {
      return result;
    }

    result = [result sleepBeforePagination];
    v4 = 3;
  }

  *(*(a1 + 32) + 8) = v4;
  return result;
}

void sub_100170270(uint64_t a1)
{
  v1 = [*(a1 + 32) onReceiveHandler];
  v1[2]();
}

void sub_1001704DC(uint64_t a1, void *a2)
{
  v3 = [a2 rootBarCoordinator];
  [*(a1 + 32) _startTestWithRootBarCoordinating:v3];
}

BOOL sub_100170A50(id a1, TUIFeedEntry *a2, unint64_t a3, BOOL *a4)
{
  v5 = [(TUIFeedEntry *)a2 templateURL];
  v6 = [v5 lastPathComponent];
  v7 = [v6 isEqualToString:@"swoosh-root.xml"];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

void sub_100170ABC(uint64_t a1)
{
  v2 = [*(a1 + 32) hostingViewController];
  v3 = [v2 bc_firstVisibleChildViewControllerOfClass:objc_opt_class() includePresented:1];

  [v3 popAllCardsAnimated:0 completion:&stru_100A09318];
  v4 = sub_1001E65B0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "waiting 2s for product page to open", buf, 2u);
  }

  v5 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100170C1C;
  block[3] = &unk_100A03A30;
  v6 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v8 = v6;
  v9 = *(a1 + 56);
  dispatch_after(v5, &_dispatch_main_q, block);
}

void sub_100170C1C(uint64_t a1)
{
  [*(a1 + 32) setStartPPTTestCalled:1];
  [*(a1 + 32) startPPTTest];
  v2 = [*(a1 + 40) delegate];
  [v2 feedEntry:*(a1 + 40) handleBehavior:0 name:@"GOTO_BOOK" arguments:*(a1 + 48)];
}

void sub_100170F30(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100AF7780;
  qword_100AF7780 = v1;
}

id sub_100171128(uint64_t a1)
{
  [*(a1 + 32) _updateWithNewOffer];
  v2 = *(a1 + 32);

  return [v2 setUpgradeFlowManagerFuture:0];
}

void sub_100171504(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    sub_100791E84();
  }

  v4 = [*(a1 + 32) observers];
  [v4 addObject:*(a1 + 40)];
}

void sub_100171644(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) observers];
    [v4 removeObject:*(a1 + 40)];
  }
}

void sub_100171754(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) observers];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) cloudStorageUpgradeSheetWasDismissed];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100171B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100171BB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100171C6C;
  v5[3] = &unk_100A04058;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100171C6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained tableView];
  [v3 reloadData];

  v4 = objc_retainBlock(*(a1 + 32));
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

void sub_100172E34(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = [*(a1 + 32) indexPathsForVisibleRows];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100172EF4;
  v4[3] = &unk_100A09380;
  v5 = *(a1 + 32);
  v6 = v2;
  [v3 enumerateObjectsUsingBlock:v4];
}

void sub_100172EF4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) cellForRowAtIndexPath:a2];
  v4 = [v3 detailTextLabel];

  [v4 setAlpha:*(a1 + 40)];
}

void sub_100172F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [NSIndexPath indexPathForRow:a3 inSection:0];
    [v5 addObject:v6];
  }
}

void sub_100172FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [NSIndexPath indexPathForRow:a3 inSection:0];
    [v5 addObject:v6];
  }
}

void sub_100173078(uint64_t a1)
{
  v2 = UIAccessibilityLayoutChangedNotification;
  v4 = [*(a1 + 32) tableView];
  v3 = [v4 cellForRowAtIndexPath:*(a1 + 40)];
  UIAccessibilityPostNotification(v2, v3);
}

id sub_1001730F0(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) deleteRowsAtIndexPaths:*(a1 + 32) withRowAnimation:*(a1 + 56)];
  }

  result = [*(a1 + 48) count];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 insertRowsAtIndexPaths:v4 withRowAnimation:v5];
  }

  return result;
}

void sub_100173158(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10017345C(uint64_t a1)
{
  if (([*(a1 + 32) isTextEditing] & 1) == 0)
  {
    v2 = [*(a1 + 32) _addCollectionIndexPath];
    *(*(a1 + 32) + 17) = 1;
    *(*(a1 + 32) + 24) = 0;
    v3 = [*(a1 + 32) tableView];
    v7 = v2;
    v4 = [NSArray arrayWithObjects:&v7 count:1];
    [v3 reloadRowsAtIndexPaths:v4 withRowAnimation:5];

    [*(a1 + 40) scrollToRowAtIndexPath:v2 atScrollPosition:3 animated:0];
    [*(a1 + 40) layoutIfNeeded];
    v5 = [*(a1 + 32) textEntryCell];
    v6 = [v5 textEntryField];
    [v6 becomeFirstResponder];
  }
}

void sub_100173750(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    v3 = [NSArray arrayWithObjects:&v7 count:1];
    if (*(a1 + 49))
    {
      v4 = 0;
    }

    else
    {
      v4 = 5;
    }

    [v2 insertRowsAtIndexPaths:v3 withRowAnimation:v4];
  }

  else
  {
    v6 = *(a1 + 40);
    v3 = [NSArray arrayWithObjects:&v6 count:1];
    if (*(a1 + 49))
    {
      v5 = 0;
    }

    else
    {
      v5 = 5;
    }

    [v2 deleteRowsAtIndexPaths:v3 withRowAnimation:v5];
  }
}

void sub_100173CB8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 hidden];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

void sub_100173E40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained includeHiddenInPrefixCollections])
    {
      v4 = objc_alloc_init(NSMutableArray);
      v5 = *(a1 + 32);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1001741CC;
      v32[3] = &unk_100A09420;
      v32[4] = v3;
      v6 = v4;
      v33 = v6;
      [v5 enumerateObjectsUsingBlock:v32];
      [v3 invalidatePrefixCollections];
      if ([v6 count])
      {
        [v3 tableView];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100174230;
        v30 = v29[3] = &unk_100A03440;
        v31 = v6;
        v7 = v30;
        [v7 performBatchUpdates:v29 completion:0];
      }
    }

    else
    {
      v6 = [v3 prefixCollections];
      [v3 invalidatePrefixCollections];
      v8 = [v3 prefixCollections];
      v9 = [[NSSet alloc] initWithArray:v6];
      v10 = [[NSSet alloc] initWithArray:v8];
      v11 = objc_alloc_init(NSMutableArray);
      v12 = objc_alloc_init(NSMutableArray);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100174240;
      v26[3] = &unk_100A093A8;
      v13 = v10;
      v27 = v13;
      v14 = v11;
      v28 = v14;
      [v6 enumerateObjectsUsingBlock:v26];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1001742CC;
      v23[3] = &unk_100A093A8;
      v15 = v9;
      v24 = v15;
      v16 = v12;
      v25 = v16;
      [v8 enumerateObjectsUsingBlock:v23];
      if ([v14 count] || objc_msgSend(v16, "count"))
      {
        v17 = [v3 tableView];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100174358;
        v19[3] = &unk_100A03A30;
        v20 = v14;
        v21 = v17;
        v22 = v16;
        v18 = v17;
        [v18 performBatchUpdates:v19 completion:0];
      }
    }
  }
}

void sub_1001741CC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _indexPathForCollectionID:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

void sub_100174240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [NSIndexPath indexPathForRow:a3 inSection:0];
    [v5 addObject:v6];
  }
}

void sub_1001742CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [NSIndexPath indexPathForRow:a3 inSection:0];
    [v5 addObject:v6];
  }
}

id sub_100174358(id *a1)
{
  if ([a1[4] count])
  {
    [a1[5] deleteRowsAtIndexPaths:a1[4] withRowAnimation:0];
  }

  result = [a1[6] count];
  if (result)
  {
    v3 = a1[5];
    v4 = a1[6];

    return [v3 insertRowsAtIndexPaths:v4 withRowAnimation:0];
  }

  return result;
}

void sub_1001746CC(uint64_t a1, void *a2)
{
  v3 = [a2 filteredSetUsingPredicate:*(a1 + 32)];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v8 = BUDynamicCast();
        v9 = [v8 collectionID];
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v11 = [v8 collection];
          v10 = [v11 collectionID];

          if (!v10)
          {
            goto LABEL_10;
          }
        }

        [*(a1 + 40) addObject:v10];

LABEL_10:
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

void sub_100174838(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = [WeakRetained collectionAssetCounts];
      if (v4)
      {
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v5 = *(a1 + 32);
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v12;
          do
          {
            v9 = 0;
            do
            {
              if (*v12 != v8)
              {
                objc_enumerationMutation(v5);
              }

              [v4 setObject:0 forKeyedSubscript:{*(*(&v11 + 1) + 8 * v9), v11}];
              v9 = v9 + 1;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
          }

          while (v7);
        }

        v10 = [v3 coalescedTableViewReloadData];
        [v10 signalWithCompletion:&stru_100A09468];
      }
    }
  }
}

void sub_100174F5C(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 scrollToRowAtIndexPath:*(a1 + 40) atScrollPosition:2 animated:0];
}

id sub_1001751F4(uint64_t a1)
{
  [*(a1 + 32) setTitle:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setStyle:v2];
}

void sub_10017562C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) mutableCollectionWithCollectionID:*(a1 + 40) inManagedObjectContext:a2 error:0];
  [v4 setTitle:*(a1 + 48)];
  v3 = +[NSDate date];
  [v4 setLastModification:v3];
}

void sub_100175AEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v4 = +[BKLibraryManager predicateFor_All_Finished_LibraryAssets];
  [v6 setPredicate:v4];

  v5 = [v3 executeFetchRequest:v6 error:0];

  *(*(*(a1 + 32) + 8) + 24) = [v5 count];
}

void sub_100175BB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollectionMember"];
  v4 = [BKLibraryManager predicateForCollectionMembersInCollectionID:*(a1 + 32) hideUnownedItems:0];
  [v6 setPredicate:v4];

  v5 = [v3 executeFetchRequest:v6 error:0];

  *(*(*(a1 + 40) + 8) + 24) = [v5 count];
}

void sub_100175EEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 collectionID];
  v8 = [v3 mutableCollectionWithCollectionID:v6 inManagedObjectContext:v5 error:0];

  if (*(a1 + 48))
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  [v8 setHidden:v7];
}

void sub_100176480(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100791F08(a1, v4);
  }
}

void sub_100176A70(uint64_t a1)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [*(a1 + 32) items];
  v2 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v2)
  {
    v3 = v2;
    v24 = *v26;
    do
    {
      v4 = 0;
      do
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * v4);
        objc_opt_class();
        v6 = [v5 dragItem];
        v7 = [v6 localObject];
        v8 = BUDynamicCast();

        objc_opt_class();
        v9 = [v5 dragItem];
        v10 = [v9 localObject];
        v11 = BUDynamicCast();

        objc_opt_class();
        v12 = [v5 dragItem];
        v13 = [v12 localObject];
        v14 = BUDynamicCast();

        v15 = [v14 assetID];
        v16 = [v15 length];

        if (v16)
        {
          v17 = +[BKLibraryManager defaultManager];
          v18 = [v14 assetID];
          v19 = [v17 libraryAssetOnMainQueueWithAssetID:v18];

          v8 = v19;
        }

        if (v8 | v11)
        {
          v20 = *(a1 + 32);
          v21 = [v5 dragItem];
          v22 = [v20 dropItem:v21 intoRowAtIndexPath:*(a1 + 40) rect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
        }

        v4 = v4 + 1;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v3);
  }
}

void sub_100176D08(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    v2 = [*(a1 + 32) collectionID];
    v3 = [v2 isEqualToString:kBKCollectionDefaultIDFinished];

    if (v3)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v4 = *(a1 + 40);
      v5 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v32;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v32 != v7)
            {
              objc_enumerationMutation(v4);
            }

            objc_opt_class();
            v9 = BUDynamicCast();
            if (([v9 isContainer] & 1) == 0)
            {
              [v9 setFinishedStateAddToFinishedCollection];
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v6);
      }

      v10 = +[BKLibraryManager defaultManager];
      v11 = [v10 uiChildContext];

      [v11 setSaveContext:2];
      if ([v11 hasChanges])
      {
        [v11 saveLibrary];
      }
    }

    else
    {
      v12 = [*(a1 + 32) collectionID];
      v13 = [v12 isEqualToString:kBKCollectionDefaultIDWantToRead];

      if (v13)
      {
        v14 = +[NSMutableArray array];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = *(a1 + 40);
        v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v28;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v28 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v27 + 1) + 8 * j);
              if (([v20 isContainer] & 1) == 0)
              {
                [v14 addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v17);
        }

        [*(a1 + 32) addLibraryAssets:v14];
        v21 = *(a1 + 48);
        v22 = *(a1 + 56);
        v23 = [*(a1 + 32) collectionID];
        [v21 _addStoreItems:v22 toCollection:v23];
      }

      else
      {
        [*(a1 + 32) addLibraryAssets:*(a1 + 40)];
        v24 = *(a1 + 48);
        v25 = *(a1 + 56);
        v26 = [*(a1 + 32) collectionID];
        [v24 _addStoreItems:v25 toCollection:?];
      }
    }
  }
}

void sub_100177938(id a1, BKLibraryCollectionsListViewController *a2, NSIndexPath *a3, id a4)
{
  objc_initWeak(&location, a2);
  v6 = a3;
  v7 = a4;
  v8 = objc_loadWeakRetained(&location);
  v9 = v8;
  if (v8 && ([v8 _collectionForIndexPath:v6], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v11 = +[BKLibraryManager defaultManager];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100177C64;
    v29[3] = &unk_100A04CC8;
    v32 = &v33;
    v12 = v9;
    v30 = v12;
    v13 = v10;
    v31 = v13;
    [v11 performBlockInUIContext:v29];

    if (v34[3])
    {
      v14 = [v12 delegate];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100177C9C;
      v23[3] = &unk_100A09570;
      v15 = v12;
      v24 = v15;
      v25 = v13;
      v28 = &v33;
      v26 = v6;
      v27 = v7;
      v16 = [v14 collectionListView:v15 alertControllerForDeletingCollection:v25 completionHandler:v23];

      [v15 presentViewController:v16 animated:1 completion:0];
      v17 = v24;
    }

    else
    {
      v19 = +[BAEventReporter sharedReporter];
      v20 = [v12 ba_effectiveAnalyticsTracker];
      v21 = [v13 collectionID];
      [v19 emitCollectionRemoveEventWithTracker:v20 collectionID:v21 collectionItemCount:v34[3]];

      [v12 _concludeDeleteAtIndexPath:v6];
      v22 = objc_retainBlock(v7);
      v17 = v22;
      if (v22)
      {
        (*(v22 + 2))(v22, 1);
      }
    }

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v18 = objc_retainBlock(v7);
    v13 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, 0);
    }
  }

  objc_destroyWeak(&location);
}

void sub_100177C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  objc_destroyWeak((v26 - 104));
  _Unwind_Resume(a1);
}

id sub_100177C64(uint64_t a1)
{
  result = [*(a1 + 32) p_assetCountForCollection:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_100177C9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = +[BAEventReporter sharedReporter];
    v5 = [*(a1 + 32) ba_effectiveAnalyticsTracker];
    v6 = [*(a1 + 40) collectionID];
    [v4 emitCollectionRemoveEventWithTracker:v5 collectionID:v6 collectionItemCount:*(*(*(a1 + 64) + 8) + 24)];

    [*(a1 + 32) _concludeDeleteAtIndexPath:*(a1 + 48)];
  }

  v7 = objc_retainBlock(*(a1 + 56));
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))(v7, a2);
    v7 = v8;
  }
}

void sub_100177D84(id a1, BKLibraryCollectionsListViewController *a2, NSIndexPath *a3, id a4)
{
  objc_initWeak(&location, a2);
  v6 = a3;
  v7 = a4;
  v8 = objc_loadWeakRetained(&location);
  [v8 _concludeHide:1 atIndexPath:v6];

  v9 = objc_retainBlock(v7);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 1);
  }

  objc_destroyWeak(&location);
}

void sub_10017812C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100178154(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7 = +[BKLibraryCollectionsListViewController deleteActionHandler];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7[2](v7, WeakRetained, *(a1 + 32), v5);
}

void sub_100178350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100178378(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7 = +[BKLibraryCollectionsListViewController hideActionHandler];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7[2](v7, WeakRetained, *(a1 + 32), v5);
}

void sub_100178AC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 32))
  {
    v8 = WeakRetained;
    v3 = [WeakRetained tableView];
    v4 = [v3 numberOfSections];
    if (v4 > [*(a1 + 32) section])
    {
      v5 = [v8 tableView];
      v6 = [v5 numberOfRowsInSection:{objc_msgSend(*(a1 + 32), "section")}];
      v7 = [*(a1 + 32) row];

      WeakRetained = v8;
      if (v6 <= v7)
      {
        goto LABEL_7;
      }

      v3 = [v8 tableView];
      [v3 scrollToRowAtIndexPath:*(a1 + 32) atScrollPosition:2 animated:*(a1 + 48)];
    }

    WeakRetained = v8;
  }

LABEL_7:
}

id sub_100179790(uint64_t a1, void *a2)
{
  v3 = [a2 collectionID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_1001797D4(uint64_t a1, void *a2)
{
  v3 = [a2 collectionID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10017A824(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [v1 reloadRowsAtIndexPaths:v2 withRowAnimation:0];
}

void sub_10017AB14(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) cellForRowAtIndexPath:?];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 imageView];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = [v4 textLabel];
    v9 = [v8 font];
    [v9 pointSize];
    v10 = [v6 _iconForIndexPath:v13 metrics:v7 pointSize:?];
    [v5 setImage:v10];

    v11 = [*(a1 + 40) _iconColorForIndexPath:v13 metrics:*(a1 + 48)];
    [v5 setTintColor:v11];

    objc_opt_class();
    v12 = BUDynamicCast();
    [v12 setMetrics:*(a1 + 48)];
  }
}

int64_t sub_10017D0C4(id a1, UIAccessibilityLocationDescriptor *a2, UIAccessibilityLocationDescriptor *a3)
{
  v4 = a3;
  [(UIAccessibilityLocationDescriptor *)a2 point];
  v6 = v5;
  [(UIAccessibilityLocationDescriptor *)v4 point];
  v8 = v7;

  return v6 > v8;
}

void sub_10017FD9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [UIImage imageWithData:a2];
    v7 = v6;
    if (v6)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10017FE9C;
      v8[3] = &unk_100A03440;
      v8[4] = *(a1 + 32);
      v7 = v6;
      v9 = v7;
      dispatch_async(&_dispatch_main_q, v8);
    }
  }

  else
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100792018(v5, v7);
    }
  }
}

void sub_100180354(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 libraryMutableAssetWithAssetID:v4 inManagedObjectContext:v5];
  [v6 setTitle:*(a1 + 48)];
  [v6 setSortTitle:*(a1 + 48)];
  [v6 setAuthor:*(a1 + 56)];
  [v6 setSortAuthor:*(a1 + 56)];
  v16 = 0;
  [v5 save:&v16];

  v7 = v16;
  if (v7)
  {
    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      *buf = 141559042;
      v18 = 1752392040;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[MetadataEditor updateTitle] assetID:%{mask.hash}@ newTitle:%@ author:%@ error:%@", buf, 0x34u);
    }
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 64) updatedCoverImageData];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100180540;
  v14[3] = &unk_100A09698;
  v15 = *(a1 + 40);
  [v9 updateAsset:v6 coverArt:v10 completion:v14];
}

void sub_100180540(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = +[BCCacheManager defaultCacheManager];
  [v8 incrementVersionForIdentifier:*(a1 + 32)];
  v9 = BKLibraryLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = 141558786;
    v12 = 1752392040;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MetadataEditor updateTitle] FINISH assetID:%{mask.hash}@ asset:%@ error:%@", &v11, 0x2Au);
  }
}

void sub_100180D84(uint64_t a1)
{
  [*(a1 + 32) size];
  v4 = v2 / v3;
  v5 = v4 * 56.0;
  v6 = 298.0 / v4;
  if (v5 <= 298.0)
  {
    v7 = 56.0;
  }

  else
  {
    v7 = v6;
  }

  if (v5 <= 298.0)
  {
    v8 = v5;
  }

  else
  {
    v8 = 298.0;
  }

  v9 = [*(a1 + 40) coverHeightConstraint];
  [v9 setConstant:v7];

  v10 = [*(a1 + 40) coverWidthConstraint];
  [v10 setConstant:v8];

  v12 = [[UIImageView alloc] initWithImage:*(a1 + 32)];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setContentMode:1];
  [*(a1 + 40) _updateCoverView:v12];
  v11 = UIImageJPEGRepresentation(*(a1 + 32), 0.9);
  [*(a1 + 40) setUpdatedCoverImageData:v11];
}

void sub_100180E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setBool:a3 forKey:@"BKMetadatEditorSkipReplaceCoverConfirmation"];

  if (!a2)
  {
    v7 = *(*(a1 + 32) + 16);

    v7();
  }
}

void sub_100181E34(uint64_t a1, void *a2)
{
  v3 = [a2 bookController];
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = v3;

  if (!*(*(a1 + 32) + 80))
  {
    v6 = +[BKTestDriverDispatcher shared];
    [v6 subscribeForBookController:*(a1 + 32)];
  }
}

void sub_100181F64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 80);
  v4 = (v2 + 80);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
    if ([*(a1 + 32) running])
    {
      v6 = *(a1 + 32);
      if (v6[10])
      {
        v7 = [v6 onReceiveHandler];

        if (v7)
        {
          v8 = +[BKTestDriverDispatcher shared];
          [v8 unsubscribe:*(a1 + 32)];

          v9 = [*(a1 + 32) onReceiveHandler];
          v9[2]();
        }
      }
    }
  }
}

void sub_1001823B0(id a1)
{
  v1 = objc_alloc_init(BKBookCacheController);
  v2 = qword_100AF7788;
  qword_100AF7788 = v1;
}

void sub_10018299C(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100182A84;
  block[3] = &unk_100A05A78;
  v4 = *(a1 + 32);
  v6 = v7;
  v5 = *(a1 + 40);
  dispatch_async(v2, block);

  _Block_object_dispose(v7, 8);
}

void sub_100182A84(uint64_t a1)
{
  v4 = *(a1 + 32);
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, v4, 0);
  }
}

id sub_10018318C(uint64_t a1)
{
  [*(a1 + 32) setTransition:*(a1 + 40)];
  [*(a1 + 32) setCompletion:*(a1 + 56)];
  v2 = [*(a1 + 32) contentViewController];
  [*(a1 + 32) setSourceViewController:v2];

  [*(a1 + 32) setWallpaperAssertion:0];
  [*(a1 + 32) setTransitioning:1];
  v3 = [*(a1 + 32) view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 48) viewIfLoaded];
  [v12 setFrame:{v5, v7, v9, v11}];

  [*(a1 + 32) willChangeValueForKey:@"contentViewController"];
  v13 = [*(a1 + 32) navController];
  v14 = v13;
  if (*(a1 + 48))
  {
    v17 = *(a1 + 48);
    v15 = [NSArray arrayWithObjects:&v17 count:1];
    [v14 setViewControllers:v15 animated:1];
  }

  else
  {
    [v13 setViewControllers:&__NSArray0__struct animated:1];
  }

  return [*(a1 + 32) didChangeValueForKey:@"contentViewController"];
}

uint64_t sub_100183808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_100183B50(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyObserversOfReload:v3];
}

void sub_100183CA4(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_100183DB0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) observers];
    [v4 removeObject:*(a1 + 40)];
  }
}

void sub_100183F00(uint64_t a1)
{
  v9 = [*(a1 + 32) _assetCacheForType:*(a1 + 48)];
  v2 = [v9 cachedAssetIDs];
  v3 = [NSArray arrayWithArray:v2];

  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) bookletAssetCache];
    v5 = [v4 allBookletAssetIDs];

    v6 = objc_retainBlock(*(a1 + 40));
    if (v6)
    {
      v7 = [v3 arrayByAddingObjectsFromArray:v5];
      v6[2](v6, v7, 0);
    }
  }

  else
  {
    v8 = objc_retainBlock(*(a1 + 40));
    v5 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, v3, 0);
    }
  }
}

void sub_10018413C(uint64_t a1)
{
  v5 = [*(a1 + 32) _assetCacheForType:*(a1 + 56)];
  v2 = [v5 assetsFromAssetIDs:*(a1 + 40)];
  v3 = objc_retainBlock(*(a1 + 48));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v2, 0);
  }
}

void sub_1001842A4(uint64_t a1)
{
  v2 = [*(a1 + 32) _assetCacheForType:*(a1 + 56)];
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  if ([*(a1 + 40) count])
  {
    v5 = 0;
    *&v4 = 138412290;
    v13 = v4;
    do
    {
      v6 = [*(a1 + 40) objectAtIndexedSubscript:{v5, v13}];
      v7 = [v2 assetFromAssetID:v6];
      if (v7)
      {
        [v3 addObject:v7];
      }

      else
      {
        if (*(a1 + 64) == 1)
        {
          v8 = [*(a1 + 32) bookletAssetCache];
          v9 = [v8 bookletAssetForAssetID:v6];

          if (v9)
          {
            [v3 addObject:v9];
          }

          else
          {
            v10 = BKLibraryDataSourceMediaLibraryLog();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = v13;
              v15 = v6;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find a booklet or mediaLibrary asset with assetID %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v9 = BKLibraryDataSourceMediaLibraryLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = v13;
            v15 = v6;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not find an asset with assetID %@", buf, 0xCu);
          }
        }
      }

      ++v5;
    }

    while (v5 < [*(a1 + 40) count]);
  }

  v11 = objc_retainBlock(*(a1 + 48));
  if (v11)
  {
    v12 = [v3 copy];
    v11[2](v11, v12, 0);
  }
}