@interface CNPropertySuggestionAction
- (BOOL)_confirmOrReject:(BOOL)reject;
- (BOOL)_confirmOrRejectDonation:(BOOL)donation;
- (BOOL)_confirmOrRejectSuggestion:(BOOL)suggestion;
- (id)dataSourceWithPropertyItem:(id)item;
- (void)confirm;
- (void)performActionForItem:(id)item sender:(id)sender;
- (void)reject;
- (void)setSelectedChoice:(int64_t)choice;
@end

@implementation CNPropertySuggestionAction

- (void)reject
{
  [(CNPropertySuggestionAction *)self _confirmOrReject:0];
  propertyItem = [(CNPropertyAction *)self propertyItem];
  [propertyItem rejectSuggestion];
}

- (void)confirm
{
  [(CNPropertySuggestionAction *)self _confirmOrReject:1];
  propertyItem = [(CNPropertyAction *)self propertyItem];
  [propertyItem confirmSuggestion];
}

- (BOOL)_confirmOrRejectDonation:(BOOL)donation
{
  v4 = objc_alloc_init(MEMORY[0x1E6996448]);
  v5 = objc_alloc_init(MEMORY[0x1E69967D0]);
  propertyItem = [(CNPropertyAction *)self propertyItem];
  labeledValue = [propertyItem labeledValue];
  valueOrigin = [labeledValue valueOrigin];
  donationIdentifier = [valueOrigin donationIdentifier];
  errorOnlyCompletionHandlerAdapter = [v5 errorOnlyCompletionHandlerAdapter];
  [v4 rejectValueWithDonationIdentifier:donationIdentifier completionHandler:errorOnlyCompletionHandlerAdapter];

  future = [v5 future];
  v19 = 0;
  v12 = [future result:&v19];
  v13 = v19;

  if (v13)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertySuggestionAction.m", 121, 3, @"Error rejecting suggestion: %@", v14, v15, v16, v17, v13);
  }

  return v13 == 0;
}

- (BOOL)_confirmOrRejectSuggestion:(BOOL)suggestion
{
  suggestionCopy = suggestion;
  delegate = [(CNContactAction *)self delegate];
  contactViewCache = [delegate contactViewCache];
  contactStore = [contactViewCache contactStore];

  v8 = objc_alloc_init(MEMORY[0x1E695CFA8]);
  propertyItem = [(CNPropertyAction *)self propertyItem];
  labeledValue = [propertyItem labeledValue];
  if (suggestionCopy)
  {
    [v8 confirmSuggestion:labeledValue];
  }

  else
  {
    [v8 rejectSuggestion:labeledValue];
  }

  v19 = 0;
  v11 = [contactStore executeSaveRequest:v8 error:&v19];
  v12 = v19;
  v17 = v12;
  if ((v11 & 1) == 0)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertySuggestionAction.m", 101, 3, @"Error confirming or rejecting suggestion: %@", v13, v14, v15, v16, v12);
  }

  return v11;
}

- (BOOL)_confirmOrReject:(BOOL)reject
{
  rejectCopy = reject;
  propertyItem = [(CNPropertyAction *)self propertyItem];
  labeledValue = [propertyItem labeledValue];
  valueOrigin = [labeledValue valueOrigin];

  if (valueOrigin)
  {

    return [(CNPropertySuggestionAction *)self _confirmOrRejectDonation:rejectCopy];
  }

  else
  {

    return [(CNPropertySuggestionAction *)self _confirmOrRejectSuggestion:rejectCopy];
  }
}

- (void)setSelectedChoice:(int64_t)choice
{
  self->_selectedChoice = choice;
  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidFinish:self];

  suggestionViewController = [(CNPropertySuggestionAction *)self suggestionViewController];
  navigationController = [suggestionViewController navigationController];
  v7 = [navigationController popViewControllerAnimated:1];

  self->_selectedChoice = 0;
}

- (id)dataSourceWithPropertyItem:(id)item
{
  itemCopy = item;
  delegate = [(CNContactAction *)self delegate];
  contactViewCache = [delegate contactViewCache];
  contactStore = [contactViewCache contactStore];

  labeledValue = [itemCopy labeledValue];
  v19 = 0;
  v9 = [contactStore originForSuggestion:labeledValue error:&v19];
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
    labeledValue2 = [itemCopy labeledValue];
    v15 = [(CNContactSuggestionViewControllerLabeledValueDataSource *)v16 initWithLabeledValue:labeledValue2];
  }

  return v15;
}

- (void)performActionForItem:(id)item sender:(id)sender
{
  itemCopy = item;
  v6 = [(CNPropertySuggestionAction *)self dataSourceWithPropertyItem:itemCopy];
  v7 = [CNContactSuggestionViewController viewControllerWithDataSource:v6];
  [(CNPropertySuggestionAction *)self setSuggestionViewController:v7];

  delegate = [(CNContactAction *)self delegate];
  v13 = [delegate action:self cellForPropertyItem:itemCopy sender:self];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v13 setShouldShowTransportButtons:1];
  }

  suggestionViewController = [(CNPropertySuggestionAction *)self suggestionViewController];
  [suggestionViewController setPropertyCell:v13];

  suggestionViewController2 = [(CNPropertySuggestionAction *)self suggestionViewController];
  [suggestionViewController2 setAction:self];

  delegate2 = [(CNContactAction *)self delegate];
  suggestionViewController3 = [(CNPropertySuggestionAction *)self suggestionViewController];
  [delegate2 action:self pushViewController:suggestionViewController3 sender:self];
}

@end