@interface MKLocalSearchCompletion
- (id)entryWithTicket:(id)ticket;
- (void)updateModel:(id)model;
@end

@implementation MKLocalSearchCompletion

- (id)entryWithTicket:(id)ticket
{
  ticketCopy = ticket;
  mapItem = [(MKLocalSearchCompletion *)self mapItem];
  v6 = mapItem;
  if (mapItem)
  {
    v7 = 1;
  }

  else
  {
    v7 = 8;
  }

  v8 = [[GEORPSuggestionEntry alloc] initWithType:v7];
  if (ticketCopy && v6)
  {
    mapItem2 = [(MKLocalSearchCompletion *)self mapItem];
    _identifier = [mapItem2 _identifier];

    [ticketCopy applyToSuggestionEntry:v8 withAutocompleteSearchResultIdentifier:_identifier];
  }

  else
  {
    title = [(MKLocalSearchCompletion *)self title];
    [v8 safeAddDisplayLine:title];

    _identifier = [(MKLocalSearchCompletion *)self subtitle];
    [v8 safeAddDisplayLine:_identifier];
  }

  return v8;
}

- (void)updateModel:(id)model
{
  modelCopy = model;
  mapItem = [(MKLocalSearchCompletion *)self mapItem];
  [mapItem updateModel:modelCopy];

  displayLines = [(MKLocalSearchCompletion *)self displayLines];
  if ([displayLines count])
  {
    v6 = [displayLines objectAtIndexedSubscript:0];
    [modelCopy setFirstLine:v6];
  }

  if ([displayLines count] >= 2)
  {
    v7 = [displayLines objectAtIndexedSubscript:1];
    [modelCopy setSecondLine:v7];
  }

  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[LocalSearch lines=%lu]", [displayLines count]);
  [modelCopy setDebugSubtitle:v8];
}

@end