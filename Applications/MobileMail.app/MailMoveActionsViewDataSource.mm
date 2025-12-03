@interface MailMoveActionsViewDataSource
- (id)sectionDataForMailActionsViewController:(id)controller;
@end

@implementation MailMoveActionsViewDataSource

- (id)sectionDataForMailActionsViewController:(id)controller
{
  if ([(MailActionsViewDataSource *)self isTargetValid])
  {
    presentationSource = [(MailActionsViewDataSource *)self presentationSource];
    completion = [(MailActionsViewDataSource *)self completion];
    predictedMailbox = [(MailActionsViewDataSource *)self predictedMailbox];
    resultIfAvailable = [predictedMailbox resultIfAvailable];

    moveToPredictionTriageInteractionDelegate = [(MailActionsViewDataSource *)self moveToPredictionTriageInteractionDelegate];
    presentingViewControllerForTransferUI = [(MailActionsViewDataSource *)self presentingViewControllerForTransferUI];
    target = [(MailActionsViewDataSource *)self target];
    messageListItem = [target messageListItem];
    v21 = messageListItem;
    v11 = [NSArray arrayWithObjects:&v21 count:1];

    scene = [(MailActionsViewDataSource *)self scene];
    undoManager = [scene undoManager];

    v14 = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:v11 undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2 presentationSource:presentationSource delegate:moveToPredictionTriageInteractionDelegate presentingViewController:presentingViewControllerForTransferUI predictedMailbox:resultIfAvailable];
    v15 = objc_opt_new();
    v16 = [MFCardActionSectionData alloc];
    v17 = [v14 cardActionsWithCompletion:completion];
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