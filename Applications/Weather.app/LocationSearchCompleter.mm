@interface LocationSearchCompleter
- (void)completer:(id)completer didFailWithError:(id)error;
- (void)completerDidUpdateResults:(id)results;
@end

@implementation LocationSearchCompleter

- (void)completerDidUpdateResults:(id)results
{
  resultsCopy = results;
  selfCopy = self;
  LocationSearchCompleter.completerDidUpdateResults(_:)(selfCopy);
}

- (void)completer:(id)completer didFailWithError:(id)error
{
  completerCopy = completer;
  errorCopy = error;
  selfCopy = self;
  LocationSearchCompleter.completer(_:didFailWithError:)(selfCopy, errorCopy);
}

@end