const __CFString *PKPeerPaymentMessagesContentStateToString(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"Unknown";
  }

  else
  {
    return off_10001D258[a1 - 1];
  }
}

void sub_1000013C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000013EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000014A4;
  v5[3] = &unk_10001C828;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1000014A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [[PKFamilyMemberCollection alloc] initWithFamilyMembers:*(a1 + 32)];
    [v4 _updateWithFamilyCollection:v3];

    WeakRetained = v4;
  }
}

void sub_100002160(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000021B8(id a1)
{
  v2 = [NSURL URLWithString:@"prefs:root=MESSAGES"];
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  [v1 openSensitiveURL:v2 withOptions:0];
}

void sub_100002230(id a1)
{
  v2 = [NSURL URLWithString:@"prefs:root=PASSBOOK"];
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  [v1 openSensitiveURL:v2 withOptions:0];
}

void sub_1000022AC(uint64_t a1)
{
  [PKAnalyticsReporter reportAppleCashSenderErrorPage:PKAnalyticsReportPeerPaymentErrorAccountRestrictedLockedPageTag buttonTag:PKAnalyticsReportPeerPaymentGoToWalletButtonTag];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _openWallet];
}

void sub_10000231C(id a1)
{
  v2 = [NSURL URLWithString:@"prefs:root=MESSAGES&path=MADRID_ACCOUNTS_BUTTON"];
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  [v1 openSensitiveURL:v2 withOptions:0];
}

void sub_10000256C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3 == *(a1 + 40))
  {
    [*(a1 + 32) _reloadContent];
    v4 = *(*(a1 + 32) + 40);

    [v4 setNeedsLayout];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PKPeerPaymentMessagesContentStateToString(v3);
      v7 = PKPeerPaymentMessagesContentStateToString(*(a1 + 40));
      v8 = v7;
      v9 = *(a1 + 48);
      *buf = 134218754;
      v35 = v2;
      if (v9)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v36 = 2114;
      v37 = v6;
      v38 = 2114;
      v39 = v7;
      v40 = 2114;
      v41 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController %p: Changed content state. From %{public}@ -> %{public}@. (animated: %{public}@)", buf, 0x2Au);
    }

    *(*(a1 + 32) + 24) = *(a1 + 40);
    v11 = [*(a1 + 32) _viewControllerForState:v3 shouldLoad:0];
    v12 = [*(a1 + 32) _viewControllerForState:*(a1 + 40) shouldLoad:1];
    v13 = [*(a1 + 32) _shouldEmbedViewControllerInNavigationControllerForState:v3];
    v14 = [*(a1 + 32) _shouldEmbedViewControllerInNavigationControllerForState:*(a1 + 40)];
    if (v13)
    {
      v15 = v11 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = *(*(a1 + 32) + 48);

      v11 = v16;
    }

    if (v14)
    {
      v17 = objc_alloc_init(PKPeerPaymentMessagesContentNavigationController);
      v33 = v12;
      v18 = [NSArray arrayWithObjects:&v33 count:1];
      [v17 setViewControllers:v18];

      v12 = v17;
    }

    v19 = [v12 view];
    [*(*(a1 + 32) + 40) bounds];
    [v19 setFrame:?];

    objc_storeStrong((*(a1 + 32) + 48), v12);
    if (v11)
    {
      if (*(a1 + 48))
      {
        v20 = 0.4;
      }

      else
      {
        v20 = 0.0;
      }

      [*(a1 + 32) addChildViewController:v12];
      [v12 didMoveToParentViewController:*(a1 + 32)];
      v21 = *(a1 + 32);
      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_10000293C;
      v29 = &unk_10001C940;
      v22 = v11;
      v23 = *(a1 + 32);
      v30 = v22;
      v31 = v23;
      v32 = v3;
      [v21 transitionFromViewController:v22 toViewController:v12 duration:5242912 options:0 animations:&v26 completion:v20];
    }

    else
    {
      v24 = *(*(a1 + 32) + 40);
      v25 = [v12 view];
      [v24 addSubview:v25];

      [*(a1 + 32) addChildViewController:v12];
      [v12 didMoveToParentViewController:*(a1 + 32)];
    }

    [*(*(a1 + 32) + 40) setNeedsLayout];
    [*(a1 + 32) _reportAnalyticsForStateWithEventType:PKAnalyticsReportEventTypeViewDidAppear];
  }
}

void sub_10000293C(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) willMoveToParentViewController:0];
    [*(a1 + 32) removeFromParentViewController];
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 40) + 32);
    v5 = [NSNumber numberWithUnsignedInteger:v3];
    [v4 setObject:0 forKeyedSubscript:v5];
  }
}

void sub_100002F68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100002F84(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained _transitionToRequiredContentStateAnimated:1];
    }

    else if (v7)
    {
      [WeakRetained _handleRecipientError:v7];
    }

    else
    {
      [WeakRetained _transitionToState:8 animated:1];
    }
  }
}

