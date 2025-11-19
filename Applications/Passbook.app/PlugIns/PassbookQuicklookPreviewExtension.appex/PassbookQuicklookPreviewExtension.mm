uint64_t sub_1000019D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000019F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  v12 = *(v10 + 32);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001B3C;
  v19[3] = &unk_100008240;
  objc_copyWeak(&v25, (a1 + 64));
  v13 = v9;
  v22 = v13;
  v14 = v8;
  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  v20 = v14;
  v23 = v15;
  v17 = v16;
  v18 = *(a1 + 56);
  v21 = v17;
  v24 = v18;
  [v11 transactionWithTransactionIdentifier:v12 completion:v19];

  objc_destroyWeak(&v25);
}

void sub_100001B3C(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    if (!v4)
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Transaction not found with identifier %@", &v14, 0xCu);
      }

      v8 = [NSError errorWithDomain:@"PassbookQuicklookPreviewExtensionErrorDomain" code:1 userInfo:0];
      v9 = *(*(a1 + 64) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = *(a1 + 32);
    v12 = *(*(a1 + 48) + 16);
  }

  else
  {
    v13 = *(a1 + 32);
    v12 = *(*(a1 + 48) + 16);
  }

  v12();
}

void sub_100001C94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 8);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001DB0;
  v14[3] = &unk_100008290;
  objc_copyWeak(&v18, (a1 + 48));
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v13 = *(a1 + 40);
  v15 = v12;
  v17 = v13;
  [v10 familyMembersWithCompletion:v14];

  objc_destroyWeak(&v18);
}

void sub_100001DB0(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = [[PKFamilyMemberCollection alloc] initWithFamilyMembers:v8];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_100001E48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 1);
    v11 = *(*(a1 + 32) + 32);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100001F80;
    v16[3] = &unk_1000082E0;
    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v16[4] = WeakRetained;
    v20 = v12;
    v14 = v13;
    v15 = *(a1 + 56);
    v17 = v14;
    v21 = v15;
    v19 = v7;
    v18 = v6;
    [v10 passUniqueIdentifierForTransactionWithIdentifier:v11 completion:v16];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

void sub_100001F80(void *a1, void *a2)
{
  v3 = a2;
  v4 = [PKTransactionSource alloc];
  v5 = [*(a1[4] + 16) passWithUniqueID:v3];

  v6 = [v5 paymentPass];
  v7 = [v4 initWithPaymentPass:v6];

  if (v7)
  {
    v8 = [[PKTransactionSourceCollection alloc] initWithTransactionSource:v7];
    v9 = a1[8];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[5];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Pass not found for transaction with identifier %@", &v15, 0xCu);
    }

    v8 = [NSError errorWithDomain:@"PassbookQuicklookPreviewExtensionErrorDomain" code:2 userInfo:0];
    v9 = a1[9];
  }

  v12 = *(v9 + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;

  v14 = a1[6];
  (*(a1[7] + 16))();
}

void sub_10000210C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(*(*(a1 + 32) + 8) + 40) accountIdentifier];
  if (v10)
  {
    v11 = +[PKAccountService sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100002270;
    v14[3] = &unk_100008330;
    objc_copyWeak(&v18, (a1 + 48));
    v16 = v9;
    v12 = v8;
    v13 = *(a1 + 40);
    v15 = v12;
    v17 = v13;
    [v11 accountWithIdentifier:v10 completion:v14];

    objc_destroyWeak(&v18);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 0);
  }
}

void sub_100002270(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_100002300(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(*(*(a1 + 32) + 8) + 40) accountIdentifier];
  if (v10)
  {
    v11 = +[PKAccountService sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100002464;
    v14[3] = &unk_100008380;
    objc_copyWeak(&v18, (a1 + 48));
    v16 = v9;
    v12 = v8;
    v13 = *(a1 + 40);
    v15 = v12;
    v17 = v13;
    [v11 accountUsersForAccountWithIdentifier:v10 completion:v14];

    objc_destroyWeak(&v18);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 0);
  }
}

void sub_100002464(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && [v8 count])
  {
    v4 = [[PKAccountUserCollection alloc] initWithAccountUsers:v8];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_100002508(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(*(*(a1 + 32) + 8) + 40) accountIdentifier];
  if (v10)
  {
    v11 = +[PKAccountService sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000266C;
    v14[3] = &unk_100008380;
    objc_copyWeak(&v18, (a1 + 48));
    v16 = v9;
    v12 = v8;
    v13 = *(a1 + 40);
    v15 = v12;
    v17 = v13;
    [v11 physicalCardsForAccountWithIdentifier:v10 completion:v14];

    objc_destroyWeak(&v18);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 0);
  }
}

void sub_10000266C(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && [v8 count])
  {
    v4 = [v8 copy];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_100002704(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000027F0;
  block[3] = &unk_1000083A8;
  objc_copyWeak(&v17, (a1 + 80));
  v12 = v6;
  v13 = v7;
  v8 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v8;
  v16 = *(a1 + 64);
  v9 = v6;
  v10 = v7;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v17);
}

void sub_1000027F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(CNContactStore);
    v4 = [PKContactResolver alloc];
    v5 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
    v14[0] = v5;
    v14[1] = CNContactEmailAddressesKey;
    v14[2] = CNContactPhoneNumbersKey;
    v6 = [NSArray arrayWithObjects:v14 count:3];
    v7 = [v4 initWithContactStore:v3 keysToFetch:v6];

    v8 = [PKPaymentTransactionDetailsFactory alloc];
    v9 = +[PKPeerPaymentWebService sharedService];
    v10 = +[PKPaymentDefaultDataProvider defaultDataProvider];
    v11 = [v8 initWithContactResolver:v7 peerPaymentWebService:v9 paymentServiceDataProvider:v10 detailViewStyle:0 context:0];

    v12 = [v11 viewControllerForTransaction:*(*(*(a1 + 48) + 8) + 40) sourceCollection:*(*(*(a1 + 56) + 8) + 40) familyCollection:*(*(*(a1 + 64) + 8) + 40) account:*(*(*(a1 + 72) + 8) + 40) accountUserCollection:*(*(*(a1 + 80) + 8) + 40) bankConnectInstitution:0 physicalCards:*(*(*(a1 + 88) + 8) + 40) group:0 navigationController:0];
    [WeakRetained _addVCToHierarchy:v12];
  }

  else
  {
    v13 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100002A08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [[PKDashboardPassGroupViewController alloc] initWithPass:*(a1 + 32)];
    [v4 _addVCToHierarchy:v3];
    (*(*(a1 + 40) + 16))();

    WeakRetained = v4;
  }
}