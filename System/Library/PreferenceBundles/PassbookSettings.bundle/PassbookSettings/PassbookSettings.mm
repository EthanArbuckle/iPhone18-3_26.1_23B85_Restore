void sub_2468(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2484(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = WeakRetained;
    [WeakRetained setCurrentScreen:v4];
    WeakRetained = v5;
  }
}

id sub_2594(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Restricting settings to shield", v4, 2u);
  }

  return [*(a1 + 32) setCurrentScreen:3];
}

id sub_2A70(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(*(a1 + 40) + 32) removeFromParentViewController];
  v2 = *(*(a1 + 40) + 32);

  return [v2 didMoveToParentViewController:0];
}

id sub_2AC8(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(*(a1 + 40) + 48) removeFromParentViewController];
  v2 = *(*(a1 + 40) + 48);

  return [v2 didMoveToParentViewController:0];
}

void sub_2FA8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3038;
    block[3] = &unk_147C8;
    v2 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_3C94(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = PKFeatureIdentifierToString();
  v3 = [[NSSet alloc] initWithObjects:{v4, 0}];
  [*(*(a1 + 32) + 136) openPaymentSetupWithMode:4 referrerIdentifier:0 allowedFeatureIdentifiers:v3];
}

void sub_43C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_43E4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_44B0;
  block[3] = &unk_14880;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_44B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_alloc_init(PKAccountViewInterfaceConfiguration);
    [v3 setAccount:*(a1 + 32)];
    [v3 setRewardsDateComponents:*(a1 + 40)];
    [v3 setDestination:9];
    [v3 setViewStyle:1];
    v4 = [[PKSavingsAccountViewController alloc] initWithConfiguration:v3];
    [v5 showController:v4 animate:1];

    WeakRetained = v5;
  }
}

void sub_4BEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_4C48(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4D1C;
  v5[3] = &unk_148D0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v9 = *(a1 + 48);
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v8);
}

void sub_4D1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[17] passWithUniqueIdentifier:*(a1 + 32)];
    if (v3)
    {
      v4 = [v6 _passDetailsViewControllerForPass:v3];
      if (v4)
      {
        v5 = *(a1 + 56);
        [v6 showController:v4 animate:0];
        [v4 presentTransactionDetailsForTransaction:*(a1 + 40) presentingView:v5];
      }
    }

    WeakRetained = v6;
  }
}

void sub_4DD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4E98;
  v6[3] = &unk_14920;
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_4E98(uint64_t a1)
{
  v2 = [*(a1 + 32) altDSID];
  if (!v2)
  {
    v13 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v14 = *(a1 + 32);
    *buf = 138412290;
    v36 = v14;
    v15 = "There is no altDSID defined for associated account %@";
    goto LABEL_22;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v4)
  {
LABEL_14:

LABEL_20:
    v13 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 138412290;
    v36 = v2;
    v15 = "Cannot find a family member with altDSID %@";
LABEL_22:
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    goto LABEL_23;
  }

  v5 = v4;
  v6 = *v31;
LABEL_4:
  v7 = 0;
  while (1)
  {
    if (*v31 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = *(*(&v30 + 1) + 8 * v7);
    v9 = [v8 altDSID];
    v10 = v2;
    v11 = v10;
    if (v9 == v10)
    {
      break;
    }

    if (v9)
    {
      v12 = [v9 isEqualToString:v10];

      if (v12)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

LABEL_18:
  v13 = v8;

  if (!v13)
  {
    goto LABEL_20;
  }

  v16 = [[PKFamilyMemberCollection alloc] initWithFamilyMembers:*(a1 + 40)];
  v17 = [PKContactAvatarManager alloc];
  v18 = +[PKContactResolver defaultContactResolver];
  v19 = [*(*(a1 + 48) + 144) paymentDataProvider];
  v20 = [v17 initWithContactResolver:v18 paymentDataProvider:v19];

  v21 = [PKPeerPaymentAssociatedAccountsController alloc];
  v22 = [*(*(a1 + 48) + 144) passLibraryDataProvider];
  v23 = [v21 initWithFamilyCollection:v16 avatarManager:v20 passLibraryDataProvider:v22 context:3];
  v24 = *(a1 + 48);
  v25 = *(v24 + 152);
  *(v24 + 152) = v23;

  v26 = [[PKPeerPaymentAssociatedAccountPresentationContext alloc] initWithPKFamilyMember:v13 transaction:*(a1 + 56)];
  v27 = *(a1 + 48);
  v28 = v27[19];
  v29 = [v27 navigationController];
  [v28 presentAssociatedAccountsFlowWithPresentationContext:v26 fromNavigationController:v29];

LABEL_23:
}

void sub_51DC(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_52A8;
  block[3] = &unk_14880;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_52A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = WeakRetained[17];
    v4 = [*(a1 + 32) associatedPassUniqueID];
    v5 = [v3 passWithUniqueIdentifier:v4];

    if (v5)
    {
      v6 = [v7 _passDetailsViewControllerForPass:v5];
      if (v6)
      {
        [v7 showController:v6 animate:0];
        [v6 presentTransactionDetailsForTransaction:*(a1 + 40) presentingView:0];
      }
    }

    WeakRetained = v7;
  }
}

void sub_5374(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5440;
  block[3] = &unk_14880;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_5440(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([*(a1 + 32) feature] == &dword_4 + 1)
    {
      [WeakRetained[17] showSavingsAccount:*(a1 + 32) destination:8 transaction:*(a1 + 40) fundingSource:0 animated:1];
    }

    else
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Attempted to present transaction details for an unsupported feature", v4, 2u);
      }
    }
  }
}

