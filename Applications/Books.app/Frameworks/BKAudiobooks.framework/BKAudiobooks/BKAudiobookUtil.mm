@interface BKAudiobookUtil
+ (id)_generateShortTimeRemainingStringFromControls:(id)a3 finishedString:(id)a4 unfinishedStringFormat:(id)a5;
+ (id)currentChapterInAudiobook:(id)a3;
+ (id)generateShortTimeRemainingStringFromControls:(id)a3;
+ (id)generateShorterTimeRemainingStringFromControls:(id)a3;
@end

@implementation BKAudiobookUtil

+ (id)currentChapterInAudiobook:(id)a3
{
  v3 = a3;
  memset(&v17, 0, sizeof(v17));
  [v3 bookmarkTime];
  CMTimeMakeWithSeconds(&v17, v4, 1000000000);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 chapters];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (v9)
        {
          [*(*(&v13 + 1) + 8 * i) timeRangeInAudiobook];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        v11 = v17;
        if (CMTimeRangeContainsTime(&range, &v11))
        {
          v6 = v9;
          goto LABEL_14;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v6;
}

+ (id)generateShortTimeRemainingStringFromControls:(id)a3
{
  v4 = a3;
  v5 = BKAudiobooksBundle();
  v6 = [v5 localizedStringForKey:@"You\\U2019ve finished this audiobook" value:&stru_3D458 table:&stru_3D458];
  v7 = BKAudiobooksBundle();
  v8 = [v7 localizedStringForKey:@"%@ left" value:&stru_3D458 table:&stru_3D458];
  v9 = [a1 _generateShortTimeRemainingStringFromControls:v4 finishedString:v6 unfinishedStringFormat:v8];

  return v9;
}

+ (id)generateShorterTimeRemainingStringFromControls:(id)a3
{
  v4 = a3;
  v5 = BKAudiobooksBundle();
  v6 = [v5 localizedStringForKey:@"You\\U2019ve finished!" value:&stru_3D458 table:&stru_3D458];
  v7 = BKAudiobooksBundle();
  v8 = [v7 localizedStringForKey:@"%@ left" value:&stru_3D458 table:&stru_3D458];
  v9 = [a1 _generateShortTimeRemainingStringFromControls:v4 finishedString:v6 unfinishedStringFormat:v8];

  return v9;
}

+ (id)_generateShortTimeRemainingStringFromControls:(id)a3 finishedString:(id)a4 unfinishedStringFormat:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (qword_47A28 != -1)
  {
    sub_218A0();
  }

  [v7 timeRemainingInCurrentAudiobook];
  v11 = v10;
  [v7 playbackRate];
  if (v12 > 0.0)
  {
    [v7 playbackRate];
    v11 = v11 / v13;
  }

  if (v11 <= 0.0)
  {
    v16 = v8;
  }

  else
  {
    v14 = &qword_47A18;
    if (v11 < 60.0)
    {
      v14 = &qword_47A20;
    }

    v15 = [*v14 stringFromTimeInterval:v11];
    if ([v15 length])
    {
      v16 = [NSString stringWithFormat:v9, v15];
    }

    else
    {
      v16 = &stru_3D458;
    }
  }

  return v16;
}

@end