@interface MFCatchUpFeedbackTriageInteraction
+ (OS_os_log)log;
- (id)cardActionWithCompletion:(id)completion;
- (id)title;
- (void)performInteractionWithType:(int64_t)type completion:(id)completion;
@end

@implementation MFCatchUpFeedbackTriageInteraction

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AB7C4;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD410 != -1)
  {
    dispatch_once(&qword_1006DD410, block);
  }

  v2 = qword_1006DD408;

  return v2;
}

- (id)cardActionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (+[MUICatchUpFeedbackController isFeedbackRestricted])
  {
    title = [(MFCatchUpFeedbackTriageInteraction *)self title];
    _iconImageName = [(MFCatchUpFeedbackTriageInteraction *)self _iconImageName];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001ABAAC;
    v18[3] = &unk_100653520;
    v18[4] = self;
    v19 = completionCopy;
    v7 = [MFCardAction cardActionWithTitle:title shortTitle:0 imageName:_iconImageName tintColor:0 handler:v18];
    v8 = &v19;
  }

  else
  {
    title2 = [(MFCatchUpFeedbackTriageInteraction *)self title];
    _iconImageName2 = [(MFCatchUpFeedbackTriageInteraction *)self _iconImageName];
    v7 = [MFCatchUpFeedbackCardHeaderAction cardActionWithTitle:title2 shortTitle:0 imageName:_iconImageName2 tintColor:0 handler:&stru_100653560];

    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1001ABAC0;
    v15 = &unk_100653520;
    selfCopy = self;
    v17 = completionCopy;
    title = [MFCatchUpFeedbackCardAction cardActionWithTitle:0 shortTitle:0 imageName:0 tintColor:0 handler:&v12];
    [v7 setFeedbackAction:{title, v12, v13, v14, v15, selfCopy}];
    v8 = &v17;
  }

  return v7;
}

- (id)title
{
  +[MUICatchUpFeedbackController isFeedbackRestricted];
  v2 = _EFLocalizedString();

  return v2;
}

- (void)performInteractionWithType:(int64_t)type completion:(id)completion
{
  v25.receiver = self;
  v25.super_class = MFCatchUpFeedbackTriageInteraction;
  [(MFTriageInteraction *)&v25 performInteractionWithCompletion:completion];
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  firstObject = [messageListItems firstObject];

  generatedSummary = [firstObject generatedSummary];
  messageItemID = [generatedSummary messageItemID];

  if (messageItemID)
  {
    v11 = [EMMessageObjectID alloc];
    v12 = +[EMMailboxScope allMailboxesScope];
    v13 = [v11 initWithCollectionItemID:messageItemID mailboxScope:v12];

    delegate = [(MFTriageInteraction *)self delegate];
    v15 = [delegate messageRepositoryForTriageInteraction:self];
    v16 = [delegate presentingViewControllerForTriageInteraction:self];
    v17 = [v15 messageForObjectID:v13];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001ABF00;
    v22[3] = &unk_100653588;
    typeCopy = type;
    v18 = v16;
    v23 = v18;
    [v17 addSuccessBlock:v22];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001AC010;
    v20[3] = &unk_10064D028;
    v21 = messageItemID;
    [v17 addFailureBlock:v20];
  }

  else
  {
    v13 = +[MFCatchUpFeedbackTriageInteraction log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [firstObject ef_publicDescription];
      sub_10048B0BC(ef_publicDescription, buf, v13);
    }
  }
}

@end