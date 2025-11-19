void sub_1000021C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53)
{
  objc_destroyWeak((v53 + 40));
  objc_destroyWeak((v54 + 40));
  objc_destroyWeak((v56 + 48));
  objc_destroyWeak((v55 + 48));
  objc_destroyWeak(&a45);
  objc_destroyWeak(&a53);
  objc_destroyWeak((v57 - 200));
  _Block_object_dispose((v57 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100002250(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000231C;
  block[3] = &unk_10000C3D8;
  objc_copyWeak(&v7, &location);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_10000231C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [[PKTransitBalanceModel alloc] initWithPass:WeakRetained[20]];
    v4 = *(v5 + 22);
    *(v5 + 22) = v3;

    [*(v5 + 22) setDynamicBalances:*(a1 + 32)];
    WeakRetained = v5;
  }
}

uint64_t sub_1000023B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000023CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v7[2](v7, v6, 1);
    goto LABEL_10;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_9;
  }

  v9 = PKCurrentUserAltDSID();
  if ((PKEqualObjects() & 1) != 0 || (WeakRetained[145] & 1) == 0)
  {

    goto LABEL_9;
  }

  v10 = *(WeakRetained + 24);

  if (v10)
  {
LABEL_9:
    v7[2](v7, v6, 0);
    goto LABEL_10;
  }

  v11 = *(WeakRetained + 4);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002550;
  v13[3] = &unk_10000C450;
  v12 = *(a1 + 40);
  v13[4] = *(a1 + 48);
  v16 = v7;
  v14 = v6;
  v15 = *(a1 + 32);
  [v11 accountUsersForAccountWithIdentifier:v12 completion:v13];

LABEL_10:
}

void sub_100002550(id *a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, a1[4]);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002654;
  v5[3] = &unk_10000C428;
  objc_copyWeak(&v10, &location);
  v9 = a1[7];
  v6 = a1[5];
  v7 = v3;
  v8 = a1[6];
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_100002654(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v2 = [[PKAccountUserCollection alloc] initWithAccountUsers:*(a1 + 40)];
    v3 = [v2 accountUserWithAltDSID:*(a1 + 48)];
    v4 = WeakRetained[24];
    WeakRetained[24] = v3;

    v5 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100002714(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v9 = PKCurrentUserAltDSID();
      if (PKEqualObjects())
      {
      }

      else
      {
        v10 = WeakRetained[23];

        if (!v10)
        {
          v11 = WeakRetained[1];
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_100002888;
          v12[3] = &unk_10000C4C8;
          v12[4] = *(a1 + 40);
          v15 = v7;
          v13 = v6;
          v14 = *(a1 + 32);
          [v11 familyMembersWithCompletion:v12];

          goto LABEL_8;
        }
      }
    }

    (*(v7 + 2))(v7, v6, 0);
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }

LABEL_8:
}

void sub_100002888(id *a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, a1[4]);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000298C;
  v5[3] = &unk_10000C428;
  objc_copyWeak(&v10, &location);
  v9 = a1[7];
  v6 = a1[5];
  v7 = v3;
  v8 = a1[6];
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_10000298C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100002A90;
    v9[3] = &unk_10000C4A0;
    v3 = *(a1 + 40);
    v10 = *(a1 + 48);
    v4 = [v3 pk_objectsPassingTest:v9];
    v5 = [v4 firstObject];
    v6 = WeakRetained[23];
    WeakRetained[23] = v5;

    v7 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t sub_100002A90(uint64_t a1, void *a2)
{
  v3 = [a2 altDSID];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

void sub_100002B14(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 1);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002C20;
    v12[3] = &unk_10000C540;
    v11 = *(a1 + 32);
    v12[4] = *(a1 + 40);
    v14 = v7;
    v13 = v6;
    [v10 transactionWithTransactionIdentifier:v11 completion:v12];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

void sub_100002C20(id *a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, a1[4]);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002D10;
  block[3] = &unk_10000C518;
  objc_copyWeak(&v9, &location);
  v8 = a1[6];
  v6 = a1[5];
  v7 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_100002D10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 26, *(a1 + 40));
  }

  v3 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

