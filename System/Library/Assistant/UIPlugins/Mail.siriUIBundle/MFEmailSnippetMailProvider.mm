@interface MFEmailSnippetMailProvider
- (BOOL)search:(id)search didFindResults:(id)results;
- (MFEmailSnippetMailProvider)initWithAceObject:(id)object;
- (id)stringForExpression:(id)expression;
- (id)stringForExpression:(id)expression containsPrivacySensitiveContents:(BOOL *)contents;
- (void)search:(id)search didFinishWithError:(id)error;
@end

@implementation MFEmailSnippetMailProvider

- (MFEmailSnippetMailProvider)initWithAceObject:(id)object
{
  objectCopy = object;
  v23.receiver = self;
  v23.super_class = MFEmailSnippetMailProvider;
  v5 = [(MFEmailSnippetMailProvider *)&v23 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = [MFAssistantEmail alloc];
  dictionary = [objectCopy dictionary];
  v8 = [(MFAssistantEmail *)v6 initWithDictionary:dictionary];
  email = v5->_email;
  v5->_email = v8;

  v10 = objc_alloc_init(EFPromise);
  emailContentPromise = v5->_emailContentPromise;
  v5->_emailContentPromise = v10;

  identifier = [(MFAssistantEmail *)v5->_email identifier];
  v28 = identifier;
  v13 = [NSArray arrayWithObjects:&v28 count:1];
  v14 = [MFAssistant loadEmailContentForEmails:v13 delegate:v5];

  future = [(EFPromise *)v5->_emailContentPromise future];
  v22 = 0;
  v16 = [future resultWithTimeout:&v22 error:5.0];
  v17 = v22;

  if (v16)
  {

LABEL_5:
    v18 = v5;
    goto LABEL_6;
  }

  [v14 cancel];
  v20 = MFLogGeneral();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = pthread_self();
    *buf = 134218242;
    v25 = v21;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "#Warning ERROR: Content did not load in time.  Returning bogus controller: %p error:%@", buf, 0x16u);
  }

  v18 = 0;
LABEL_6:

  return v18;
}

- (id)stringForExpression:(id)expression
{
  v3 = [(MFEmailSnippetMailProvider *)self stringForExpression:expression containsPrivacySensitiveContents:0];

  return v3;
}

- (id)stringForExpression:(id)expression containsPrivacySensitiveContents:(BOOL *)contents
{
  expressionCopy = expression;
  if (![expressionCopy isEqualToString:SAEmailEmailFromEmailPListKey])
  {
    if ([expressionCopy isEqualToString:SAEmailEmailSubjectPListKey])
    {
      if (contents)
      {
        *contents = 1;
      }

      subject = [(MFAssistantEmail *)self->_email subject];
    }

    else
    {
      if (![expressionCopy isEqualToString:SAEmailEmailMessagePreviewPListKey])
      {
        if (contents)
        {
          *contents = 0;
        }

        v8 = MFLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = expressionCopy;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "#Warning Unknown expression: %@", &v19, 0xCu);
        }

        goto LABEL_20;
      }

      if (contents)
      {
        *contents = 1;
      }

      subject = [(MFAssistantEmail *)self->_email message];
    }

    v17 = subject;
    goto LABEL_24;
  }

  fromEmail = [(MFAssistantEmail *)self->_email fromEmail];
  v8 = fromEmail;
  if (fromEmail)
  {
    if (contents)
    {
      *contents = 1;
    }

    v21 = fromEmail;
    v9 = [NSArray arrayWithObjects:&v21 count:1];
    v10 = MFCommentedEmailsFromSAPersonAttributes(v9);
    lastObject = [v10 lastObject];
    emailAddressValue = [lastObject emailAddressValue];
    displayName = [emailAddressValue displayName];
    v14 = displayName;
    if (displayName)
    {
      stringValue = displayName;
    }

    else
    {
      stringValue = [lastObject stringValue];
    }

    v17 = stringValue;

    goto LABEL_23;
  }

LABEL_20:
  v17 = 0;
LABEL_23:

LABEL_24:

  return v17;
}

- (BOOL)search:(id)search didFindResults:(id)results
{
  lastObject = [results lastObject];
  [MFAssistant permuteEmail:self->_email withResults:lastObject];

  return 1;
}

- (void)search:(id)search didFinishWithError:(id)error
{
  errorCopy = error;
  errorOnlyCompletionHandlerAdapter = [(EFPromise *)self->_emailContentPromise errorOnlyCompletionHandlerAdapter];
  (errorOnlyCompletionHandlerAdapter)[2](errorOnlyCompletionHandlerAdapter, errorCopy);
}

@end