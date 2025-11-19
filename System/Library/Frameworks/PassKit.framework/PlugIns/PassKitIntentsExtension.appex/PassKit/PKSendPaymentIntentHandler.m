@interface PKSendPaymentIntentHandler
- (id)_intentResponseForGenericFailure;
- (id)_intentResponseFromWebServiceError:(id)a3;
- (id)_paymentRecordFromQuote:(id)a3 payee:(id)a4 note:(id)a5 status:(int64_t)a6;
- (id)_peerPaymentMessageForAuthorizedPaymentWithQuote:(id)a3 performResponse:(id)a4 recipientHandle:(id)a5 senderHandle:(id)a6 memo:(id)a7;
- (id)_responseForInvalidAccountResolution:(unint64_t)a3;
- (id)_responseForInvalidRegistrationStatus:(unint64_t)a3;
- (void)_queue_fetchQuoteForIntent:(id)a3 peerPaymentController:(id)a4 completion:(id)a5;
- (void)_queue_identifyRecipientWithIntent:(id)a3 peerPaymentController:(id)a4 completion:(id)a5;
- (void)_queue_performOperationsIfNecessary:(unint64_t)a3 intent:(id)a4 completion:(id)a5;
- (void)_queue_performQuoteForIntent:(id)a3 peerPaymentController:(id)a4 completion:(id)a5;
- (void)confirmSendPayment:(id)a3 completion:(id)a4;
- (void)handleSendPayment:(id)a3 completion:(id)a4;
- (void)resolveCurrencyAmountForSendPayment:(id)a3 completion:(id)a4;
- (void)resolveNoteForSendPayment:(id)a3 withCompletion:(id)a4;
- (void)resolvePayeeForSendPayment:(id)a3 completion:(id)a4;
@end

@implementation PKSendPaymentIntentHandler

- (void)confirmSendPayment:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v23 = v10;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %{public}@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100007104;
  v20[3] = &unk_100014888;
  v21 = v8;
  v11 = v8;
  v12 = objc_retainBlock(v20);
  v13 = [(PKPeerPaymentIntentHandler *)self intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007178;
  block[3] = &unk_100014720;
  v18 = v12;
  v19 = a2;
  block[4] = self;
  v17 = v7;
  v14 = v7;
  v15 = v12;
  dispatch_async(v13, block);
}

- (void)handleSendPayment:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v23 = v10;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %{public}@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100007868;
  v20[3] = &unk_100014888;
  v21 = v8;
  v11 = v8;
  v12 = objc_retainBlock(v20);
  v13 = [(PKPeerPaymentIntentHandler *)self intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000078DC;
  block[3] = &unk_100014720;
  v18 = v12;
  v19 = a2;
  block[4] = self;
  v17 = v7;
  v14 = v7;
  v15 = v12;
  dispatch_async(v13, block);
}

- (void)resolveNoteForSendPayment:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v23 = v10;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %{public}@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100007FCC;
  v20[3] = &unk_100014748;
  v21 = v8;
  v11 = v8;
  v12 = objc_retainBlock(v20);
  v13 = [(PKPeerPaymentIntentHandler *)self intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008040;
  block[3] = &unk_100014720;
  v18 = v12;
  v19 = a2;
  block[4] = self;
  v17 = v7;
  v14 = v7;
  v15 = v12;
  dispatch_async(v13, block);
}

- (void)resolvePayeeForSendPayment:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v23 = v10;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %{public}@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100008700;
  v20[3] = &unk_100014900;
  v21 = v8;
  v11 = v8;
  v12 = objc_retainBlock(v20);
  v13 = [(PKPeerPaymentIntentHandler *)self intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008774;
  block[3] = &unk_100014720;
  v18 = v12;
  v19 = a2;
  block[4] = self;
  v17 = v7;
  v14 = v7;
  v15 = v12;
  dispatch_async(v13, block);
}

- (void)resolveCurrencyAmountForSendPayment:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v23 = v10;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %{public}@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100008E24;
  v20[3] = &unk_100014928;
  v21 = v8;
  v11 = v8;
  v12 = objc_retainBlock(v20);
  v13 = [(PKPeerPaymentIntentHandler *)self intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008E98;
  block[3] = &unk_100014720;
  v18 = v12;
  v19 = a2;
  block[4] = self;
  v17 = v7;
  v14 = v7;
  v15 = v12;
  dispatch_async(v13, block);
}

