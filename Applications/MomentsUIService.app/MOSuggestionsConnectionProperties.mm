@interface MOSuggestionsConnectionProperties
- (MOSuggestionsConnectionProperties)init;
- (MOSuggestionsUIServerManagerDelegate)delegate;
- (UISceneSession)session;
@end

@implementation MOSuggestionsConnectionProperties

- (MOSuggestionsConnectionProperties)init
{
  v3.receiver = self;
  v3.super_class = MOSuggestionsConnectionProperties;
  result = [(MOSuggestionsConnectionProperties *)&v3 init];
  if (result)
  {
    result->_currentViewState = -1;
  }

  return result;
}

- (UISceneSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (MOSuggestionsUIServerManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end