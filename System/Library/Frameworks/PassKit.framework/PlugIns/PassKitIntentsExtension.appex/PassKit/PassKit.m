void sub_1000010A4(id a1)
{
  v1 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Connecting to IMDaemonController", buf, 2u);
  }

  v2 = +[IMDaemonController sharedInstance];
  [v2 addListenerID:@"PassKitIntentExtension" capabilities:(kFZListenerCapMessageHistory | kFZListenerCapChats) | kFZListenerCapFileTransfers];

  v3 = +[IMDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v4 = +[IMDaemonController sharedInstance];
  [v4 _setBlocksConnectionAtResume:1];

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Connected to IMDaemonController", v5, 2u);
  }
}

void sub_1000012FC(id a1)
{
  v1 = +[IMSystemMonitor sharedInstance];
  [v1 _forceSuspended];

  v2 = +[IMSystemMonitor sharedInstance];
  [v2 _forceResumed];
}

void sub_100002FE8(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = *(v4 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003088;
  v8[3] = &unk_100014518;
  v8[4] = v4;
  v10 = a2;
  v6 = v3;
  v7 = a1[6];
  v9 = v6;
  v11 = v7;
  dispatch_async(v5, v8);
}

uint64_t sub_100003088(void *a1)
{
  *(a1[4] + 56) = a1[6];
  v1 = a1[7];
  return (*(a1[5] + 16))(a1[5]);
}

uint64_t sub_100003544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000355C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMDMessageRecordCopyMostRecentUseageOfAddresses();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_100003ACC(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_100003B40(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[10])
  {
    (*(*(a1 + 48) + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    *(v3 + 80) = 0;
  }

  else
  {
    v5 = [v2 peerPaymentController];
    v6 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003C64;
    v11[3] = &unk_1000145E0;
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v14 = v7;
    v11[4] = v8;
    v12 = v9;
    v13 = v5;
    v10 = v5;
    [v6 peerPaymentRegistrationStatusWithCompletion:v11];
  }
}

void sub_100003C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    if (!a3 || a3 == 5)
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      if (v4[9])
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100003E2C;
        v15[3] = &unk_100014590;
        v16 = *(a1 + 56);
        [v4 _queue_fetchRequestTokenForIntent:v5 peerPaymentController:v6 completion:v15];
        v7 = v16;
      }

      else
      {
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100003E3C;
        v11[3] = &unk_1000145B8;
        v11[4] = v4;
        v12 = v5;
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        [v4 _queue_identifyRecipientWithIntent:v12 peerPaymentController:v6 completion:v11];

        v7 = v12;
      }

      return;
    }

    v8 = *(a1 + 56);
    v9 = [*(a1 + 32) _responseForInvalidAccountResolution:?];
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = [*(a1 + 32) _responseForInvalidRegistrationStatus:a2];
  }

  v10 = v9;
  (*(v8 + 16))(v8, v9);
}

void sub_100003E3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[9])
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003F5C;
    v10[3] = &unk_100014590;
    v11 = *(a1 + 56);
    [v4 _queue_fetchRequestTokenForIntent:v5 peerPaymentController:v6 completion:v10];
    v7 = v11;
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000BFB4(v8);
    }

    v9 = *(a1 + 56);
    v7 = [*(a1 + 32) _intentResponseForGenericFailure];
    (*(v9 + 16))(v9, v7);
  }
}

void sub_100004188(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_1000041FC(id *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    if (!a3 || a3 == 5)
    {
      v4 = [a1[5] currencyAmount];
      v5 = [a1[4] pkCurrencyAmountFromIntentAmount:v4];
      v6 = a1[4];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100004340;
      v10[3] = &unk_100014630;
      v11 = a1[6];
      [v6 validateCurrencyAmount:v5 completion:v10];

      return;
    }

    v7 = a1[6];
    v8 = [a1[4] _responseForInvalidAccountResolution:?];
  }

  else
  {
    v7 = a1[6];
    v8 = [a1[4] _responseForInvalidRegistrationStatus:a2];
  }

  v9 = v8;
  v7[2](v7, v8);
}

void sub_100004340(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v10 = [INRequestPaymentIntentResponse alloc];
  if (a2)
  {
    v11 = [v10 initWithCode:9 userActivity:0];
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      v13 = "Returning currency unsupported response %@";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v14, 0xCu);
    }
  }

  else if (a3)
  {
    v11 = [v10 initWithCode:7 userActivity:0];
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      v13 = "Returning amount below minimum response %@";
      goto LABEL_15;
    }
  }

  else if (a4)
  {
    v11 = [v10 initWithCode:8 userActivity:0];
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      v13 = "Returning amount above maximum response %@";
      goto LABEL_15;
    }
  }

  else if (a5)
  {
    v11 = [v10 initWithCode:4 userActivity:0];
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      v13 = "Returning failure response for generic unsupported amount. Response: %@";
      goto LABEL_15;
    }
  }

  else
  {
    v11 = [v10 initWithCode:1 userActivity:0];
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      v13 = "Intent confirmation successful. Returning ready response: %@";
      goto LABEL_15;
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v11);
}