- (void)_queue_performOperationsIfNecessary:(unint64_t)a3 intent:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v8;
      v11 = objc_alloc_init(NSMutableArray);
      if (a3)
      {
        v12 = 1;
        v13 = 1;
        do
        {
          if ((v13 & a3) != 0)
          {
            switch(v13)
            {
              case 1uLL:
                v14 = @"RecipientLookUp";
                goto LABEL_12;
              case 4uLL:
                v14 = @"PerformQuote";
                goto LABEL_12;
              case 2uLL:
                v14 = @"Quote";
LABEL_12:
                [v11 addObject:{v14, v27}];
                break;
            }
          }

          v13 = 1 << v12++;
        }

        while (v13 <= a3);
      }

      [v11 description];
      v15 = v8 = v28;

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performing send payment intent operations %@", &buf, 0xCu);
    }

    v16 = [(PKPeerPaymentIntentHandler *)self peerPaymentController];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v49 = 0x3032000000;
    v50 = sub_100009BCC;
    v51 = sub_100009BDC;
    v52 = 0;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100009BE4;
    v42[3] = &unk_1000149A0;
    v47 = a3;
    v42[4] = self;
    v17 = v8;
    v43 = v17;
    v18 = v16;
    v44 = v18;
    v19 = v9;
    v45 = v19;
    p_buf = &buf;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100009DA8;
    v35[3] = &unk_1000149F0;
    v41 = a3;
    v35[4] = self;
    v20 = objc_retainBlock(v42);
    v38 = v20;
    v21 = v17;
    v36 = v21;
    v22 = v18;
    v37 = v22;
    v40 = &buf;
    v23 = v19;
    v39 = v23;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100009FD4;
    v29[3] = &unk_100014A40;
    v34 = a3;
    v29[4] = self;
    v24 = objc_retainBlock(v35);
    v32 = v24;
    v30 = v21;
    v25 = v22;
    v31 = v25;
    v33 = v23;
    v26 = objc_retainBlock(v29);
    (v26[2])();

    _Block_object_dispose(&buf, 8);
  }
}

- (void)_queue_performQuoteForIntent:(id)a3 peerPaymentController:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = self->_pendingQuote;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000A2C0;
    v14[3] = &unk_100014A90;
    v15 = v9;
    v16 = v10;
    v17 = self;
    v18 = v12;
    v20 = a2;
    v19 = v11;
    v13 = v12;
    [v16 performQuote:v13 completion:v14];
  }
}

- (void)_queue_fetchQuoteForIntent:(id)a3 peerPaymentController:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    v11 = a4;
    v12 = [v9 currencyAmount];
    v13 = [(PKPeerPaymentIntentHandler *)self pkCurrencyAmountFromIntentAmount:v12];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000A820;
    v14[3] = &unk_100014AE0;
    v14[4] = self;
    v15 = v9;
    v17 = a2;
    v16 = v10;
    [v11 quoteWithAmount:v13 source:2 completion:v14];
  }
}

- (void)_queue_identifyRecipientWithIntent:(id)a3 peerPaymentController:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [a3 payee];
    v12 = [(PKPeerPaymentIntentHandler *)self resolveSiriMatchesForPerson:v11];
    v13 = [v12 personResolutionResult];
    v14 = [v13 resolvedValue];
    v15 = v14;
    if (v14)
    {
      v27 = v11;
      v16 = [v14 personHandle];
      v17 = [v16 value];

      v18 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v34 = v17;
        v35 = 2112;
        v36 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Resolved handle: %@ for person: %@", buf, 0x16u);
      }

      v19 = PKPeerPaymentSenderAddressForRecipientAddress();
      if (v19)
      {
        [v9 reset];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10000B098;
        v28[3] = &unk_100014B30;
        v28[4] = self;
        v29 = v15;
        v30 = v9;
        v32 = a2;
        v31 = v10;
        [v30 identifyRecipientWithConversationAddress:v17 senderAddress:v19 completion:v28];
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Do not have a sending address to use for identifyRecipient, fast forwarding to return continue in app intent response.", buf, 2u);
        }

        v23 = [[INSendPaymentIntentResponse alloc] initWithCode:5 userActivity:0];
        preDeterminedIntentResponse = self->_preDeterminedIntentResponse;
        self->_preDeterminedIntentResponse = v23;

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v25 = NSStringFromSelector(a2);
          *buf = 138543362;
          v34 = v25;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ completion with not required response", buf, 0xCu);
        }

        v26 = +[INSendPaymentPayeeResolutionResult notRequired];
        (*(v10 + 2))(v10, v26);
      }

      v11 = v27;
      goto LABEL_22;
    }

    if ([v12 isPersonWithNoHandle])
    {
      v17 = [INSendPaymentPayeeResolutionResult unsupportedForReason:4];
      v20 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        (*(v10 + 2))(v10, v17);
LABEL_22:

        goto LABEL_23;
      }

      v21 = NSStringFromSelector(a2);
      *buf = 138543618;
      v34 = v21;
      v35 = 2112;
      v36 = v17;
      v22 = "Calling %{public}@ completion with no handle result %@";
    }

    else
    {
      v20 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Not checking payee elibility status for result that does not include a single resolved person.", buf, 2u);
      }

      v17 = [[INSendPaymentPayeeResolutionResult alloc] initWithPersonResolutionResult:v13];
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v21 = NSStringFromSelector(a2);
      *buf = 138543618;
      v34 = v21;
      v35 = 2112;
      v36 = v17;
      v22 = "Calling %{public}@ completion with result %@";
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0x16u);

    goto LABEL_21;
  }

