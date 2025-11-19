@interface LocalSearchCompleterManager
- (void)completer:(id)a3 didFailWithError:(id)a4;
- (void)completerDidUpdateResults:(id)a3;
@end

@implementation LocalSearchCompleterManager

- (void)completerDidUpdateResults:(id)a3
{
  v4 = a3;
  v5 = self;
  LocalSearchCompleterManager.completerDidUpdateResults(_:)(v5);
}

- (void)completer:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  LocalSearchCompleterManager.completer(_:didFailWithError:)(v7, v8);
}

@end