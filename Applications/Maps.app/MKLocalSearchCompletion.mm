@interface MKLocalSearchCompletion
- (id)entryWithTicket:(id)a3;
- (void)updateModel:(id)a3;
@end

@implementation MKLocalSearchCompletion

- (id)entryWithTicket:(id)a3
{
  v4 = a3;
  v5 = [(MKLocalSearchCompletion *)self mapItem];
  v6 = v5;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 8;
  }

  v8 = [[GEORPSuggestionEntry alloc] initWithType:v7];
  if (v4 && v6)
  {
    v9 = [(MKLocalSearchCompletion *)self mapItem];
    v10 = [v9 _identifier];

    [v4 applyToSuggestionEntry:v8 withAutocompleteSearchResultIdentifier:v10];
  }

  else
  {
    v11 = [(MKLocalSearchCompletion *)self title];
    [v8 safeAddDisplayLine:v11];

    v10 = [(MKLocalSearchCompletion *)self subtitle];
    [v8 safeAddDisplayLine:v10];
  }

  return v8;
}

- (void)updateModel:(id)a3
{
  v9 = a3;
  v4 = [(MKLocalSearchCompletion *)self mapItem];
  [v4 updateModel:v9];

  v5 = [(MKLocalSearchCompletion *)self displayLines];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    [v9 setFirstLine:v6];
  }

  if ([v5 count] >= 2)
  {
    v7 = [v5 objectAtIndexedSubscript:1];
    [v9 setSecondLine:v7];
  }

  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[LocalSearch lines=%lu]", [v5 count]);
  [v9 setDebugSubtitle:v8];
}

@end