void sub_100004794(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_100004808(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[10])
  {
    v3 = *(a1 + 48);
    v10 = +[INRequestPaymentPayerResolutionResult notRequired];
    (*(v3 + 16))(v3, v10);
  }

  else
  {
    v4 = [v2 peerPaymentController];
    v5 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004940;
    v11[3] = &unk_1000145E0;
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v14 = v6;
    v11[4] = v7;
    v12 = v8;
    v13 = v4;
    v9 = v4;
    [v5 peerPaymentRegistrationStatusWithCompletion:v11];
  }
}

void sub_100004940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1 && (!a3 || a3 == 5))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100004A44;
    v8[3] = &unk_100014680;
    v5 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v3 _queue_identifyRecipientWithIntent:v4 peerPaymentController:v5 completion:v8];
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = +[INRequestPaymentPayerResolutionResult notRequired];
    (*(v6 + 16))(v6, v7);
  }
}

void sub_100004C5C(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_100004CD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[10])
  {
    v3 = *(a1 + 48);
    v7 = +[INRequestPaymentCurrencyAmountResolutionResult notRequired];
    (*(v3 + 16))(v3, v7);
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100004DF8;
    v8[3] = &unk_1000146F8;
    v4 = *(a1 + 48);
    *&v5 = *(a1 + 40);
    *(&v5 + 1) = *(a1 + 32);
    *&v6 = v4;
    *(&v6 + 1) = *(a1 + 56);
    v9 = v5;
    v10 = v6;
    [v2 peerPaymentRegistrationStatusWithCompletion:v8];
  }
}

void sub_100004DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1 && (!a3 || a3 == 5))
  {
    v4 = [*(a1 + 32) currencyAmount];
    v5 = [*(a1 + 40) pkCurrencyAmountFromIntentAmount:v4];
    if (v5)
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000051C4;
      v27[3] = &unk_1000146D0;
      v6 = *(a1 + 40);
      v29 = *(a1 + 48);
      v28 = v4;
      [v6 validateCurrencyAmount:v5 completion:v27];
    }

    else
    {
      v8 = [v4 amount];
      if (v8 && (v9 = v8, [v4 currencyCode], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
      {
        v13 = [*(a1 + 40) peerPaymentService];
        v14 = [v13 account];
        v15 = [v14 currentBalance];
        v12 = [v15 currency];

        if ([v12 length])
        {
          v16 = [INCurrencyAmount alloc];
          v17 = [v4 amount];
          v18 = [v16 initWithAmount:v17 currencyCode:v12];

          v19 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = NSStringFromSelector(*(a1 + 56));
            *buf = 138543618;
            v31 = v20;
            v32 = 2112;
            v33 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with confirmation of inferred amount currency, %@.", buf, 0x16u);
          }

          v21 = *(a1 + 48);
          v22 = [INRequestPaymentCurrencyAmountResolutionResult confirmationRequiredWithCurrencyAmountToConfirm:v18];
          (*(v21 + 16))(v21, v22);
        }

        else
        {
          v23 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = NSStringFromSelector(*(a1 + 56));
            *buf = 138543362;
            v31 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with needs value because we could not infer currency.", buf, 0xCu);
          }

          v25 = *(a1 + 48);
          v18 = +[INRequestPaymentCurrencyAmountResolutionResult needsValue];
          (*(v25 + 16))(v25, v18);
        }
      }

      else
      {
        v11 = *(a1 + 48);
        v12 = +[INRequestPaymentCurrencyAmountResolutionResult needsValue];
        (*(v11 + 16))(v11, v12);
      }
    }
  }

  else
  {
    v7 = *(a1 + 48);
    v26 = +[INRequestPaymentCurrencyAmountResolutionResult notRequired];
    (*(v7 + 16))(v7);
  }
}

void sub_1000051C4(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 40);
  if (a2)
  {
    v6 = 3;
  }

  else if (a3)
  {
    v6 = 1;
  }

  else
  {
    if (!a4)
    {
      if (a5)
      {
        +[INRequestPaymentCurrencyAmountResolutionResult unsupported];
      }

      else
      {
        [INRequestPaymentCurrencyAmountResolutionResult successWithResolvedCurrencyAmount:*(a1 + 32)];
      }
      v7 = ;
      goto LABEL_8;
    }

    v6 = 2;
  }

  v7 = [INRequestPaymentCurrencyAmountResolutionResult unsupportedForReason:v6];
