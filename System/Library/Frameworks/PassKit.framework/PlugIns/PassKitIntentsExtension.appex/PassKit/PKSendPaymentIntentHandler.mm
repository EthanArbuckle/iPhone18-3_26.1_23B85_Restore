@interface PKSendPaymentIntentHandler
- (id)_intentResponseForGenericFailure;
- (id)_intentResponseFromWebServiceError:(id)error;
- (id)_paymentRecordFromQuote:(id)quote payee:(id)payee note:(id)note status:(int64_t)status;
- (id)_peerPaymentMessageForAuthorizedPaymentWithQuote:(id)quote performResponse:(id)response recipientHandle:(id)handle senderHandle:(id)senderHandle memo:(id)memo;
- (id)_responseForInvalidAccountResolution:(unint64_t)resolution;
- (id)_responseForInvalidRegistrationStatus:(unint64_t)status;
- (void)_queue_fetchQuoteForIntent:(id)intent peerPaymentController:(id)controller completion:(id)completion;
- (void)_queue_identifyRecipientWithIntent:(id)intent peerPaymentController:(id)controller completion:(id)completion;
- (void)_queue_performOperationsIfNecessary:(unint64_t)necessary intent:(id)intent completion:(id)completion;
- (void)_queue_performQuoteForIntent:(id)intent peerPaymentController:(id)controller completion:(id)completion;
- (void)confirmSendPayment:(id)payment completion:(id)completion;
- (void)handleSendPayment:(id)payment completion:(id)completion;
- (void)resolveCurrencyAmountForSendPayment:(id)payment completion:(id)completion;
- (void)resolveNoteForSendPayment:(id)payment withCompletion:(id)completion;
- (void)resolvePayeeForSendPayment:(id)payment completion:(id)completion;
@end

@implementation PKSendPaymentIntentHandler

- (void)confirmSendPayment:(id)payment completion:(id)completion
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
  v20[2] = sub_100007104;
  v20[3] = &unk_100014888;
  v21 = completionCopy;
  v11 = completionCopy;
  v12 = objc_retainBlock(v20);
  intentQueue = [(PKPeerPaymentIntentHandler *)self intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007178;
  block[3] = &unk_100014720;
  v18 = v12;
  v19 = a2;
  block[4] = self;
  v17 = paymentCopy;
  v14 = paymentCopy;
  v15 = v12;
  dispatch_async(intentQueue, block);
}

- (void)handleSendPayment:(id)payment completion:(id)completion
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
  v20[2] = sub_100007868;
  v20[3] = &unk_100014888;
  v21 = completionCopy;
  v11 = completionCopy;
  v12 = objc_retainBlock(v20);
  intentQueue = [(PKPeerPaymentIntentHandler *)self intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000078DC;
  block[3] = &unk_100014720;
  v18 = v12;
  v19 = a2;
  block[4] = self;
  v17 = paymentCopy;
  v14 = paymentCopy;
  v15 = v12;
  dispatch_async(intentQueue, block);
}

- (void)resolveNoteForSendPayment:(id)payment withCompletion:(id)completion
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
  v20[2] = sub_100007FCC;
  v20[3] = &unk_100014748;
  v21 = completionCopy;
  v11 = completionCopy;
  v12 = objc_retainBlock(v20);
  intentQueue = [(PKPeerPaymentIntentHandler *)self intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008040;
  block[3] = &unk_100014720;
  v18 = v12;
  v19 = a2;
  block[4] = self;
  v17 = paymentCopy;
  v14 = paymentCopy;
  v15 = v12;
  dispatch_async(intentQueue, block);
}

- (void)resolvePayeeForSendPayment:(id)payment completion:(id)completion
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
  v20[2] = sub_100008700;
  v20[3] = &unk_100014900;
  v21 = completionCopy;
  v11 = completionCopy;
  v12 = objc_retainBlock(v20);
  intentQueue = [(PKPeerPaymentIntentHandler *)self intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008774;
  block[3] = &unk_100014720;
  v18 = v12;
  v19 = a2;
  block[4] = self;
  v17 = paymentCopy;
  v14 = paymentCopy;
  v15 = v12;
  dispatch_async(intentQueue, block);
}

- (void)resolveCurrencyAmountForSendPayment:(id)payment completion:(id)completion
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
  v20[2] = sub_100008E24;
  v20[3] = &unk_100014928;
  v21 = completionCopy;
  v11 = completionCopy;
  v12 = objc_retainBlock(v20);
  intentQueue = [(PKPeerPaymentIntentHandler *)self intentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008E98;
  block[3] = &unk_100014720;
  v18 = v12;
  v19 = a2;
  block[4] = self;
  v17 = paymentCopy;
  v14 = paymentCopy;
  v15 = v12;
  dispatch_async(intentQueue, block);
}

