@interface PKRequestPaymentIntentHandler
- (id)_intentResponseForGenericFailure;
- (id)_intentResponseFromWebServiceError:(id)a3;
- (id)_peerPaymentMessageForRequestWithCurrencyAmount:(id)a3 requestToken:(id)a4 recipientHandle:(id)a5 senderHandle:(id)a6 memo:(id)a7;
- (id)_responseForInvalidAccountResolution:(unint64_t)a3;
- (id)_responseForInvalidRegistrationStatus:(unint64_t)a3;
- (void)_queue_fetchRequestTokenForIntent:(id)a3 peerPaymentController:(id)a4 completion:(id)a5;
- (void)_queue_identifyRecipientWithIntent:(id)a3 peerPaymentController:(id)a4 completion:(id)a5;
- (void)confirmRequestPayment:(id)a3 completion:(id)a4;
- (void)handleRequestPayment:(id)a3 completion:(id)a4;
- (void)resolveCurrencyAmountForRequestPayment:(id)a3 completion:(id)a4;
- (void)resolveNoteForRequestPayment:(id)a3 withCompletion:(id)a4;
- (void)resolvePayerForRequestPayment:(id)a3 completion:(id)a4;
@end

@implementation PKRequestPaymentIntentHandler

- (void)handleRequestPayment:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v22 = v10;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %{public}@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100003ACC;
  v19[3] = &unk_100014590;
  v20 = v8;
  v11 = v8;
  v12 = objc_retainBlock(v19);
  v13 = [(PKPeerPaymentIntentHandler *)self intentQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100003B40;
  v16[3] = &unk_100014608;
  v17 = v7;
  v18 = v12;
  v16[4] = self;
  v14 = v7;
  v15 = v12;
  dispatch_async(v13, v16);
}

- (void)confirmRequestPayment:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004188;
  v18[3] = &unk_100014590;
  v11 = v8;
  v19 = v11;
  v12 = objc_retainBlock(v18);
  v13 = v12;
  if (self->_preDeterminedIntentResponse)
  {
    (v12[2])(v12);
    preDeterminedIntentResponse = self->_preDeterminedIntentResponse;
    self->_preDeterminedIntentResponse = 0;
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000041FC;
    v15[3] = &unk_100014658;
    v17 = v12;
    v15[4] = self;
    v16 = v7;
    [(PKPeerPaymentIntentHandler *)self peerPaymentRegistrationStatusWithCompletion:v15];

    preDeterminedIntentResponse = v17;
  }
}

- (void)resolvePayerForRequestPayment:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v22 = v10;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %{public}@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100004794;
  v19[3] = &unk_100014680;
  v20 = v8;
  v11 = v8;
  v12 = objc_retainBlock(v19);
  v13 = [(PKPeerPaymentIntentHandler *)self intentQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100004808;
  v16[3] = &unk_100014608;
  v17 = v7;
  v18 = v12;
  v16[4] = self;
  v14 = v7;
  v15 = v12;
  dispatch_async(v13, v16);
}

- (void)resolveCurrencyAmountForRequestPayment:(id)a3 completion:(id)a4
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
  v20[2] = sub_100004C5C;
  v20[3] = &unk_1000146A8;
  v21 = v8;
  v11 = v8;
  v12 = objc_retainBlock(v20);
  v13 = [(PKPeerPaymentIntentHandler *)self intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004CD0;
  block[3] = &unk_100014720;
  block[4] = self;
  v17 = v7;
  v18 = v12;
  v19 = a2;
  v14 = v7;
  v15 = v12;
  dispatch_async(v13, block);
}

- (void)resolveNoteForRequestPayment:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v22 = v10;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %{public}@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005474;
  v19[3] = &unk_100014748;
  v20 = v8;
  v11 = v8;
  v12 = objc_retainBlock(v19);
  v13 = [(PKPeerPaymentIntentHandler *)self intentQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000054E8;
  v16[3] = &unk_100014608;
  v17 = v7;
  v18 = v12;
  v16[4] = self;
  v14 = v7;
  v15 = v12;
  dispatch_async(v13, v16);
}

- (id)_responseForInvalidRegistrationStatus:(unint64_t)a3
{
  if (a3 - 2 > 2)
  {
    v3 = 4;
  }

  else
  {
    v3 = qword_10000E498[a3 - 2];
  }

  v4 = [[INRequestPaymentIntentResponse alloc] initWithCode:v3 userActivity:0];

  return v4;
}

- (id)_responseForInvalidAccountResolution:(unint64_t)a3
{
  v3 = 4;
  if (a3 == 2)
  {
    v3 = 6;
  }

  if (a3 == 1)
  {
    v4 = 10;
  }

  else
  {
    v4 = v3;
  }

  v5 = [[INRequestPaymentIntentResponse alloc] initWithCode:v4 userActivity:0];

  return v5;
}