void sub_1000030F0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = a4;
  if (a2 == 1)
  {
    [*(a1 + 32) _transitionToState:11 animated:1];
    v8 = *(a1 + 32);
    v9 = [v12 conversationAddress];
    [v8 _prewarmDeviceScoreForRecipient:v9];
  }

  else
  {
    v10 = [v12 statusReason];
    v11 = *(a1 + 32);
    if (v10 == 2)
    {
      [v11 _transitionToState:14 animated:1];
    }

    else
    {
      [v11 _handleRecipientError:v7];
    }
  }
}

void sub_1000032F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = objc_alloc_init(NSMutableArray);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          if ([v15 status] == 1)
          {
            v16 = v8;
          }

          else
          {
            v16 = v9;
          }

          [v16 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v12);
    }

    v32[0] = @"PKPeerPaymentGroupValidRecipientsKey";
    v17 = [v8 copy];
    v32[1] = @"PKPeerPaymentGroupInvalidRecipientsKey";
    v33[0] = v17;
    v18 = [v9 copy];
    v33[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
    v20 = *(a1 + 32);
    v21 = *(v20 + 112);
    *(v20 + 112) = v19;

    if (![v8 count])
    {
      v26 = *(a1 + 48);
      if (v26)
      {
        (*(v26 + 16))(v26, 0, 0);
      }

      goto LABEL_25;
    }

    v22 = [*(a1 + 32) _identifiedRecipientForRecipientAddress:*(*(a1 + 32) + 88)];
    v23 = *(a1 + 32);
    if (v22 || !v23[11])
    {
      [v23 _prewarmDeviceScoreForGroupsWithRecipients:{*(a1 + 40), v28}];
      v24 = *(a1 + 48);
      if (v24)
      {
        v25 = *(v24 + 16);
LABEL_23:
        v25();
      }
    }

    else
    {
      v27 = *(a1 + 48);
      if (v27)
      {
        v25 = *(v27 + 16);
        goto LABEL_23;
      }
    }

LABEL_25:
    goto LABEL_26;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v6);
  }

LABEL_26:
}

uint64_t sub_1000047B0(uint64_t a1)
{
  v2 = PKIDSNormalizedAddress();
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [v4 isEqualToString:v5];
    }
  }

  return v7;
}

void sub_100004B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004B38(void *a1, uint64_t a2, uint64_t a3)
{
  *(*(a1[7] + 8) + 24) = a1[8] == a3;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Peer Payment Messages Extension: User does not want to send payment message.", v8, 2u);
    }
  }

  if (a3)
  {
    if (a3 != 2)
    {
      goto LABEL_10;
    }

    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  (*(a1[v6] + 16))();
LABEL_10:
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[7] + 8) + 24));
  }

  return result;
}

void sub_100004FA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32) && *(a1 + 96) == 1)
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 48) identifier];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000521C;
      v19[3] = &unk_10001CAC0;
      v18 = *(a1 + 40);
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v7 = *(a1 + 48);
      *&v8 = v6;
      *(&v8 + 1) = v7;
      *&v9 = v18;
      *(&v9 + 1) = v5;
      v20 = v9;
      v21 = v8;
      v24 = *(a1 + 88);
      v22 = *(a1 + 72);
      v23 = *(a1 + 80);
      [v3 _hostSceneIdentifierForMessageIdentifier:v4 withCompletion:v19];

      return;
    }

    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001000C();
    }

    v13 = *(a1 + 40);
    v14 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_CONTROLLER_STATE_UNAVAILABLE_ERROR_TITLE");
    v15 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_CONTROLLER_STATE_UNAVAILABLE_ERROR_DESCRIPTION");
    v16 = PKDisplayableErrorCustom();
    [v13 _handleError:v16];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not calling Perform on peer payment quote for message %@", buf, 0xCu);
    }
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    (*(v17 + 16))(v17, 0, 0);
  }
}

void sub_10000521C(uint64_t a1, void *a2)
{
  v4 = (a1 + 32);
  objc_storeStrong((*(a1 + 32) + 144), a2);
  v5 = a2;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000534C;
  v12[3] = &unk_10001CA98;
  v6 = *(a1 + 40);
  *&v7 = v6;
  *(&v7 + 1) = *v4;
  v11 = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v13 = v11;
  v14 = v10;
  v17 = *(a1 + 80);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  [v6 performQuoteWithCompletion:v12];
}