- (void)_queue_performOperationsIfNecessary:(unint64_t)necessary intent:(id)intent completion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v27 = intentCopy;
      v11 = objc_alloc_init(NSMutableArray);
      if (necessary)
      {
        v12 = 1;
        v13 = 1;
        do
        {
          if ((v13 & necessary) != 0)
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

        while (v13 <= necessary);
      }

      [v11 description];
      v15 = intentCopy = v28;

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performing send payment intent operations %@", &buf, 0xCu);
    }

    peerPaymentController = [(PKPeerPaymentIntentHandler *)self peerPaymentController];
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
    necessaryCopy = necessary;
    v42[4] = self;
    v17 = intentCopy;
    v43 = v17;
    v18 = peerPaymentController;
    v44 = v18;
    v19 = completionCopy;
    v45 = v19;
    p_buf = &buf;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100009DA8;
    v35[3] = &unk_1000149F0;
    necessaryCopy2 = necessary;
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
    necessaryCopy3 = necessary;
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

- (void)_queue_performQuoteForIntent:(id)intent peerPaymentController:(id)controller completion:(id)completion
{
  intentCopy = intent;
  controllerCopy = controller;
  completionCopy = completion;
  if (completionCopy)
  {
    v12 = self->_pendingQuote;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000A2C0;
    v14[3] = &unk_100014A90;
    v15 = intentCopy;
    v16 = controllerCopy;
    selfCopy = self;
    v18 = v12;
    v20 = a2;
    v19 = completionCopy;
    v13 = v12;
    [v16 performQuote:v13 completion:v14];
  }
}

- (void)_queue_fetchQuoteForIntent:(id)intent peerPaymentController:(id)controller completion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  if (completionCopy)
  {
    controllerCopy = controller;
    currencyAmount = [intentCopy currencyAmount];
    v13 = [(PKPeerPaymentIntentHandler *)self pkCurrencyAmountFromIntentAmount:currencyAmount];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000A820;
    v14[3] = &unk_100014AE0;
    v14[4] = self;
    v15 = intentCopy;
    v17 = a2;
    v16 = completionCopy;
    [controllerCopy quoteWithAmount:v13 source:2 completion:v14];
  }
}

- (void)_queue_identifyRecipientWithIntent:(id)intent peerPaymentController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (completionCopy)
  {
    payee = [intent payee];
    v12 = [(PKPeerPaymentIntentHandler *)self resolveSiriMatchesForPerson:payee];
    personResolutionResult = [v12 personResolutionResult];
    resolvedValue = [personResolutionResult resolvedValue];
    v15 = resolvedValue;
    if (resolvedValue)
    {
      v27 = payee;
      personHandle = [resolvedValue personHandle];
      value = [personHandle value];

      v18 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v34 = value;
        v35 = 2112;
        v36 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Resolved handle: %@ for person: %@", buf, 0x16u);
      }

      v19 = PKPeerPaymentSenderAddressForRecipientAddress();
      if (v19)
      {
        [controllerCopy reset];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10000B098;
        v28[3] = &unk_100014B30;
        v28[4] = self;
        v29 = v15;
        v30 = controllerCopy;
        v32 = a2;
        v31 = completionCopy;
        [v30 identifyRecipientWithConversationAddress:value senderAddress:v19 completion:v28];
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
        (*(completionCopy + 2))(completionCopy, v26);
      }

      payee = v27;
      goto LABEL_22;
    }

    if ([v12 isPersonWithNoHandle])
    {
      value = [INSendPaymentPayeeResolutionResult unsupportedForReason:4];
      v20 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        (*(completionCopy + 2))(completionCopy, value);
LABEL_22:

        goto LABEL_23;
      }

      v21 = NSStringFromSelector(a2);
      *buf = 138543618;
      v34 = v21;
      v35 = 2112;
      v36 = value;
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

      value = [[INSendPaymentPayeeResolutionResult alloc] initWithPersonResolutionResult:personResolutionResult];
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v21 = NSStringFromSelector(a2);
      *buf = 138543618;
      v34 = v21;
      v35 = 2112;
      v36 = value;
      v22 = "Calling %{public}@ completion with result %@";
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0x16u);

    goto LABEL_21;
  }

LABEL_23:
}

