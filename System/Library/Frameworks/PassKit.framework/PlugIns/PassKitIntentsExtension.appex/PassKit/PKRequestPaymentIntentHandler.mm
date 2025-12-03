@interface PKRequestPaymentIntentHandler
- (id)_intentResponseForGenericFailure;
- (id)_intentResponseFromWebServiceError:(id)error;
- (id)_peerPaymentMessageForRequestWithCurrencyAmount:(id)amount requestToken:(id)token recipientHandle:(id)handle senderHandle:(id)senderHandle memo:(id)memo;
- (id)_responseForInvalidAccountResolution:(unint64_t)resolution;
- (id)_responseForInvalidRegistrationStatus:(unint64_t)status;
- (void)_queue_fetchRequestTokenForIntent:(id)intent peerPaymentController:(id)controller completion:(id)completion;
- (void)_queue_identifyRecipientWithIntent:(id)intent peerPaymentController:(id)controller completion:(id)completion;
- (void)confirmRequestPayment:(id)payment completion:(id)completion;
- (void)handleRequestPayment:(id)payment completion:(id)completion;
- (void)resolveCurrencyAmountForRequestPayment:(id)payment completion:(id)completion;
- (void)resolveNoteForRequestPayment:(id)payment withCompletion:(id)completion;
- (void)resolvePayerForRequestPayment:(id)payment completion:(id)completion;
@end

@implementation PKRequestPaymentIntentHandler

- (void)handleRequestPayment:(id)payment completion:(id)completion
{
  paymentCopy = payment;
  completionCopy = completion;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v22 = v10;
    v23 = 2112;
    v24 = paymentCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %{public}@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100003ACC;
  v19[3] = &unk_100014590;
  v20 = completionCopy;
  v11 = completionCopy;
  v12 = objc_retainBlock(v19);
  intentQueue = [(PKPeerPaymentIntentHandler *)self intentQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100003B40;
  v16[3] = &unk_100014608;
  v17 = paymentCopy;
  v18 = v12;
  v16[4] = self;
  v14 = paymentCopy;
  v15 = v12;
  dispatch_async(intentQueue, v16);
}

- (void)confirmRequestPayment:(id)payment completion:(id)completion
{
  paymentCopy = payment;
  completionCopy = completion;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = paymentCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004188;
  v18[3] = &unk_100014590;
  v11 = completionCopy;
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
    v16 = paymentCopy;
    [(PKPeerPaymentIntentHandler *)self peerPaymentRegistrationStatusWithCompletion:v15];

    preDeterminedIntentResponse = v17;
  }
}

