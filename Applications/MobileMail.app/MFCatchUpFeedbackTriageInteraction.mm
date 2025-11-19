@interface MFCatchUpFeedbackTriageInteraction
+ (OS_os_log)log;
- (id)cardActionWithCompletion:(id)a3;
- (id)title;
- (void)performInteractionWithType:(int64_t)a3 completion:(id)a4;
@end

@implementation MFCatchUpFeedbackTriageInteraction

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AB7C4;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD410 != -1)
  {
    dispatch_once(&qword_1006DD410, block);
  }

  v2 = qword_1006DD408;

  return v2;
}

- (id)cardActionWithCompletion:(id)a3
{
  v4 = a3;
  if (+[MUICatchUpFeedbackController isFeedbackRestricted])
  {
    v5 = [(MFCatchUpFeedbackTriageInteraction *)self title];
    v6 = [(MFCatchUpFeedbackTriageInteraction *)self _iconImageName];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001ABAAC;
    v18[3] = &unk_100653520;
    v18[4] = self;
    v19 = v4;
    v7 = [MFCardAction cardActionWithTitle:v5 shortTitle:0 imageName:v6 tintColor:0 handler:v18];
    v8 = &v19;
  }

  else
  {
    v9 = [(MFCatchUpFeedbackTriageInteraction *)self title];
    v10 = [(MFCatchUpFeedbackTriageInteraction *)self _iconImageName];
    v7 = [MFCatchUpFeedbackCardHeaderAction cardActionWithTitle:v9 shortTitle:0 imageName:v10 tintColor:0 handler:&stru_100653560];

    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1001ABAC0;
    v15 = &unk_100653520;
    v16 = self;
    v17 = v4;
    v5 = [MFCatchUpFeedbackCardAction cardActionWithTitle:0 shortTitle:0 imageName:0 tintColor:0 handler:&v12];
    [v7 setFeedbackAction:{v5, v12, v13, v14, v15, v16}];
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

- (void)performInteractionWithType:(int64_t)a3 completion:(id)a4
{
  v25.receiver = self;
  v25.super_class = MFCatchUpFeedbackTriageInteraction;
  [(MFTriageInteraction *)&v25 performInteractionWithCompletion:a4];
  v6 = [(MFTriageInteraction *)self messageListItemSelection];
  v7 = [v6 messageListItems];
  v8 = [v7 firstObject];

  v9 = [v8 generatedSummary];
  v10 = [v9 messageItemID];

  if (v10)
  {
    v11 = [EMMessageObjectID alloc];
    v12 = +[EMMailboxScope allMailboxesScope];
    v13 = [v11 initWithCollectionItemID:v10 mailboxScope:v12];

    v14 = [(MFTriageInteraction *)self delegate];
    v15 = [v14 messageRepositoryForTriageInteraction:self];
    v16 = [v14 presentingViewControllerForTriageInteraction:self];
    v17 = [v15 messageForObjectID:v13];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001ABF00;
    v22[3] = &unk_100653588;
    v24 = a3;
    v18 = v16;
    v23 = v18;
    [v17 addSuccessBlock:v22];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001AC010;
    v20[3] = &unk_10064D028;
    v21 = v10;
    [v17 addFailureBlock:v20];
  }

  else
  {
    v13 = +[MFCatchUpFeedbackTriageInteraction log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = [v8 ef_publicDescription];
      sub_10048B0BC(v19, buf, v13);
    }
  }
}

@end