void sub_58EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v18 - 160), 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_5930(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5948(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1[4] + 184);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5A2C;
  v13[3] = &unk_14970;
  v9 = a1[5];
  v10 = a1[6];
  v15 = v7;
  v16 = v9;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v8 defaultAccountForFeature:v10 completion:v13];
}

void sub_5A2C(void *a1, void *a2)
{
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  v4 = a2;
  (*(a1[5] + 16))(a1[5], a1[4], *(*(a1[6] + 8) + 40) == 0);
}

void sub_5AA8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[5];
  v9 = *(a1[4] + 184);
  v10 = [*(*(a1[6] + 8) + 40) accountIdentifier];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5BAC;
  v14[3] = &unk_149C0;
  v11 = a1[7];
  v16 = v7;
  v17 = v11;
  v15 = v6;
  v12 = v6;
  v13 = v7;
  [v9 paymentFundingSourceForIdentifier:v8 accountIdentifier:v10 completion:v14];
}

void sub_5BAC(void *a1, void *a2)
{
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  v5 = a2;
  v4 = a1[4];
  (*(a1[5] + 16))();
}

void sub_5C18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (([a4 isCanceled] & 1) == 0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_5CC4;
    v5[3] = &unk_14A10;
    objc_copyWeak(v7, (a1 + 48));
    v7[1] = *(a1 + 56);
    v6 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v5);
    objc_destroyWeak(v7);
  }
}

void sub_5CC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(*(*(a1 + 32) + 8) + 40) state];
    if (v3 - 1 < 3)
    {
      [v5[17] showSavingsAccount:*(*(*(a1 + 32) + 8) + 40) destination:*(a1 + 56) transaction:0 fundingSource:*(*(*(a1 + 40) + 8) + 40) animated:1];
LABEL_7:
      WeakRetained = v5;
      goto LABEL_8;
    }

    v4 = v3 == &dword_4;
    WeakRetained = v5;
    if (v4)
    {
      [v5[17] showDocumentsForClosedSavingsAccounts:0];
      goto LABEL_7;
    }
  }

LABEL_8:
}

uint64_t sub_611C(uint64_t a1, int a2, void *a3)
{
  a3;
  v5 = *(a1 + 40);
  if (a2)
  {
    if (v5)
    {
      v6 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:*(a1 + 32) context:3];
      (*(*(a1 + 40) + 16))();
    }
  }

  else if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }

  return _objc_release_x3();
}

void sub_6554(uint64_t a1, uint64_t a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6608;
  block[3] = &unk_14AB0;
  v7 = a3;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v4;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_6608(id *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = [v2 domain];
    v4 = AKAppleIDAuthenticationErrorDomain;
    if ([v3 isEqual:AKAppleIDAuthenticationErrorDomain])
    {
      v5 = [a1[4] code];

      if (v5 == -7003)
      {
LABEL_11:
        v6 = *(a1[6] + 2);
        goto LABEL_12;
      }
    }

    else
    {
    }

    v7 = [a1[4] domain];
    if ([v7 isEqual:v4])
    {
      v8 = [a1[4] code];

      if (v8 == -7005)
      {
        v9 = PKLocalizedPaymentString(@"COULD_NOT_CONNECT_TITLE");
        v10 = PKLocalizedPaymentString(@"COULD_NOT_CONNECT_MESSAGE");
        v11 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:1];
        PKApplyDefaultIconToAlertController();
        v12 = PKLocalizedString(@"OK_BUTTON_TITLE");
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_6828;
        v14[3] = &unk_14A88;
        v15 = a1[6];
        v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v14];
        [v11 addAction:v13];

        [a1[5] presentViewController:v11 animated:0 completion:0];
        return;
      }
    }

    else
    {
    }

    goto LABEL_11;
  }

  v6 = *(a1[6] + 2);