- (id)_intentResponseFromWebServiceError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_12;
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
      goto LABEL_12;
    }
  }

  domain2 = [v4 domain];
  v10 = [domain2 isEqualToString:PKPeerPaymentWebServiceErrorDomain];

  if (!v10)
  {
LABEL_12:
    v12 = 4;
    goto LABEL_13;
  }

  code = [v4 code];
  v12 = 4;
  if (code <= 40302)
  {
    if (code <= 40300)
    {
      v13 = 13;
      if (code != 5)
      {
        v13 = 4;
      }

      if (code == 1)
      {
        v12 = 6;
      }

      else
      {
        v12 = v13;
      }

      goto LABEL_13;
    }

    if (code != 40301)
    {
      v12 = 7;
      goto LABEL_13;
    }

LABEL_25:
    v12 = 10;
    goto LABEL_13;
  }

  if (code > 40315)
  {
    if (code == 40316)
    {
      goto LABEL_25;
    }

    v16 = 40319;
  }

  else
  {
    if (code == 40303)
    {
      v12 = 8;
      goto LABEL_13;
    }

    v16 = 40308;
  }

  if (code == v16)
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

- (id)_responseForInvalidRegistrationStatus:(unint64_t)status
{
  if (status - 2 > 2)
  {
    v3 = 4;
  }

  else
  {
    v3 = qword_10000E4E0[status - 2];
  }

  v4 = [[INSendPaymentIntentResponse alloc] initWithCode:v3 userActivity:0];

  return v4;
}

- (id)_responseForInvalidAccountResolution:(unint64_t)resolution
{
  if (resolution - 1 > 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = qword_10000E4F8[resolution - 1];
  }

  v4 = [[INSendPaymentIntentResponse alloc] initWithCode:v3 userActivity:0];

  return v4;
}

- (id)_peerPaymentMessageForAuthorizedPaymentWithQuote:(id)quote performResponse:(id)response recipientHandle:(id)handle senderHandle:(id)senderHandle memo:(id)memo
{
  responseCopy = response;
  handleCopy = handle;
  senderHandleCopy = senderHandle;
  memoCopy = memo;
  quoteCopy = quote;
  totalReceiveAmountCurrency = [quoteCopy totalReceiveAmountCurrency];
  totalReceiveAmount = [quoteCopy totalReceiveAmount];

  v18 = PKLogFacilityTypeGetObject();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (responseCopy && handleCopy && totalReceiveAmountCurrency && totalReceiveAmount)
  {
    if (v19)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Constructing PKPeerPaymentMessage", &v22, 2u);
    }

    v20 = [[PKPeerPaymentMessage alloc] initWithType:1];
    [v20 setAmount:totalReceiveAmount];
    [v20 setCurrency:totalReceiveAmountCurrency];
    [v20 setSenderAddress:senderHandleCopy];
    [v20 setRecipientAddress:handleCopy];
    [v20 setMemo:memoCopy];
    [v20 updateWithPeerPaymentPerformResponse:responseCopy];
    v18 = [[PKPeerPaymentMessageLocalProperties alloc] initWithSource:3];
    [v20 setLocalProperties:v18];
  }

  else
  {
    if (v19)
    {
      v22 = 138413058;
      v23 = handleCopy;
      v24 = 2112;
      v25 = totalReceiveAmountCurrency;
      v26 = 2112;
      v27 = totalReceiveAmount;
      v28 = 2112;
      v29 = responseCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not construct peer payment message. Recipient: %@, currency: %@, amount: %@, performResponse: %@", &v22, 0x2Au);
    }

    v20 = 0;
  }

  return v20;
}

- (id)_paymentRecordFromQuote:(id)quote payee:(id)payee note:(id)note status:(int64_t)status
{
  noteCopy = note;
  payeeCopy = payee;
  quoteCopy = quote;
  totalReceiveAmount = [quoteCopy totalReceiveAmount];
  totalReceiveAmountCurrency = [quoteCopy totalReceiveAmountCurrency];
  v13 = [[INCurrencyAmount alloc] initWithAmount:totalReceiveAmount currencyCode:totalReceiveAmountCurrency];
  totalFees = [quoteCopy totalFees];
  totalFeesCurrency = [quoteCopy totalFeesCurrency];

  v16 = 0;
  if (totalFees && totalFeesCurrency)
  {
    v16 = [[INCurrencyAmount alloc] initWithAmount:totalFees currencyCode:totalFeesCurrency];
  }

  v17 = [INPaymentRecord alloc];
  v18 = +[INPaymentMethod applePayPaymentMethod];
  v19 = [v17 initWithPayee:payeeCopy payer:0 currencyAmount:v13 paymentMethod:v18 note:noteCopy status:status feeAmount:v16];

  return v19;
}

@end