- (void)resolvePayerForRequestPayment:(id)payment completion:(id)completion
{
  paymentCopy = payment;
  completionCopy = completion;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v22 = v10;
    v23 = 2112;
    v24 = paymentCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %{public}@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100004794;
  v19[3] = &unk_100014680;
  v20 = completionCopy;
  v11 = completionCopy;
  v12 = objc_retainBlock(v19);
  intentQueue = [(PKPeerPaymentIntentHandler *)self intentQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100004808;
  v16[3] = &unk_100014608;
  v17 = paymentCopy;
  v18 = v12;
  v16[4] = self;
  v14 = paymentCopy;
  v15 = v12;
  dispatch_async(intentQueue, v16);
}

- (void)resolveCurrencyAmountForRequestPayment:(id)payment completion:(id)completion
{
  paymentCopy = payment;
  completionCopy = completion;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v23 = v10;
    v24 = 2112;
    v25 = paymentCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %{public}@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100004C5C;
  v20[3] = &unk_1000146A8;
  v21 = completionCopy;
  v11 = completionCopy;
  v12 = objc_retainBlock(v20);
  intentQueue = [(PKPeerPaymentIntentHandler *)self intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004CD0;
  block[3] = &unk_100014720;
  block[4] = self;
  v17 = paymentCopy;
  v18 = v12;
  v19 = a2;
  v14 = paymentCopy;
  v15 = v12;
  dispatch_async(intentQueue, block);
}

- (void)resolveNoteForRequestPayment:(id)payment withCompletion:(id)completion
{
  paymentCopy = payment;
  completionCopy = completion;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v22 = v10;
    v23 = 2112;
    v24 = paymentCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received call to %{public}@ with intent %@", buf, 0x16u);
  }

  kdebug_trace();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005474;
  v19[3] = &unk_100014748;
  v20 = completionCopy;
  v11 = completionCopy;
  v12 = objc_retainBlock(v19);
  intentQueue = [(PKPeerPaymentIntentHandler *)self intentQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000054E8;
  v16[3] = &unk_100014608;
  v17 = paymentCopy;
  v18 = v12;
  v16[4] = self;
  v14 = paymentCopy;
  v15 = v12;
  dispatch_async(intentQueue, v16);
}

- (id)_responseForInvalidRegistrationStatus:(unint64_t)status
{
  if (status - 2 > 2)
  {
    v3 = 4;
  }

  else
  {
    v3 = qword_10000E498[status - 2];
  }

  v4 = [[INRequestPaymentIntentResponse alloc] initWithCode:v3 userActivity:0];

  return v4;
}

- (id)_responseForInvalidAccountResolution:(unint64_t)resolution
{
  v3 = 4;
  if (resolution == 2)
  {
    v3 = 6;
  }

  if (resolution == 1)
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

- (void)_queue_identifyRecipientWithIntent:(id)intent peerPaymentController:(id)controller completion:(id)completion
{
  intentCopy = intent;
  controllerCopy = controller;
  completionCopy = completion;
  if (completionCopy)
  {
    payer = [intentCopy payer];
    v11 = [(PKPeerPaymentIntentHandler *)self resolveSiriMatchesForPerson:?];
    personResolutionResult = [v11 personResolutionResult];
    resolvedValue = [personResolutionResult resolvedValue];
    v14 = resolvedValue;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = sub_100005B30;
    v32[4] = sub_100005B40;
    v33 = 0;
    if (resolvedValue)
    {
      personHandle = [resolvedValue personHandle];
      value = [personHandle value];

      v23 = PKPeerPaymentSenderAddressForRecipientAddress();
      if (v23)
      {
        personHandle2 = [v14 personHandle];
        value2 = [personHandle2 value];

        v19 = PKPeerPaymentSenderAddressForRecipientAddress();
        [controllerCopy reset];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100005B48;
        v27[3] = &unk_100014798;
        v27[4] = self;
        v31 = v32;
        v28 = v14;
        v29 = controllerCopy;
        v30 = completionCopy;
        [v29 identifyRecipientWithConversationAddress:value2 senderAddress:v19 completion:v27];
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

        value2 = +[INRequestPaymentPayerResolutionResult notRequired];
        (*(completionCopy + 2))(completionCopy, value2);
      }
    }

    else
    {
      if ([v11 isPersonWithNoHandle])
      {
        value = [INRequestPaymentPayerResolutionResult unsupportedForReason:3];
      }

      else
      {
        value = [[INRequestPaymentPayerResolutionResult alloc] initWithPersonResolutionResult:personResolutionResult];
      }

      (*(completionCopy + 2))(completionCopy, value);
    }

    _Block_object_dispose(v32, 8);
  }
}

- (void)_queue_fetchRequestTokenForIntent:(id)intent peerPaymentController:(id)controller completion:(id)completion
{
  intentCopy = intent;
  controllerCopy = controller;
  completionCopy = completion;
  if (completionCopy)
  {
    currencyAmount = [intentCopy currencyAmount];
    v12 = [(PKPeerPaymentIntentHandler *)self pkCurrencyAmountFromIntentAmount:currencyAmount];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100005EA8;
    v14[3] = &unk_1000147E8;
    v15 = intentCopy;
    v16 = controllerCopy;
    selfCopy = self;
    v18 = v12;
    v19 = completionCopy;
    v13 = v12;
    [v16 formalRequestTokenForAmount:v13 source:3 completion:v14];
  }
}

- (id)_intentResponseFromWebServiceError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_13;
  }

  domain = [errorCopy domain];
  v6 = [domain isEqualToString:PKDisplayableErrorDomain];

  if (v6)
  {
    userInfo = [v4 userInfo];
    v8 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    v4 = v8;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  domain2 = [v4 domain];
  v10 = [domain2 isEqualToString:PKPeerPaymentWebServiceErrorDomain];

  if (v10)
  {
    code = [v4 code];
    v12 = 4;
    if (code > 40302)
    {
      if (code == 40303)
      {
        v12 = 8;
      }

      else if (code == 40308 || code == 40319)
      {
        v12 = 11;
      }
    }

    else
    {
      v13 = 12;
      v14 = 7;
      if (code != 40302)
      {
        v14 = 4;
      }

      if (code != 5)
      {
        v13 = v14;
      }

      if (code == 1)
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

- (id)_peerPaymentMessageForRequestWithCurrencyAmount:(id)amount requestToken:(id)token recipientHandle:(id)handle senderHandle:(id)senderHandle memo:(id)memo
{
  v7 = 0;
  if (amount && handle)
  {
    memoCopy = memo;
    senderHandleCopy = senderHandle;
    handleCopy = handle;
    tokenCopy = token;
    amountCopy = amount;
    v7 = [[PKPeerPaymentMessage alloc] initWithType:2];
    amount = [amountCopy amount];
    [v7 setAmount:amount];

    currency = [amountCopy currency];

    [v7 setCurrency:currency];
    [v7 setSenderAddress:senderHandleCopy];

    [v7 setRecipientAddress:handleCopy];
    [v7 setRequestToken:tokenCopy];

    [v7 setMemo:memoCopy];
    v19 = [[PKPeerPaymentMessageLocalProperties alloc] initWithSource:3];
    [v7 setLocalProperties:v19];
  }

  return v7;
}

@end