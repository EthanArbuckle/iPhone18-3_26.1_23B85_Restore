@interface MFEmailSnippetMailProvider
- (BOOL)search:(id)a3 didFindResults:(id)a4;
- (MFEmailSnippetMailProvider)initWithAceObject:(id)a3;
- (id)stringForExpression:(id)a3;
- (id)stringForExpression:(id)a3 containsPrivacySensitiveContents:(BOOL *)a4;
- (void)search:(id)a3 didFinishWithError:(id)a4;
@end

@implementation MFEmailSnippetMailProvider

- (MFEmailSnippetMailProvider)initWithAceObject:(id)a3
{
  v4 = a3;
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
  v7 = [v4 dictionary];
  v8 = [(MFAssistantEmail *)v6 initWithDictionary:v7];
  email = v5->_email;
  v5->_email = v8;

  v10 = objc_alloc_init(EFPromise);
  emailContentPromise = v5->_emailContentPromise;
  v5->_emailContentPromise = v10;

  v12 = [(MFAssistantEmail *)v5->_email identifier];
  v28 = v12;
  v13 = [NSArray arrayWithObjects:&v28 count:1];
  v14 = [MFAssistant loadEmailContentForEmails:v13 delegate:v5];

  v15 = [(EFPromise *)v5->_emailContentPromise future];
  v22 = 0;
  v16 = [v15 resultWithTimeout:&v22 error:5.0];
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

- (id)stringForExpression:(id)a3
{
  v3 = [(MFEmailSnippetMailProvider *)self stringForExpression:a3 containsPrivacySensitiveContents:0];

  return v3;
}

- (id)stringForExpression:(id)a3 containsPrivacySensitiveContents:(BOOL *)a4
{
  v6 = a3;
  if (![v6 isEqualToString:SAEmailEmailFromEmailPListKey])
  {
    if ([v6 isEqualToString:SAEmailEmailSubjectPListKey])
    {
      if (a4)
      {
        *a4 = 1;
      }

      v16 = [(MFAssistantEmail *)self->_email subject];
    }

    else
    {
      if (![v6 isEqualToString:SAEmailEmailMessagePreviewPListKey])
      {
        if (a4)
        {
          *a4 = 0;
        }

        v8 = MFLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v6;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "#Warning Unknown expression: %@", &v19, 0xCu);
        }

        goto LABEL_20;
      }

      if (a4)
      {
        *a4 = 1;
      }

      v16 = [(MFAssistantEmail *)self->_email message];
    }

    v17 = v16;
    goto LABEL_24;
  }

  v7 = [(MFAssistantEmail *)self->_email fromEmail];
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      *a4 = 1;
    }

    v21 = v7;
    v9 = [NSArray arrayWithObjects:&v21 count:1];
    v10 = MFCommentedEmailsFromSAPersonAttributes(v9);
    v11 = [v10 lastObject];
    v12 = [v11 emailAddressValue];
    v13 = [v12 displayName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v11 stringValue];
    }

    v17 = v15;

    goto LABEL_23;
  }

LABEL_20:
  v17 = 0;
LABEL_23:

LABEL_24:

  return v17;
}

- (BOOL)search:(id)a3 didFindResults:(id)a4
{
  v5 = [a4 lastObject];
  [MFAssistant permuteEmail:self->_email withResults:v5];

  return 1;
}

- (void)search:(id)a3 didFinishWithError:(id)a4
{
  v6 = a4;
  v5 = [(EFPromise *)self->_emailContentPromise errorOnlyCompletionHandlerAdapter];
  (v5)[2](v5, v6);
}

@end