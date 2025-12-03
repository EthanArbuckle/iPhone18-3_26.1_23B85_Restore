@interface _SearchResultTwoLinesContentViewModel
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setObservedSearchResult:(id)result;
@end

@implementation _SearchResultTwoLinesContentViewModel

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  observedSearchResult = [(_SearchResultTwoLinesContentViewModel *)self observedSearchResult];

  if (observedSearchResult != objectCopy)
  {
    goto LABEL_10;
  }

  v10 = [pathCopy isEqualToString:@"reverseGeocoded"];

  if (!v10)
  {
    goto LABEL_11;
  }

  preferredAddressFormat = [(_SearchResultTwoLinesContentViewModel *)self preferredAddressFormat];
  if (preferredAddressFormat == 1)
  {
    mapItem = [self->_observedSearchResult mapItem];
    observedSearchResult = [mapItem _addressFormattedAsCity];
  }

  else
  {
    if (preferredAddressFormat)
    {
      observedSearchResult = 0;
      goto LABEL_9;
    }

    mapItem = [self->_observedSearchResult mapItem];
    _addressFormattedAsShortenedAddress = [mapItem _addressFormattedAsShortenedAddress];
    observedSearchResult = sub_100C47980(_addressFormattedAsShortenedAddress);
  }

LABEL_9:
  [(_BasicTwoLinesContentViewModel *)self setSubtitleText:observedSearchResult];
  [(_BasicTwoLinesContentViewModel *)self updateObservers];
LABEL_10:

LABEL_11:
}

- (void)setObservedSearchResult:(id)result
{
  resultCopy = result;
  observedSearchResult = self->_observedSearchResult;
  if (observedSearchResult != resultCopy)
  {
    v7 = resultCopy;
    [observedSearchResult removeObserver:self forKeyPath:@"reverseGeocoded"];
    objc_storeStrong(&self->_observedSearchResult, result);
    [(SearchResult *)v7 addObserver:self forKeyPath:@"reverseGeocoded" options:0 context:0];
    resultCopy = v7;
  }
}

- (void)dealloc
{
  [(_SearchResultTwoLinesContentViewModel *)self setObservedSearchResult:0];
  v3.receiver = self;
  v3.super_class = _SearchResultTwoLinesContentViewModel;
  [(_BasicTwoLinesContentViewModel *)&v3 dealloc];
}

@end