LABEL_12:

  v6();
}

uint64_t sub_6B08(uint64_t a1, void *a2)
{
  [a2 didReceiveAppAuthorizationRedirectToURL:*(a1 + 32)];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_6C48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_6C70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_6D88;
    v5[3] = &unk_14B28;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    v6 = v3;
    v9 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, v5);

    objc_destroyWeak(&v8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_A658(v4);
    }
  }
}

void sub_6D88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(PKPassLibrary);
    v3 = [*(a1 + 32) fpanId];
    if (v3)
    {
      v4 = [*(a1 + 32) fpanId];
      v5 = [v2 passWithFPANIdentifier:v4];
    }

    else
    {
      v5 = 0;
    }

    [WeakRetained presentAuthorizationViewControllerWithPaymentPass:v5 session:*(a1 + 32) animated:*(a1 + 56) completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_7150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  _Block_object_dispose((v2 - 152), 8);
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_717C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = *(a1 + 32);
      v6 = WeakRetained[17];
      if (v5)
      {
        [WeakRetained settingsController:v6 requestsDetailViewControllerForPass:v5 animated:0];
      }

      else
      {
        v7 = [*(a1 + 40) institution];
        v8 = [v7 institutionIdentifier];
        [v6 showBankConnectManagementForInstitution:v8 accountIdentifier:0 sender:0 completion:0];
      }

      WeakRetained = v9;
    }

    [WeakRetained dismissViewControllerAnimated:*(a1 + 64) completion:0];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_7264(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_7328;
  v7[3] = &unk_14BA0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v2 presentViewController:v3 animated:v4 completion:v7];
}

void sub_7540(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  v3 = [*(a1 + 40) feature];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_7610;
  v6[3] = &unk_14C40;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v10 = *(a1 + 56);
  v9 = *(a1 + 48);
  [v2 defaultAccountForFeature:v3 completion:v6];
}

void sub_7610(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_76DC;
  block[3] = &unk_14C18;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v13 = *(a1 + 56);
  v12 = v6;
  v7 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_76DC(uint64_t a1)
{
  v2 = [PKPaymentProvisioningController alloc];
  v3 = +[PKPaymentWebService sharedService];
  v4 = [v2 initWithWebService:v3];

  [*(a1 + 32) feature];
  v5 = PKFeatureIdentifierToString();
  v6 = [NSSet setWithObject:v5];
  [v4 setAllowedFeatureIdentifiers:v6];

  v7 = [[PKApplyControllerConfiguration alloc] initWithSetupDelegate:0 context:3 provisioningController:v4];
  [v7 setFeatureApplication:*(a1 + 32)];
  v8 = [[PKApplyController alloc] initWithApplyConfiguration:v7];
  v9 = *(a1 + 40);
  v10 = *(v9 + 168);
  *(v9 + 168) = v8;

  v11 = *(*(a1 + 40) + 168);
  v12 = [PKAccount analyticsAccountTypeForAccount:*(a1 + 48)];
  [v11 setAnalyticsExistingAccountType:v12];

  v13 = *(a1 + 40);
  v14 = *(v13 + 168);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_7890;
  v15[3] = &unk_14BF0;
  v15[4] = v13;
  v17 = *(a1 + 64);
  v16 = *(a1 + 56);
  [v14 nextViewControllerWithCompletion:v15];
}

void sub_7890(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [[PKNavigationController alloc] initWithRootViewController:v9];
LABEL_5:
    v7 = v6;
    [*(a1 + 32) presentViewController:v6 animated:*(a1 + 48) completion:*(a1 + 40)];

    goto LABEL_6;
  }

  if (v5)
  {
    v6 = PKAlertForDisplayableError();
    goto LABEL_5;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))();
  }

LABEL_6:
}

void sub_7950(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_7A24;
    v8[3] = &unk_14A60;
    v7 = *(a1 + 48);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v5 _presentManateeUpgradeForFeatureApplication:v6 completion:v8];
  }
}