void sub_10000534C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  v11 = @"NO";
  if (v10)
  {
    if (a2)
    {
      v11 = @"YES";
    }

    *buf = 138543618;
    v46 = v11;
    v47 = 2112;
    v48 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: performQuoteWithCompletion returned success: %{public}@ error: %@", buf, 0x16u);
  }

  v12 = *(a1 + 40);
  v13 = *(v12 + 144);
  *(v12 + 144) = 0;

  v14 = 0;
  if (v8 && (a2 & 1) == 0)
  {
    v14 = PKTitleForDisplayableError();
  }

  if ([*(a1 + 48) length])
  {
    v15 = *(a1 + 48);
  }

  else
  {
    v15 = [*(a1 + 56) memo];
  }

  v16 = v15;
  if (!a2)
  {
    if (!v8)
    {
      goto LABEL_37;
    }

    v23 = [v8 userInfo];
    v24 = [v23 objectForKey:NSUnderlyingErrorKey];

    v25 = [v24 domain];
    if ([v25 isEqualToString:PKPeerPaymentWebServiceErrorDomain])
    {
      v26 = [v24 code];

      if (v26)
      {
LABEL_21:
        [*(a1 + 40) _handleError:v8];

        v14 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v25 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SEND_MONEY_GENERIC_ERROR_TITLE");
      v27 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SEND_MONEY_GENERIC_ERROR_MESSAGE");
      v44 = PKDisplayableErrorCustom();

      v8 = v44;
    }

    goto LABEL_21;
  }

  [*(a1 + 56) updateWithPeerPaymentPerformResponse:v7];
  v17 = *(a1 + 80);
  if (v17 == 3)
  {
    v18 = [v7 recurringPaymentIdentifier];
    v28 = +[PKPeerPaymentService sharedInstance];
    v29 = [*(a1 + 56) recurringPaymentMemo];
    [v28 updateRecurringPaymentMemo:v29 identifier:v18 completion:0];

    [v28 updateRecurringPaymentsWithCompletion:0];
LABEL_25:

    goto LABEL_26;
  }

  if (v17 == 1)
  {
    v18 = objc_alloc_init(PKProtobufPeerPaymentMessage);
    [v18 setMemo:v16];
    v19 = [v7 transactionIdentifier];
    [v18 setTransactionIdentifier:v19];

    v20 = +[PKPeerPaymentService sharedInstance];
    v21 = [v18 data];
    [v20 receivedPeerPaymentMessageData:v21];

    if ([v16 length])
    {
      [*(a1 + 56) setMemo:v16];
      v22 = &PKAggDKeyPeerPaymentBubbleSendWithMemo;
    }

    else
    {
      v22 = &PKAggDKeyPeerPaymentBubbleSendWithoutMemo;
    }

    v30 = *v22;
    PKAnalyticsSendEvent();
    [*(a1 + 56) reportMessageSentWithLocalProperties:*(a1 + 64)];
    goto LABEL_25;
  }

LABEL_26:
  if ([*(a1 + 40) _peerPaymentParicipantShouldSeeMemoSharingMessageForMemo:v16] && objc_msgSend(*(a1 + 32), "mode") == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100010048();
    }

    v31 = +[NSUserDefaults standardUserDefaults];
    [v31 setObject:&__kCFBooleanTrue forKey:@"PKPeerPaymentParticipantSharingMemoMessage"];
  }

  v32 = +[PKMessagesAppSharedContext sharedContext];
  v33 = [*(a1 + 56) identifier];
  [v32 removeExternalizedControllerStateDataForMessageIdentifier:v33];

  v34 = *(a1 + 40);
  if (v34[2].info || v34[2].data)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v46 = v34;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Peer Payment Messages Extension: Controller:%p Invalidating pending request values post successful perform quote.", buf, 0xCu);
    }

    v35 = *(a1 + 40);
    v36 = *(v35 + 72);
    *(v35 + 72) = 0;

    v37 = *(a1 + 40);
    v38 = *(v37 + 80);
    *(v37 + 80) = 0;

    v39 = *(a1 + 40);
    v40 = *(v39 + 88);
    *(v39 + 88) = 0;

    v41 = *(a1 + 40);
    v24 = *(v41 + 96);
    *(v41 + 96) = 0;
    goto LABEL_36;
  }

LABEL_37:
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v42 = @"NO";
    if (a2)
    {
      v42 = @"YES";
    }

    *buf = 138543618;
    v46 = v42;
    v47 = 2112;
    v48 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Peer Payment Messages Extension: Calling payment completion with shouldSend: %{public}@, localizedInvalidationDescription: %@", buf, 0x16u);
  }

  v43 = *(a1 + 72);
  if (v43)
  {
    (*(v43 + 16))(v43, a2, v14);
  }
}

void sub_100005B20(void *a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = [*(a1[4] + 112) objectForKeyedSubscript:@"PKPeerPaymentGroupValidRecipientsKey"];
  v5 = [v4 count];

  if (!v3)
  {
    v3 = objc_alloc_init(PKPeerPaymentPendingRequest);
    [v3 setRequestToken:a1[5]];
  }

  [v3 setGroupID:a1[6]];
  [v3 setValidRecipientCount:v5];
  [v3 setSentOnThisDevice:1];
  v6 = +[PKPeerPaymentService sharedInstance];
  v8 = v3;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v6 insertOrUpdatePeerPaymentPendingRequests:v7 shouldScheduleNotifications:0];
}