LABEL_8:
  v8 = v7;
  (*(v5 + 16))(v5);
}

void sub_100005474(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_1000054E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[10])
  {
    v3 = *(a1 + 48);
    v6 = +[INStringResolutionResult notRequired];
    (*(v3 + 16))(v3, v6);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000055F0;
    v7[3] = &unk_100014658;
    v10 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v8 = v4;
    v9 = v5;
    [v2 peerPaymentRegistrationStatusWithCompletion:v7];
  }
}

void sub_1000055F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1 && (!a3 || a3 == 5))
  {
    v8 = [*(a1 + 32) note];
    if ([v8 length])
    {
      v4 = [*(a1 + 40) siriLocale];
      v5 = [v8 pk_uppercaseFirstStringForLocale:v4];
      v6 = [INStringResolutionResult successWithResolvedString:v5];
    }

    else
    {
      v6 = +[INStringResolutionResult notRequired];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = +[INStringResolutionResult notRequired];
    (*(v7 + 16))(v7, v8);
  }
}

void sub_100005B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005B30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005B48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) intentQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100005C70;
  v14[3] = &unk_100014770;
  v21 = *(a1 + 64);
  v22 = a2;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v15 = v10;
  v16 = v11;
  v17 = v7;
  v18 = *(a1 + 48);
  v19 = v8;
  v20 = *(a1 + 56);
  v12 = v8;
  v13 = v7;
  dispatch_async(v9, v14);
}

uint64_t sub_100005C70(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = [INRequestPaymentPayerResolutionResult successWithResolvedPerson:*(a1 + 32)];
    v3 = *(*(a1 + 80) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    objc_storeStrong((*(a1 + 40) + 72), *(a1 + 48));
    [*(a1 + 56) selectMode:3];
  }

  else
  {
    if (*(a1 + 64))
    {
      v5 = [*(a1 + 40) _intentResponseFromWebServiceError:?];
      v6 = *(a1 + 40);
      v7 = *(v6 + 80);
      *(v6 + 80) = v5;

      +[INRequestPaymentPayerResolutionResult notRequired];
    }

    else
    {
      [INRequestPaymentPayerResolutionResult unsupportedWithReason:2];
    }
    v8 = ;
    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *(*(*(a1 + 80) + 8) + 40);
  v12 = *(*(a1 + 72) + 16);

  return v12();
}

void sub_100005EA8(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005FE0;
  block[3] = &unk_1000147C0;
  v22 = a2;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = *(a1 + 48);
  v11 = *(&v15 + 1);
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v17 = v12;
  v18 = v15;
  v19 = v7;
  v20 = v8;
  v21 = *(a1 + 64);
  v13 = v8;
  v14 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100005FE0(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    PKAnalyticsSendEvent();
    v2 = [*(a1 + 32) payer];
    v3 = [*(a1 + 32) note];
    v4 = v3;
    if (v3 && [v3 length])
    {
      v5 = &PKAggDKeyPeerPaymentBubbleRequestWithMemo;
    }

    else
    {
      v5 = &PKAggDKeyPeerPaymentBubbleRequestWithoutMemo;
    }

    v6 = *v5;
    PKAnalyticsSendEvent();
    v7 = [v2 personHandle];
    v8 = [v7 value];

    v9 = [*(a1 + 40) senderPhoneOrEmail];
    v10 = [*(a1 + 48) _peerPaymentMessageForRequestWithCurrencyAmount:*(a1 + 56) requestToken:*(a1 + 64) recipientHandle:v8 senderHandle:v9 memo:v4];
    v11 = [v10 localProperties];
    [v10 setLocalProperties:0];
    [*(a1 + 48) sendMessage:v10 toRecipient:v8];
    [v10 reportMessageSentWithLocalProperties:v11];
    v12 = [*(a1 + 48) inCurrencyAmountFromPKAmount:*(a1 + 56)];
    v13 = [INPaymentRecord alloc];
    v14 = +[INPaymentMethod applePayPaymentMethod];
    v15 = [v13 initWithPayee:0 payer:v2 currencyAmount:v12 paymentMethod:v14 note:v4 status:5 feeAmount:0];

    v16 = [[INRequestPaymentIntentResponse alloc] initWithCode:3 userActivity:0];
    [v16 setPaymentRecord:v15];
  }

  else
  {
    v16 = [*(a1 + 48) _intentResponseFromWebServiceError:*(a1 + 72)];
  }

  (*(*(a1 + 80) + 16))();
}

void sub_100006830(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 48) + 16))();

  v4 = [*(a1 + 32) delegate];
  [v4 pk_didFinishInteractionForIntent:*(a1 + 40)];
}

void sub_1000068C0(uint64_t a1)
{
  v2 = [*(a1 + 32) peerPaymentController];
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006980;
  v5[3] = &unk_100014838;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 40);
  v4 = v2;
  [v3 peerPaymentRegistrationStatusWithCompletion:v5];
}

