@interface CNPropertySuggestionAction
- (BOOL)_confirmOrReject:(BOOL)a3;
- (BOOL)_confirmOrRejectDonation:(BOOL)a3;
- (BOOL)_confirmOrRejectSuggestion:(BOOL)a3;
- (id)dataSourceWithPropertyItem:(id)a3;
- (void)confirm;
- (void)performActionForItem:(id)a3 sender:(id)a4;
- (void)reject;
- (void)setSelectedChoice:(int64_t)a3;
@end

@implementation CNPropertySuggestionAction

- (void)reject
{
  [(CNPropertySuggestionAction *)self _confirmOrReject:0];
  v3 = [(CNPropertyAction *)self propertyItem];
  [v3 rejectSuggestion];
}

- (void)confirm
{
  [(CNPropertySuggestionAction *)self _confirmOrReject:1];
  v3 = [(CNPropertyAction *)self propertyItem];
  [v3 confirmSuggestion];
}

- (BOOL)_confirmOrRejectDonation:(BOOL)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E6996448]);
  v5 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v6 = [(CNPropertyAction *)self propertyItem];
  v7 = [v6 labeledValue];
  v8 = [v7 valueOrigin];
  v9 = [v8 donationIdentifier];
  v10 = [v5 errorOnlyCompletionHandlerAdapter];
  [v4 rejectValueWithDonationIdentifier:v9 completionHandler:v10];

  v11 = [v5 future];
  v19 = 0;
  v12 = [v11 result:&v19];
  v13 = v19;

  if (v13)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertySuggestionAction.m", 121, 3, @"Error rejecting suggestion: %@", v14, v15, v16, v17, v13);
  }

  return v13 == 0;
}

- (BOOL)_confirmOrRejectSuggestion:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactAction *)self delegate];
  v6 = [v5 contactViewCache];
  v7 = [v6 contactStore];

  v8 = objc_alloc_init(MEMORY[0x1E695CFA8]);
  v9 = [(CNPropertyAction *)self propertyItem];
  v10 = [v9 labeledValue];
  if (v3)
  {
    [v8 confirmSuggestion:v10];
  }

  else
  {
    [v8 rejectSuggestion:v10];
  }

  v19 = 0;
  v11 = [v7 executeSaveRequest:v8 error:&v19];
  v12 = v19;
  v17 = v12;
  if ((v11 & 1) == 0)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertySuggestionAction.m", 101, 3, @"Error confirming or rejecting suggestion: %@", v13, v14, v15, v16, v12);
  }

  return v11;
}

- (BOOL)_confirmOrReject:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNPropertyAction *)self propertyItem];
  v6 = [v5 labeledValue];
  v7 = [v6 valueOrigin];

  if (v7)
  {

    return [(CNPropertySuggestionAction *)self _confirmOrRejectDonation:v3];
  }

  else
  {

    return [(CNPropertySuggestionAction *)self _confirmOrRejectSuggestion:v3];
  }
}

- (void)setSelectedChoice:(int64_t)a3
{
  self->_selectedChoice = a3;
  v4 = [(CNContactAction *)self delegate];
  [v4 actionDidFinish:self];

  v5 = [(CNPropertySuggestionAction *)self suggestionViewController];
  v6 = [v5 navigationController];
  v7 = [v6 popViewControllerAnimated:1];

  self->_selectedChoice = 0;
}

- (id)dataSourceWithPropertyItem:(id)a3
{
  v4 = a3;
  v5 = [(CNContactAction *)self delegate];
  v6 = [v5 contactViewCache];
  v7 = [v6 contactStore];

  v8 = [v4 labeledValue];
  v19 = 0;
  v9 = [v7 originForSuggestion:v8 error:&v19];
  v10 = v19;

  if (v10)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertySuggestionAction.m", 60, 3, @"Could not get origin for suggested property: %@", v11, v12, v13, v14, v10);
  }

  if (v9)
  {
    v15 = [[CNContactSuggestionViewControllerSGOriginDataSource alloc] initWithSGOrigin:v9];
  }

  else
  {
    v16 = [CNContactSuggestionViewControllerLabeledValueDataSource alloc];
    v17 = [v4 labeledValue];
    v15 = [(CNContactSuggestionViewControllerLabeledValueDataSource *)v16 initWithLabeledValue:v17];
  }

  return v15;
}

- (void)performActionForItem:(id)a3 sender:(id)a4
{
  v5 = a3;
  v6 = [(CNPropertySuggestionAction *)self dataSourceWithPropertyItem:v5];
  v7 = [CNContactSuggestionViewController viewControllerWithDataSource:v6];
  [(CNPropertySuggestionAction *)self setSuggestionViewController:v7];

  v8 = [(CNContactAction *)self delegate];
  v13 = [v8 action:self cellForPropertyItem:v5 sender:self];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v13 setShouldShowTransportButtons:1];
  }

  v9 = [(CNPropertySuggestionAction *)self suggestionViewController];
  [v9 setPropertyCell:v13];

  v10 = [(CNPropertySuggestionAction *)self suggestionViewController];
  [v10 setAction:self];

  v11 = [(CNContactAction *)self delegate];
  v12 = [(CNPropertySuggestionAction *)self suggestionViewController];
  [v11 action:self pushViewController:v12 sender:self];
}

@end