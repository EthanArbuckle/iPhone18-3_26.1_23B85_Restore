@interface SRCompactTextRequestViewController
- (BOOL)allowsCancellation;
- (SRCompactTextRequestView)_textRequestView;
- (SRCompactTextRequestViewControllerDelegate)delegate;
- (void)loadView;
- (void)setAllowsCancellation:(BOOL)cancellation;
- (void)textRequestView:(id)view didChangeTextFieldText:(id)text;
- (void)textRequestView:(id)view didEnableSuggestions:(BOOL)suggestions;
- (void)textRequestView:(id)view requestsKeyboardWithCompletion:(id)completion;
- (void)textRequestView:(id)view siriRequestCommittedWithText:(id)text;
- (void)textRequestViewDidEndEditing:(id)editing;
- (void)textRequestViewDidEndTextEditMenuInteraction:(id)interaction;
- (void)textRequestViewRequestsVoiceActivation:(id)activation;
- (void)textRequestViewWillBeginEditing:(id)editing;
- (void)textRequestViewWillBeginTextEditMenuInteraction:(id)interaction;
@end

@implementation SRCompactTextRequestViewController

- (SRCompactTextRequestView)_textRequestView
{
  textRequestView = self->_textRequestView;
  if (!textRequestView)
  {
    v4 = objc_alloc_init(SRCompactTextRequestView);
    v5 = self->_textRequestView;
    self->_textRequestView = v4;

    [(SRCompactTextRequestView *)self->_textRequestView setDelegate:self];
    textRequestView = self->_textRequestView;
  }

  return textRequestView;
}

- (BOOL)allowsCancellation
{
  _textRequestView = [(SRCompactTextRequestViewController *)self _textRequestView];
  allowsCancellation = [_textRequestView allowsCancellation];

  return allowsCancellation;
}

- (void)setAllowsCancellation:(BOOL)cancellation
{
  cancellationCopy = cancellation;
  _textRequestView = [(SRCompactTextRequestViewController *)self _textRequestView];
  [_textRequestView setAllowsCancellation:cancellationCopy];
}

- (void)loadView
{
  _textRequestView = [(SRCompactTextRequestViewController *)self _textRequestView];
  [(SRCompactTextRequestViewController *)self setView:_textRequestView];
}

- (void)textRequestView:(id)view requestsKeyboardWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SRCompactTextRequestViewController *)self delegate];
  [delegate textRequestController:self requestsKeyboardWithCompletion:completionCopy];
}

- (void)textRequestViewWillBeginEditing:(id)editing
{
  delegate = [(SRCompactTextRequestViewController *)self delegate];
  [delegate textRequestControllerWillBeginEditing:self];
}

- (void)textRequestViewDidEndEditing:(id)editing
{
  delegate = [(SRCompactTextRequestViewController *)self delegate];
  [delegate textRequestControllerDidEndEditing:self];
}

- (void)textRequestViewWillBeginTextEditMenuInteraction:(id)interaction
{
  delegate = [(SRCompactTextRequestViewController *)self delegate];
  [delegate textRequestControllerWillBeginTextEditMenuInteraction:self];
}

- (void)textRequestViewDidEndTextEditMenuInteraction:(id)interaction
{
  delegate = [(SRCompactTextRequestViewController *)self delegate];
  [delegate textRequestControllerDidEndTextEditMenuInteraction:self];
}

- (void)textRequestView:(id)view siriRequestCommittedWithText:(id)text
{
  textCopy = text;
  delegate = [(SRCompactTextRequestViewController *)self delegate];
  [delegate textRequestController:self siriRequestCommittedWithText:textCopy];
}

- (void)textRequestView:(id)view didChangeTextFieldText:(id)text
{
  textCopy = text;
  delegate = [(SRCompactTextRequestViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SRCompactTextRequestViewController *)self delegate];
    [delegate2 textRequestController:self didChangeText:textCopy];
  }
}

- (void)textRequestView:(id)view didEnableSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  delegate = [(SRCompactTextRequestViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(SRCompactTextRequestViewController *)self delegate];
    [delegate2 textRequestController:self didEnableSuggestions:suggestionsCopy];
  }
}

- (void)textRequestViewRequestsVoiceActivation:(id)activation
{
  delegate = [(SRCompactTextRequestViewController *)self delegate];
  [delegate textRequestControllerRequestsVoiceActivation:self];
}

- (SRCompactTextRequestViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end