void sub_100006980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    v12 = [*(a1 + 32) _responseForInvalidRegistrationStatus:a2];
    v5 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v24 = v12;
    v19 = "Calling handleSearchForAccounts: completion with invalid registration status result %@";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
    goto LABEL_18;
  }

  if (a3 && a3 != 5)
  {
    v12 = [*(a1 + 32) _responseForInvalidAccountResolution:?];
    v5 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v24 = v12;
    v19 = "Calling handleSearchForAccounts: completion with invalid account resolution result %@";
    goto LABEL_17;
  }

  v4 = [*(a1 + 40) account];
  v5 = [v4 currentBalance];

  v6 = [v5 amount];
  v7 = [v5 currency];
  if (v6 && (+[NSDecimalNumber notANumber](NSDecimalNumber, "notANumber"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v6 isEqual:v8], v8, (v9 & 1) == 0) && v7)
  {
    v10 = [INSearchForAccountsIntentResponse alloc];
    v11 = [*(a1 + 32) _openPeerPaymentPassActivity];
    v12 = [v10 initWithCode:3 userActivity:v11];

    v13 = [INPaymentAccount alloc];
    v14 = [[INSpeakableString alloc] initWithSpokenPhrase:&stru_100014BB0];
    v15 = [[INBalanceAmount alloc] initWithAmount:v6 currencyCode:v7];
    v16 = [v13 initWithNickname:v14 number:0 accountType:0 organizationName:0 balance:v15 secondaryBalance:0];

    v22 = v16;
    v17 = [NSArray arrayWithObjects:&v22 count:1];
    [v12 setAccounts:v17];

    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling handleSearchForAccounts: completion with success", buf, 2u);
    }
  }

  else
  {
    v20 = [INSearchForAccountsIntentResponse alloc];
    v21 = [*(a1 + 32) _openPeerPaymentPassActivity];
    v12 = [v20 initWithCode:4 userActivity:v21];

    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling handleSearchForAccounts: completion with failure for invalid PKCurrencyAmount %@", buf, 0xCu);
    }
  }

LABEL_18:
  (*(*(a1 + 48) + 16))();
}

void sub_100007104(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_100007178(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[12])
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = NSStringFromSelector(*(a1 + 56));
      v5 = *(*(a1 + 32) + 96);
      *buf = 138543618;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with preDeterminedIntentResponse %@", buf, 0x16u);
    }

    v6 = *(*(a1 + 32) + 96);
    (*(*(a1 + 48) + 16))();
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = 0;

    v9 = [*(a1 + 32) delegate];
    [v9 pk_didFinishInteractionForIntent:*(a1 + 40)];
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100007334;
    v12[3] = &unk_1000148D8;
    v12[4] = v2;
    v11 = *(a1 + 48);
    v10 = v11;
    v14 = v11;
    v13 = *(a1 + 40);
    [v2 peerPaymentRegistrationStatusWithCompletion:v12];
  }
}

void sub_100007334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v4 = *(a1 + 32);
    if (!a3)
    {
      v10 = *(a1 + 40);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100007544;
      v13[3] = &unk_1000148B0;
      v12 = *(a1 + 48);
      v11 = v12;
      v14 = v12;
      [v4 _queue_performOperationsIfNecessary:3 intent:v10 completion:v13];
      v5 = v14;
      goto LABEL_9;
    }

    v5 = [*(a1 + 32) _responseForInvalidAccountResolution:?];
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(*(a1 + 56));
      *buf = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = v5;
      v8 = "Calling %{public}@ completion with invalid account resolution result %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
    }
  }

  else
  {
    v5 = [*(a1 + 32) _responseForInvalidRegistrationStatus:a2];
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(*(a1 + 56));
      *buf = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = v5;
      v8 = "Calling %{public}@ completion with invalid registration status result %@";
      goto LABEL_7;
    }
  }

  (*(*(a1 + 48) + 16))();
  v9 = [*(a1 + 32) delegate];
  [v9 pk_didFinishInteractionForIntent:*(a1 + 40)];

LABEL_9:
}

void sub_100007544(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = @"NO";
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    if (a2)
    {
      v8 = @"YES";
    }

    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with success %@, intentResponse %@", &v9, 0x20u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
}

void sub_100007868(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_1000078DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[12])
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = NSStringFromSelector(*(a1 + 56));
      v5 = *(*(a1 + 32) + 96);
      *buf = 138543618;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with preDeterminedIntentResponse %@", buf, 0x16u);
    }

    v6 = *(*(a1 + 32) + 96);
    (*(*(a1 + 48) + 16))();
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = 0;

    v9 = [*(a1 + 32) delegate];
    [v9 pk_didFinishInteractionForIntent:*(a1 + 40)];
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100007A98;
    v12[3] = &unk_1000148D8;
    v12[4] = v2;
    v11 = *(a1 + 48);
    v10 = v11;
    v14 = v11;
    v13 = *(a1 + 40);
    [v2 peerPaymentRegistrationStatusWithCompletion:v12];
  }
}

