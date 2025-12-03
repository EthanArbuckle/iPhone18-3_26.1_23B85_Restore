@interface RAPDisplayedDirectionsPlan
- (BOOL)getRoutesIndex:(unint64_t *)index directionsResponseIndex:(unint64_t *)responseIndex forRouteSuggestion:(id)suggestion;
- (RAPDisplayedDirectionsPlan)initWithRouteCollection:(id)collection recording:(id)recording;
- (int)requestedTransportType;
@end

@implementation RAPDisplayedDirectionsPlan

- (BOOL)getRoutesIndex:(unint64_t *)index directionsResponseIndex:(unint64_t *)responseIndex forRouteSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = suggestionCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  directionsResponses = [(RAPDirectionsRecording *)self->_recording directionsResponses];
  v12 = [directionsResponses count];

  if (v12)
  {
    v13 = 0;
    while (1)
    {
      directionsResponses2 = [(RAPDirectionsRecording *)self->_recording directionsResponses];
      v15 = [directionsResponses2 objectAtIndexedSubscript:v13];

      directionsResponseID = [v15 directionsResponseID];
      directionsResponseID2 = [v10 directionsResponseID];
      v18 = [directionsResponseID isEqualToData:directionsResponseID2];

      if (v18)
      {
        break;
      }

      ++v13;
      directionsResponses3 = [(RAPDirectionsRecording *)self->_recording directionsResponses];
      v20 = [directionsResponses3 count];

      if (v13 >= v20)
      {
        goto LABEL_8;
      }
    }

    if (index)
    {
      *index = [v10 indexInResponse];
    }

    if (responseIndex)
    {
      *responseIndex = v13;
    }

    v21 = 1;
  }

  else
  {
LABEL_8:
    v21 = 0;
  }

  return v21;
}

- (int)requestedTransportType
{
  recording = self->_recording;
  if (!recording)
  {
    return 4;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  directionsRequests = [(RAPDirectionsRecording *)recording directionsRequests];
  v4 = [directionsRequests countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(directionsRequests);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        routeAttributes = [v8 routeAttributes];
        hasMainTransportType = [routeAttributes hasMainTransportType];

        if (hasMainTransportType)
        {
          routeAttributes2 = [v8 routeAttributes];
          mainTransportType = [routeAttributes2 mainTransportType];

          goto LABEL_12;
        }
      }

      v5 = [directionsRequests countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  mainTransportType = 4;
LABEL_12:

  return mainTransportType;
}

- (RAPDisplayedDirectionsPlan)initWithRouteCollection:(id)collection recording:(id)recording
{
  collectionCopy = collection;
  recordingCopy = recording;
  v12.receiver = self;
  v12.super_class = RAPDisplayedDirectionsPlan;
  v9 = [(RAPDisplayedDirectionsPlan *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_routeCollection, collection);
    objc_storeStrong(&v10->_recording, recording);
  }

  return v10;
}

@end