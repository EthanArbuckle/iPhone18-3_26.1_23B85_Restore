@interface AEAudiobookReadingTimeTracker
+ (id)startTracking;
+ (id)testInstanceWithPlayer:(id)a3 bcTracker:(id)a4;
- (AEAudiobookReadingTimeTracker)initWithPlayer:(id)a3;
- (void)_beginReadingSessionForEventType:(unint64_t)a3;
- (void)_endReadingSessionForEventType:(unint64_t)a3;
- (void)player:(id)a3 audiobookDidChange:(id)a4;
- (void)player:(id)a3 audiobookWillChange:(id)a4;
- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
@end

@implementation AEAudiobookReadingTimeTracker

+ (id)startTracking
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8FC04;
  block[3] = &unk_1E4E30;
  block[4] = a1;
  if (qword_22D058 != -1)
  {
    dispatch_once(&qword_22D058, block);
  }

  v2 = qword_22D060;

  return v2;
}

+ (id)testInstanceWithPlayer:(id)a3 bcTracker:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPlayer:v7];

  [v8 setBcTracker:v6];

  return v8;
}

- (AEAudiobookReadingTimeTracker)initWithPlayer:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = AEAudiobookReadingTimeTracker;
  v6 = [(AEAudiobookReadingTimeTracker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, a3);
    v8 = [(AEAudiobookReadingTimeTracker *)v7 player];
    [v8 addObserver:v7];
  }

  return v7;
}

- (void)player:(id)a3 audiobookWillChange:(id)a4
{
  v5 = [(AEAudiobookReadingTimeTracker *)self sessionID:a3];

  if (v5)
  {

    [(AEAudiobookReadingTimeTracker *)self _endReadingSessionForEventType:9];
  }
}

- (void)player:(id)a3 audiobookDidChange:(id)a4
{
  if ([a3 state] == &dword_0 + 2)
  {
    v5 = [(AEAudiobookReadingTimeTracker *)self sessionID];

    if (!v5)
    {

      [(AEAudiobookReadingTimeTracker *)self _beginReadingSessionForEventType:7];
    }
  }
}

- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  v7 = a3;
  v8 = v7;
  if (a5 == 3)
  {
    v16 = v7;
    v12 = [(AEAudiobookReadingTimeTracker *)self sessionID];

    v8 = v16;
    if (v12)
    {
      v7 = [v16 isScrubbing];
      v8 = v16;
      if ((v7 & 1) == 0)
      {
        v13 = [v16 skipController];
        if ([v13 isSkipping])
        {
        }

        else
        {
          v14 = [v16 skipController];
          v15 = [v14 isSeeking];

          v8 = v16;
          if (v15)
          {
            goto LABEL_15;
          }

          v7 = [(AEAudiobookReadingTimeTracker *)self _endReadingSessionForEventType:10];
        }

        goto LABEL_14;
      }
    }
  }

  else if (a5 == 2)
  {
    v16 = v7;
    v9 = [(AEAudiobookReadingTimeTracker *)self sessionID];

    v8 = v16;
    if (!v9)
    {
      v10 = [(AEAudiobookReadingTimeTracker *)self pausedTime];

      if (v10)
      {
        v11 = 11;
      }

      else
      {
        v11 = 7;
      }

      v7 = [(AEAudiobookReadingTimeTracker *)self _beginReadingSessionForEventType:v11];
LABEL_14:
      v8 = v16;
    }
  }

LABEL_15:

  _objc_release_x1(v7, v8);
}

- (void)_beginReadingSessionForEventType:(unint64_t)a3
{
  v5 = +[NSUUID UUID];
  [(AEAudiobookReadingTimeTracker *)self setSessionID:v5];

  v6 = [(AEAudiobookReadingTimeTracker *)self player];
  v7 = [v6 currentAudiobook];
  v8 = [v7 assetID];

  v9 = _AEBookPluginsAudiobookLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AEAudiobookReadingTimeTracker *)self sessionID];
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v8;
    v17 = 2048;
    v18 = a3;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "beginReadingSession: %{public}@ assetID:%@ eventType:%lu", &v13, 0x20u);
  }

  v11 = [(AEAudiobookReadingTimeTracker *)self bcTracker];
  v12 = [(AEAudiobookReadingTimeTracker *)self sessionID];
  [v11 trackReadingSessionBeganWithAssetID:v8 sessionID:v12 trackerEventType:a3 readingFeatureFlags:1 completion:0];
}

- (void)_endReadingSessionForEventType:(unint64_t)a3
{
  v5 = [(AEAudiobookReadingTimeTracker *)self player];
  v6 = [v5 currentAudiobook];
  v7 = [v6 assetID];

  v8 = _AEBookPluginsAudiobookLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(AEAudiobookReadingTimeTracker *)self sessionID];
    v13 = 138543874;
    v14 = v9;
    v15 = 2112;
    v16 = v7;
    v17 = 2048;
    v18 = a3;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "endReadingSession:%{public}@ assetID:%@ eventType:%lu", &v13, 0x20u);
  }

  v10 = [(AEAudiobookReadingTimeTracker *)self bcTracker];
  v11 = [(AEAudiobookReadingTimeTracker *)self sessionID];
  [v10 trackReadingSessionEndedWithAssetID:v7 sessionID:v11 trackerEventType:a3 readingFeatureFlags:1 completion:0];

  if (a3 == 10)
  {
    v12 = +[NSDate date];
    [(AEAudiobookReadingTimeTracker *)self setPausedTime:v12];
  }

  else
  {
    [(AEAudiobookReadingTimeTracker *)self setPausedTime:0];
  }

  [(AEAudiobookReadingTimeTracker *)self setSessionID:0];
}

@end