void sub_100007A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v4 = *(a1 + 32);
    if (!a3)
    {
      v10 = *(a1 + 40);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100007CA8;
      v13[3] = &unk_1000148B0;
      v12 = *(a1 + 48);
      v11 = v12;
      v14 = v12;
      [v4 _queue_performOperationsIfNecessary:7 intent:v10 completion:v13];
      v5 = v14;
      goto LABEL_9;
    }

    v5 = [*(a1 + 32) _responseForInvalidAccountResolution:?];
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(*(a1 + 56));
      *buf = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = v5;
      v8 = "Calling %{public}@ completion with invalid account resolution result %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
    }
  }

  else
  {
    v5 = [*(a1 + 32) _responseForInvalidRegistrationStatus:a2];
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(*(a1 + 56));
      *buf = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = v5;
      v8 = "Calling %{public}@ completion with invalid registration status result %@";
      goto LABEL_7;
    }
  }

  (*(*(a1 + 48) + 16))();
  v9 = [*(a1 + 32) delegate];
  [v9 pk_didFinishInteractionForIntent:*(a1 + 40)];

LABEL_9:
}

void sub_100007CA8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = @"NO";
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    if (a2)
    {
      v8 = @"YES";
    }

    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with success %@, intentResponse %@", &v9, 0x20u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
}

void sub_100007FCC(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_100008040(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[12])
  {
    v3 = +[INStringResolutionResult notRequired];
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSelector(*(a1 + 56));
      *buf = 138543618;
      v15 = v5;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with fast forward response %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000081D8;
    v10[3] = &unk_1000146F8;
    v9 = *(a1 + 48);
    v6 = v9;
    v13 = v9;
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    [v2 peerPaymentRegistrationStatusWithCompletion:v10];

    v3 = v13;
  }
}

void sub_1000081D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    v4 = +[INStringResolutionResult notRequired];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      v14 = 138543618;
      v15 = v6;
      v16 = 2112;
      v17 = v4;
      v7 = "Calling %{public}@ completion with not required result %@ due to registration status";
      goto LABEL_7;
    }

LABEL_8:

    (*(*(a1 + 48) + 16))(*(a1 + 48), v4, v8);
    goto LABEL_9;
  }

  if (a3)
  {
    v4 = +[INStringResolutionResult notRequired];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      v14 = 138543618;
      v15 = v6;
      v16 = 2112;
      v17 = v4;
      v7 = "Calling %{public}@ completion with not required result %@ due to account resolution status";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, &v14, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v4 = [*(a1 + 32) note];
  if ([v4 length])
  {
    v9 = [*(a1 + 40) siriLocale];
    v10 = [v4 pk_uppercaseFirstStringForLocale:v9];
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Intent included note %@, which was capitalized to %@.", &v14, 0x16u);
    }

    v12 = [INStringResolutionResult successWithResolvedString:v10];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Intent does not include a note.", &v14, 2u);
    }

    v12 = +[INStringResolutionResult notRequired];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(*(a1 + 56));
    v14 = 138543618;
    v15 = v13;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with result %@", &v14, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:
}

void sub_100008700(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_100008774(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[12])
  {
    v3 = +[INSendPaymentPayeeResolutionResult notRequired];
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSelector(*(a1 + 56));
      *buf = 138543618;
      v13 = v5;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with fast forward response %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000890C;
    v9[3] = &unk_1000146F8;
    v8 = *(a1 + 48);
    v6 = v8;
    v11 = v8;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v7;
    [v2 peerPaymentRegistrationStatusWithCompletion:v9];

    v3 = v11;
  }
}

void sub_10000890C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    if (!a3)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100008B00;
      v12[3] = &unk_1000148B0;
      v11 = *(a1 + 48);
      v10 = v11;
      v13 = v11;
      [v8 _queue_performOperationsIfNecessary:1 intent:v9 completion:v12];
      v4 = v13;
      goto LABEL_9;
    }

    v4 = +[INSendPaymentPayeeResolutionResult notRequired];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      *buf = 138543618;
      v15 = v6;
      v16 = 2112;
      v17 = v4;
      v7 = "Calling %{public}@ completion with not required result %@ due to account resolution status";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0x16u);
    }
  }

  else
  {
    v4 = +[INSendPaymentPayeeResolutionResult notRequired];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      *buf = 138543618;
      v15 = v6;
      v16 = 2112;
      v17 = v4;
      v7 = "Calling %{public}@ completion with not required result %@ due to registration status";
      goto LABEL_7;
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:
}

