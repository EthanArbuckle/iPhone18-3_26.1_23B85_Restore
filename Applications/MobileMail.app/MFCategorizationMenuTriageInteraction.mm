@interface MFCategorizationMenuTriageInteraction
- (id)cardActionWithCompletion:(id)completion;
- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion;
@end

@implementation MFCategorizationMenuTriageInteraction

- (id)cardActionWithCompletion:(id)completion
{
  v4 = objc_retainBlock(completion);
  cardTitle = [(MFTriageInteraction *)self cardTitle];
  _iconImageName = [(MFCategorizationMenuTriageInteraction *)self _iconImageName];
  _tintColor = [(MFTriageInteraction *)self _tintColor];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001AEA44;
  v11[3] = &unk_100653520;
  v11[4] = self;
  v8 = v4;
  v12 = v8;
  v9 = [MFCardAction cardActionWithTitle:cardTitle shortTitle:0 imageName:_iconImageName tintColor:_tintColor handler:v11];

  return v9;
}

- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion
{
  completionCopy = completion;
  v22.receiver = self;
  v22.super_class = MFCategorizationMenuTriageInteraction;
  [(MFCategoryTriageInteraction *)&v22 _performInteractionAfterPreparation:preparation completion:completionCopy];
  v21.receiver = self;
  v21.super_class = MFCategorizationMenuTriageInteraction;
  delegate = [(MFTriageInteraction *)&v21 delegate];
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  firstObject = [messageListItems firstObject];

  v11 = [delegate presentingViewControllerForCategorizationInteraction:self];
  v12 = [delegate actionViewHeaderForCategorizationInteraction:self messageListItem:firstObject];
  v13 = [[MailRecategorizationViewController alloc] initWithMessageHeaderView:v12 messageListItem:firstObject completion:completionCopy];
  [(MailRecategorizationViewController *)v13 setDelegate:delegate];
  v14 = [[UINavigationController alloc] initWithRootViewController:v13];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    traitCollection = [v11 traitCollection];
    v16 = [traitCollection userInterfaceIdiom] == 1;
  }

  else
  {
    v16 = 0;
  }

  traitCollection2 = [v11 traitCollection];
  v18 = [traitCollection2 mf_supportsPopoverPresentation] | v16;

  if (v18)
  {
    [v14 setModalPresentationStyle:7];
    popoverPresentationController = [v14 popoverPresentationController];
    presentationSource = [(MFTriageInteraction *)self presentationSource];
    [popoverPresentationController setSourceItem:presentationSource];
  }

  else
  {
    [v14 setModalPresentationStyle:1];
    popoverPresentationController = [v14 presentationController];
    [popoverPresentationController _setShouldDismissWhenTappedOutside:1];
  }

  [v11 presentViewController:v14 animated:1 completion:0];
}

@end