void sub_7A24(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v11 = v5;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v11 = v5;
    v6 = PKTitleForDisplayableError();
    v7 = PKMessageForDisplayableError();
    v8 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];
    PKApplyDefaultIconToAlertController();
    v9 = PKLocalizedPaymentString(@"HSA_OK_BUTTON_TITLE");
    v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:0];
    [v8 addAction:v10];

    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
  }

  v5 = v11;
LABEL_6:
}

void sub_7C4C(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_7CE0;
  v3[3] = &unk_14CB8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_7E74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7F48;
  block[3] = &unk_14D08;
  v14 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = *(a1 + 48);
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_7F48(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = PKSecurityCapabilitiesErrorToString();
    v5 = *(a1 + 32);
    *buf = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Finished checking account user invitation security capabilities with upgrade error %@, error %@", buf, 0x16u);
  }

  v6 = *(a1 + 64);
  if (v6 == 3)
  {
    v9 = *(*(a1 + 56) + 16);
LABEL_10:
    v9();
    return;
  }

  if (v6)
  {
    v10 = *(a1 + 32);
    v9 = *(*(a1 + 56) + 16);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "User successfully completed. Ensuring that they indeed supportsDeviceToDeviceEncryption", buf, 2u);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_8108;
  v11[3] = &unk_147F0;
  v12 = *(a1 + 56);
  [v7 _checkManateeCapabilityForFeatureApplication:v8 completion:v11];
}

void sub_8108(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_819C;
  v3[3] = &unk_14CB8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
}

Class sub_8280()
{
  if (qword_197C8 != -1)
  {
    sub_A69C();
  }

  result = objc_getClass("FKBankConnectAuthorizationSessionProvider");
  qword_197B8 = result;
  off_19560 = sub_82D4;
  return result;
}

Class sub_830C()
{
  if (qword_197E0[0] != -1)
  {
    sub_A6B0();
  }

  result = objc_getClass("FKBankConnectAuthorizationViewControllerProvider");
  qword_197D0 = result;
  off_19568 = sub_8360;
  return result;
}

