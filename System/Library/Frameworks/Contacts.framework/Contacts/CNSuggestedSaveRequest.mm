@interface CNSuggestedSaveRequest
- (NSSet)confirmedSuggestions;
- (NSSet)rejectedSuggestions;
- (void)confirmSuggestion:(id)suggestion;
- (void)rejectSuggestion:(id)suggestion;
@end

@implementation CNSuggestedSaveRequest

- (void)confirmSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if ([suggestionCopy isSuggested])
  {
    mutableConfirmedSuggestions = self->_mutableConfirmedSuggestions;
    if (!mutableConfirmedSuggestions)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = self->_mutableConfirmedSuggestions;
      self->_mutableConfirmedSuggestions = v5;

      mutableConfirmedSuggestions = self->_mutableConfirmedSuggestions;
    }

    [(NSMutableSet *)mutableConfirmedSuggestions addObject:suggestionCopy];
  }
}

- (void)rejectSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if ([suggestionCopy isSuggested])
  {
    mutableRejectedSuggestions = self->_mutableRejectedSuggestions;
    if (!mutableRejectedSuggestions)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = self->_mutableRejectedSuggestions;
      self->_mutableRejectedSuggestions = v5;

      mutableRejectedSuggestions = self->_mutableRejectedSuggestions;
    }

    [(NSMutableSet *)mutableRejectedSuggestions addObject:suggestionCopy];
  }
}

- (NSSet)confirmedSuggestions
{
  v2 = [(NSMutableSet *)self->_mutableConfirmedSuggestions copy];

  return v2;
}

- (NSSet)rejectedSuggestions
{
  v2 = [(NSMutableSet *)self->_mutableRejectedSuggestions copy];

  return v2;
}

@end