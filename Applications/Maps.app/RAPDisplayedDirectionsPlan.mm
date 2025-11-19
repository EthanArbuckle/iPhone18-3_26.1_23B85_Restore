@interface RAPDisplayedDirectionsPlan
- (BOOL)getRoutesIndex:(unint64_t *)a3 directionsResponseIndex:(unint64_t *)a4 forRouteSuggestion:(id)a5;
- (RAPDisplayedDirectionsPlan)initWithRouteCollection:(id)a3 recording:(id)a4;
- (int)requestedTransportType;
@end

@implementation RAPDisplayedDirectionsPlan

- (BOOL)getRoutesIndex:(unint64_t *)a3 directionsResponseIndex:(unint64_t *)a4 forRouteSuggestion:(id)a5
{
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [(RAPDirectionsRecording *)self->_recording directionsResponses];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = [(RAPDirectionsRecording *)self->_recording directionsResponses];
      v15 = [v14 objectAtIndexedSubscript:v13];

      v16 = [v15 directionsResponseID];
      v17 = [v10 directionsResponseID];
      v18 = [v16 isEqualToData:v17];

      if (v18)
      {
        break;
      }

      ++v13;
      v19 = [(RAPDirectionsRecording *)self->_recording directionsResponses];
      v20 = [v19 count];

      if (v13 >= v20)
      {
        goto LABEL_8;
      }
    }

    if (a3)
    {
      *a3 = [v10 indexInResponse];
    }

    if (a4)
    {
      *a4 = v13;
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
  v3 = [(RAPDirectionsRecording *)recording directionsRequests];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 routeAttributes];
        v10 = [v9 hasMainTransportType];

        if (v10)
        {
          v12 = [v8 routeAttributes];
          v11 = [v12 mainTransportType];

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 4;
LABEL_12:

  return v11;
}

- (RAPDisplayedDirectionsPlan)initWithRouteCollection:(id)a3 recording:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RAPDisplayedDirectionsPlan;
  v9 = [(RAPDisplayedDirectionsPlan *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_routeCollection, a3);
    objc_storeStrong(&v10->_recording, a4);
  }

  return v10;
}

@end