@interface MTAToneManager
+ (MTAToneManager)sharedManager;
- (BOOL)isPlayingTone;
- (MTAToneManager)init;
- (void)loadAvailableTones;
- (void)previewTone:(id)tone forType:(int64_t)type;
- (void)stopPreviewingTone;
@end

@implementation MTAToneManager

- (MTAToneManager)init
{
  v11.receiver = self;
  v11.super_class = MTAToneManager;
  v2 = [(MTAToneManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    alert = v2->_alert;
    v2->_alert = 0;

    v3->_previewAudioVolume = 1.0;
    [(MTAToneManager *)v3 loadAvailableTones];
    v5 = [MTATone alloc];
    v6 = [(MTATone *)v5 initWithIdentifier:TLToneIdentifierNone];
    stopPlaying = v3->_stopPlaying;
    v3->_stopPlaying = v6;

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"STOP_PLAYING" value:&stru_1000AEF10 table:0];
    [(MTATone *)v3->_stopPlaying setToneName:v9];
  }

  return v3;
}

- (void)loadAvailableTones
{
  v2 = +[TLToneManager sharedToneManager];
  v27 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/ToneKit.framework"];
  v3 = [v27 URLForResource:@"TKRingtones-EncoreInfinitum" withExtension:@"plist"];
  v4 = [NSDictionary dictionaryWithContentsOfURL:v3];

  v5 = +[TLToneManager sharedToneManager];
  v6 = [v5 defaultToneIdentifierForAlertType:13];

  v28 = v4;
  v7 = [v4 objectForKeyedSubscript:@"modern"];
  v31 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = [[MTATone alloc] initWithIdentifier:v12];
        v14 = [v2 nameForToneIdentifier:v12];
        [(MTATone *)v13 setToneName:v14];

        -[MTATone setDefaultTone:](v13, "setDefaultTone:", [v6 isEqualToString:v12]);
        [v31 addObject:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v9);
  }

  v15 = [v31 sortedArrayUsingComparator:&stru_1000ADB18];
  [(MTAToneManager *)self setModernTones:v15];

  v16 = [v4 objectForKeyedSubscript:@"classic"];
  v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v16 count]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v32 + 1) + 8 * j);
        v24 = [[MTATone alloc] initWithIdentifier:v23];
        v25 = [v2 nameForToneIdentifier:v23];
        [(MTATone *)v24 setToneName:v25];

        -[MTATone setDefaultTone:](v24, "setDefaultTone:", [v6 isEqualToString:v23]);
        [v17 addObject:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v20);
  }

  v26 = [v17 sortedArrayUsingComparator:&stru_1000ADB18];
  [(MTAToneManager *)self setClassicTones:v26];
}

+ (MTAToneManager)sharedManager
{
  if (qword_1000D28F8 != -1)
  {
    sub_1000730F4();
  }

  v3 = qword_1000D28F0;

  return v3;
}

- (BOOL)isPlayingTone
{
  alert = [(MTAToneManager *)self alert];
  v3 = alert != 0;

  return v3;
}

- (void)previewTone:(id)tone forType:(int64_t)type
{
  identifier = [tone identifier];
  alert = [(MTAToneManager *)self alert];
  toneIdentifier = [alert toneIdentifier];
  v9 = [toneIdentifier isEqualToString:identifier];

  if (v9)
  {
    [(MTAToneManager *)self stopPreviewingTone];
  }

  else
  {
    v10 = [[TLAlertConfiguration alloc] initWithType:type];
    [v10 setToneIdentifier:identifier];
    [(MTAToneManager *)self previewAudioVolume];
    [v10 setAudioVolume:?];
    [v10 setForPreview:1];
    [v10 setShouldRepeat:0];
    alert2 = [(MTAToneManager *)self alert];
    [alert2 stop];

    v12 = [TLAlert alertWithConfiguration:v10];
    [(MTAToneManager *)self setAlert:v12];

    alert3 = [(MTAToneManager *)self alert];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000F3BC;
    v14[3] = &unk_1000ADB80;
    v14[4] = self;
    [alert3 playWithCompletionHandler:v14];
  }
}

- (void)stopPreviewingTone
{
  alert = [(MTAToneManager *)self alert];
  [alert stop];

  [(MTAToneManager *)self setAlert:0];
}

@end