void sub_1000060B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000060E4(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && [WeakRetained presentationStyle] != 2 && v7[20] == 2)
  {
    v8 = [v5 _presentationSemanticContext] & 0xFFFFFFFFFFFFFFFELL;
    v9 = [v11 traitCollection];
    v10 = [v9 _presentationSemanticContext] & 0xFFFFFFFFFFFFFFFELL;

    if (v8 == 2 || v10 != 2)
    {
      if (v8 == 2 && v10 != 2)
      {
        [v7 _reportAnalyticsViewDisappeared];
      }
    }

    else if (!v7[13])
    {
      [v7 _reportAnalyticsViewAppearedWithArchivedParent:0];
    }
  }
}

void sub_1000063A4(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v4 = +[PKPeerPaymentTheme backgroundColor];
    CGContextSetFillColorWithColor(v3, [v4 CGColor]);
  }

  CGContextFillRect(v3, *(a1 + 40));
  if ([*(a1 + 32) presentationStyle] == 2)
  {
    v7 = [*(a1 + 32) _viewControllerForState:12 shouldLoad:1];
    v5 = [v7 generatedSnapshot];
    v6 = [v7 view];
    [v6 frame];
    [v5 drawInRect:?];
  }
}

void sub_1000075F8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v6 = [*(a1 + 40) paymentIdentifier];
    [v3 _handlePeerPaymentRemoteAlertCompletedForPaymentIdentifier:v6 completion:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }
}

void sub_10000769C(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000775C;
  v10[3] = &unk_10001CBB0;
  v14 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_10000775C(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v11 = v2;
      v3 = [v11 userInfo];
      v4 = [v3 objectForKey:NSUnderlyingErrorKey];

      v5 = [v4 domain];
      if ([v5 isEqualToString:PKPeerPaymentWebServiceErrorDomain])
      {
        v6 = [v4 code];

        if (v6)
        {
LABEL_7:
          [*(a1 + 40) _handleError:v11 forAction:4 withCompletion:*(a1 + 48)];

          return;
        }

        v5 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_ACCEPT_MONEY_GENERIC_ERROR_TITLE");
        v7 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_ACCEPT_MONEY_GENERIC_ERROR_MESSAGE");
        v8 = PKDisplayableErrorCustom();

        v11 = v8;
      }

      goto LABEL_7;
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(v9 + 16);

    v10();
  }
}

uint64_t sub_1000078DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000078F4(id a1, __CFUserNotification *a2, unint64_t a3)
{
  if (!a3)
  {
    v4 = [NSURL alloc];
    v5 = [NSString stringWithFormat:@"wallet://%@", PKUserNotificationActionRouteAddPaymentCard];
    v7 = [v4 initWithString:v5];

    v6 = +[LSApplicationWorkspace defaultWorkspace];
    [v6 openSensitiveURL:v7 withOptions:0];
  }
}

uint64_t sub_1000079A8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100007D58(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) underlyingMessage];
  v4 = [v3 senderParticipantIdentifier];
  v5 = [*(a1 + 40) activeConversation];
  v6 = [v5 localParticipantIdentifier];
  v7 = [v4 isEqual:v6];

  v8 = [v3 time];
  v9 = [v15 peerPaymentMessageReceivedDate];
  v10 = v9;
  if (v9)
  {
    [v9 timeIntervalSinceReferenceDate];
    v12 = v11 != 0.0;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    if (!((v15 == 0 || v12) | v7 & 1 | (v13 == 0.0)))
    {
      v14 = +[PKPeerPaymentService sharedInstance];
      [v14 updateMessageReceivedDate:v8 forTransactionWithIdentifier:*(a1 + 48)];

      [v15 setPeerPaymentMessageReceivedDate:v8];
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100007EC0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

void sub_10000800C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100010084();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000868C(id a1, __CFUserNotification *a2, unint64_t a3)
{
  if (!a3)
  {
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    v4 = [NSURL URLWithString:@"prefs:root=PASSBOOK"];
    [v5 openSensitiveURL:v4 withOptions:0];
  }
}

id *sub_100008710(id *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [result[4] _presentInlineSetupFlowWithPeerPaymentMessage:result[5] flowState:0 completion:0];
  }

  return result;
}

void sub_100008BC4(id a1, __CFUserNotification *a2, unint64_t a3)
{
  if (!a3)
  {
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    v4 = [NSURL URLWithString:@"prefs:root=PASSBOOK"];
    [v5 openSensitiveURL:v4 withOptions:0];
  }
}

id *sub_100008C48(id *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [result[4] _presentInlineSetupFlowWithPeerPaymentMessage:result[5] flowState:0 completion:0];
  }

  return result;
}

void sub_1000093FC(id a1, __CFUserNotification *a2, unint64_t a3)
{
  if (!a3)
  {
    [PKAnalyticsReporter reportAppleCashSenderErrorPage:PKAnalyticsReportPeerPaymentErrorContactsOnlyPageTag buttonTag:PKAnalyticsReportOkButtonTag];
  }
}

