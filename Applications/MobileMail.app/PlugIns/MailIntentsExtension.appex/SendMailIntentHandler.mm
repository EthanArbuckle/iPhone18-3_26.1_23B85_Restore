@interface SendMailIntentHandler
+ (OS_os_log)log;
- (SendMailIntentHandler)init;
- (id)_emailAddressesFromPersons:(id)persons;
- (id)_messageFromSendMailIntent:(id)intent;
- (id)_resolutionResultForPerson:(id)person;
- (id)defaultSenderForSendMail:(id)mail;
- (int64_t)_validateIntent:(id)intent;
- (void)confirmSendMail:(id)mail completion:(id)completion;
- (void)handleSendMail:(id)mail completion:(id)completion;
- (void)provideSenderOptionsForSendMail:(id)mail withCompletion:(id)completion;
- (void)resolveBccForSendMail:(id)mail withCompletion:(id)completion;
- (void)resolveBodyForSendMail:(id)mail withCompletion:(id)completion;
- (void)resolveCcForSendMail:(id)mail withCompletion:(id)completion;
- (void)resolveSenderForSendMail:(id)mail withCompletion:(id)completion;
- (void)resolveSubjectForSendMail:(id)mail withCompletion:(id)completion;
- (void)resolveToForSendMail:(id)mail withCompletion:(id)completion;
@end

@implementation SendMailIntentHandler

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004B40;
  block[3] = &unk_10000C3A0;
  block[4] = self;
  if (qword_100011F00 != -1)
  {
    dispatch_once(&qword_100011F00, block);
  }

  v2 = qword_100011EF8;

  return v2;
}

- (SendMailIntentHandler)init
{
  v6.receiver = self;
  v6.super_class = SendMailIntentHandler;
  v2 = [(SendMailIntentHandler *)&v6 init];
  if (v2)
  {
    v3 = [[MFMailAccountProxyGenerator alloc] initWithAllowsRestrictedAccounts:0];
    accountProxyGenerator = v2->_accountProxyGenerator;
    v2->_accountProxyGenerator = v3;
  }

  return v2;
}

- (void)resolveSenderForSendMail:(id)mail withCompletion:(id)completion
{
  mailCopy = mail;
  completionCopy = completion;
  sender = [mailCopy sender];

  if (sender)
  {
    accountProxyGenerator = [(SendMailIntentHandler *)self accountProxyGenerator];
    sender2 = [mailCopy sender];
    v10 = [accountProxyGenerator accountProxyContainingEmailAddress:sender2 includingInactive:0];

    if (v10)
    {
      sender3 = [mailCopy sender];
      v12 = [INStringResolutionResult successWithResolvedString:sender3];
      completionCopy[2](completionCopy, v12);
    }

    else
    {
      sender3 = +[INStringResolutionResult unsupported];
      completionCopy[2](completionCopy, sender3);
    }
  }

  else
  {
    v10 = +[INStringResolutionResult notRequired];
    completionCopy[2](completionCopy, v10);
  }
}

- (void)provideSenderOptionsForSendMail:(id)mail withCompletion:(id)completion
{
  completionCopy = completion;
  accountProxyGenerator = [(SendMailIntentHandler *)self accountProxyGenerator];
  v6 = [accountProxyGenerator activeAccountProxiesOriginatingBundleID:0 sourceAccountManagement:0];

  v7 = [v6 ef_flatMap:&stru_10000C6F8];
  completionCopy[2](completionCopy, v7, 0);
}

- (id)defaultSenderForSendMail:(id)mail
{
  accountProxyGenerator = [(SendMailIntentHandler *)self accountProxyGenerator];
  v4 = [accountProxyGenerator defaultMailAccountProxyForDeliveryOriginatingBundleID:0 sourceAccountManagement:0];

  firstEmailAddress = [v4 firstEmailAddress];

  return firstEmailAddress;
}

- (void)resolveToForSendMail:(id)mail withCompletion:(id)completion
{
  mailCopy = mail;
  completionCopy = completion;
  v8 = [mailCopy to];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [mailCopy to];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100005188;
    v14[3] = &unk_10000C720;
    v14[4] = self;
    v11 = [v10 ef_map:v14];

    completionCopy[2](completionCopy, v11);
  }

  else
  {
    v12 = +[INPersonResolutionResult needsValue];
    v15 = v12;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    completionCopy[2](completionCopy, v13);
  }
}

