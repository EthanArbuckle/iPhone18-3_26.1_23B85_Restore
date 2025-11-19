@interface MFMessageCompositionTriageInteraction
+ (OS_os_log)log;
+ (id)compositionRepresentationRequestForMessage:(id)a3;
+ (id)interactionWithContentRequest:(id)a3 scene:(id)a4;
- (BOOL)_hasIncompleteAttachments;
- (BOOL)_noSelection;
- (BOOL)_selectedTextContainsAttachments;
- (ComposeCapable)scene;
- (EMMessage)emailMessage;
- (MFMessageCompositionTriageInteraction)init;
- (id)_confirmIncludingAttachments;
- (id)_confirmLoadingRestOfMessage;
- (unint64_t)includeAttachmentsForCurrentPolicy;
- (unint64_t)shouldIncludeAttachments;
- (unint64_t)shouldLoadRestOfMessage;
- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4;
- (void)presentComposeWithContext:(id)a3;
@end

@implementation MFMessageCompositionTriageInteraction

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E5AFC;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD590 != -1)
  {
    dispatch_once(&qword_1006DD590, block);
  }

  v2 = qword_1006DD588;

  return v2;
}

+ (id)compositionRepresentationRequestForMessage:(id)a3
{
  v3 = a3;
  v4 = [MessageContentRepresentationRequest alloc];
  v5 = [v4 initWithMessage:v3 includeSuggestions:0 representationType:EMContentRepresentationTypeHTML delegate:0];

  return v5;
}

+ (id)interactionWithContentRequest:(id)a3 scene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  v9 = [MSMessageListItemSelection alloc];
  v10 = [v6 message];
  v15 = v10;
  v11 = [NSArray arrayWithObjects:&v15 count:1];
  v12 = [v9 initWithMessageListItems:v11];
  [v8 setMessageListItemSelection:v12];

  [v8 setContentRequest:v6];
  v13 = [v7 daemonInterface];
  [v8 setDaemonInterface:v13];

  [v8 setPromptForAttachmentsResult:0];
  [v8 setScene:v7];

  return v8;
}

- (MFMessageCompositionTriageInteraction)init
{
  v5.receiver = self;
  v5.super_class = MFMessageCompositionTriageInteraction;
  v2 = [(MFTriageInteraction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MFMessageCompositionTriageInteraction *)v2 setShouldPromptToLoadRestOfMessage:1];
    [(MFMessageCompositionTriageInteraction *)v3 setIsActingOnEML:0];
  }

  return v3;
}

- (EMMessage)emailMessage
{
  v2 = [(MFTriageInteraction *)self messageListItemSelection];
  v3 = [v2 messageListItems];
  v4 = [v3 firstObject];
  v5 = [v4 displayMessage];
  v6 = [v5 result];

  return v6;
}

- (BOOL)_hasIncompleteAttachments
{
  v2 = [(MFMessageCompositionTriageInteraction *)self contentRequest];
  v3 = [v2 resultIfAvailable];

  v4 = [v3 relatedContentItems];
  v5 = [v4 ef_any:&stru_100654968];

  return v5;
}