void sub_100009980(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v8 = [v4 currencyAmount];
  v6 = *(a1 + 56);
  v7 = [*(a1 + 40) senderAddress];
  [v3 _presentInlineSetupFlowWithAmount:v8 flowState:v6 senderAddress:v7 hostSceneIdentifier:v5 completion:*(a1 + 48)];
}

uint64_t sub_100009C08(uint64_t a1, uint64_t a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Peer payment setup flow presented with success %{public}@.", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_10000A350(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000A36C(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (!WeakRetained)
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        (*(v4 + 16))(v4, 0);
      }
    }

    v5 = [WeakRetained _currentRequestTokenForAmount:*(a1 + 32)];
    v6 = WeakRetained[2];
    v7 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000A4D4;
    v10[3] = &unk_10001CE28;
    objc_copyWeak(&v12, (a1 + 48));
    v11 = *(a1 + 40);
    [v6 quoteWithAmount:v7 source:1 requestToken:v5 completion:v10];

    objc_destroyWeak(&v12);
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

void sub_10000A4D4(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A5D0;
  block[3] = &unk_10001CE00;
  objc_copyWeak(&v16, (a1 + 40));
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v17 = a2;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v16);
}

void sub_10000A5D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }

  if (*(a1 + 64) == 1)
  {
    v4 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000A7D0;
    v13[3] = &unk_10001CDD8;
    objc_copyWeak(&v15, (a1 + 56));
    v14 = *(a1 + 48);
    [WeakRetained _confirmPaymentMessageInsertionWithQuote:v4 completion:v13];

    objc_destroyWeak(&v15);
    goto LABEL_13;
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 40) userInfo];
  v7 = [v6 objectForKey:NSUnderlyingErrorKey];

  v8 = [v7 domain];
  if (![v8 isEqualToString:PKPeerPaymentWebServiceErrorDomain])
  {
    goto LABEL_9;
  }

  v9 = [v7 code];

  if (!v9)
  {
    v8 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SEND_MONEY_GENERIC_ERROR_TITLE");
    v10 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SEND_MONEY_GENERIC_ERROR_MESSAGE");
    v11 = PKDisplayableErrorCustom();

    v5 = v11;
LABEL_9:
  }

  [WeakRetained _handleError:v5];
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, 0);
  }

LABEL_13:
}

uint64_t sub_10000A7D0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (!WeakRetained)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
      WeakRetained = 0;
    }
  }

  if ((a2 & 1) == 0)
  {
    [WeakRetained[2] resetQuote];
    if ([v9 _isGroupConversation])
    {
      v6 = [v9 _identifiedRecipientForRecipientAddress:v9[11]];
      if (v6)
      {
        [v9[2] selectIdentifiedRecipient:v6];
      }
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }

  return _objc_release_x1();
}

void sub_10000A9C8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(v3 + 16);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000AACC;
    v8[3] = &unk_10001CEA0;
    v8[4] = v3;
    v9 = v4;
    v10 = *(a1 + 48);
    [v5 formalRequestTokenForAmount:v9 source:2 completion:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

void sub_10000AACC(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000ABC0;
  v14[3] = &unk_10001CE78;
  v20 = a2;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = v7;
  v16 = v9;
  v17 = v10;
  v11 = *(a1 + 48);
  v18 = v8;
  v19 = v11;
  v12 = v8;
  v13 = v7;
  dispatch_async(&_dispatch_main_q, v14);
}

void sub_10000ABC0(uint64_t a1)
{
  if (*(a1 + 72) == 1 && *(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v4 = *(a1 + 64);

    [v2 _insertRequestMessageWithAmount:v3 requestToken:? completion:?];
    return;
  }

  v12 = *(a1 + 56);
  v5 = [*(a1 + 56) userInfo];
  v6 = [v5 objectForKey:NSUnderlyingErrorKey];

  v7 = [v6 domain];
  if (![v7 isEqualToString:PKPeerPaymentWebServiceErrorDomain])
  {
    goto LABEL_9;
  }

  v8 = [v6 code];

  if (!v8)
  {
    v7 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_REQUEST_MONEY_GENERIC_ERROR_TITLE");
    v9 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_REQUEST_MONEY_GENERIC_ERROR_MESSAGE");
    v10 = PKDisplayableErrorCustom();

    v12 = v10;
LABEL_9:
  }

  [*(a1 + 40) _handleError:v12];
  v11 = *(a1 + 64);
  if (v11)
  {
    (*(v11 + 16))(v11, 0);
  }
}

void sub_10000AEA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10000AEC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if ([*(a1 + 32) usesAppleCashBalance])
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    v4 = *(*(a1 + 40) + 16);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) identifier];
    v7 = [*(a1 + 32) frequency];
    v8 = [*(a1 + 32) startDate];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000B050;
    v11[3] = &unk_10001CE28;
    objc_copyWeak(&v13, (a1 + 64));
    v12 = *(a1 + 56);
    [v4 quoteWithAmount:v5 source:1 requestToken:0 alternateFundingSource:0 preserveCurrentBalance:v3 recurringPaymentIdentifier:v6 frequency:v7 startDate:v8 threshold:0 completion:v11];

    objc_destroyWeak(&v13);
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = *(v9 + 16);

      v10();
    }
  }
}

