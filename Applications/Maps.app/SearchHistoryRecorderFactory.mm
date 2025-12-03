@interface SearchHistoryRecorderFactory
+ (id)historyRecorderWithTicket:(id)ticket ticketError:(id)error searchInfo:(id)info auxiliaryControlsOrigin:(int64_t)origin refinedMapItems:(id)items completionTitle:(id)title;
@end

@implementation SearchHistoryRecorderFactory

+ (id)historyRecorderWithTicket:(id)ticket ticketError:(id)error searchInfo:(id)info auxiliaryControlsOrigin:(int64_t)origin refinedMapItems:(id)items completionTitle:(id)title
{
  ticketCopy = ticket;
  errorCopy = error;
  infoCopy = info;
  itemsCopy = items;
  titleCopy = title;
  results = [infoCopy results];
  directionIntent = [ticketCopy directionIntent];

  if (directionIntent)
  {
    directionIntent2 = [ticketCopy directionIntent];
    firstObject = [DirectionsHistoryRecordingHelper destinationGEOMapItemToRecordWithDirectionIntent:directionIntent2 searchResults:results];

    if (!firstObject)
    {
      v23 = 0;
      goto LABEL_9;
    }

    v22 = [[SearchPlaceDisplayHistoryRecorder alloc] initWithGEOMapItem:firstObject];
LABEL_4:
    v23 = v22;
LABEL_9:

    goto LABEL_18;
  }

  if ([errorCopy code] != -8)
  {
    goto LABEL_11;
  }

  publisher = [infoCopy publisher];
  if (!publisher)
  {
    placeCollections = [infoCopy placeCollections];
    v26 = [placeCollections count];

    if (v26)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (errorCopy)
    {
      v27 = [[SearchRAPReportingHistoryRecorder alloc] initWithTicket:ticketCopy auxiliaryControlsOrigin:origin];
    }

    else
    {
      v28 = [itemsCopy count];
      if (![results count])
      {
        goto LABEL_17;
      }

      if ([results count] == 1)
      {
        v29 = [SingleResultSearchHistoryRecorder alloc];
        firstObject = [results firstObject];
        v22 = [(SingleResultSearchHistoryRecorder *)v29 initWithSearchResult:firstObject];
        goto LABEL_4;
      }

      v27 = -[SearchResultsHistoryRecorder initWithTicket:searchResults:auxiliaryControlsOrigin:hasRefinedMapItems:tracksRAPReportingOnly:completionTitle:]([SearchResultsHistoryRecorder alloc], "initWithTicket:searchResults:auxiliaryControlsOrigin:hasRefinedMapItems:tracksRAPReportingOnly:completionTitle:", ticketCopy, results, origin, v28 != 0, [results count] == 0, titleCopy);
    }

    v23 = v27;
    goto LABEL_18;
  }

LABEL_17:
  v23 = 0;
LABEL_18:

  return v23;
}

@end