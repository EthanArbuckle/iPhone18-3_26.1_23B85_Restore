@interface LocalSearchCompleterManager
- (void)completer:(id)completer didFailWithError:(id)error;
- (void)completerDidUpdateResults:(id)results;
@end

@implementation LocalSearchCompleterManager

- (void)completerDidUpdateResults:(id)results
{
  resultsCopy = results;
  selfCopy = self;
  LocalSearchCompleterManager.completerDidUpdateResults(_:)(selfCopy);
}

- (void)completer:(id)completer didFailWithError:(id)error
{
  completerCopy = completer;
  errorCopy = error;
  selfCopy = self;
  LocalSearchCompleterManager.completer(_:didFailWithError:)(selfCopy, errorCopy);
}

@end