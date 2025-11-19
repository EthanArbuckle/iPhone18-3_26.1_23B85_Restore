@interface _SearchResultTwoLinesContentViewModel
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setObservedSearchResult:(id)a3;
@end

@implementation _SearchResultTwoLinesContentViewModel

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v14 = a3;
  v8 = a4;
  v9 = [(_SearchResultTwoLinesContentViewModel *)self observedSearchResult];

  if (v9 != v8)
  {
    goto LABEL_10;
  }

  v10 = [v14 isEqualToString:@"reverseGeocoded"];

  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [(_SearchResultTwoLinesContentViewModel *)self preferredAddressFormat];
  if (v11 == 1)
  {
    v12 = [self->_observedSearchResult mapItem];
    v9 = [v12 _addressFormattedAsCity];
  }

  else
  {
    if (v11)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v12 = [self->_observedSearchResult mapItem];
    v13 = [v12 _addressFormattedAsShortenedAddress];
    v9 = sub_100C47980(v13);
  }

LABEL_9:
  [(_BasicTwoLinesContentViewModel *)self setSubtitleText:v9];
  [(_BasicTwoLinesContentViewModel *)self updateObservers];
LABEL_10:

LABEL_11:
}

- (void)setObservedSearchResult:(id)a3
{
  v5 = a3;
  observedSearchResult = self->_observedSearchResult;
  if (observedSearchResult != v5)
  {
    v7 = v5;
    [observedSearchResult removeObserver:self forKeyPath:@"reverseGeocoded"];
    objc_storeStrong(&self->_observedSearchResult, a3);
    [(SearchResult *)v7 addObserver:self forKeyPath:@"reverseGeocoded" options:0 context:0];
    v5 = v7;
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