void sub_100002D94(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 145) == 1 && WeakRetained[26])
    {
      if (!WeakRetained[24] || (v10 = [[PKTransactionSource alloc] initWithAccountUser:WeakRetained[24]]) == 0)
      {
        v10 = [[PKTransactionSource alloc] initWithPaymentPass:*(v9 + 20)];
      }

      v22 = v10;
      v11 = [[PKTransactionSourceCollection alloc] initWithTransactionSource:v10];
      v21 = [*(v9 + 26) transactionDate];
      v12 = PKStartOfMonth();
      v13 = PKStartOfNextMonth();
      v14 = [v13 dateByAddingTimeInterval:-1.0];

      v15 = *(v9 + 1);
      v16 = [v11 transactionSourceIdentifiers];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10000300C;
      v23[3] = &unk_10000C590;
      v23[4] = *(a1 + 32);
      v28 = v7;
      v17 = v6;
      v29 = *(a1 + 40);
      v24 = v17;
      v25 = v11;
      v26 = v12;
      v27 = v14;
      v18 = v14;
      v19 = v12;
      v20 = v11;
      [v15 transactionsForTransactionSourceIdentifiers:v16 withTransactionSource:0 withBackingData:1 startDate:v19 endDate:v18 orderedByDate:1 limit:0 completion:v23];
    }

    else
    {
      (*(v7 + 2))(v7, v6, 0);
    }
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

void sub_10000300C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000315C;
  block[3] = &unk_10000C568;
  objc_copyWeak(&v17, &location);
  v4 = *(a1 + 72);
  v5 = *(a1 + 40);
  v16 = *(a1 + 80);
  v12 = v5;
  v13 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = *(a1 + 64);
  *(&v8 + 1) = v4;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v14 = v9;
  v15 = v8;
  v10 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void sub_10000315C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = [WeakRetained[26] currencyCode];
    v6 = [PKSpendingSummaryFetcher summaryWithTransactions:v3 transactionSourceCollection:v4 accountUser:0 currency:v5 type:1 startDate:*(a1 + 56) endDate:*(a1 + 64) lastSummary:0];
    v7 = *(*(a1 + 80) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(a1 + 32);
  (*(*(a1 + 72) + 16))();
}

void sub_100003240(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      objc_initWeak(&location, WeakRetained);
      v11 = WeakRetained[4];
      v12 = *(a1 + 32);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000033C4;
      v13[3] = &unk_10000C5E0;
      objc_copyWeak(&v16, &location);
      v15 = v9;
      v14 = v8;
      [v11 accountWithIdentifier:v12 completion:v13];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(v9 + 2))(v9, v8, 0);
    }
  }

  else
  {
    (*(v9 + 2))(v9, v8, 1);
  }
}

void sub_1000033A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000033C4(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 25, a2);
  }

  else
  {
    v6 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100003454(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000034EC;
  v2[3] = &unk_10000C630;
  objc_copyWeak(&v3, (a1 + 40));
  v2[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
}

void sub_1000034EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setupWithTransaction:WeakRetained[26] monthlySummary:*(*(*(a1 + 32) + 8) + 40)];
    WeakRetained = v3;
  }
}

id sub_100004EDC(uint64_t a1, void *a2)
{
  v3 = [a2 identifiers];
  v4 = [*(a1 + 32) identifiers];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_100005780(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v3 = [WeakRetained[25] accountIdentifier];
    v4 = [*(a1 + 32) accountIdentifier];
    v5 = v3;
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {

      goto LABEL_11;
    }

    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = v6;
      v10 = v5;
      goto LABEL_14;
    }

    v11 = [v5 isEqualToString:v6];

    WeakRetained = v16;
    if (v11)
    {
LABEL_11:
      objc_storeStrong(v16 + 25, *(a1 + 32));
      v8 = [*(a1 + 32) feature] == 5;
      WeakRetained = v16;
      if (!v8)
      {
        goto LABEL_15;
      }

      v10 = [v16[25] savingsDetails];
      v12 = [v10 accountSummary];
      v9 = [v12 currentBalance];

      v13 = [v10 currencyCode];
      v5 = PKCurrencyAmountMake();

      v14 = v16[17];
      v7 = [v5 formattedStringValue];
      v15 = PKLocalizedFeatureString();
      [v14 setText:{v15, v7}];

LABEL_14:
      WeakRetained = v16;
    }
  }

LABEL_15:
}

uint64_t PKLocalizedFeatureString()
{
  return PKLocalizedFeatureString();
}

{
  return PKLocalizedFeatureString();
}