- (void)resolveCcForSendMail:(id)mail withCompletion:(id)completion
{
  mailCopy = mail;
  completionCopy = completion;
  v8 = [mailCopy cc];

  if (v8)
  {
    v9 = [mailCopy cc];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000537C;
    v13[3] = &unk_10000C720;
    v13[4] = self;
    v10 = [v9 ef_map:v13];

    completionCopy[2](completionCopy, v10);
  }

  else
  {
    v11 = +[INPersonResolutionResult notRequired];
    v14 = v11;
    v12 = [NSArray arrayWithObjects:&v14 count:1];
    completionCopy[2](completionCopy, v12);
  }
}

- (void)resolveBccForSendMail:(id)mail withCompletion:(id)completion
{
  mailCopy = mail;
  completionCopy = completion;
  v8 = [mailCopy bcc];

  if (v8)
  {
    v9 = [mailCopy bcc];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100005570;
    v13[3] = &unk_10000C720;
    v13[4] = self;
    v10 = [v9 ef_map:v13];

    completionCopy[2](completionCopy, v10);
  }

  else
  {
    v11 = +[INPersonResolutionResult notRequired];
    v14 = v11;
    v12 = [NSArray arrayWithObjects:&v14 count:1];
    completionCopy[2](completionCopy, v12);
  }
}

- (void)resolveSubjectForSendMail:(id)mail withCompletion:(id)completion
{
  mailCopy = mail;
  completionCopy = completion;
  subject = [mailCopy subject];

  if (subject)
  {
    subject2 = [mailCopy subject];
    v8 = [INStringResolutionResult successWithResolvedString:subject2];
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    subject2 = +[INStringResolutionResult needsValue];
    completionCopy[2](completionCopy, subject2);
  }
}

- (void)resolveBodyForSendMail:(id)mail withCompletion:(id)completion
{
  mailCopy = mail;
  completionCopy = completion;
  body = [mailCopy body];

  if (body)
  {
    body2 = [mailCopy body];
    v8 = [INStringResolutionResult successWithResolvedString:body2];
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    body2 = +[INStringResolutionResult notRequired];
    completionCopy[2](completionCopy, body2);
  }
}

- (void)confirmSendMail:(id)mail completion:(id)completion
{
  mailCopy = mail;
  completionCopy = completion;
  v7 = [[MSSendMailIntentResponse alloc] initWithCode:-[SendMailIntentHandler _validateIntent:](self userActivity:{"_validateIntent:", mailCopy), 0}];
  completionCopy[2](completionCopy, v7);
}

- (void)handleSendMail:(id)mail completion:(id)completion
{
  mailCopy = mail;
  completionCopy = completion;
  v8 = [(SendMailIntentHandler *)self _messageFromSendMailIntent:mailCopy];
  messageData = [v8 messageData];
  isDraft = [mailCopy isDraft];
  bOOLValue = [isDraft BOOLValue];

  if (bOOLValue)
  {
    accountProxyGenerator = [(SendMailIntentHandler *)self accountProxyGenerator];
    sender = [mailCopy sender];
    v14 = [accountProxyGenerator accountProxyContainingEmailAddress:sender includingInactive:0];

    uniqueID = [v14 uniqueID];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100005B0C;
    v19[3] = &unk_10000C748;
    v20 = completionCopy;
    [MSSaveEmail saveMessageData:messageData forAccountWithID:uniqueID autosaveIdentifier:0 completionBlock:v19];
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100005BE4;
    v17[3] = &unk_10000C770;
    v18 = completionCopy;
    v16 = [MSSendEmail sendMessageData:messageData autosaveIdentifier:0 isHMEMessage:0 sendLaterDate:0 completionBlock:v17];
    v14 = v18;
  }
}