id sub_83CC()
{
  v0 = sub_A754();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = aBlock - v7;
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  aBlock[4] = nullsub_2;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_920C;
  aBlock[3] = &unk_14E98;
  v11 = _Block_copy(aBlock);
  v12 = [objc_opt_self() contextWithBundleId:0 onChange:v11];
  _Block_release(v11);

  v13 = [v12 topLevelSettingsEntryType];

  if (v13 == &dword_0 + 1)
  {
    (*(v1 + 104))(v10, enum case for LocalizedStringTable.settings(_:), v0);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_A744();
LABEL_12:

      (*(v1 + 8))(v10, v0);
      return v16;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = [objc_opt_self() sharedService];
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  result = [v17 targetDevice];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = [result paymentWebService:v18 hasPassesOfType:1];
  swift_unknownObjectRelease();
  v20 = [v18 paymentSetupSupportedInRegion];

  if ((v19 & 1) == 0 && v20 != &dword_0 + 1)
  {
LABEL_8:
    (*(v1 + 104))(v5, enum case for LocalizedStringTable.settings(_:), v0);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_A744();
      v10 = v5;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  (*(v1 + 104))(v8, enum case for LocalizedStringTable.settings(_:), v0);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_A744();
    v10 = v8;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_8780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v7 = *(*(sub_A794() - 8) + 64);
  __chkstk_darwin();
  v8 = sub_A774();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A4F8();
  v13 = [objc_allocWithZone(PSSpecifier) init];
  v14 = sub_A834();
  [v13 setName:v14];

  [v13 setProperty:a1 forKey:@"PassbookSettingsDeferredURLStateKey"];
  sub_A784();
  sub_A764();
  v16[2] = a2;
  v16[3] = a3;
  sub_9FF4();
  sub_A04C();
  sub_A7B4();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_8968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[52] = a2;
  v3[53] = a3;
  v3[51] = a1;
  v4 = sub_A6E4();
  v3[54] = v4;
  v5 = *(v4 - 8);
  v3[55] = v5;
  v6 = *(v5 + 64) + 15;
  v3[56] = swift_task_alloc();
  v7 = sub_A7A4();
  v3[57] = v7;
  v8 = *(v7 - 8);
  v3[58] = v8;
  v9 = *(v8 + 64) + 15;
  v3[59] = swift_task_alloc();
  v10 = sub_A734();
  v3[60] = v10;
  v11 = *(v10 - 8);
  v3[61] = v11;
  v12 = *(v11 + 64) + 15;
  v3[62] = swift_task_alloc();
  v13 = *(*(sub_9F9C(&qword_19788, &qword_D668) - 8) + 64) + 15;
  v3[63] = swift_task_alloc();
  v14 = sub_A724();
  v3[64] = v14;
  v15 = *(v14 - 8);
  v3[65] = v15;
  v16 = *(v15 + 64) + 15;
  v3[66] = swift_task_alloc();
  sub_A864();
  v3[67] = sub_A854();
  v18 = sub_A844();

  return _swift_task_switch(sub_8BAC, v18, v17);
}

unint64_t sub_8BAC()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 520);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  v6 = *(v0 + 488);
  v5 = *(v0 + 496);
  v7 = *(v0 + 480);
  v8 = *(v0 + 416);

  sub_A7E4();
  sub_A704();
  (*(v6 + 8))(v5, v7);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v10 = *(v0 + 464);
    v9 = *(v0 + 472);
    v11 = *(v0 + 456);
    v13 = *(v0 + 408);
    v12 = *(v0 + 416);
    sub_A394(*(v0 + 504), &qword_19788, &qword_D668);
    sub_A7D4();
    sub_A7F4();
    (*(v10 + 8))(v9, v11);
LABEL_28:
    v53 = *(v0 + 528);
    v54 = *(v0 + 496);
    v55 = *(v0 + 504);
    v56 = *(v0 + 472);
    v57 = *(v0 + 448);

    v58 = *(v0 + 8);

    return v58();
  }

  (*(*(v0 + 520) + 32))(*(v0 + 528), *(v0 + 504), *(v0 + 512));
  *(v0 + 360) = 0x6574616D696E61;
  *(v0 + 368) = 0xE700000000000000;
  sub_A8A4();
  *(v0 + 160) = &type metadata for Bool;
  *(v0 + 136) = 1;
  sub_A330((v0 + 136), (v0 + 168));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_9B68((v0 + 168), v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_A340(v0 + 16);
  *(v0 + 376) = 1752457584;
  *(v0 + 384) = 0xE400000000000000;
  sub_A8A4();
  *(v0 + 200) = sub_A714();
  *(v0 + 224) = &type metadata for String;
  *(v0 + 208) = v15;
  sub_A330((v0 + 200), (v0 + 232));
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_9B68((v0 + 232), v0 + 56, v16);
  sub_A340(v0 + 56);
  v17 = &_swiftEmptyDictionarySingleton;
  result = sub_A6F4();
  if (result)
  {
    v19 = result;
  }

  else
  {
    v19 = &_swiftEmptyArrayStorage;
  }

  v62 = v19[2];
  if (!v62)
  {
LABEL_27:
    v45 = *(v0 + 520);
    v61 = *(v0 + 512);
    v63 = *(v0 + 528);
    v46 = *(v0 + 464);
    v47 = *(v0 + 472);
    v48 = *(v0 + 456);
    v49 = *(v0 + 416);
    v50 = *(v0 + 424);
    v51 = *(v0 + 408);

    isa = sub_A814().super.isa;

    [v50 setResourceDictionary:isa];

    sub_A7D4();
    sub_A7F4();
    (*(v46 + 8))(v47, v48);
    (*(v45 + 8))(v63, v61);
    goto LABEL_28;
  }

  v20 = 0;
  v21 = *(v0 + 440);
  v60 = v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v59 = (v0 + 296);
  while (1)
  {
    if (v20 >= v19[2])
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    v23 = *(v0 + 448);
    v24 = *(v0 + 432);
    (*(v21 + 16))(v23, &v60[*(v21 + 72) * v20], v24);
    *(v0 + 392) = sub_A6C4();
    *(v0 + 400) = v25;
    sub_A8A4();
    v26 = sub_A6D4();
    v28 = v27;
    (*(v21 + 8))(v23, v24);
    if (!v28)
    {
      v37 = sub_96C8(v0 + 96);
      if (v38)
      {
        v39 = v37;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_9DF8();
        }

        sub_A340(v17[6] + 40 * v39);
        sub_A330((v17[7] + 32 * v39), v59);
        sub_99C4(v39, v17);
        sub_A340(v0 + 96);
        v40 = v0 + 296;
      }

      else
      {
        sub_A340(v0 + 96);
        v40 = v0 + 296;
        *v59 = 0u;
        *(v0 + 312) = 0u;
      }

      result = sub_A394(v40, &qword_19790, &qword_D670);
      goto LABEL_9;
    }

    *(v0 + 288) = &type metadata for String;
    *(v0 + 264) = v26;
    *(v0 + 272) = v28;
    sub_A330((v0 + 264), (v0 + 328));
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v17;
    result = sub_96C8(v0 + 96);
    v31 = v17[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      goto LABEL_35;
    }

    v35 = v30;
    if (v17[3] < v34)
    {
      break;
    }

    if ((v29 & 1) == 0)
    {
      v44 = result;
      sub_9DF8();
      result = v44;
      v17 = v64;
    }

LABEL_22:
    if (v35)
    {
      v22 = (v17[7] + 32 * result);
      sub_A450(v22);
      sub_A330((v0 + 328), v22);
      result = sub_A340(v0 + 96);
    }

    else
    {
      v17[(result >> 6) + 8] |= 1 << result;
      v41 = result;
      sub_A3F4(v0 + 96, v17[6] + 40 * result);
      sub_A330((v0 + 328), (v17[7] + 32 * v41));
      result = sub_A340(v0 + 96);
      v42 = v17[2];
      v33 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v33)
      {
        goto LABEL_36;
      }

      v17[2] = v43;
    }

