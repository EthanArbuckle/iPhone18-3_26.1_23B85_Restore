@interface MFCategorizationMenuTriageInteraction
- (id)cardActionWithCompletion:(id)a3;
- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4;
@end

@implementation MFCategorizationMenuTriageInteraction

- (id)cardActionWithCompletion:(id)a3
{
  v4 = objc_retainBlock(a3);
  v5 = [(MFTriageInteraction *)self cardTitle];
  v6 = [(MFCategorizationMenuTriageInteraction *)self _iconImageName];
  v7 = [(MFTriageInteraction *)self _tintColor];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001AEA44;
  v11[3] = &unk_100653520;
  v11[4] = self;
  v8 = v4;
  v12 = v8;
  v9 = [MFCardAction cardActionWithTitle:v5 shortTitle:0 imageName:v6 tintColor:v7 handler:v11];

  return v9;
}

- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v22.receiver = self;
  v22.super_class = MFCategorizationMenuTriageInteraction;
  [(MFCategoryTriageInteraction *)&v22 _performInteractionAfterPreparation:a3 completion:v6];
  v21.receiver = self;
  v21.super_class = MFCategorizationMenuTriageInteraction;
  v7 = [(MFTriageInteraction *)&v21 delegate];
  v8 = [(MFTriageInteraction *)self messageListItemSelection];
  v9 = [v8 messageListItems];
  v10 = [v9 firstObject];

  v11 = [v7 presentingViewControllerForCategorizationInteraction:self];
  v12 = [v7 actionViewHeaderForCategorizationInteraction:self messageListItem:v10];
  v13 = [[MailRecategorizationViewController alloc] initWithMessageHeaderView:v12 messageListItem:v10 completion:v6];
  [(MailRecategorizationViewController *)v13 setDelegate:v7];
  v14 = [[UINavigationController alloc] initWithRootViewController:v13];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v11 traitCollection];
    v16 = [v15 userInterfaceIdiom] == 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v11 traitCollection];
  v18 = [v17 mf_supportsPopoverPresentation] | v16;

  if (v18)
  {
    [v14 setModalPresentationStyle:7];
    v19 = [v14 popoverPresentationController];
    v20 = [(MFTriageInteraction *)self presentationSource];
    [v19 setSourceItem:v20];
  }

  else
  {
    [v14 setModalPresentationStyle:1];
    v19 = [v14 presentationController];
    [v19 _setShouldDismissWhenTappedOutside:1];
  }

  [v11 presentViewController:v14 animated:1 completion:0];
}

@end