void sub_100008B00(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = @"NO";
    v10 = 138543874;
    v11 = v8;
    v12 = 2112;
    if (a2)
    {
      v9 = @"YES";
    }

    v13 = v9;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with success %@, payeeResolutionResult %@", &v10, 0x20u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
}

void sub_100008E24(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_100008E98(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[12])
  {
    v3 = +[INSendPaymentCurrencyAmountResolutionResult notRequired];
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSelector(*(a1 + 56));
      *buf = 138543618;
      v15 = v5;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with fast forward response %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009030;
    v10[3] = &unk_1000146F8;
    v9 = *(a1 + 48);
    v6 = v9;
    v13 = v9;
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    [v2 peerPaymentRegistrationStatusWithCompletion:v10];

    v3 = v13;
  }
}

void sub_100009030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    v4 = +[INSendPaymentCurrencyAmountResolutionResult notRequired];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      *buf = 138543618;
      v36 = v6;
      v37 = 2112;
      v38 = v4;
      v7 = "Calling %{public}@ completion with not required result %@ due to registration status";
      goto LABEL_7;
    }

LABEL_8:

    (*(*(a1 + 48) + 16))();
    goto LABEL_9;
  }

  if (a3)
  {
    v4 = +[INSendPaymentCurrencyAmountResolutionResult notRequired];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      *buf = 138543618;
      v36 = v6;
      v37 = 2112;
      v38 = v4;
      v7 = "Calling %{public}@ completion with not required result %@ due to account resolution status";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v4 = [*(a1 + 32) currencyAmount];
  v8 = [*(a1 + 40) pkCurrencyAmountFromIntentAmount:v4];
  if (v8)
  {
    v9 = *(a1 + 40);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100009504;
    v32[3] = &unk_100014950;
    v31 = *(a1 + 48);
    v10 = v31;
    v34 = v31;
    v33 = v4;
    [v9 validateCurrencyAmount:v8 completion:v32];

    v11 = v34;
  }

  else
  {
    v12 = [v4 amount];
    if (v12 && (v13 = v12, [v4 currencyCode], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
    {
      v18 = [*(a1 + 40) peerPaymentService];
      v19 = [v18 account];
      v20 = [v19 currentBalance];
      v11 = [v20 currency];

      if ([v11 length])
      {
        v21 = [INCurrencyAmount alloc];
        v22 = [v4 amount];
        v23 = [v21 initWithAmount:v22 currencyCode:v11];

        v24 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = NSStringFromSelector(*(a1 + 56));
          *buf = 138543618;
          v36 = v25;
          v37 = 2112;
          v38 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with confirmation of inferred amount currency, %@.", buf, 0x16u);
        }

        v26 = *(a1 + 48);
        v27 = [INSendPaymentCurrencyAmountResolutionResult confirmationRequiredWithCurrencyAmountToConfirm:v23];
        (*(v26 + 16))(v26, v27);
      }

      else
      {
        v28 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = NSStringFromSelector(*(a1 + 56));
          *buf = 138543362;
          v36 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with needs value because we could not infer currency.", buf, 0xCu);
        }

        v30 = *(a1 + 48);
        v23 = +[INSendPaymentCurrencyAmountResolutionResult needsValue];
        (*(v30 + 16))(v30, v23);
      }
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = NSStringFromSelector(*(a1 + 56));
        *buf = 138543362;
        v36 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with needs value.", buf, 0xCu);
      }

      v17 = *(a1 + 48);
      v11 = +[INSendPaymentCurrencyAmountResolutionResult needsValue];
      (*(v17 + 16))(v17, v11);
    }
  }

LABEL_9:
}

void sub_100009504(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v10 = PKLogFacilityTypeGetObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v11)
    {
      v12 = NSStringFromSelector(*(a1 + 48));
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with currency unsupported response", &v22, 0xCu);
    }

    v13 = *(a1 + 40);
    v14 = 3;
LABEL_13:
    v17 = [INSendPaymentCurrencyAmountResolutionResult unsupportedForReason:v14];
    goto LABEL_14;
  }

  if (a3)
  {
    if (v11)
    {
      v15 = NSStringFromSelector(*(a1 + 48));
      v22 = 138543362;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with amount below minimum response", &v22, 0xCu);
    }

    v13 = *(a1 + 40);
    v14 = 1;
    goto LABEL_13;
  }

  if (a4)
  {
    if (v11)
    {
      v16 = NSStringFromSelector(*(a1 + 48));
      v22 = 138543362;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with amount above maximum response", &v22, 0xCu);
    }

    v13 = *(a1 + 40);
    v14 = 2;
    goto LABEL_13;
  }

  if (a5)
  {
    if (v11)
    {
      v19 = NSStringFromSelector(*(a1 + 48));
      v22 = 138543362;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with generic unsupported response", &v22, 0xCu);
    }

    v13 = *(a1 + 40);
    v17 = +[INSendPaymentCurrencyAmountResolutionResult unsupported];
  }

  else
  {
    if (v11)
    {
      v20 = NSStringFromSelector(*(a1 + 48));
      v21 = *(a1 + 32);
      v22 = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with success for currency amount: %@", &v22, 0x16u);
    }

    v13 = *(a1 + 40);
    v17 = [INSendPaymentCurrencyAmountResolutionResult successWithResolvedCurrencyAmount:*(a1 + 32)];
  }

