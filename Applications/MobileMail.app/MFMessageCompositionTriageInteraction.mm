@interface MFMessageCompositionTriageInteraction
+ (OS_os_log)log;
+ (id)compositionRepresentationRequestForMessage:(id)message;
+ (id)interactionWithContentRequest:(id)request scene:(id)scene;
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
- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion;
- (void)presentComposeWithContext:(id)context;
@end

@implementation MFMessageCompositionTriageInteraction

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E5AFC;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD590 != -1)
  {
    dispatch_once(&qword_1006DD590, block);
  }

  v2 = qword_1006DD588;

  return v2;
}

+ (id)compositionRepresentationRequestForMessage:(id)message
{
  messageCopy = message;
  v4 = [MessageContentRepresentationRequest alloc];
  v5 = [v4 initWithMessage:messageCopy includeSuggestions:0 representationType:EMContentRepresentationTypeHTML delegate:0];

  return v5;
}

+ (id)interactionWithContentRequest:(id)request scene:(id)scene
{
  requestCopy = request;
  sceneCopy = scene;
  v8 = objc_alloc_init(self);
  v9 = [MSMessageListItemSelection alloc];
  message = [requestCopy message];
  v15 = message;
  v11 = [NSArray arrayWithObjects:&v15 count:1];
  v12 = [v9 initWithMessageListItems:v11];
  [v8 setMessageListItemSelection:v12];

  [v8 setContentRequest:requestCopy];
  daemonInterface = [sceneCopy daemonInterface];
  [v8 setDaemonInterface:daemonInterface];

  [v8 setPromptForAttachmentsResult:0];
  [v8 setScene:sceneCopy];

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
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  firstObject = [messageListItems firstObject];
  displayMessage = [firstObject displayMessage];
  result = [displayMessage result];

  return result;
}

- (BOOL)_hasIncompleteAttachments
{
  contentRequest = [(MFMessageCompositionTriageInteraction *)self contentRequest];
  resultIfAvailable = [contentRequest resultIfAvailable];

  relatedContentItems = [resultIfAvailable relatedContentItems];
  v5 = [relatedContentItems ef_any:&stru_100654968];

  return v5;
}

