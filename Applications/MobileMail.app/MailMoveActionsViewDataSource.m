@interface MailMoveActionsViewDataSource
- (id)sectionDataForMailActionsViewController:(id)a3;
@end

@implementation MailMoveActionsViewDataSource

- (id)sectionDataForMailActionsViewController:(id)a3
{
  if ([(MailActionsViewDataSource *)self isTargetValid])
  {
    v20 = [(MailActionsViewDataSource *)self presentationSource];
    v4 = [(MailActionsViewDataSource *)self completion];
    v5 = [(MailActionsViewDataSource *)self predictedMailbox];
    v6 = [v5 resultIfAvailable];

    v7 = [(MailActionsViewDataSource *)self moveToPredictionTriageInteractionDelegate];
    v8 = [(MailActionsViewDataSource *)self presentingViewControllerForTransferUI];
    v9 = [(MailActionsViewDataSource *)self target];
    v10 = [v9 messageListItem];
    v21 = v10;
    v11 = [NSArray arrayWithObjects:&v21 count:1];

    v12 = [(MailActionsViewDataSource *)self scene];
    v13 = [v12 undoManager];

    v14 = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:v11 undoManager:v13 origin:[(MailActionsViewDataSource *)self origin] actor:2 presentationSource:v20 delegate:v7 presentingViewController:v8 predictedMailbox:v6];
    v15 = objc_opt_new();
    v16 = [MFCardActionSectionData alloc];
    v17 = [v14 cardActionsWithCompletion:v4];
    v18 = [(MFCardActionSectionData *)v16 initWithActions:v17 viewLayout:2];
    [v15 addObject:v18];
  }

  else
  {
    v15 = &__NSArray0__struct;
  }

  return v15;
}

@end