LABEL_14:
  v18 = v17;
  (*(v13 + 16))(v13, v17);
}

uint64_t sub_100009BCC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009BE4(uint64_t a1)
{
  if ((*(a1 + 72) & 4) != 0)
  {
    v6 = *(a1 + 32);
    if (v6[10])
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100009D88;
      v24[3] = &unk_100014978;
      v9 = *(a1 + 56);
      v24[4] = *(a1 + 32);
      v25 = v9;
      [v6 _queue_performQuoteForIntent:v7 peerPaymentController:v8 completion:v24];
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10000BFF8(v10, v11, v12, v13, v14, v15, v16, v17);
      }

      v18 = [*(a1 + 32) delegate];
      [v18 pk_didFinishInteractionForIntent:*(a1 + 40)];

      v19 = [*(a1 + 32) _intentResponseForGenericFailure];
      v20 = *(*(a1 + 64) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      v22 = *(*(*(a1 + 64) + 8) + 40);
      v23 = *(*(a1 + 32) + 88);
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v2 = *(a1 + 56);
    v3 = *(*(*(a1 + 64) + 8) + 40);
    v4 = *(*(a1 + 32) + 88);
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

void sub_100009DA8(uint64_t a1)
{
  if ((*(a1 + 80) & 2) != 0 && (v2 = *(a1 + 32), !v2[10]))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100009EC8;
    v8[3] = &unk_1000149C8;
    v7 = *(a1 + 72);
    v8[4] = v2;
    v12 = v7;
    v10 = *(a1 + 56);
    v9 = *(a1 + 40);
    v11 = *(a1 + 64);
    [v2 _queue_fetchQuoteForIntent:v5 peerPaymentController:v6 completion:v8];
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

void sub_100009EC8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (*(*(a1 + 32) + 80))
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000C030(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v16 = [*(a1 + 32) delegate];
    [v16 pk_didFinishInteractionForIntent:*(a1 + 40)];

    v17 = [*(a1 + 32) _intentResponseForGenericFailure];
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100009FD4(uint64_t a1)
{
  if ((*(a1 + 72) & 1) != 0 && (v2 = *(a1 + 32), !v2[9]))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000A0D8;
    v7[3] = &unk_100014A18;
    v7[4] = v2;
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    [v2 _queue_identifyRecipientWithIntent:v5 peerPaymentController:v6 completion:v7];
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

void sub_10000A0D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 72))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000C068(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = *(a1 + 48);
    v13 = [*(a1 + 32) _intentResponseForGenericFailure];
    (*(v12 + 16))(v12, 0, v13, v3);
  }
}

void sub_10000A2C0(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A408;
  block[3] = &unk_100014A68;
  v24 = a2;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v16 = *(a1 + 48);
  v11 = *(&v16 + 1);
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v20 = v16;
  v19 = v12;
  v21 = v7;
  v22 = v8;
  v17 = *(a1 + 64);
  v13 = v17;
  v23 = v17;
  v14 = v8;
  v15 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000A408(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received successful response from performQuote, sending payment message", &v20, 2u);
    }

    PKAnalyticsSendEvent();
    v5 = [*(a1 + 32) payee];
    v6 = [*(a1 + 32) note];
    v7 = v6;
    if (v6 && [v6 length])
    {
      v8 = &PKAggDKeyPeerPaymentBubbleSendWithMemo;
    }

    else
    {
      v8 = &PKAggDKeyPeerPaymentBubbleSendWithoutMemo;
    }

    v10 = *v8;
    PKAnalyticsSendEvent();
    v11 = [v5 personHandle];
    v12 = [v11 value];

    v13 = [*(a1 + 40) senderPhoneOrEmail];
    v14 = [*(a1 + 48) _peerPaymentMessageForAuthorizedPaymentWithQuote:*(a1 + 56) performResponse:*(a1 + 64) recipientHandle:v12 senderHandle:v13 memo:v7];
    v15 = [v14 localProperties];
    [v14 setLocalProperties:0];
    [*(a1 + 48) sendMessage:v14 toRecipient:v12];
    [v14 reportMessageSentWithLocalProperties:v15];
    v9 = [[INSendPaymentIntentResponse alloc] initWithCode:3 userActivity:0];
    v16 = [*(a1 + 48) _paymentRecordFromQuote:*(a1 + 56) payee:v5 note:v7 status:2];
    [v9 setPaymentRecord:v16];
  }

  else
  {
    if (v4)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received failure response from performQuote, returning error intent response", &v20, 2u);
    }

    v9 = [*(a1 + 48) _intentResponseFromWebServiceError:*(a1 + 72)];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(*(a1 + 88));
    v20 = 138543618;
    v21 = v17;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with result %@", &v20, 0x16u);
  }

  v18 = *(a1 + 96);
  (*(*(a1 + 80) + 16))();
  v19 = [*(a1 + 48) delegate];
  [v19 pk_didFinishInteractionForIntent:*(a1 + 32)];
}

