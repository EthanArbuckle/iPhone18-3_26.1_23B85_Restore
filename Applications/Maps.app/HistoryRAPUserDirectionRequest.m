@interface HistoryRAPUserDirectionRequest
+ (void)loadAllRequestsFromStorage:(id)a3 completion:(id)a4;
- (HistoryRAPUserDirectionRequest)initWithHistoryItem:(id)a3 recording:(id)a4;
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
    v4 = [(RAPDirectionsRecording *)recording directionsRequests];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [v9 routeAttributes];
          v11 = [v10 hasMainTransportType];

          if (v11)
          {
            v18 = [v9 routeAttributes];
            v17 = [v18 mainTransportType];

            goto LABEL_29;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  v4 = [(HistoryEntryRecentsItem *)self->_historyItem historyEntry];
  v12 = [v4 transportType];
  if (v12 == 5)
  {
    v13 = 3;
  }

  else
  {
    v13 = 4;
  }

  if (v12 == 4)
  {
    v14 = 6;
  }

  else
  {
    v14 = v13;
  }

  if (v12 == 3)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v12 == 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = 4;
  }

  if (v12 == 1)
  {
    v16 = 0;
  }

  if (v12 <= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

LABEL_29:

  return v17;
}

- (HistoryRAPUserDirectionRequest)initWithHistoryItem:(id)a3 recording:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HistoryRAPUserDirectionRequest;
  v8 = [(HistoryRAPUserDirectionRequest *)&v12 init];
  if (v8)
  {
    v9 = [[HistoryEntryRecentsItem alloc] initWithHistoryEntry:v6];
    historyItem = v8->_historyItem;
    v8->_historyItem = v9;

    objc_storeStrong(&v8->_recording, a4);
  }

  return v8;
}

+ (void)loadAllRequestsFromStorage:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = +[RAPStorageHistoryContainer directionsRecordingStorage];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100CC4FEC;
  v8[3] = &unk_101650598;
  v9 = v5;
  v10 = a1;
  v7 = v5;
  [v6 loadAllRecordingsWithConcurrentBlock:v8];
}

@end