LABEL_23:
}

- (id)_intentResponseFromWebServiceError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

  v5 = [v3 domain];
  v6 = [v5 isEqualToString:PKDisplayableErrorDomain];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v4 = v8;
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  v9 = [v4 domain];
  v10 = [v9 isEqualToString:PKPeerPaymentWebServiceErrorDomain];

  if (!v10)
  {
LABEL_12:
    v12 = 4;
    goto LABEL_13;
  }

  v11 = [v4 code];
  v12 = 4;
  if (v11 <= 40302)
  {
    if (v11 <= 40300)
    {
      v13 = 13;
      if (v11 != 5)
      {
        v13 = 4;
      }

      if (v11 == 1)
      {
        v12 = 6;
      }

      else
      {
        v12 = v13;
      }

      goto LABEL_13;
    }

    if (v11 != 40301)
    {
      v12 = 7;
      goto LABEL_13;
    }

LABEL_25:
    v12 = 10;
    goto LABEL_13;
  }

  if (v11 > 40315)
  {
    if (v11 == 40316)
    {
      goto LABEL_25;
    }

    v16 = 40319;
  }

  else
  {
    if (v11 == 40303)
    {
      v12 = 8;
      goto LABEL_13;
    }

    v16 = 40308;
  }

  if (v11 == v16)
  {
    v12 = 12;
  }

LABEL_13:
  v14 = [[INSendPaymentIntentResponse alloc] initWithCode:v12 userActivity:0];

  return v14;
}

- (id)_intentResponseForGenericFailure
{
  v2 = [[INSendPaymentIntentResponse alloc] initWithCode:4 userActivity:0];

  return v2;
}

- (id)_responseForInvalidRegistrationStatus:(unint64_t)a3
{
  if (a3 - 2 > 2)
  {
    v3 = 4;
  }

  else
  {
    v3 = qword_10000E4E0[a3 - 2];
  }

  v4 = [[INSendPaymentIntentResponse alloc] initWithCode:v3 userActivity:0];

  return v4;
}

- (id)_responseForInvalidAccountResolution:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = qword_10000E4F8[a3 - 1];
  }

  v4 = [[INSendPaymentIntentResponse alloc] initWithCode:v3 userActivity:0];

  return v4;
}

- (id)_peerPaymentMessageForAuthorizedPaymentWithQuote:(id)a3 performResponse:(id)a4 recipientHandle:(id)a5 senderHandle:(id)a6 memo:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = [v15 totalReceiveAmountCurrency];
  v17 = [v15 totalReceiveAmount];

  v18 = PKLogFacilityTypeGetObject();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v11 && v12 && v16 && v17)
  {
    if (v19)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Constructing PKPeerPaymentMessage", &v22, 2u);
    }

    v20 = [[PKPeerPaymentMessage alloc] initWithType:1];
    [v20 setAmount:v17];
    [v20 setCurrency:v16];
    [v20 setSenderAddress:v13];
    [v20 setRecipientAddress:v12];
    [v20 setMemo:v14];
    [v20 updateWithPeerPaymentPerformResponse:v11];
    v18 = [[PKPeerPaymentMessageLocalProperties alloc] initWithSource:3];
    [v20 setLocalProperties:v18];
  }

  else
  {
    if (v19)
    {
      v22 = 138413058;
      v23 = v12;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not construct peer payment message. Recipient: %@, currency: %@, amount: %@, performResponse: %@", &v22, 0x2Au);
    }

    v20 = 0;
  }

  return v20;
}

- (id)_paymentRecordFromQuote:(id)a3 payee:(id)a4 note:(id)a5 status:(int64_t)a6
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 totalReceiveAmount];
  v12 = [v10 totalReceiveAmountCurrency];
  v13 = [[INCurrencyAmount alloc] initWithAmount:v11 currencyCode:v12];
  v14 = [v10 totalFees];
  v15 = [v10 totalFeesCurrency];

  v16 = 0;
  if (v14 && v15)
  {
    v16 = [[INCurrencyAmount alloc] initWithAmount:v14 currencyCode:v15];
  }

  v17 = [INPaymentRecord alloc];
  v18 = +[INPaymentMethod applePayPaymentMethod];
  v19 = [v17 initWithPayee:v9 payer:0 currencyAmount:v13 paymentMethod:v18 note:v8 status:a6 feeAmount:v16];

  return v19;
}

@end