void sub_10000A820(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A93C;
  block[3] = &unk_100014AB8;
  v22 = a2;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v17 = v10;
  v18 = v11;
  v19 = v7;
  v20 = v8;
  v15 = *(a1 + 48);
  v12 = v15;
  v21 = v15;
  v13 = v8;
  v14 = v7;
  dispatch_async(v9, block);
}

void sub_10000A93C(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received successful quote response.", &v12, 2u);
    }

    v3 = [*(a1 + 32) payee];
    v4 = [*(a1 + 32) note];
    v5 = [*(a1 + 40) _paymentRecordFromQuote:*(a1 + 48) payee:v3 note:v4 status:1];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Created payment record %@ from quote %@", &v12, 0x16u);
    }

    v7 = [[INSendPaymentIntentResponse alloc] initWithCode:1 userActivity:0];
    [v7 setPaymentRecord:v5];
    objc_storeStrong((*(a1 + 40) + 80), *(a1 + 48));

LABEL_11:
    goto LABEL_12;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Quote was not succesful, creating intent response from errror: %@", &v12, 0xCu);
    }

    v7 = [*(a1 + 40) _intentResponseFromWebServiceError:*(a1 + 56)];
    v3 = [*(a1 + 40) delegate];
    [v3 pk_didFinishInteractionForIntent:*(a1 + 32)];
    goto LABEL_11;
  }

  v7 = [*(a1 + 40) _intentResponseForGenericFailure];
  v11 = [*(a1 + 40) delegate];
  [v11 pk_didFinishInteractionForIntent:*(a1 + 32)];

  v2 = PKLogFacilityTypeGetObject();
LABEL_12:
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(*(a1 + 72));
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with result %@", &v12, 0x16u);
  }

  v10 = *(a1 + 56);
  (*(*(a1 + 64) + 16))();
}

void sub_10000B098(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) intentQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B1C0;
  v15[3] = &unk_100014B08;
  v22 = a2;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v18 = v7;
  v19 = *(a1 + 48);
  v20 = v8;
  v12 = *(a1 + 56);
  v23 = *(a1 + 64);
  v21 = v12;
  v13 = v8;
  v14 = v7;
  dispatch_async(v9, v15);
}

void sub_10000B1C0(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Recipient has a valid registration status.", &v17, 2u);
    }

    v3 = [INSendPaymentPayeeResolutionResult successWithResolvedPerson:*(a1 + 32)];
    objc_storeStrong((*(a1 + 40) + 72), *(a1 + 48));
    [*(a1 + 56) selectMode:1];
  }

  else
  {
    v4 = *(a1 + 64);
    v2 = PKLogFacilityTypeGetObject();
    v5 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v5)
      {
        v6 = PKPeerPaymentRecipientStatusToString();
        v7 = *(a1 + 64);
        v17 = 138412546;
        v18 = v6;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Recipient lookup returned status: %@ error: %@", &v17, 0x16u);
      }

      v8 = [*(a1 + 40) _intentResponseFromWebServiceError:*(a1 + 64)];
      v9 = *(a1 + 40);
      v10 = *(v9 + 96);
      *(v9 + 96) = v8;

      v11 = +[INSendPaymentPayeeResolutionResult notRequired];
    }

    else
    {
      if (v5)
      {
        v12 = PKPeerPaymentRecipientStatusToString();
        v17 = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Recipient lookup returned status: %@ but no error", &v17, 0xCu);
      }

      v11 = [INSendPaymentPayeeResolutionResult unsupportedForReason:3];
    }

    v3 = v11;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(*(a1 + 88));
    v17 = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with result %@", &v17, 0x16u);
  }

  v14 = *(a1 + 40);
  v15 = *(v14 + 88);
  *(v14 + 88) = v3;
  v16 = v3;

  (*(*(a1 + 72) + 16))();
}

void sub_10000BBB8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000C0A0(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No handler for intent of type %{public}@", &v5, 0xCu);
}