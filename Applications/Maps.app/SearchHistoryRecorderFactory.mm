@interface SearchHistoryRecorderFactory
+ (id)historyRecorderWithTicket:(id)a3 ticketError:(id)a4 searchInfo:(id)a5 auxiliaryControlsOrigin:(int64_t)a6 refinedMapItems:(id)a7 completionTitle:(id)a8;
@end

@implementation SearchHistoryRecorderFactory

+ (id)historyRecorderWithTicket:(id)a3 ticketError:(id)a4 searchInfo:(id)a5 auxiliaryControlsOrigin:(int64_t)a6 refinedMapItems:(id)a7 completionTitle:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = [v15 results];
  v19 = [v13 directionIntent];

  if (v19)
  {
    v20 = [v13 directionIntent];
    v21 = [DirectionsHistoryRecordingHelper destinationGEOMapItemToRecordWithDirectionIntent:v20 searchResults:v18];

    if (!v21)
    {
      v23 = 0;
      goto LABEL_9;
    }

    v22 = [[SearchPlaceDisplayHistoryRecorder alloc] initWithGEOMapItem:v21];
LABEL_4:
    v23 = v22;
LABEL_9:

    goto LABEL_18;
  }

  if ([v14 code] != -8)
  {
    goto LABEL_11;
  }

  v24 = [v15 publisher];
  if (!v24)
  {
    v25 = [v15 placeCollections];
    v26 = [v25 count];

    if (v26)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (v14)
    {
      v27 = [[SearchRAPReportingHistoryRecorder alloc] initWithTicket:v13 auxiliaryControlsOrigin:a6];
    }

    else
    {
      v28 = [v16 count];
      if (![v18 count])
      {
        goto LABEL_17;
      }

      if ([v18 count] == 1)
      {
        v29 = [SingleResultSearchHistoryRecorder alloc];
        v21 = [v18 firstObject];
        v22 = [(SingleResultSearchHistoryRecorder *)v29 initWithSearchResult:v21];
        goto LABEL_4;
      }

      v27 = -[SearchResultsHistoryRecorder initWithTicket:searchResults:auxiliaryControlsOrigin:hasRefinedMapItems:tracksRAPReportingOnly:completionTitle:]([SearchResultsHistoryRecorder alloc], "initWithTicket:searchResults:auxiliaryControlsOrigin:hasRefinedMapItems:tracksRAPReportingOnly:completionTitle:", v13, v18, a6, v28 != 0, [v18 count] == 0, v17);
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