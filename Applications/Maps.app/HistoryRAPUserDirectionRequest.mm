@interface HistoryRAPUserDirectionRequest
+ (void)loadAllRequestsFromStorage:(id)storage completion:(id)completion;
- (HistoryRAPUserDirectionRequest)initWithHistoryItem:(id)item recording:(id)recording;
- (int)requestedTransportType;
@end

@implementation HistoryRAPUserDirectionRequest

- (int)requestedTransportType
{
  recording = self->_recording;
  if (recording)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    directionsRequests = [(RAPDirectionsRecording *)recording directionsRequests];
    v5 = [directionsRequests countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(directionsRequests);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          routeAttributes = [v9 routeAttributes];
          hasMainTransportType = [routeAttributes hasMainTransportType];

          if (hasMainTransportType)
          {
            routeAttributes2 = [v9 routeAttributes];
            mainTransportType = [routeAttributes2 mainTransportType];

            goto LABEL_29;
          }
        }

        v6 = [directionsRequests countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  directionsRequests = [(HistoryEntryRecentsItem *)self->_historyItem historyEntry];
  transportType = [directionsRequests transportType];
  if (transportType == 5)
  {
    v13 = 3;
  }

  else
  {
    v13 = 4;
  }

  if (transportType == 4)
  {
    v14 = 6;
  }

  else
  {
    v14 = v13;
  }

  if (transportType == 3)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (transportType == 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = 4;
  }

  if (transportType == 1)
  {
    v16 = 0;
  }

  if (transportType <= 2)
  {
    mainTransportType = v16;
  }

  else
  {
    mainTransportType = v15;
  }

LABEL_29:

  return mainTransportType;
}

- (HistoryRAPUserDirectionRequest)initWithHistoryItem:(id)item recording:(id)recording
{
  itemCopy = item;
  recordingCopy = recording;
  v12.receiver = self;
  v12.super_class = HistoryRAPUserDirectionRequest;
  v8 = [(HistoryRAPUserDirectionRequest *)&v12 init];
  if (v8)
  {
    v9 = [[HistoryEntryRecentsItem alloc] initWithHistoryEntry:itemCopy];
    historyItem = v8->_historyItem;
    v8->_historyItem = v9;

    objc_storeStrong(&v8->_recording, recording);
  }

  return v8;
}

+ (void)loadAllRequestsFromStorage:(id)storage completion:(id)completion
{
  completionCopy = completion;
  v6 = +[RAPStorageHistoryContainer directionsRecordingStorage];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100CC4FEC;
  v8[3] = &unk_101650598;
  v9 = completionCopy;
  selfCopy = self;
  v7 = completionCopy;
  [v6 loadAllRecordingsWithConcurrentBlock:v8];
}

@end