void sub_10000B050(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B14C;
  block[3] = &unk_10001CEC8;
  objc_copyWeak(&v16, (a1 + 40));
  v17 = a2;
  v13 = v7;
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v10 = v8;
  v11 = v7;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v16);
}

void sub_10000B14C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    if (*(a1 + 64) == 1)
    {
      [WeakRetained _confirmPaymentMessageInsertionWithQuote:*(a1 + 32) completion:*(a1 + 48)];
LABEL_11:
      WeakRetained = v11;
      goto LABEL_12;
    }

    v3 = *(a1 + 40);
    v4 = [v3 userInfo];
    v5 = [v4 objectForKey:NSUnderlyingErrorKey];

    v6 = [v5 domain];
    if ([v6 isEqualToString:PKPeerPaymentWebServiceErrorDomain])
    {
      v7 = [v5 code];

      if (v7)
      {
LABEL_8:
        [v11 _handleError:v3];
        v10 = *(a1 + 48);
        if (v10)
        {
          (*(v10 + 16))(v10, 0);
        }

        goto LABEL_11;
      }

      v6 = PKLocalizedPeerPaymentRecurringString(@"SETUP_GENERIC_ERROR_TITLE");
      v8 = PKLocalizedPeerPaymentRecurringString(@"SETUP_GENERIC_ERROR_MESSAGE");
      v9 = PKDisplayableErrorCustom();

      v3 = v9;
    }

    goto LABEL_8;
  }

LABEL_12:
}

void sub_10000B6D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_10000B6FC(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _insertPaymentMessageWithQuote:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }
}

uint64_t (**sub_10000B7DC(void *a1, uint64_t a2, uint64_t a3))(id, void)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v4 = a1[7];
      (*(a1[7] + 16))();
    }

    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: User does not want to insert payment message.", v11, 2u);
    }

    result = a1[8];
    if (result)
    {
      return result[2](result, 0);
    }
  }

  else
  {
    v7 = a1[6];
    (*(a1[6] + 16))();
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[8];

    return [v8 _insertPaymentMessageWithQuote:v9 completion:v10];
  }

  return result;
}

void sub_10000BD80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error inserting message: %@ with error: %@", buf, 0x16u);
    }

    [*(a1 + 40) _handleError:v3];
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BEF4;
    block[3] = &unk_10001CFD0;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10000BEF4(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Inserted message: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) view];
  [v4 setUserInteractionEnabled:0];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"PKBubbleInsertionDismissalDelay"];
  v7 = v6;
  if (!v6)
  {
    v6 = &off_10001E180;
  }

  [v6 doubleValue];
  v9 = v8;

  v10 = dispatch_time(0, (v9 * 1000000000.0));
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000C0A0;
  v12[3] = &unk_10001CFA8;
  v11 = *(a1 + 48);
  v12[4] = *(a1 + 40);
  v13 = v11;
  dispatch_after(v10, &_dispatch_main_q, v12);
}

uint64_t sub_10000C0A0(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:1];

  [*(a1 + 32) dismiss];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10000C424(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error inserting message %@ with error: %@", buf, 0x16u);
    }

    [*(a1 + 40) _handleError:v3];
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Inserted message: %@", buf, 0xCu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000C5C8;
    v10[3] = &unk_10001CFA8;
    v9 = *(a1 + 48);
    v10[4] = *(a1 + 40);
    v11 = v9;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

void sub_10000C5C8(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:0];

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"PKBubbleInsertionDismissalDelay"];
  v5 = v4;
  if (!v4)
  {
    v4 = &off_10001E180;
  }

  [v4 doubleValue];
  v7 = v6;

  v8 = dispatch_time(0, (v7 * 1000000000.0));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C6F0;
  v10[3] = &unk_10001CFA8;
  v9 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v9;
  dispatch_after(v8, &_dispatch_main_q, v10);
}

uint64_t sub_10000C6F0(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:1];

  [*(a1 + 32) dismiss];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10000C948(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_10000C964(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) underlyingMessage];
    v4 = [v3 senderAddress];

    v5 = [WeakRetained _identifiedRecipientForRecipientAddress:v4];
    if (v5)
    {
      v6 = +[PKMessagesAppSharedContext sharedContext];
      [v6 handlePaymentRequestMessage:*(a1 + 32) sender:WeakRetained completion:*(a1 + 48)];
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000100F4(a1);
      }

      v6 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_ERROR_INVALID_RECIPIENT_MESSAGE");
      if (os_variant_has_internal_ui())
      {
        v9 = [v6 stringByAppendingString:{@"\n\n(Internal Only: If you believe this is in error, please capture a sysdiagnose from your device & the device of the requester if possible and file a radar to Wallet | Apple Cash.)"}];

        v6 = v9;
      }

      v10 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_ERROR_INVALID_RECIPIENT_TITLE");
      v11 = PKLocalizedString(@"OK_BUTTON_TITLE");
      [WeakRetained _presentAlertWithTitle:v10 message:v6 buttonTitle:v11 completion:&stru_10001D018];

      v12 = *(a1 + 48);
      if (v12)
      {
        (*(v12 + 16))(v12, 0);
      }
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }
}