- (unint64_t)includeAttachmentsForCurrentPolicy
{
  attachmentPolicy = [(MFMessageCompositionTriageInteraction *)self attachmentPolicy];
  if (attachmentPolicy == 3)
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

  else if (attachmentPolicy == 2)
  {
    return 0;
  }

  else if (attachmentPolicy)
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
  shouldPromptToLoadRestOfMessage = [(MFMessageCompositionTriageInteraction *)self shouldPromptToLoadRestOfMessage];
  promptForAttachmentsResult = [(MFMessageCompositionTriageInteraction *)self promptForAttachmentsResult];
  if (!promptForAttachmentsResult)
  {
    promptForAttachmentsResult = [(MFMessageCompositionTriageInteraction *)self includeAttachmentsForCurrentPolicy];
  }

  contentRequest = [(MFMessageCompositionTriageInteraction *)self contentRequest];
  resultIfAvailable = [contentRequest resultIfAvailable];

  if (resultIfAvailable)
  {
    hasMoreContent = [resultIfAvailable hasMoreContent];
    v8 = hasMoreContent;
    if ((shouldPromptToLoadRestOfMessage & 1) == 0)
    {
      if (hasMoreContent)
      {
        goto LABEL_15;
      }

LABEL_13:
      if (promptForAttachmentsResult != 2 || ![(MFMessageCompositionTriageInteraction *)self _hasIncompleteAttachments])
      {
        v9 = 1;
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if ((shouldPromptToLoadRestOfMessage & 1) == 0)
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
  originalContent = [(MFMessageCompositionTriageInteraction *)self originalContent];
  firstObject = [originalContent firstObject];
  v4 = [firstObject containsString:@"<attachment"];

  return v4;
}

- (BOOL)_noSelection
{
  originalContent = [(MFMessageCompositionTriageInteraction *)self originalContent];
  v3 = originalContent == 0;

  return v3;
}

- (unint64_t)shouldIncludeAttachments
{
  emailMessage = [(MFMessageCompositionTriageInteraction *)self emailMessage];
  if (![emailMessage hasAttachments])
  {

    return 1;
  }

  if (![(MFMessageCompositionTriageInteraction *)self _noSelection])
  {
    _selectedTextContainsAttachments = [(MFMessageCompositionTriageInteraction *)self _selectedTextContainsAttachments];

    if (_selectedTextContainsAttachments)
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
  shouldLoadRestOfMessage = [(MFMessageCompositionTriageInteraction *)self shouldLoadRestOfMessage];
  if (shouldLoadRestOfMessage)
  {
    v4 = [NSNumber numberWithInt:shouldLoadRestOfMessage == 2];
    future = [EFFuture futureWithResult:v4];
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
    future = [v17 future];
  }

  return future;
}

- (id)_confirmIncludingAttachments
{
  shouldIncludeAttachments = [(MFMessageCompositionTriageInteraction *)self shouldIncludeAttachments];
  if (shouldIncludeAttachments)
  {
    v4 = [NSNumber numberWithInt:shouldIncludeAttachments == 2];
    future = [EFFuture futureWithResult:v4];
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
    title = [v10 title];
    [title setAccessibilityIdentifier:MSAccessibiltyIdentifierIncludeAttachmentsAlert];

    [v14 setAccessibilityIdentifier:MSAccessibiltyIdentifierIncludeAttachmentsAlertYesInclude];
    [v18 setAccessibilityIdentifier:MSAccessibiltyIdentifierIncludeAttachmentsAlertNoInclude];
    [(MFTriageInteraction *)self _presentConfirmationSheet:v10];
    future = [v17 future];
  }

  return future;
}

- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion
{
  completionCopy = completion;
  _confirmIncludingAttachments = [(MFMessageCompositionTriageInteraction *)self _confirmIncludingAttachments];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E6D58;
  v15[3] = &unk_100654990;
  v15[4] = self;
  v7 = [_confirmIncludingAttachments then:v15];
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
  v9 = completionCopy;
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

- (void)presentComposeWithContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    [contextCopy setShowKeyboardImmediately:1];
    scene = [(MFMessageCompositionTriageInteraction *)self scene];
    fromAddress = [(MFMessageCompositionTriageInteraction *)self fromAddress];

    if (fromAddress)
    {
      fromAddress2 = [(MFMessageCompositionTriageInteraction *)self fromAddress];
      [v5 setPreferredSendingEmailAddress:fromAddress2];
    }

    else
    {
      v20 = 1;
      fromAddress2 = [scene composeAccountIsDefault:&v20];
      emailAddresses = [fromAddress2 emailAddresses];
      firstObject = [emailAddresses firstObject];
      simpleAddress = [firstObject simpleAddress];
      [v5 setPreferredSendingEmailAddress:simpleAddress];
    }

    [v5 setLoadRest:{-[MFMessageCompositionTriageInteraction loadRestOfMessage](self, "loadRestOfMessage")}];
    [v5 setIncludeAttachments:{-[MFMessageCompositionTriageInteraction promptForAttachmentsResult](self, "promptForAttachmentsResult") == 2}];
    loadingContext = [(MFMessageCompositionTriageInteraction *)self loadingContext];
    [v5 setLoadingContext:loadingContext];

    mailboxObjectID = [(MFMessageCompositionTriageInteraction *)self mailboxObjectID];
    serializedRepresentation = [mailboxObjectID serializedRepresentation];
    [v5 setSerializedMailboxObjectID:serializedRepresentation];

    originalContent = [(MFMessageCompositionTriageInteraction *)self originalContent];
    v16 = [originalContent count];

    if (v16)
    {
      originalContent2 = [(MFMessageCompositionTriageInteraction *)self originalContent];
      [v5 setOriginalContent:originalContent2];
    }

    isTriggeredFromMenuAction = [(MFTriageInteraction *)self isTriggeredFromMenuAction];
    if (isTriggeredFromMenuAction)
    {
      presentationSource = [(MFTriageInteraction *)self presentationSource];
    }

    else
    {
      presentationSource = 0;
    }

    [scene showComposeWithContext:v5 animated:1 initialTitle:0 presentationSource:presentationSource completionBlock:0];
    if (isTriggeredFromMenuAction)
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