- (void)_queue_identifyRecipientWithIntent:(id)a3 peerPaymentController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v25 = [v8 payer];
    v11 = [(PKPeerPaymentIntentHandler *)self resolveSiriMatchesForPerson:?];
    v12 = [v11 personResolutionResult];
    v13 = [v12 resolvedValue];
    v14 = v13;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = sub_100005B30;
    v32[4] = sub_100005B40;
    v33 = 0;
    if (v13)
    {
      v15 = [v13 personHandle];
      v16 = [v15 value];

      v23 = PKPeerPaymentSenderAddressForRecipientAddress();
      if (v23)
      {
        v17 = [v14 personHandle];
        v18 = [v17 value];

        v19 = PKPeerPaymentSenderAddressForRecipientAddress();
        [v9 reset];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100005B48;
        v27[3] = &unk_100014798;
        v27[4] = self;
        v31 = v32;
        v28 = v14;
        v29 = v9;
        v30 = v10;
        [v29 identifyRecipientWithConversationAddress:v18 senderAddress:v19 completion:v27];
      }

      else
      {
        v20 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Do not have a sending address to use for identifyRecipient, fast forwarding to return continue in app intent response.", buf, 2u);
        }

        v21 = [[INRequestPaymentIntentResponse alloc] initWithCode:5 userActivity:{0, 0}];
        preDeterminedIntentResponse = self->_preDeterminedIntentResponse;
        self->_preDeterminedIntentResponse = v21;

        v18 = +[INRequestPaymentPayerResolutionResult notRequired];
        (*(v10 + 2))(v10, v18);
      }
    }

    else
    {
      if ([v11 isPersonWithNoHandle])
      {
        v16 = [INRequestPaymentPayerResolutionResult unsupportedForReason:3];
      }

      else
      {
        v16 = [[INRequestPaymentPayerResolutionResult alloc] initWithPersonResolutionResult:v12];
      }

      (*(v10 + 2))(v10, v16);
    }

    _Block_object_dispose(v32, 8);
  }
}

- (void)_queue_fetchRequestTokenForIntent:(id)a3 peerPaymentController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [v8 currencyAmount];
    v12 = [(PKPeerPaymentIntentHandler *)self pkCurrencyAmountFromIntentAmount:v11];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100005EA8;
    v14[3] = &unk_1000147E8;
    v15 = v8;
    v16 = v9;
    v17 = self;
    v18 = v12;
    v19 = v10;
    v13 = v12;
    [v16 formalRequestTokenForAmount:v13 source:3 completion:v14];
  }
}

- (id)_intentResponseFromWebServiceError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v9 = [v4 domain];
  v10 = [v9 isEqualToString:PKPeerPaymentWebServiceErrorDomain];

  if (v10)
  {
    v11 = [v4 code];
    v12 = 4;
    if (v11 > 40302)
    {
      if (v11 == 40303)
      {
        v12 = 8;
      }

      else if (v11 == 40308 || v11 == 40319)
      {
        v12 = 11;
      }
    }

    else
    {
      v13 = 12;
      v14 = 7;
      if (v11 != 40302)
      {
        v14 = 4;
      }

      if (v11 != 5)
      {
        v13 = v14;
      }

      if (v11 == 1)
      {
        v12 = 6;
      }

      else
      {
        v12 = v13;
      }
    }
  }

  else
  {
LABEL_13:
    v12 = 4;
  }

  v15 = [[INRequestPaymentIntentResponse alloc] initWithCode:v12 userActivity:0];

  return v15;
}

- (id)_intentResponseForGenericFailure
{
  v2 = [[INRequestPaymentIntentResponse alloc] initWithCode:4 userActivity:0];

  return v2;
}

- (id)_peerPaymentMessageForRequestWithCurrencyAmount:(id)a3 requestToken:(id)a4 recipientHandle:(id)a5 senderHandle:(id)a6 memo:(id)a7
{
  v7 = 0;
  if (a3 && a5)
  {
    v12 = a7;
    v13 = a6;
    v14 = a5;
    v15 = a4;
    v16 = a3;
    v7 = [[PKPeerPaymentMessage alloc] initWithType:2];
    v17 = [v16 amount];
    [v7 setAmount:v17];

    v18 = [v16 currency];

    [v7 setCurrency:v18];
    [v7 setSenderAddress:v13];

    [v7 setRecipientAddress:v14];
    [v7 setRequestToken:v15];

    [v7 setMemo:v12];
    v19 = [[PKPeerPaymentMessageLocalProperties alloc] initWithSource:3];
    [v7 setLocalProperties:v19];
  }

  return v7;
}

@end