- (unint64_t)includeAttachmentsForCurrentPolicy
{
  v3 = [(MFMessageCompositionTriageInteraction *)self attachmentPolicy];
  if (v3 == 3)
  {
    if ([(MFMessageCompositionTriageInteraction *)self includeAttachmentsWithoutPrompting])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (v3 == 2)
  {
    return 0;
  }

  else if (v3)
  {
    return 2;
  }

  else
  {

    return [(MFMessageCompositionTriageInteraction *)self includeAttachmentsByDefault];
  }
}

- (unint64_t)shouldLoadRestOfMessage
{
  v3 = [(MFMessageCompositionTriageInteraction *)self shouldPromptToLoadRestOfMessage];
  v4 = [(MFMessageCompositionTriageInteraction *)self promptForAttachmentsResult];
  if (!v4)
  {
    v4 = [(MFMessageCompositionTriageInteraction *)self includeAttachmentsForCurrentPolicy];
  }

  v5 = [(MFMessageCompositionTriageInteraction *)self contentRequest];
  v6 = [v5 resultIfAvailable];

  if (v6)
  {
    v7 = [v6 hasMoreContent];
    v8 = v7;
    if ((v3 & 1) == 0)
    {
      if (v7)
      {
        goto LABEL_15;
      }

LABEL_13:
      if (v4 != 2 || ![(MFMessageCompositionTriageInteraction *)self _hasIncompleteAttachments])
      {
        v9 = 1;
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 & 1) == 0)
    {
LABEL_15:
      v9 = 2;
      goto LABEL_17;
    }

    v8 = 1;
  }

  if ((([(MFMessageCompositionTriageInteraction *)self promptForAttachmentsResult]!= 2) & v8) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:

  return v9;
}

- (BOOL)_selectedTextContainsAttachments
{
  v2 = [(MFMessageCompositionTriageInteraction *)self originalContent];
  v3 = [v2 firstObject];
  v4 = [v3 containsString:@"<attachment"];

  return v4;
}

- (BOOL)_noSelection
{
  v2 = [(MFMessageCompositionTriageInteraction *)self originalContent];
  v3 = v2 == 0;

  return v3;
}

- (unint64_t)shouldIncludeAttachments
{
  v3 = [(MFMessageCompositionTriageInteraction *)self emailMessage];
  if (![v3 hasAttachments])
  {

    return 1;
  }

  if (![(MFMessageCompositionTriageInteraction *)self _noSelection])
  {
    v5 = [(MFMessageCompositionTriageInteraction *)self _selectedTextContainsAttachments];

    if (v5)
    {
      goto LABEL_7;
    }

    return 1;
  }

LABEL_7:

  return [(MFMessageCompositionTriageInteraction *)self includeAttachmentsForCurrentPolicy];
}

- (id)_confirmLoadingRestOfMessage
{
  v3 = [(MFMessageCompositionTriageInteraction *)self shouldLoadRestOfMessage];
  if (v3)
  {
    v4 = [NSNumber numberWithInt:v3 == 2];
    v5 = [EFFuture futureWithResult:v4];
  }

  else
  {
    v6 = +[EFPromise promise];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"DOWNLOAD_REST_OF_MESSAGE" value:&stru_100662A88 table:@"Main"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001E6630;
    v24[3] = &unk_10064FCC0;
    v9 = v6;
    v25 = v9;
    v10 = [UIAlertController mf_actionSheetWithTitle:v8 cancellationHandler:v24];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"YES" value:&stru_100662A88 table:@"Main"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001E6690;
    v22[3] = &unk_10064FCC0;
    v13 = v9;
    v23 = v13;
    v14 = [UIAlertAction actionWithTitle:v12 style:0 handler:v22];
    [v10 addAction:v14];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"NO" value:&stru_100662A88 table:@"Main"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001E66A0;
    v20[3] = &unk_10064FCC0;
    v17 = v13;
    v21 = v17;
    v18 = [UIAlertAction actionWithTitle:v16 style:0 handler:v20];
    [v10 addAction:v18];

    [(MFTriageInteraction *)self _presentConfirmationSheet:v10];
    v5 = [v17 future];
  }

  return v5;
}

- (id)_confirmIncludingAttachments
{
  v3 = [(MFMessageCompositionTriageInteraction *)self shouldIncludeAttachments];
  if (v3)
  {
    v4 = [NSNumber numberWithInt:v3 == 2];
    v5 = [EFFuture futureWithResult:v4];
  }

  else
  {
    v6 = +[EFPromise promise];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"INCLUDE_ATTACHMENTS" value:&stru_100662A88 table:@"Main"];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001E6AC4;
    v25[3] = &unk_10064FCC0;
    v9 = v6;
    v26 = v9;
    v10 = [UIAlertController mf_actionSheetWithTitle:v8 cancellationHandler:v25];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"YES_INCLUDE" value:&stru_100662A88 table:@"Main"];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001E6B24;
    v23[3] = &unk_10064FCC0;
    v13 = v9;
    v24 = v13;
    v14 = [UIAlertAction actionWithTitle:v12 style:0 handler:v23];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"NO_INCLUDE" value:&stru_100662A88 table:@"Main"];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001E6B34;
    v21[3] = &unk_10064FCC0;
    v17 = v13;
    v22 = v17;
    v18 = [UIAlertAction actionWithTitle:v16 style:0 handler:v21];

    [v10 addAction:v14];
    [v10 addAction:v18];
    v19 = [v10 title];
    [v19 setAccessibilityIdentifier:MSAccessibiltyIdentifierIncludeAttachmentsAlert];

    [v14 setAccessibilityIdentifier:MSAccessibiltyIdentifierIncludeAttachmentsAlertYesInclude];
    [v18 setAccessibilityIdentifier:MSAccessibiltyIdentifierIncludeAttachmentsAlertNoInclude];
    [(MFTriageInteraction *)self _presentConfirmationSheet:v10];
    v5 = [v17 future];
  }

  return v5;
}

- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(MFMessageCompositionTriageInteraction *)self _confirmIncludingAttachments];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E6D58;
  v15[3] = &unk_100654990;
  v15[4] = self;
  v7 = [v6 then:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001E6DD0;
  v14[3] = &unk_100654990;
  v14[4] = self;
  v8 = [v7 then:v14];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E6E44;
  v12[3] = &unk_100653278;
  v12[4] = self;
  v9 = v5;
  v13 = v9;
  [v8 addSuccessBlock:v12];
  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001E73B0;
    v10[3] = &unk_10064DB90;
    v10[4] = self;
    v11 = v9;
    [v8 addFailureBlock:v10];
  }
}

- (void)presentComposeWithContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 setShowKeyboardImmediately:1];
    v6 = [(MFMessageCompositionTriageInteraction *)self scene];
    v7 = [(MFMessageCompositionTriageInteraction *)self fromAddress];

    if (v7)
    {
      v8 = [(MFMessageCompositionTriageInteraction *)self fromAddress];
      [v5 setPreferredSendingEmailAddress:v8];
    }

    else
    {
      v20 = 1;
      v8 = [v6 composeAccountIsDefault:&v20];
      v9 = [v8 emailAddresses];
      v10 = [v9 firstObject];
      v11 = [v10 simpleAddress];
      [v5 setPreferredSendingEmailAddress:v11];
    }

    [v5 setLoadRest:{-[MFMessageCompositionTriageInteraction loadRestOfMessage](self, "loadRestOfMessage")}];
    [v5 setIncludeAttachments:{-[MFMessageCompositionTriageInteraction promptForAttachmentsResult](self, "promptForAttachmentsResult") == 2}];
    v12 = [(MFMessageCompositionTriageInteraction *)self loadingContext];
    [v5 setLoadingContext:v12];

    v13 = [(MFMessageCompositionTriageInteraction *)self mailboxObjectID];
    v14 = [v13 serializedRepresentation];
    [v5 setSerializedMailboxObjectID:v14];

    v15 = [(MFMessageCompositionTriageInteraction *)self originalContent];
    v16 = [v15 count];

    if (v16)
    {
      v17 = [(MFMessageCompositionTriageInteraction *)self originalContent];
      [v5 setOriginalContent:v17];
    }

    v18 = [(MFTriageInteraction *)self isTriggeredFromMenuAction];
    if (v18)
    {
      v19 = [(MFTriageInteraction *)self presentationSource];
    }

    else
    {
      v19 = 0;
    }

    [v6 showComposeWithContext:v5 animated:1 initialTitle:0 presentationSource:v19 completionBlock:0];
    if (v18)
    {
    }
  }
}

- (ComposeCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end