LABEL_9:
    if (v62 == ++v20)
    {
      goto LABEL_27;
    }
  }

  sub_970C(v34, v29);
  result = sub_96C8(v0 + 96);
  if ((v35 & 1) == (v36 & 1))
  {
    goto LABEL_22;
  }

  return sub_A8D4();
}

uint64_t sub_920C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_9250@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = sub_9F9C(&qword_19760, &qword_D648);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  v11 = v7;

  sub_9F9C(&qword_19768, &qword_D650);
  v12 = sub_A774();
  v13 = sub_9FF4();
  v14 = sub_A04C();
  v18[2] = v12;
  v18[3] = &type metadata for String;
  v18[4] = v13;
  v18[5] = v14;
  swift_getOpaqueTypeConformance2();
  sub_A804();
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = v8;
  v15[4] = v9;
  sub_A284();
  v16 = v11;

  sub_A7C4();
  return (*(v3 + 8))(v6, v2);
}

id sub_9450@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(type metadata accessor for PassbookSettingsDeferredURLState()) init];
  result = sub_83CC();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v4;
  return result;
}

id sub_95D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassbookSettingsDeferredURLState();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_9640()
{
  result = qword_19758;
  if (!qword_19758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19758);
  }

  return result;
}

uint64_t sub_96B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_96C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_A884(*(v2 + 40));

  return sub_9D30(a1, v4);
}

uint64_t sub_970C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_9F9C(&qword_19798, &qword_D678);
  result = sub_A8C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_A330((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_A3F4(v24, &v37);
        sub_A49C(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_A884(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_A330(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_99C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_A874() + 1) & ~v5;
    do
    {
      sub_A3F4(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_A884(*(a2 + 40));
      result = sub_A340(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_9B68(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_96C8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_9DF8();
      goto LABEL_7;
    }

    sub_970C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_96C8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_A3F4(a2, v22);
      return sub_9CB4(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_A8D4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_A450(v17);

  return sub_A330(a1, v17);
}

_OWORD *sub_9CB4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_A330(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_9D30(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_A3F4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_A894();
      sub_A340(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_9DF8()
{
  v1 = v0;
  sub_9F9C(&qword_19798, &qword_D678);
  v2 = *v0;
  v3 = sub_A8B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_A3F4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_A49C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_A330(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_9F9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_9FF4()
{
  result = qword_19770;
  if (!qword_19770)
  {
    sub_A774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19770);
  }

  return result;
}

unint64_t sub_A04C()
{
  result = qword_19778;
  if (!qword_19778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19778);
  }

  return result;
}

uint64_t sub_A0A0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_A0E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_A190;

  return sub_8968(a1, a2, v6);
}

uint64_t sub_A190()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_A284()
{
  result = qword_19780;
  if (!qword_19780)
  {
    sub_A2E8(&qword_19760, &qword_D648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19780);
  }

  return result;
}

uint64_t sub_A2E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_A330(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_A394(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_9F9C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_A450(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_A49C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_A4F8()
{
  result = qword_197A0;
  if (!qword_197A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_197A0);
  }

  return result;
}

__n128 sub_A544(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_A558(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A5A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A5F0()
{
  sub_A2E8(&qword_19760, &qword_D648);
  sub_A284();
  return swift_getOpaqueTypeConformance2();
}