- (id)_resolutionResultForPerson:(id)person
{
  personCopy = person;
  personHandle = [personCopy personHandle];
  type = [personHandle type];

  if (type == 1)
  {
    v13 = personCopy;
    v7 = [NSArray arrayWithObjects:&v13 count:1];
    v8 = [(SendMailIntentHandler *)self _emailAddressesFromPersons:v7];
    firstObject = [v8 firstObject];

    v10 = [[ECEmailAddress alloc] initWithString:firstObject];
    if (v10)
    {
      [INPersonResolutionResult successWithResolvedPerson:personCopy];
    }

    else
    {
      +[INPersonResolutionResult unsupported];
    }
    v11 = ;
  }

  else
  {
    v11 = +[INPersonResolutionResult unsupported];
  }

  return v11;
}

- (id)_emailAddressesFromPersons:(id)persons
{
  personsCopy = persons;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005FB4;
  v9[3] = &unk_10000C798;
  v4 = objc_alloc_init(MFPersonTransformer);
  v10 = v4;
  v5 = objc_retainBlock(v9);
  v6 = [personsCopy ef_map:v5];
  v7 = [v6 ef_filter:EFIsNotNull];

  return v7;
}

- (int64_t)_validateIntent:(id)intent
{
  intentCopy = intent;
  if (!intentCopy || (MSCanSendMailWithOptions() & 1) == 0)
  {
    v6 = 6;
    goto LABEL_8;
  }

  v4 = [intentCopy to];
  if ([v4 count])
  {
    goto LABEL_6;
  }

  v5 = [intentCopy cc];
  if ([v5 count])
  {

LABEL_6:
    v6 = 1;
    goto LABEL_8;
  }

  v8 = [intentCopy bcc];
  v9 = [v8 count];

  if (v9)
  {
    v6 = 1;
  }

  else
  {
    v6 = 6;
  }

LABEL_8:

  return v6;
}

- (id)_messageFromSendMailIntent:(id)intent
{
  intentCopy = intent;
  v5 = objc_alloc_init(MFMutableMessageHeaders);
  v6 = [intentCopy to];
  v7 = [(SendMailIntentHandler *)self _emailAddressesFromPersons:v6];
  [v5 setAddressListForTo:v7];

  v8 = [intentCopy cc];
  v9 = [(SendMailIntentHandler *)self _emailAddressesFromPersons:v8];
  [v5 setAddressListForCc:v9];

  v10 = [intentCopy bcc];
  v11 = [(SendMailIntentHandler *)self _emailAddressesFromPersons:v10];
  [v5 setAddressListForBcc:v11];

  sender = [intentCopy sender];
  accountProxyGenerator = [(SendMailIntentHandler *)self accountProxyGenerator];
  v14 = [accountProxyGenerator accountProxyContainingEmailAddress:sender includingInactive:0];

  if (v14)
  {
    v15 = [[ECEmailAddressComponents alloc] initWithString:sender];
    fullUserName = [v14 fullUserName];
    [v15 setDisplayName:fullUserName];

    emailAddressValue = [v15 emailAddressValue];
    stringValue = [emailAddressValue stringValue];

    v19 = stringValue;
  }

  else
  {
    [(SendMailIntentHandler *)self defaultSenderForSendMail:intentCopy];
    v19 = v15 = sender;
  }

  v34 = v19;
  v20 = [NSArray arrayWithObjects:&v34 count:1];
  [v5 setAddressListForSender:v20];

  v21 = +[NSDate date];
  ec_descriptionForMimeHeaders = [v21 ec_descriptionForMimeHeaders];

  [v5 setHeader:ec_descriptionForMimeHeaders forKey:ECMessageHeaderKeyDate];
  subject = [intentCopy subject];
  [v5 setHeader:subject forKey:ECMessageHeaderKeySubject];

  attachments = [intentCopy attachments];
  v25 = [attachments ef_map:&stru_10000C7D8];

  body = [intentCopy body];
  v27 = [ECHTMLStringAndMIMECharset mf_utf8HTMLStringWithString:body];

  v33 = v27;
  v28 = [NSArray arrayWithObjects:&v33 count:1];
  if ([v25 count])
  {
    v29 = [v28 arrayByAddingObjectsFromArray:v25];

    v28 = v29;
  }

  v30 = objc_alloc_init(MFMessageWriter);
  v31 = [v30 createMessageWithHTMLStringAndMIMECharset:0 plainTextAlternative:0 otherHtmlStringsAndAttachments:v28 headers:v5];

  return v31;
}

@end