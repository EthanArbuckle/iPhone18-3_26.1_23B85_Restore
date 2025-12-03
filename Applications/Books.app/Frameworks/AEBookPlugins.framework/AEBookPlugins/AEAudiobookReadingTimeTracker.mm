@interface AEAudiobookReadingTimeTracker
+ (id)startTracking;
+ (id)testInstanceWithPlayer:(id)player bcTracker:(id)tracker;
- (AEAudiobookReadingTimeTracker)initWithPlayer:(id)player;
- (void)_beginReadingSessionForEventType:(unint64_t)type;
- (void)_endReadingSessionForEventType:(unint64_t)type;
- (void)player:(id)player audiobookDidChange:(id)change;
- (void)player:(id)player audiobookWillChange:(id)change;
- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to;
@end

@implementation AEAudiobookReadingTimeTracker

+ (id)startTracking
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8FC04;
  block[3] = &unk_1E4E30;
  block[4] = self;
  if (qword_22D058 != -1)
  {
    dispatch_once(&qword_22D058, block);
  }

  v2 = qword_22D060;

  return v2;
}

+ (id)testInstanceWithPlayer:(id)player bcTracker:(id)tracker
{
  trackerCopy = tracker;
  playerCopy = player;
  v8 = [[self alloc] initWithPlayer:playerCopy];

  [v8 setBcTracker:trackerCopy];

  return v8;
}

- (AEAudiobookReadingTimeTracker)initWithPlayer:(id)player
{
  playerCopy = player;
  v10.receiver = self;
  v10.super_class = AEAudiobookReadingTimeTracker;
  v6 = [(AEAudiobookReadingTimeTracker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, player);
    player = [(AEAudiobookReadingTimeTracker *)v7 player];
    [player addObserver:v7];
  }

  return v7;
}

- (void)player:(id)player audiobookWillChange:(id)change
{
  v5 = [(AEAudiobookReadingTimeTracker *)self sessionID:player];

  if (v5)
  {

    [(AEAudiobookReadingTimeTracker *)self _endReadingSessionForEventType:9];
  }
}

- (void)player:(id)player audiobookDidChange:(id)change
{
  if ([player state] == &dword_0 + 2)
  {
    sessionID = [(AEAudiobookReadingTimeTracker *)self sessionID];

    if (!sessionID)
    {

      [(AEAudiobookReadingTimeTracker *)self _beginReadingSessionForEventType:7];
    }
  }
}

- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  playerCopy = player;
  v8 = playerCopy;
  if (to == 3)
  {
    v16 = playerCopy;
    sessionID = [(AEAudiobookReadingTimeTracker *)self sessionID];

    v8 = v16;
    if (sessionID)
    {
      playerCopy = [v16 isScrubbing];
      v8 = v16;
      if ((playerCopy & 1) == 0)
      {
        skipController = [v16 skipController];
        if ([skipController isSkipping])
        {
        }

        else
        {
          skipController2 = [v16 skipController];
          isSeeking = [skipController2 isSeeking];

          v8 = v16;
          if (isSeeking)
          {
            goto LABEL_15;
          }

          playerCopy = [(AEAudiobookReadingTimeTracker *)self _endReadingSessionForEventType:10];
        }

        goto LABEL_14;
      }
    }
  }

  else if (to == 2)
  {
    v16 = playerCopy;
    sessionID2 = [(AEAudiobookReadingTimeTracker *)self sessionID];

    v8 = v16;
    if (!sessionID2)
    {
      pausedTime = [(AEAudiobookReadingTimeTracker *)self pausedTime];

      if (pausedTime)
      {
        v11 = 11;
      }

      else
      {
        v11 = 7;
      }

      playerCopy = [(AEAudiobookReadingTimeTracker *)self _beginReadingSessionForEventType:v11];
LABEL_14:
      v8 = v16;
    }
  }

LABEL_15:

  _objc_release_x1(playerCopy, v8);
}

- (void)_beginReadingSessionForEventType:(unint64_t)type
{
  v5 = +[NSUUID UUID];
  [(AEAudiobookReadingTimeTracker *)self setSessionID:v5];

  player = [(AEAudiobookReadingTimeTracker *)self player];
  currentAudiobook = [player currentAudiobook];
  assetID = [currentAudiobook assetID];

  v9 = _AEBookPluginsAudiobookLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = [(AEAudiobookReadingTimeTracker *)self sessionID];
    v13 = 138543874;
    v14 = sessionID;
    v15 = 2112;
    v16 = assetID;
    v17 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "beginReadingSession: %{public}@ assetID:%@ eventType:%lu", &v13, 0x20u);
  }

  bcTracker = [(AEAudiobookReadingTimeTracker *)self bcTracker];
  sessionID2 = [(AEAudiobookReadingTimeTracker *)self sessionID];
  [bcTracker trackReadingSessionBeganWithAssetID:assetID sessionID:sessionID2 trackerEventType:type readingFeatureFlags:1 completion:0];
}

- (void)_endReadingSessionForEventType:(unint64_t)type
{
  player = [(AEAudiobookReadingTimeTracker *)self player];
  currentAudiobook = [player currentAudiobook];
  assetID = [currentAudiobook assetID];

  v8 = _AEBookPluginsAudiobookLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = [(AEAudiobookReadingTimeTracker *)self sessionID];
    v13 = 138543874;
    v14 = sessionID;
    v15 = 2112;
    v16 = assetID;
    v17 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "endReadingSession:%{public}@ assetID:%@ eventType:%lu", &v13, 0x20u);
  }

  bcTracker = [(AEAudiobookReadingTimeTracker *)self bcTracker];
  sessionID2 = [(AEAudiobookReadingTimeTracker *)self sessionID];
  [bcTracker trackReadingSessionEndedWithAssetID:assetID sessionID:sessionID2 trackerEventType:type readingFeatureFlags:1 completion:0];

  if (type == 10)
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