void sub_10000CE80(uint64_t a1, uint64_t a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100010204();
  }

  if (a2 && *(a1 + 48) == 4)
  {
    v5 = [*(a1 + 32) activeConversation];
    v6 = [v5 selectedMessage];
    v7 = [v6 peerPaymentMessage];

    v8 = *(a1 + 32);
    v9 = [v7 paymentIdentifier];
    [v8 _handlePeerPaymentRemoteAlertCompletedForPaymentIdentifier:v9 completion:*(a1 + 40)];
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, a2);
    }
  }
}

uint64_t sub_10000CF64(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_10000CF80(uint64_t a1, uint64_t a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001027C();
  }

  if (a2 && *(a1 + 48) == 4)
  {
    v5 = [*(a1 + 32) activeConversation];
    v6 = [v5 selectedMessage];
    v7 = [v6 peerPaymentMessage];

    v8 = *(a1 + 32);
    v9 = [v7 paymentIdentifier];
    [v8 _handlePeerPaymentRemoteAlertCompletedForPaymentIdentifier:v9 completion:*(a1 + 40)];
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, a2);
    }
  }
}

void sub_10000D12C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000102F4();
  }

  v3 = [*(*(a1 + 32) + 16) account];
  if (([PKPeerPaymentOnDeviceProvisioningCheck peerPaymentPassIsProvisionedOnDeviceForAccount:v3]& 1) != 0)
  {

LABEL_6:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10001036C(a1);
    }

    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 16);
    v7 = PKPeerPaymentActionAccept;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000D2D0;
    v9[3] = &unk_10001CBD8;
    v10 = v5;
    v11 = *(a1 + 48);
    [v6 performAction:v7 withPaymentIdentifier:v10 completion:v9];

    return;
  }

  v4 = PKUseMockSURFServer();

  if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100010330();
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, 0);
  }
}

void sub_10000D2D0(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000D3A0;
  v9[3] = &unk_10001CBB0;
  v7 = *(a1 + 32);
  v13 = a2;
  v10 = v7;
  v11 = v6;
  v12 = *(a1 + 40);
  v8 = v6;
  dispatch_async(&_dispatch_main_q, v9);
}

uint64_t sub_10000D3A0(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138412802;
    v8 = v4;
    v9 = 1024;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Peer Payment Accept Payment Observer: Payment with identifier: %@ successfully accepted: %i with error: %@.", &v7, 0x1Cu);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56));
  }

  return result;
}

void sub_10000D7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a3 == 2 && *(a1 + 32))
    {
      v6 = +[LSApplicationWorkspace defaultWorkspace];
      [v6 openSensitiveURL:*(a1 + 32) withOptions:0];
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void sub_10000E034(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v36 = v3;
    v37 = 2112;
    v38 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting currency amount to %@ based on text input payload: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 10, *(a1 + 32));
    objc_storeStrong(v6 + 11, *(a1 + 48));
    if (![v6 _isGroupConversation] || !objc_msgSend(v6[2], "supportsGroupMessage"))
    {
      v16 = [v6 _viewControllerForState:11 shouldLoad:1];
      [v16 setAmount:*(a1 + 32)];

      goto LABEL_21;
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000E504;
    v31[3] = &unk_10001D158;
    v31[4] = v6;
    v32 = *(a1 + 32);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000E598;
    v29[3] = &unk_10001CFA8;
    v29[4] = v6;
    v7 = objc_retainBlock(v31);
    v30 = v7;
    v8 = objc_retainBlock(v29);
    v9 = [v6 _identifiedRecipientForRecipientAddress:*(a1 + 48)];
    v10 = [v6 _senderAddress];
    v11 = *(a1 + 48);
    v12 = v10;
    v13 = v11;
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      if (!v12 || !v13)
      {

LABEL_16:
        if (v9)
        {
          (v7[2])(v7, v9);
          goto LABEL_20;
        }

        if (!v6[14])
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v15 = [v12 isEqualToString:v13];

      if (!v15)
      {
        goto LABEL_16;
      }
    }

    v17 = v6[11];
    v6[11] = 0;

    if (!v6[14])
    {
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_10000E62C;
      v26 = &unk_10001D1A8;
      v27 = v6;
      v28 = v8;
      [v6 _identifyGroupRecipientsWithCompletion:&v23];

LABEL_20:
LABEL_21:
      if ([*(a1 + 56) isEqualToString:{@"com.apple.messages.datadetectors.currency", v23, v24, v25, v26}])
      {
        v18 = PKAnalyticsSubjectAppleCash;
        v19 = [PKAnalyticsReporter reporterForSubject:PKAnalyticsSubjectAppleCash];

        if (!v19)
        {
          [PKAnalyticsReporter beginSubjectReporting:v18];
        }

        v33[0] = PKAnalyticsReportFeatureTypeKey;
        v33[1] = PKAnalyticsReportPageTagKey;
        v34[0] = PKAnalyticsReportPeerPaymentFeatureType;
        v34[1] = PKAnalyticsReportPeerPaymentDataDetectorMenuPageTag;
        v33[2] = PKAnalyticsReportButtonTagKey;
        v33[3] = PKAnalyticsReportEventKey;
        v34[2] = PKAnalyticsReportPeerPaymentDataDetectorSendButtonTag;
        v34[3] = PKAnalyticsReportEventTypeButtonTap;
        v34[4] = PKAnalyticsReportPeerPaymentP2PSideSender;
        v33[4] = PKAnalyticsReportPeerPaymentP2PSideKey;
        v33[5] = PKAnalyticsReportPeerPaymentP2PContextKey;
        v20 = [v6 _analyticsP2PContext];
        v34[5] = v20;
        v21 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:6];

        v22 = [*(a1 + 64) analyticsMessagesContext];
        [v22 safelySetObject:PKAnalyticsReportPeerPaymentMessagesContextRequestTypeInformal forKey:PKAnalyticsReportPeerPaymentMessagesContextRequestTypeKey];
        [PKAnalyticsReporter reportAppleCashEvent:v21 withMessagesContext:v22];
      }

      goto LABEL_25;
    }

LABEL_19:
    (v8[2])(v8);
    goto LABEL_20;
  }

LABEL_25:
}

void sub_10000E504(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) _viewControllerForState:9 shouldLoad:1];
  if (v4)
  {
    [*(a1 + 32) _prepareIdentifiedRecipient:v4 forAmountEntryViewController:v3];
  }

  [*(a1 + 32) _transitionToState:9 animated:1];
  [v3 setAmount:*(a1 + 40)];
}

void sub_10000E598(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) objectForKeyedSubscript:@"PKPeerPaymentGroupValidRecipientsKey"];
  v3 = v2;
  if (v2 && [v2 count])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _transitionToState:8 animated:1];
  }
}

void sub_10000E62C(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E6C4;
  block[3] = &unk_10001D180;
  v6 = a2;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10000E6C4(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) _transitionToState:8 animated:1];
  }
}

void sub_10000E85C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error donating peer payment interaction: %@", &v4, 0xCu);
    }
  }
}

void sub_10000EF7C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received updated transaction for the bubble view being rendered. Reloading bubble view content.", v4, 2u);
  }

  v3 = [*(a1 + 32) _viewControllerForState:12 shouldLoad:0];
  [v3 reloadContent];
}

void *sub_10000F3A0(void *result, void *a2)
{
  if (a2)
  {
    v2 = result[4];
    v3 = a2;
    [v3 gravity];
    v5 = v4;
    [v3 gravity];
    v7 = v6;

    return [v2 setGravityDirection:{v5, -v7}];
  }

  return result;
}

uint64_t sub_10000F574(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10000FF20()
{
  sub_10000FEEC();
  sub_10000FEE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000FF90()
{
  sub_10000FEEC();
  sub_10000FF10();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Peer Payment Messages Extension: Controller:%p Validate message for sending: %@", v1, 0x16u);
}

void sub_10001000C()
{
  sub_10000FEF8();
  sub_10000FF04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100010048()
{
  sub_10000FEF8();
  sub_10000FEE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100010084()
{
  sub_10000FEEC();
  sub_10000FF04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000100F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 112);
  v6 = 134218498;
  v7 = v1;
  sub_10000FF10();
  v8 = v3;
  v9 = v4;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "PKPeerPaymentMessagesAppViewController: %p; Unable to find recipient for request message with sender address %@, identifiedRecipients: %@", &v6, 0x20u);
}

void sub_10001018C()
{
  sub_10000FEF8();
  sub_10000FEE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000101C8()
{
  sub_10000FEF8();
  sub_10000FEE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000102F4()
{
  sub_10000FEF8();
  sub_10000FEE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100010330()
{
  sub_10000FEF8();
  sub_10000FF04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001036C(uint64_t a1)
{
  v6 = *(a1 + 40);
  sub_10000FEE0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000103E4()
{
  sub_10000FEEC();
  sub_10000FF04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100010454()
{
  sub_10000FEEC();
  sub_10000FF10();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Suggested amount's currency %@ does not match account currency %@", v1, 0x16u);
}

void sub_1000104D0()
{
  sub_10000FEEC();
  sub_10000FF04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100010540()
{
  sub_10000FEEC();
  sub_10000FF04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}